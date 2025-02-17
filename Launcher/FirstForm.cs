using Microsoft.Win32;
using System.Diagnostics;
using NAudio.Wave;

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
        private Button previouslyFocusedButton = null!;
        private SemaphoreSlim hoverSemaphore = new SemaphoreSlim(1, 1);
        public FirstForm()
        {
            InitializeComponent();
            comboBox1.Items.Add("KotOR1");
            comboBox1.Items.Add("KotOR2");
            InitializeRegistry();
        }
        private void InitializeRegistry()
        {
            if (key != null) { game = (int)key.GetValue("Game")!; jedi = Convert.ToBoolean((int)key.GetValue("JediK1")!);  }
            else { key = Registry.CurrentUser.CreateSubKey(@"Expanded Galaxy"); key.SetValue("Game", game); key.SetValue("JediK1", jedi); key.SetValue("JediK2", jedi); }
            if (game == 1) { PlayBackgroundSound(Properties.Resources.k1background); }
            if (game == 2)
            {
                PlayBackgroundSound(Properties.Resources.background);
                comboBox1.SelectedIndex = 1;
                this.BackgroundImage = Properties.Resources.k2swlauncher1;
            }
            if (jedi == true) { checkBox1.Checked = true; }
            key.Close();
            combo = true;
        }
        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (combo) { return; }
            if (comboBox1.SelectedIndex == 0 && game == 2) { setKotOR1(); }
            else if (comboBox1.SelectedIndex != 0 && game == 1) { setKotOR2(); }
        }
        private void setReg() { key = Registry.CurrentUser.OpenSubKey(@"Expanded Galaxy", true)!; key.SetValue("Game", game); jedi = Convert.ToBoolean((int)key.GetValue($"JediK{game}")!); key.Close(); }
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
            File.Move("swkotor2.exe.port", "swkotor2.exe");
            setReg();
            this.BackgroundImage = Properties.Resources.k1swlauncher1;
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
            File.Move("swkotor2.exe.main", "swkotor2.exe");
            setReg();
            this.BackgroundImage = Properties.Resources.k2swlauncher1;
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
                if (game == 1)
                {
                    checkBox1.Visible = false;
                }
                if (game == 2)
                {
                    checkBox2.Visible = false;
                }
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
            if (game == 1) { ((Button)sender).BackgroundImage = Properties.Resources.mouseover; }
            if (game == 2) { ((Button)sender).BackgroundImage = Properties.Resources.k2mouseover; }
            previouslyFocusedButton = (Button)sender;
            hover_play();
        }
        private void button_MouseLeave(object sender, EventArgs e) { ((Button)sender).BackgroundImage = null; }
        private void button_MouseDown(object sender, EventArgs e)
        {
            if (game == 1) { ((Button)sender).BackgroundImage = Properties.Resources.mousedown; }
            if (game == 2) { ((Button)sender).BackgroundImage = Properties.Resources.k2mousedown; }
        }
        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (!config) { return; }
            if (!checkBox1.Checked)
            {
                MessageBox.Show("A");//Disable Class Changes KotOR1

                //byte changes
                //script swaps

                key = Registry.CurrentUser.OpenSubKey(@"Expanded Galaxy", true)!;
                key.SetValue("JediK1", 0);
                key.Close();
            }
            else
            {
                MessageBox.Show("B");//Enable Class Changes KotOR1

                //byte changes
                //script swaps

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
                MessageBox.Show("A");//Disable Class Changes KotOR2

                //byte changes
                //script swaps

                key = Registry.CurrentUser.OpenSubKey(@"Expanded Galaxy", true)!;
                key.SetValue("JediK2", 0);
                key.Close();
            }
            else
            {
                MessageBox.Show("B");//Enable Class Changes KotOR2

                //byte changes
                //script swaps

                key = Registry.CurrentUser.OpenSubKey(@"Expanded Galaxy", true)!;
                key.SetValue("JediK2", 1);
                key.Close();
            }
        }
    }
}