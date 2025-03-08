using Microsoft.Win32;
using System.Diagnostics;
using NAudio.Wave;
using IniParser;

namespace Launcher
{
    public partial class FirstForm : Form
    {
        private RegistryKey key = Registry.CurrentUser.OpenSubKey(@"Expanded Galaxy")!;
        public int game = 1; // which game is active.
        public bool jedi = false; // are jedi classes swapped.
        public bool combo; // disables the comboBox until the items have been added and the relevant index is selected.
                           // and disables the button focus until the background music has been played which prevents the button being highlighted on startup.
        public bool config; // viewing the configuration page.
        private CancellationTokenSource cts = null!;
        private WaveOutEvent waveOutEvent = null!;
        private CustomButton previouslyFocusedButton = null!;
        private SemaphoreSlim hoverSemaphore = new SemaphoreSlim(1, 1);
        private List<Tuple<long, byte[]>> replacements = null!;
        private ToolTip tooltip = new ToolTip();
        private Type[] excludedControlTypes = new Type[] { typeof(PictureBox), typeof(CustomButton) };
        private static readonly IniFile MyIni = new IniFile("swkotor2.ini");
        public FirstForm()
        {
            InitializeComponent();
            comboBox1.Items.Add("KotOR1");
            comboBox1.Items.Add("KotOR2");
            InitializeRegistry();
            InitializeTooltips();
            InitializeParser();
        }
        private void InitializeParser()
        {
            if (!File.Exists("swkotor2.ini"))
            {
                MessageBox.Show("Please launch the game once to ensure the swkotor2.ini file is created so that some settings can be configured.");
                checkBox4.Enabled = false; checkBox5.Enabled = false; checkBox6.Enabled = false; checkBox7.Enabled = false; checkBox8.Enabled = false;
            }
            else
            {
                // known potential bugs
                // - not sanitizing result when reading from the .ini which could lead to problems if the user manually
                // edits the .ini entries to contain anything other than what's expected. IE : 0 or 1!
                int result;
                if (!MyIni.KeyExists("Fullscreen", "Display Options")) { MyIni.Write("Fullscreen", "1", "Display Options"); }
                if (!MyIni.KeyExists("Fullscreen", "Graphics Options")) { MyIni.Write("Fullscreen", "1", "Graphics Options"); }
                else
                {
                    result = Int32.Parse(MyIni.Read("Fullscreen", "Graphics Options"));
                    if (result == 0) { checkBox4.Checked = false; }
                    else if (result == 1) { checkBox4.Checked = true; }
                }
                if (!MyIni.KeyExists("EnableCheats", "Game Options")) { MyIni.Write("EnableCheats", "0", "Game Options"); }
                else
                {
                    result = Int32.Parse(MyIni.Read("EnableCheats", "Game Options"));
                    if (result == 0) { checkBox5.Checked = false; }
                    else if (result == 1) { checkBox5.Checked = true; }
                }
                if (!MyIni.KeyExists("Hide InGame GUI", "Game Options")) { MyIni.Write("Hide InGame GUI", "0", "Game Options"); }
                else
                {
                    result = Int32.Parse(MyIni.Read("Hide InGame GUI", "Game Options"));
                    if (result == 0) { checkBox6.Checked = false; }
                    else if (result == 1) { checkBox6.Checked = true; }
                }
                if (!MyIni.KeyExists("Mini Map", "Game Options")) { MyIni.Write("Mini Map", "1", "Game Options"); }
                else
                {
                    result = Int32.Parse(MyIni.Read("Mini Map", "Game Options"));
                    if (result == 0) { checkBox7.Checked = true; }
                    else if (result == 1) { checkBox7.Checked = false; }
                }
                if (!MyIni.KeyExists("EnableScreenShot", "Game Options")) { MyIni.Write("EnableScreenShot", "0", "Game Options"); }
                else
                {
                    result = Int32.Parse(MyIni.Read("EnableScreenShot", "Game Options"));
                    if (result == 0) { checkBox8.Checked = false; }
                    else if (result == 1) { checkBox8.Checked = true; }
                }
            }
        }
        private void InitializeRegistry()
        {
            if (key != null) { game = (int)key.GetValue("Game")!; jedi = Convert.ToBoolean((int)key.GetValue($"JediK{game}")!); }
            else
            {
                key = Registry.CurrentUser.CreateSubKey(@"Expanded Galaxy");
                key.SetValue("Game", game);
                key.SetValue("JediK1", Convert.ToInt32(jedi));
                key.SetValue("JediK2", Convert.ToInt32(jedi));
                key.SetValue("Health", Convert.ToInt32(true));
            }
            if (game == 1) { PlayBackgroundSound(Properties.Resources.k1background); if (jedi == true) { checkBox1.Checked = true; } }
            if (game == 2)
            {
                PlayBackgroundSound(Properties.Resources.background);
                if (jedi == true) { checkBox2.Checked = true; }
                comboBox1.SelectedIndex = 1;
                BackgroundImage = Properties.Resources.k2swlauncher1;
            }
            if (Convert.ToBoolean((int)key.GetValue("Health")!) == false) { checkBox3.Checked = false; }
            key.Close();
            combo = true;
        }
        /// <summary>
        /// InitializeTooltips prepares a tooltip for every control in the form.
        /// </summary>
        /// <remarks>
        /// Uses excludedControlTypes to exclude certain types of controls from displaying tooltips.
        /// </remarks>
        void InitializeTooltips()
        {
            components = new System.ComponentModel.Container();
            tooltip = new ToolTip(components);
            foreach (Control control in Controls)
            {
                if (excludedControlTypes.Contains(control.GetType()) != true)
                {
                    control.MouseEnter += new EventHandler(tooltip_MouseEnter);
                    control.MouseLeave += new EventHandler(tooltip_MouseLeave);
                }
            }
        }
        /// <summary>
        /// tooltip_MouseEnter event Handler uses the existing AccessibleDescription property as the tooltip information.
        /// </summary>
        void tooltip_MouseEnter(object? sender, EventArgs e)
        {
            Control control = (Control)sender!;
            if (control.AccessibleDescription != null) { tooltip.Show(control.AccessibleDescription.ToString(), control); }
            else { tooltip.Show("No description available.", control); }
        }
        /// <summary>
        /// tooltip_MouseLeave event Handler hides the active tooltip.
        /// </summary>
        void tooltip_MouseLeave(object? sender, EventArgs e) { tooltip.Hide((Control)sender!); }
        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (combo) { return; }
            if (comboBox1.SelectedIndex == 0 && game == 2) { setKotOR1(); }
            else if (comboBox1.SelectedIndex != 0 && game == 1) { setKotOR2(); }
        }
        private void setReg()
        {
            key = Registry.CurrentUser.OpenSubKey(@"Expanded Galaxy", true)!;
            key.SetValue("Game", game);
            jedi = Convert.ToBoolean((int)key.GetValue($"JediK{game}")!);
            if (game == 1) { if (jedi == true) { checkBox1.Checked = true; } }
            if (game == 2) { if (jedi == true) { checkBox2.Checked = true; } }
            key.Close();
        }
        private void setKotOR1()
        {
            game = 1;
            // port disabled currently. enable it.
            string[] textFromFile = File.ReadAllLines("port-file-list.txt");
            foreach (string line in textFromFile)
            {
                File.Move($"Override\\{line}", $"Override\\{line}.main");
                File.Move($"Override\\{line}.port", $"Override\\{line}");
            }
            //in -> files for main
            File.Move("Movies\\ObsidianEnt.bik", "Movies\\ObsidianEnt.bik.main");
            File.Move("dialog.tlk", "dialog.tlk.main");
            File.Move("lips\\001EBO_loc.mod", "lips\\001EBO_loc.mod.main");
            File.Move("Modules\\001ebo.mod", "Modules\\001ebo.mod.main");
            File.Move("StreamMusic\\mus_sion.wav", "StreamMusic\\mus_sion.wav.main");
            File.Move("swkotor2.exe", "swkotor2.exe.main");
            //out -> files for port
            File.Move("Movies\\ObsidianEnt.bik.port", "Movies\\ObsidianEnt.bik");
            File.Move("dialog.tlk.port", "dialog.tlk");
            File.Move("lips\\001EBO_loc.mod.port", "lips\\001EBO_loc.mod");
            File.Move("Modules\\001ebo.mod.port", "Modules\\001ebo.mod");
            File.Move("StreamMusic\\mus_sion.wav.port", "StreamMusic\\mus_sion.wav");
            if (!File.Exists("DirectX/DSETUP.dll"))
            {
                File.Move("swkotor2.exe.port", "swkotor2.exe");
            }
            if (Directory.Exists("SavesK1"))
            {
                Directory.Move("Saves", "SavesK2");
                Directory.Move("SavesK1", "Saves");
            }
            else
            {
                Directory.CreateDirectory("SavesK2");
                Directory.CreateDirectory("Saves");
            }
            setReg();
            BackgroundImage = Properties.Resources.k1swlauncher1;
            PlayBackgroundSound(Properties.Resources.k1background);
        }
        private void setKotOR2()
        {
            game = 2;
            // port enabled currently. disable it.
            string[] textFromFile = File.ReadAllLines("port-file-list.txt");
            foreach (string line in textFromFile)
            {
                File.Move($"Override\\{line}", $"Override\\{line}.port");
                File.Move($"Override\\{line}.main", $"Override\\{line}");
            }
            //in -> files for port
            File.Move("Movies\\ObsidianEnt.bik", "Movies\\ObsidianEnt.bik.port");
            File.Move("dialog.tlk", "dialog.tlk.port");
            File.Move("lips\\001EBO_loc.mod", "lips\\001EBO_loc.mod.port");
            File.Move("Modules\\001ebo.mod", "Modules\\001ebo.mod.port");
            File.Move("StreamMusic\\mus_sion.wav", "StreamMusic\\mus_sion.wav.port");
            File.Move("swkotor2.exe", "swkotor2.exe.port");
            //out -> files for main
            File.Move("Movies\\ObsidianEnt.bik.main", "Movies\\ObsidianEnt.bik");
            File.Move("dialog.tlk.main", "dialog.tlk");
            File.Move("lips\\001EBO_loc.mod.main", "lips\\001EBO_loc.mod");
            File.Move("Modules\\001ebo.mod.main", "Modules\\001ebo.mod");
            File.Move("StreamMusic\\mus_sion.wav.main", "StreamMusic\\mus_sion.wav");
            if (!File.Exists("DirectX/DSETUP.dll"))
            {
                File.Move("swkotor2.exe.main", "swkotor2.exe");
            }
            if(Directory.Exists("Saves"))
            {
                Directory.Move("Saves", "SavesK1");
                Directory.Move("SavesK2","Saves");
            }
            else
            {
                Directory.CreateDirectory("SavesK1");
                Directory.CreateDirectory("Saves");
            }
            setReg();
            BackgroundImage = Properties.Resources.k2swlauncher1;
            PlayBackgroundSound(Properties.Resources.background);
        }
        private void game_Click(object sender, EventArgs e)
        {
            click_play();
            if (File.Exists("steam_api.dll")) { Process.Start(new ProcessStartInfo("steam://rungameid/208580") { UseShellExecute = true }); }
            else { Process.Start("swkotor2.exe"); }
            Close();
        }
        private void configure_Click(object sender, EventArgs e)
        {
            click_play();
            if (game == 1)
            {
                button2.Visible = false;
                button3.Visible = false;
                button4.Visible = false;
                button5.Visible = false;
                comboBox1.Visible = false;
                button1.Text = "Back";
                config = true;
                checkBox1.Visible = true;
                checkBox3.Visible = true;
                checkBox4.Visible = true;
                checkBox5.Visible = true;
                checkBox6.Visible = true;
                checkBox7.Visible = true;
                checkBox8.Visible = true;
            }
            if (game == 2)
            {
                button2.Visible = false;
                button3.Visible = false;
                button4.Visible = false;
                button5.Visible = false;
                comboBox1.Visible = false;
                button1.Text = "Back";
                config = true;
                checkBox2.Visible = true;
                checkBox3.Visible = true;
                checkBox4.Visible = true;
                checkBox5.Visible = true;
                checkBox6.Visible = true;
                checkBox7.Visible = true;
                checkBox8.Visible = true;
            }
        }
        private void website_Click(object sender, EventArgs e) { click_play(); Process.Start(new ProcessStartInfo("https://www.moddb.com/mods/kotor-ii-tsl-expanded-galaxy") { UseShellExecute = true }); }
        private void discord_Click(object sender, EventArgs e) { click_play(); Process.Start(new ProcessStartInfo("https://discord.gg/bkbj8Feu7b") { UseShellExecute = true }); }
        private void close_Click(object sender, EventArgs e)
        {
            click_play();
            if (!config) { Close(); }
            else
            {
                button2.Visible = true;
                button3.Visible = true;
                button4.Visible = true;
                button5.Visible = true;
                comboBox1.Visible = true;
                button1.Text = "Exit";
                config = false;
                // button 1 is highlighted for some reason?
                if (game == 1) { checkBox1.Visible = false; }
                if (game == 2) { checkBox2.Visible = false; }
                checkBox3.Visible = false;
                checkBox4.Visible = false;
                checkBox5.Visible = false;
                checkBox6.Visible = false;
                checkBox7.Visible = false;
                checkBox8.Visible = false;
            }
        }
        public void PlaySound(string soundFilePath)
        {
            using (var waveFileReader = new WaveFileReader(soundFilePath))
            using (var waveOutEvent = new WaveOutEvent())
            {
                waveOutEvent.Init(waveFileReader);
                waveOutEvent.Play();
                while (waveOutEvent.PlaybackState == PlaybackState.Playing) { Thread.Sleep(100); }
            }
        }
        private void PlayBackgroundSound(Stream soundStream)
        {
            cts?.Cancel(); // Cancel the current sound
            cts = new CancellationTokenSource();
            waveOutEvent?.Dispose(); // Dispose the previous WaveOutEvent
            waveOutEvent = new WaveOutEvent();
            Thread thread = new Thread(() =>
            {
                using (var waveFileReader = new WaveFileReader(soundStream))
                {
                    waveOutEvent.Init(waveFileReader);
                    waveOutEvent.Play();
                    while (waveOutEvent.PlaybackState == PlaybackState.Playing && !cts.IsCancellationRequested) { Thread.Sleep(100); }
                    waveOutEvent.Stop(); // Stop the sound playback
                }
            });
            thread.IsBackground = true; // So that the thread dies when the form closes
            thread.Start();
        }
        private void hover_play()
        {
            hoverSemaphore.Wait();
            try { PlaySound(Properties.Resources.hover); }
            finally { hoverSemaphore.Release(); }
        }
        private void click_play() { PlaySound(Properties.Resources.click); }
        private void PlaySound(Stream soundStream)
        {
            Thread thread = new Thread(() =>
            {
                using (var waveFileReader = new WaveFileReader(soundStream))
                using (var waveOutEvent = new WaveOutEvent())
                {
                    waveOutEvent.Init(waveFileReader);
                    waveOutEvent.Play();
                    while (waveOutEvent.PlaybackState == PlaybackState.Playing) { Thread.Sleep(100); }
                }
            });
            thread.IsBackground = true;
            thread.Start();
        }
        private void button_MouseEnter(object sender, EventArgs e)
        {
            if (combo) { combo = false; return; }
            if (previouslyFocusedButton != null) { button_MouseLeave(previouslyFocusedButton, EventArgs.Empty); }
            if (game == 1) { ((CustomButton)sender).BackgroundImage = Properties.Resources.mouseover; }
            if (game == 2) { ((CustomButton)sender).BackgroundImage = Properties.Resources.k2mouseover; }
            previouslyFocusedButton = (CustomButton)sender;
            hover_play();
        }
        private void button_MouseLeave(object sender, EventArgs e) { ((CustomButton)sender).BackgroundImage = null; }
        private void button_MouseDown(object sender, EventArgs e)
        {
            if (game == 1) { ((CustomButton)sender).BackgroundImage = Properties.Resources.mousedown; }
            if (game == 2) { ((CustomButton)sender).BackgroundImage = Properties.Resources.k2mousedown; }
        }
        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (!config) { return; }
            if (!checkBox1.Checked)
            {
                disable();//Disable Class Changes KotOR1
                File.Move("Override\\k_pdan_makejedi.ncs", "Override\\k_pdan_makejedi.ncs.jedi");
                File.Move("Override\\k_pend_bedmed.ncs", "Override\\k_pend_bedmed.ncs.jedi");
                File.Move("Override\\k_pend_bedsml.ncs", "Override\\k_pend_bedsml.ncs.jedi");
                File.Move("Override\\k_pend_bedtal.ncs", "Override\\k_pend_bedtal.ncs.jedi");
                File.Move("Override\\k_pend_bedtny.ncs", "Override\\k_pend_bedtny.ncs.jedi");
                key = Registry.CurrentUser.OpenSubKey(@"Expanded Galaxy", true)!;
                key.SetValue("JediK1", 0);
                key.Close();
            }
            else
            {
                enable();//Enable Class Changes KotOR1
                File.Move("Override\\k_pdan_makejedi.ncs.jedi", "Override\\k_pdan_makejedi.ncs");
                File.Move("Override\\k_pend_bedmed.ncs.jedi", "Override\\k_pend_bedmed.ncs");
                File.Move("Override\\k_pend_bedsml.ncs.jedi", "Override\\k_pend_bedsml.ncs");
                File.Move("Override\\k_pend_bedtal.ncs.jedi", "Override\\k_pend_bedtal.ncs");
                File.Move("Override\\k_pend_bedtny.ncs.jedi", "Override\\k_pend_bedtny.ncs");
                key = Registry.CurrentUser.OpenSubKey(@"Expanded Galaxy", true)!;
                key.SetValue("JediK1", 1);
                key.Close();
            }
        }
        private void checkBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (!config) { return; }
            if (!checkBox2.Checked)
            {
                enable();//Enable Class Changes KotOR2
                key = Registry.CurrentUser.OpenSubKey(@"Expanded Galaxy", true)!;
                key.SetValue("JediK2", 0);
                key.Close();
            }
            else
            {
                disable();//Disable Class Changes KotOR2
                key = Registry.CurrentUser.OpenSubKey(@"Expanded Galaxy", true)!;
                key.SetValue("JediK2", 1);
                key.Close();
            }
        }
        private void checkBox3_CheckedChanged(object sender, EventArgs e)
        {
            if (!config) { return; }
            if (!checkBox3.Checked)
            {
                File.Move("Override\\regeneration.2da.sets", "Override\\regeneration.2da");
                key = Registry.CurrentUser.OpenSubKey(@"Expanded Galaxy", true)!;
                key.SetValue("Health", 0);
                key.Close();
            }
            else
            {
                File.Move("Override\\regeneration.2da", "Override\\regeneration.2da.sets");
                key = Registry.CurrentUser.OpenSubKey(@"Expanded Galaxy", true)!;
                key.SetValue("Health", 1);
                key.Close();
            }
        }
        private void checkBox4_CheckedChanged(object sender, EventArgs e)
        {
            if (!config) { return; }
            if (checkBox4.Checked == true)
            {
                MyIni.Write("Fullscreen", "1", "Display Options");
                MyIni.Write("Fullscreen", "1", "Graphics Options");
            }
            else
            {
                MyIni.Write("Fullscreen", "0", "Display Options");
                MyIni.Write("Fullscreen", "0", "Graphics Options");
            }
        }
        private void checkBox5_CheckedChanged(object sender, EventArgs e)
        {
            if (!config) { return; }
            if (checkBox5.Checked == true) { MyIni.Write("EnableCheats", "1", "Game Options"); }
            else { MyIni.Write("EnableCheats", "0", "Game Options"); }
        }
        private void checkBox6_CheckedChanged(object sender, EventArgs e)
        {
            if (!config) { return; }
            if (checkBox6.Checked == true) { MyIni.Write("Hide InGame GUI", "1", "Game Options"); }
            else { MyIni.Write("Hide InGame GUI", "0", "Game Options"); }
        }
        private void checkBox7_CheckedChanged(object sender, EventArgs e)
        {
            if (!config) { return; }
            if (checkBox7.Checked == true) { MyIni.Write("Mini Map", "0", "Game Options"); }
            else { MyIni.Write("Mini Map", "1", "Game Options"); }
        }
        private void checkBox8_CheckedChanged(object sender, EventArgs e)
        {
            if (!config) { return; }
            if (checkBox8.Checked == true) { MyIni.Write("EnableScreenShot", "1", "Game Options"); }
            else { MyIni.Write("EnableScreenShot", "0", "Game Options"); }
        }
        private void enable()
        {
            if (File.Exists("steam_api.dll"))
            {
                replacements = new List<Tuple<long, byte[]>>()
                {
                    Tuple.Create(0x583FF9L, new byte[] { 0xA1, 0xBB }),
                    Tuple.Create(0x58401BL, new byte[] { 0xA1, 0xBB }),
                    Tuple.Create(0x583FD5L, new byte[] { 0xA0, 0xBB }),
                    Tuple.Create(0x58403FL, new byte[] { 0xA0, 0xBB }),
                    Tuple.Create(0x583FB1L, new byte[] { 0x9F, 0xBB }),
                    Tuple.Create(0x584063L, new byte[] { 0x9F, 0xBB }),
                    Tuple.Create(0x4F9EDDL, new byte[] { 0x61, 0x01 }),
                    Tuple.Create(0x4F9D21L, new byte[] { 0x62, 0x01 }),
                    Tuple.Create(0x4F9E0CL, new byte[] { 0x63, 0x01 }),
                    Tuple.Create(0x599D9BL, new byte[] { 0x03, 0x04, 0x05 }),
                };
            }
            else if (File.Exists("DirectX/DSETUP.dll"))
            {
                MessageBox.Show("Class Changes Not Supported For The LegacyPC Version of the game on Steam currently.");
                return;
            }
            else if (File.Exists("gog.ico") || File.Exists("kwrapper.dll"))
            {
                replacements = new List<Tuple<long, byte[]>>()
                {
                    Tuple.Create(0x58287BL, new byte[] { 0xA1, 0xBB }),
                    Tuple.Create(0x582859L, new byte[] { 0xA1, 0xBB }),
                    Tuple.Create(0x582835L, new byte[] { 0xA0, 0xBB }),
                    Tuple.Create(0x58289FL, new byte[] { 0xA0, 0xBB }),
                    Tuple.Create(0x582811L, new byte[] { 0x9F, 0xBB }),
                    Tuple.Create(0x5828C3L, new byte[] { 0x9F, 0xBB }),
                    Tuple.Create(0x1DE29DL, new byte[] { 0x61, 0x01 }),
                    Tuple.Create(0x1DE0E1L, new byte[] { 0x62, 0x01 }),
                    Tuple.Create(0x1DE1CCL, new byte[] { 0x63, 0x01 }),
                    Tuple.Create(0x58BD74L, new byte[] { 0x03, 0x04, 0x05 }),
                };
            }
            else if (File.Exists("swupdate.exe"))
            {
                replacements = new List<Tuple<long, byte[]>>()
                {
                    Tuple.Create(0x42602CL, new byte[] { 0xA1, 0xBB }),
                    Tuple.Create(0x426034L, new byte[] { 0xA1, 0xBB }),
                    Tuple.Create(0x426024L, new byte[] { 0xA0, 0xBB }),
                    Tuple.Create(0x42603CL, new byte[] { 0xA0, 0xBB }),
                    Tuple.Create(0x42601CL, new byte[] { 0x9F, 0xBB }),
                    Tuple.Create(0x426044L, new byte[] { 0x9F, 0xBB }),
                    Tuple.Create(0x3499F6L, new byte[] { 0x61, 0x01 }),
                    Tuple.Create(0x3498E9L, new byte[] { 0x62, 0x01 }),
                    Tuple.Create(0x349979L, new byte[] { 0x63, 0x01 }),
                    Tuple.Create(0x3C3E61L, new byte[] { 0x03, 0x04, 0x05 }),
                };
            }
            BinaryUtility.ReplaceBytes(replacements, "swkotor2.exe");
        }
        private void disable()
        {
            if (File.Exists("steam_api.dll"))
            {
                replacements = new List<Tuple<long, byte[]>>()
                {
                    Tuple.Create(0x583FF9L, new byte[] { 0x6F, 0x7D }),
                    Tuple.Create(0x58401BL, new byte[] { 0x6F, 0x7D }),
                    Tuple.Create(0x583FD5L, new byte[] { 0x6E, 0x7D }),
                    Tuple.Create(0x58403FL, new byte[] { 0x6E, 0x7D }),
                    Tuple.Create(0x583FB1L, new byte[] { 0x6D, 0x7D }),
                    Tuple.Create(0x584063L, new byte[] { 0x6D, 0x7D }),
                    Tuple.Create(0x4F9EDDL, new byte[] { 0x86, 0x00 }),
                    Tuple.Create(0x4F9D21L, new byte[] { 0x87, 0x00 }),
                    Tuple.Create(0x4F9E0CL, new byte[] { 0x85, 0x00 }),
                    Tuple.Create(0x599D9BL, new byte[] { 0x00, 0x02, 0x01 }),
                };
            }
            else if (File.Exists("DirectX/DSETUP.dll"))
            {
                MessageBox.Show("Class Changes Not Supported For The LegacyPC Version of the game on Steam currently.");
                return;
            }
            else if (File.Exists("gog.ico") || File.Exists("kwrapper.dll"))
            {
                replacements = new List<Tuple<long, byte[]>>()
                {
                    Tuple.Create(0x58287BL, new byte[] { 0x6F, 0x7D }),
                    Tuple.Create(0x582859L, new byte[] { 0x6F, 0x7D }),
                    Tuple.Create(0x582835L, new byte[] { 0x6E, 0x7D }),
                    Tuple.Create(0x58289FL, new byte[] { 0x6E, 0x7D }),
                    Tuple.Create(0x582811L, new byte[] { 0x6D, 0x7D }),
                    Tuple.Create(0x5828C3L, new byte[] { 0x6D, 0x7D }),
                    Tuple.Create(0x1DE29DL, new byte[] { 0x86, 0x00 }),
                    Tuple.Create(0x1DE0E1L, new byte[] { 0x87, 0x00 }),
                    Tuple.Create(0x1DE1CCL, new byte[] { 0x85, 0x00 }),
                    Tuple.Create(0x58BD74L, new byte[] { 0x00, 0x02, 0x01 }),
                };
            }
            else if (File.Exists("swupdate.exe"))
            {
                replacements = new List<Tuple<long, byte[]>>()
                {
                    Tuple.Create(0x42602CL, new byte[] { 0x6F, 0x7D }),
                    Tuple.Create(0x426034L, new byte[] { 0x6F, 0x7D }),
                    Tuple.Create(0x426024L, new byte[] { 0x6E, 0x7D }),
                    Tuple.Create(0x42603CL, new byte[] { 0x6E, 0x7D }),
                    Tuple.Create(0x42601CL, new byte[] { 0x6D, 0x7D }),
                    Tuple.Create(0x426044L, new byte[] { 0x6D, 0x7D }),
                    Tuple.Create(0x3499F6L, new byte[] { 0x86, 0x00 }),
                    Tuple.Create(0x3498E9L, new byte[] { 0x87, 0x00 }),
                    Tuple.Create(0x349979L, new byte[] { 0x85, 0x00 }),
                    Tuple.Create(0x3C3E61L, new byte[] { 0x00, 0x02, 0x01 }),
                };
            }
            BinaryUtility.ReplaceBytes(replacements, "swkotor2.exe");
        }
    }
}