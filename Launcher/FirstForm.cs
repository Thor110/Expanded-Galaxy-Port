using Microsoft.Win32;
using System.Diagnostics;
using NAudio.Wave;
using IniParser;

namespace Launcher
{
    public partial class FirstForm : Form
    {
        private RegistryKey key = Registry.CurrentUser.OpenSubKey(@"Expanded Galaxy", true)!;
        public int game = 1; // which game is active.
        public bool jedi = false; // are jedi classes swapped.
        public bool combo; // disables the comboBox until the items have been added and the relevant index is selected.
                           // and disables the button focus until the background music has been played which prevents the button being highlighted on startup.
        public bool config; // enabled viewing the configuration page, to prevent code executing when the checkboxes are checked on startup or game swap.
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
            this.AutoScaleMode = AutoScaleMode.None; // Fix for Windows 11 Scaling Issues
            InitializeComponent();
            // temporary solution to handle brotherhood of shadow users
            if(File.Exists("brotherhood-readme.rtf"))
            {
                MessageBox.Show("The launcher currently isn't built to work with Brotherhood Of Shadow : Solomon's Revenge, please use the launcher.bat for now.");
                Close();
            }
            comboBox1.Items.Add("KotOR1");
            comboBox1.Items.Add("KotOR2");
            InitializeRegistry();
            InitializeTooltips();
            InitializeParser();
        }
        /// <summary>
        /// DefaultRegistrySettings applies the default registry settings.
        /// </summary>
        /// <remarks>
        /// This is used to setup the default registry settings as well as to reset the registry settings for a fresh installation.
        /// </remarks>
        private void DefaultRegistrySettings()
        {
            File.Delete("fresh.install");
            key.SetValue("Game", game);
            key.SetValue("JediK1", Convert.ToInt32(jedi));
            key.SetValue("JediK2", Convert.ToInt32(jedi));
            key.SetValue("Health", Convert.ToInt32(true));
        }
        /// <summary>
        /// InitializeRegistry prepares the registry entries and sets up some of the UI accordingly.
        /// </summary>
        /// <remarks>
        /// The combo boolean is set to true after the registry is initialised in order to prevent it from firing when the selected index is changed on startup.
        /// </remarks>
        private void InitializeRegistry()
        {
            if (key != null)
            {
                if (File.Exists("fresh.install")) { DefaultRegistrySettings(); }
                else
                {
                    game = (int)key.GetValue("Game")!;
                    jedi = Convert.ToBoolean((int)key.GetValue($"JediK{game}")!);
                }
            }
            else
            {
                key = Registry.CurrentUser.CreateSubKey(@"Expanded Galaxy");
                DefaultRegistrySettings();
            }
            if (game == 1) { PlayBackgroundSound(Properties.Resources.k1background); if (jedi == true) { checkBox1.Checked = true; } }
            if (game == 2)
            {
                PlayBackgroundSound(Properties.Resources.background);
                if (jedi == false) { checkBox2.Checked = true; }
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
        /// <summary>
        /// InitializeParser parses the relevant settings from swkotor2.ini
        /// </summary>
        /// <remarks>
        /// Only parses the relevant settings.
        /// </remarks>
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
            if (!File.Exists("Override\\regeneration2da.sets")) { checkBox3.Checked = false; }
        }
        /// <summary>
        /// comboBox1_SelectedIndexChanged controls which game is enabled.
        /// </summary>
        /// <remarks>
        /// The combo boolean prevents it from firing when the selected index is set on startup.
        /// </remarks>
        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (combo) { return; }
            if (comboBox1.SelectedIndex == 0 && game == 2) { setKotOR1(); }
            else if (comboBox1.SelectedIndex != 0 && game == 1) { setKotOR2(); }
        }
        /// <summary>
        /// setKotOR1 swaps the relevant files for enabling KotOR1.
        /// </summary>
        private void setKotOR1()
        {
            game = 1;
            SwapGameFiles("port", "main");
            SwapSaveFolders("SavesK1", "SavesK2");
            setReg();
            BackgroundImage = Properties.Resources.k1swlauncher1;
            PlayBackgroundSound(Properties.Resources.k1background);
        }
        /// <summary>
        /// setKotOR2 swaps the relevant files for enabling KotOR2.
        /// </summary>
        private void setKotOR2()
        {
            game = 2;
            SwapGameFiles("main", "port");
            SwapSaveFolders("SavesK2", "SavesK1");
            setReg();
            BackgroundImage = Properties.Resources.k2swlauncher1;
            PlayBackgroundSound(Properties.Resources.background);
        }
        /// <summary>
        /// SwapGameFiles swaps the game files when switching between games.
        /// </summary>
        private void SwapGameFiles(string target, string previous)
        {
            // TODO : Condense this maybe...
            string[] textFromFile;
            // 3 : by Adding "Override\\" to each line currently in the file list.
            textFromFile = File.ReadAllLines("port-file-list.txt");
            foreach (string line in textFromFile)
            {
                File.Move($"Override\\{line}", $"Override\\{line}.{previous}");
                File.Move($"Override\\{line}.{target}", $"Override\\{line}");
            }
            // Reminder : The batch script version of the launcher also relies on the file list not having everything in one file.
            /* // This previous method is technically more efficient.
            //in -> files for previous
            File.Move("Movies\\ObsidianEnt.bik", $"Movies\\ObsidianEnt.bik.{previous}");
            File.Move("dialog.tlk", $"dialog.tlk.{previous}");
            File.Move("lips\\001EBO_loc.mod", $"lips\\001EBO_loc.mod.{previous}");
            File.Move("Modules\\001ebo.mod", $"Modules\\001ebo.mod.{previous}");
            File.Move("StreamMusic\\mus_sion.wav", $"StreamMusic\\mus_sion.wav.{previous}");
            //out -> files for target
            File.Move($"Movies\\ObsidianEnt.bik.{target}", "Movies\\ObsidianEnt.bik");
            File.Move($"dialog.tlk.{target}", "dialog.tlk");
            File.Move($"lips\\001EBO_loc.mod.{target}", "lips\\001EBO_loc.mod");
            File.Move($"Modules\\001ebo.mod.{target}", "Modules\\001ebo.mod");
            File.Move($"StreamMusic\\mus_sion.wav.{target}", "StreamMusic\\mus_sion.wav");
            */ // But it will be less efficient once everything is in one file list.
            // 1 : these two arrays could be one.
            // 4 : and adding these to the file list.
            string[] files = new string[]
            {
                "Movies\\ObsidianEnt.bik",
                "dialog.tlk",
                "lips\\001EBO_loc.mod",
                "Modules\\001ebo.mod",
                "StreamMusic\\mus_sion.wav"
            };
            // 2 : resulting in just two calls to the MoveFiles method.
            MoveFiles(files, "", $".{previous}");
            MoveFiles(files, $".{target}", "");
            File.Move("swkotor2.exe", $"swkotor2.exe.{previous}");
            File.Move($"swkotor2.exe.{target}", "swkotor2.exe");
        }
        /// <summary>
        /// SwapSaveFolders swaps the save folders when switching between games.
        /// </summary>
        private void SwapSaveFolders(string target, string previous)
        {
            if (Directory.Exists("Saves"))
            {
                Directory.Move("Saves", previous);
                if (Directory.Exists(target)) { Directory.Move(target, "Saves"); }
                else { Directory.CreateDirectory("Saves"); }
            }
            else { Directory.CreateDirectory("Saves"); }
        }
        /// <summary>
        /// setReg updates the registry entries when swapping betweent he games.
        /// </summary>
        private void setReg()
        {
            key = Registry.CurrentUser.OpenSubKey(@"Expanded Galaxy", true)!;
            key.SetValue("Game", game);
            jedi = Convert.ToBoolean((int)key.GetValue($"JediK{game}")!);
            if (game == 1) { if (jedi == true) { checkBox1.Checked = true; } }
            if (game == 2) { if (jedi == true) { checkBox2.Checked = true; } }
            key.Close();
        }
        /// <summary>
        /// game_Click starts the game.
        /// </summary>
        private void game_Click(object sender, EventArgs e)
        {
            click_play();
            if (File.Exists("steam_api.dll")) { Process.Start(new ProcessStartInfo("steam://rungameid/208580") { UseShellExecute = true }); }
            else { Process.Start("swkotor2.exe"); }
            Close();
        }
        /// <summary>
        /// configure_Click opens the configuration menu.
        /// </summary>
        private void configure_Click(object sender, EventArgs e)
        {
            click_play();
            UpdateUI("Back", true, false);
        }
        /// <summary>
        /// website_Click links to the ModDB page for the project.
        /// </summary>
        private void website_Click(object sender, EventArgs e) { click_play(); Process.Start(new ProcessStartInfo("https://www.moddb.com/mods/kotor-ii-tsl-expanded-galaxy") { UseShellExecute = true }); }
        /// <summary>
        /// discord_Click links to the Discord server for the project.
        /// </summary>
        private void discord_Click(object sender, EventArgs e) { click_play(); Process.Start(new ProcessStartInfo("https://discord.gg/bkbj8Feu7b") { UseShellExecute = true }); }
        /// <summary>
        /// close_Click closes the program or returns from the configuration options.
        /// </summary>
        private void close_Click(object sender, EventArgs e)
        {
            click_play();
            if (!config) { Close(); }
            // button 1 is highlighted for some reason?
            UpdateUI("Exit", false, true);
        }
        /// <summary>
        /// UpdateUI updates the visibility of the UI elements when opening or closing the configuration page.
        /// </summary>
        private void UpdateUI(string button1Text, bool configVisible, bool mainButtonsVisible)
        {
            button1.Text = button1Text;
            button2.Visible = mainButtonsVisible;
            button3.Visible = mainButtonsVisible;
            button4.Visible = mainButtonsVisible;
            button5.Visible = mainButtonsVisible;
            comboBox1.Visible = mainButtonsVisible;
            config = configVisible;
            checkBox3.Visible = configVisible;
            checkBox4.Visible = configVisible;
            checkBox5.Visible = configVisible;
            checkBox6.Visible = configVisible;
            checkBox7.Visible = configVisible;
            checkBox8.Visible = configVisible;
            if (game == 1) { checkBox1.Visible = configVisible; checkBox9.Visible = false; checkBox10.Visible = configVisible; }
            if (game == 2) { checkBox2.Visible = configVisible; checkBox9.Visible = configVisible; }
        }
        /// <summary>
        /// PlayBackgroundSound is for playing the background music on it's own thread.
        /// </summary>
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
        /// <summary>
        /// hover_play
        /// </summary>
        private void hover_play()
        {
            hoverSemaphore.Wait();
            try { PlaySound(Properties.Resources.hover); }
            finally { hoverSemaphore.Release(); }
        }
        /// <summary>
        /// click_play
        /// </summary>
        private void click_play() { PlaySound(Properties.Resources.click); }
        /// <summary>
        /// PlaySound plays one time sounds, specifically the hover and click sounds.
        /// </summary>
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
        /// <summary>
        /// button_MouseEnter is the event handler for when the mouse cursor enters the area for any of the buttons.
        /// </summary>
        private void button_MouseEnter(object sender, EventArgs e)
        {
            if (combo) { combo = false; return; }
            if (previouslyFocusedButton != null) { button_MouseLeave(previouslyFocusedButton, EventArgs.Empty); }
            if (game == 1) { ((CustomButton)sender).BackgroundImage = Properties.Resources.mouseover; }
            if (game == 2) { ((CustomButton)sender).BackgroundImage = Properties.Resources.k2mouseover; }
            previouslyFocusedButton = (CustomButton)sender;
            hover_play();
        }
        /// <summary>
        /// button_MouseLeave is the event handler for when the mouse cursor leaves the area for any of the buttons.
        /// </summary>
        private void button_MouseLeave(object sender, EventArgs e) { ((CustomButton)sender).BackgroundImage = null; }
        /// <summary>
        /// button_MouseDown is the event handler for when the mouse button is held down on any of the buttons.
        /// </summary>
        private void button_MouseDown(object sender, EventArgs e)
        {
            if (game == 1) { ((CustomButton)sender).BackgroundImage = Properties.Resources.mousedown; }
            if (game == 2) { ((CustomButton)sender).BackgroundImage = Properties.Resources.k2mousedown; }
        }
        /// <summary>
        /// MoveFiles is used by checkBox1_CheckedChanged to swap files for the class changes.
        /// </summary>
        private void MoveFiles(string[] files, string sourceSuffix, string destinationSuffix)
        {
            foreach (string file in files)
            {
                File.Move($"{file}{sourceSuffix}", $"{file}{destinationSuffix}");
            }
        }
        /// <summary>
        /// checkBox1_CheckedChanged controls the checkbox for the Jedi From The Start Class Settings. KotOR1
        /// </summary>
        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (!config) { return; }
            string[] files = new string[]
            {
                "Override\\k_pdan_makejedi.ncs",
                "Override\\k_pend_bedmed.ncs",
                "Override\\k_pend_bedsml.ncs",
                "Override\\k_pend_bedtal.ncs",
                "Override\\k_pend_bedtny.ncs"
            };
            if (checkBox1.Checked) { EnableClassChanges(); MoveFiles(files, ".jedi", ""); }
            else { DisableClassChanges(); MoveFiles(files, "", ".jedi"); }
            MessageBox.Show("Using this setting requires starting a new game!"); // Alternatively users could update their save with KSE?
        }
        /// <summary>
        /// checkBox2_CheckedChanged controls the checkbox for the Non Jedi Class Settings. KotOR2
        /// </summary>
        private void checkBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (!config) { return; }
            if (checkBox2.Checked) { EnableClassChanges(); }
            else { DisableClassChanges(); }
            MessageBox.Show("Using this setting requires starting a new game!"); // Alternatively users could update their save with KSE?
        }
        /// <summary>
        /// checkBox3_CheckedChanged controls the checkbox for the Health Regeneration setting.
        /// </summary>
        private void checkBox3_CheckedChanged(object sender, EventArgs e)
        {
            if (!config) { return; }
            key = Registry.CurrentUser.OpenSubKey(@"Expanded Galaxy", true)!;
            if (!checkBox3.Checked) { File.Move("Override\\regeneration2da.sets", "Override\\regeneration.2da"); }
            else { File.Move("Override\\regeneration.2da", "Override\\regeneration2da.sets"); }
            key.SetValue("Health", checkBox3.Checked ? 1 : 0);
            key.Close();
        }
        /// <summary>
        /// checkBox4_CheckedChanged controls the checkbox for the Fullscreen settings in the swkotor2.ini file.
        /// </summary>
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
        /// <summary>
        /// checkBox5_CheckedChanged controls the checkbox for the EnableCheats setting in the swkotor2.ini file.
        /// </summary>
        private void checkBox5_CheckedChanged(object sender, EventArgs e)
        {
            if (!config) { return; }
            if (checkBox5.Checked == true) { MyIni.Write("EnableCheats", "1", "Game Options"); }
            else { MyIni.Write("EnableCheats", "0", "Game Options"); }
        }
        /// <summary>
        /// checkBox6_CheckedChanged controls the checkbox for the Hide InGame GUI setting in the swkotor2.ini file.
        /// </summary>
        private void checkBox6_CheckedChanged(object sender, EventArgs e)
        {
            if (!config) { return; }
            if (checkBox6.Checked == true) { MyIni.Write("Hide InGame GUI", "1", "Game Options"); }
            else { MyIni.Write("Hide InGame GUI", "0", "Game Options"); }
        }
        /// <summary>
        /// checkBox7_CheckedChanged controls the checkbox for the Mini Map setting in the swkotor2.ini file.
        /// </summary>
        private void checkBox7_CheckedChanged(object sender, EventArgs e)
        {
            if (!config) { return; }
            if (checkBox7.Checked == true) { MyIni.Write("Mini Map", "0", "Game Options"); }
            else { MyIni.Write("Mini Map", "1", "Game Options"); }
        }
        /// <summary>
        /// checkBox8_CheckedChanged controls the checkbox for the EnableScreenShot setting in the swkotor2.ini file.
        /// </summary>
        private void checkBox8_CheckedChanged(object sender, EventArgs e)
        {
            if (!config) { return; }
            if (checkBox8.Checked == true) { MyIni.Write("EnableScreenShot", "1", "Game Options"); }
            else { MyIni.Write("EnableScreenShot", "0", "Game Options"); }
        }
        /// <summary>
        /// checkBox9_CheckedChanged opens the save importer.
        /// </summary>
        private void checkBox9_CheckedChanged(object sender, EventArgs e)
        {
            if (!config) { return; }
            //MessageBox.Show("This feature doesn't work yet!");
            checkBox9.Checked = false;
            return;
            if (checkBox9.Checked == true)
            {
                FolderBrowserDialog folderBrowserDialog = new FolderBrowserDialog();
                string initialDirectory = Path.Combine(Directory.GetCurrentDirectory(), "SavesK1\\");
                if (Directory.Exists(initialDirectory)) { folderBrowserDialog.SelectedPath = initialDirectory; }
                else { folderBrowserDialog.SelectedPath = Directory.GetCurrentDirectory(); }
                folderBrowserDialog.Description = "Select a save folder from KotOR1 or the Expanded Galaxy Port!";
                if (folderBrowserDialog.ShowDialog() == DialogResult.OK)
                {
                    string folderPath = folderBrowserDialog.SelectedPath;
                    string filePath = Path.Combine(folderPath, "GLOBALVARS.res"); //swkotor//saves//savegame//GLOBALVARS.res
                    if (!File.Exists(filePath))
                    {
                        checkBox9.Checked = false;
                        MessageBox.Show("The selected folder is not a valid save folder.");
                        return;
                    }
                    string parentPath = Directory.GetParent(folderPath)!.ToString(); //swkotor//saves
                    string gamePath = Directory.GetParent(parentPath)!.ToString(); //swkotor
                    if (File.Exists(Path.Combine(gamePath, "swkotor.exe")) && !File.Exists(Path.Combine(gamePath, "free-roam-exists.txt")))
                    {
                        // first game save
                        // check for end-game free-roam mod
                        MessageBox.Show("The end-game free-roam mod is required to import a save game from the original game.");
                        // need to extend the end-game free-roam mod to add a unique variable for when the game is actually complete.
                        // check for the presence of that variable when processing the save.
                    }
                    else { ProcessSave(filePath); }
                }
                else { checkBox9.Checked = false; }
            }
        }
        /// <summary>
        /// ProcessSave processes the save file and sets up the relevant files for the save importer.
        /// </summary>
        private void ProcessSave(string file)
        {
            try
            {
                using (FileStream fileStream = new FileStream(file, FileMode.Open))
                {
                    BinaryReader binaryReader = new BinaryReader(fileStream);
                    GFFReader gffReader = new GFFReader(binaryReader);

                    GFFHeader header = gffReader.ReadHeader();

                    MessageBox.Show("GFF Header:");
                    MessageBox.Show($"Struct Offset: {header.StructOffset}");
                    MessageBox.Show($"Struct Count: {header.StructCount}");
                    MessageBox.Show($"Field Offset: {header.FieldOffset}");
                    MessageBox.Show($"Field Count: {header.FieldCount}");
                    MessageBox.Show($"Label Offset: {header.LabelOffset}");
                    MessageBox.Show($"Label Count: {header.LabelCount}");
                    MessageBox.Show($"Field Data Offset: {header.FieldDataOffset}");
                    MessageBox.Show($"Field Data Count: {header.FieldDataCount}");
                    MessageBox.Show($"Field Indices Offset: {header.FieldIndicesOffset}");
                    MessageBox.Show($"Field Indices Count: {header.FieldIndicesCount}");
                    MessageBox.Show($"List Indices Offset: {header.ListIndicesOffset}");
                    MessageBox.Show($"List Indices Count: {header.ListIndicesCount}");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error reading file: " + ex.Message);
            }
            checkBox9.Checked = false; // temporarily reset checkbox for testing
            // Process the save file here
            // Change the dialog file here
            // Replace bytes on the precompiled script here
            // Add and set a registry option accordingly
        }
        /// <summary>
        /// checkBox10_CheckedChanged opens the save converter for KotOR1.
        /// </summary>
        private void checkBox10_CheckedChanged(object sender, EventArgs e)
        {
            if (!config) { return; }
            if (checkBox10.Checked == true)
            {
                MessageBox.Show("This feature doesn't work yet!");
                checkBox10.Checked = false; // temporarily reset checkbox for testing
            }
        }
        /// <summary>
        /// enable enables the class changes to the executable. ( Jedi Classes )
        /// </summary>
        private void EnableClassChanges()
        {
            if (File.Exists("steam_api.dll"))                                           // Steam Aspyr
            {
                replacements = new List<Tuple<long, byte[]>>()                  // Previous Values
                {
                    Tuple.Create(0x583FF9L, new byte[] { 0xA1, 0xBB }),         // StrRef = 32111   = Male Soldier Description
                    Tuple.Create(0x58401BL, new byte[] { 0xA1, 0xBB }),         // StrRef = 32111   = Female Soldier Description
                    Tuple.Create(0x583FD5L, new byte[] { 0xA0, 0xBB }),         // StrRef = 32110   = Male Scout Description
                    Tuple.Create(0x58403FL, new byte[] { 0xA0, 0xBB }),         // StrRef = 32110   = Female Scout Description
                    Tuple.Create(0x583FB1L, new byte[] { 0x9F, 0xBB }),         // StrRef = 32109   = Male Scoundrel Description
                    Tuple.Create(0x584063L, new byte[] { 0x9F, 0xBB }),         // StrRef = 32109   = Female Scoundrel Description
                    Tuple.Create(0x4F9EDDL, new byte[] { 0x61, 0x01 }),         // StrRef = 134     = "Soldier"
                    Tuple.Create(0x4F9D21L, new byte[] { 0x62, 0x01 }),         // StrRef = 135     = "Scoundrel"
                    Tuple.Create(0x4F9E0CL, new byte[] { 0x63, 0x01 }),         // StrRef = 133     = "Scout"
                    Tuple.Create(0x599D9BL, new byte[] { 0x03, 0x04, 0x05 }),   // Class Values
                };
            }
            else if (File.Exists("gog.ico") || File.Exists("kwrapper.dll"))             // GoG Aspyr
            {
                replacements = new List<Tuple<long, byte[]>>()                  // Previous Values
                {
                    Tuple.Create(0x58287BL, new byte[] { 0xA1, 0xBB }),         // StrRef = 32111   = Male Soldier Description
                    Tuple.Create(0x582859L, new byte[] { 0xA1, 0xBB }),         // StrRef = 32111   = Female Soldier Description
                    Tuple.Create(0x582835L, new byte[] { 0xA0, 0xBB }),         // StrRef = 32110   = Male Scout Description
                    Tuple.Create(0x58289FL, new byte[] { 0xA0, 0xBB }),         // StrRef = 32110   = Female Scout Description
                    Tuple.Create(0x582811L, new byte[] { 0x9F, 0xBB }),         // StrRef = 32109   = Male Scoundrel Description
                    Tuple.Create(0x5828C3L, new byte[] { 0x9F, 0xBB }),         // StrRef = 32109   = Female Scoundrel Description
                    Tuple.Create(0x1DE29DL, new byte[] { 0x61, 0x01 }),         // StrRef = 134     = "Soldier"
                    Tuple.Create(0x1DE0E1L, new byte[] { 0x62, 0x01 }),         // StrRef = 135     = "Scoundrel"
                    Tuple.Create(0x1DE1CCL, new byte[] { 0x63, 0x01 }),         // StrRef = 133     = "Scout"
                    Tuple.Create(0x58BD74L, new byte[] { 0x03, 0x04, 0x05 }),   // Class Values
                };
            }
            else if (File.Exists("swupdate.exe") || File.Exists("DirectX/DSETUP.dll"))  // Disc or Steam LegacyPC or GoG Legacy
            {
                replacements = new List<Tuple<long, byte[]>>()                  // Previous Values
                {
                    Tuple.Create(0x42602CL, new byte[] { 0xA1, 0xBB }),         // StrRef = 32111   = Male Soldier Description
                    Tuple.Create(0x426034L, new byte[] { 0xA1, 0xBB }),         // StrRef = 32111   = Female Soldier Description
                    Tuple.Create(0x426024L, new byte[] { 0xA0, 0xBB }),         // StrRef = 32110   = Male Scout Description
                    Tuple.Create(0x42603CL, new byte[] { 0xA0, 0xBB }),         // StrRef = 32110   = Female Scout Description
                    Tuple.Create(0x42601CL, new byte[] { 0x9F, 0xBB }),         // StrRef = 32109   = Male Scoundrel Description
                    Tuple.Create(0x426044L, new byte[] { 0x9F, 0xBB }),         // StrRef = 32109   = Female Scoundrel Description
                    Tuple.Create(0x3499F6L, new byte[] { 0x61, 0x01 }),         // StrRef = 134     = "Soldier"
                    Tuple.Create(0x3498E9L, new byte[] { 0x62, 0x01 }),         // StrRef = 135     = "Scoundrel"
                    Tuple.Create(0x349979L, new byte[] { 0x63, 0x01 }),         // StrRef = 133     = "Scout"
                    Tuple.Create(0x3C3E61L, new byte[] { 0x03, 0x04, 0x05 }),   // Class Values
                };
            }
            BinaryUtility.ReplaceBytes(replacements, "swkotor2.exe");
            key = Registry.CurrentUser.OpenSubKey(@"Expanded Galaxy", true)!;
            key.SetValue($"JediK{game}", 1);
            key.Close();
        }
        /// <summary>
        /// disable disables the class changes to the executable. ( Non Jedi Classes )
        /// </summary>
        private void DisableClassChanges()
        {
            if (File.Exists("steam_api.dll"))                                           // Steam Aspyr
            {
                replacements = new List<Tuple<long, byte[]>>()                  // Previous Values
                {
                    Tuple.Create(0x583FF9L, new byte[] { 0x6F, 0x7D }),         // StrRef = 48033 = Male Jedi Guardian Description
                    Tuple.Create(0x58401BL, new byte[] { 0x6F, 0x7D }),         // StrRef = 48033 = Female Jedi Guardian Description
                    Tuple.Create(0x583FD5L, new byte[] { 0x6E, 0x7D }),         // StrRef = 48032 = Male Jedi Sentinel Description
                    Tuple.Create(0x58403FL, new byte[] { 0x6E, 0x7D }),         // StrRef = 48032 = Female Jedi Sentinel Description
                    Tuple.Create(0x583FB1L, new byte[] { 0x6D, 0x7D }),         // StrRef = 48031 = Male Jedi Consular Description
                    Tuple.Create(0x584063L, new byte[] { 0x6D, 0x7D }),         // StrRef = 48031 = Female Jedi Consular Description
                    Tuple.Create(0x4F9EDDL, new byte[] { 0x86, 0x00 }),         // StrRef = 353 = "Jedi Guardian"
                    Tuple.Create(0x4F9D21L, new byte[] { 0x87, 0x00 }),         // StrRef = 354 = "Jedi Consular"
                    Tuple.Create(0x4F9E0CL, new byte[] { 0x85, 0x00 }),         // StrRef = 355 = "Jedi Sentinel"
                    Tuple.Create(0x599D9BL, new byte[] { 0x00, 0x02, 0x01 }),   // Class Values
                };
            }
            else if (File.Exists("gog.ico") || File.Exists("kwrapper.dll"))             // GoG Aspyr
            {
                replacements = new List<Tuple<long, byte[]>>()                  // Previous Values
                {
                    Tuple.Create(0x58287BL, new byte[] { 0x6F, 0x7D }),         // StrRef = 48033 = Male Jedi Guardian Description
                    Tuple.Create(0x582859L, new byte[] { 0x6F, 0x7D }),         // StrRef = 48033 = Female Jedi Guardian Description
                    Tuple.Create(0x582835L, new byte[] { 0x6E, 0x7D }),         // StrRef = 48032 = Male Jedi Sentinel Description
                    Tuple.Create(0x58289FL, new byte[] { 0x6E, 0x7D }),         // StrRef = 48032 = Female Jedi Sentinel Description
                    Tuple.Create(0x582811L, new byte[] { 0x6D, 0x7D }),         // StrRef = 48031 = Male Jedi Consular Description
                    Tuple.Create(0x5828C3L, new byte[] { 0x6D, 0x7D }),         // StrRef = 48031 = Female Jedi Consular Description
                    Tuple.Create(0x1DE29DL, new byte[] { 0x86, 0x00 }),         // StrRef = 353 = "Jedi Guardian"
                    Tuple.Create(0x1DE0E1L, new byte[] { 0x87, 0x00 }),         // StrRef = 354 = "Jedi Consular"
                    Tuple.Create(0x1DE1CCL, new byte[] { 0x85, 0x00 }),         // StrRef = 355 = "Jedi Sentinel"
                    Tuple.Create(0x58BD74L, new byte[] { 0x00, 0x02, 0x01 }),   // Class Values
                };
            }
            else if (File.Exists("swupdate.exe") || File.Exists("DirectX/DSETUP.dll"))  // Disc or Steam LegacyPC or GoG Legacy
            {
                replacements = new List<Tuple<long, byte[]>>()                  // Previous Values
                {
                    Tuple.Create(0x42602CL, new byte[] { 0x6F, 0x7D }),         // StrRef = 48033 = Male Jedi Guardian Description
                    Tuple.Create(0x426034L, new byte[] { 0x6F, 0x7D }),         // StrRef = 48033 = Female Jedi Guardian Description
                    Tuple.Create(0x426024L, new byte[] { 0x6E, 0x7D }),         // StrRef = 48032 = Male Jedi Sentinel Description
                    Tuple.Create(0x42603CL, new byte[] { 0x6E, 0x7D }),         // StrRef = 48032 = Female Jedi Sentinel Description
                    Tuple.Create(0x42601CL, new byte[] { 0x6D, 0x7D }),         // StrRef = 48031 = Male Jedi Consular Description
                    Tuple.Create(0x426044L, new byte[] { 0x6D, 0x7D }),         // StrRef = 48031 = Female Jedi Consular Description
                    Tuple.Create(0x3499F6L, new byte[] { 0x86, 0x00 }),         // StrRef = 353 = "Jedi Guardian"
                    Tuple.Create(0x3498E9L, new byte[] { 0x87, 0x00 }),         // StrRef = 354 = "Jedi Consular"
                    Tuple.Create(0x349979L, new byte[] { 0x85, 0x00 }),         // StrRef = 355 = "Jedi Sentinel"
                    Tuple.Create(0x3C3E61L, new byte[] { 0x00, 0x02, 0x01 }),   // Class Values
                };
            }
            BinaryUtility.ReplaceBytes(replacements, "swkotor2.exe");
            key = Registry.CurrentUser.OpenSubKey(@"Expanded Galaxy", true)!;
            key.SetValue($"JediK{game}", 0);
            key.Close();
        }
    }
}