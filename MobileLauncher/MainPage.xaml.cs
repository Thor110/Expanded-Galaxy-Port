using Microsoft.Win32;
using IniParser;
using System.Diagnostics;
using Microsoft.Maui;

namespace MobileLauncher
{
    public partial class MainPage : ContentPage
    {
        //private RegistryKey key = Registry.CurrentUser.OpenSubKey(@"Expanded Galaxy", true)!;
        public int game = 1; // which game is active.
        public bool jedi = false; // are jedi classes swapped.
        public bool combo; // disables the comboBox until the items have been added and the relevant index is selected.
                           // and disables the button focus until the background music has been played which prevents the button being highlighted on startup.
        public bool config; // enabled viewing the configuration page, to prevent code executing when the checkboxes are checked on startup or game swap.
        //private CancellationTokenSource cts = null!;
        //private WaveOutEvent waveOutEvent = null!;
        //private CustomButton previouslyFocusedButton = null!;
        //private SemaphoreSlim hoverSemaphore = new SemaphoreSlim(1, 1);
        //private List<Tuple<long, byte[]>> replacements = null!;
        //private ToolTip tooltip = new ToolTip();
        //private Type[] excludedControlTypes = new Type[] { typeof(PictureBox), typeof(CustomButton) };
        //private static readonly IniFile MyIni = new IniFile("swkotor2.ini");
        public MainPage()
        {
            InitializeComponent();
            /* // PC Launcher Code
            comboBox1.Items.Add("KotOR1");
            comboBox1.Items.Add("KotOR2");
            InitializeRegistry();
            InitializeTooltips();
            InitializeParser();
            */
        }
        /// <summary>
        /// DefaultRegistrySettings applies the default registry settings.
        /// </summary>
        /// <remarks>
        /// This is used to setup the default registry settings as well as to reset the registry settings for a fresh installation.
        /// </remarks>
        /* // PC Launcher Code
        private void DefaultRegistrySettings()
        {
            File.Delete("fresh.install");
            key.SetValue("Game", game);
            key.SetValue("JediK1", Convert.ToInt32(jedi));
            key.SetValue("JediK2", Convert.ToInt32(jedi));
            key.SetValue("Health", Convert.ToInt32(true));
        }
        */
        /// <summary>
        /// InitializeRegistry prepares the registry entries and sets up some of the UI accordingly.
        /// </summary>
        /// <remarks>
        /// The combo boolean is set to true after the registry is initialised in order to prevent it from firing when the selected index is changed on startup.
        /// </remarks>
        /* // PC Launcher Code
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
        */
        /// <summary>
        /// InitializeParser parses the relevant settings from swkotor2.ini
        /// </summary>
        /// <remarks>
        /// Only parses the relevant settings.
        /// </remarks>
        /* // PC Launcher Code
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
        */
        private void GameClicked(object sender, EventArgs e)
        {
#if ANDROID
            var packageName = "com.aspyr.swkotor2";
            var androidApp = new Android.Content.Intent(Android.Content.Intent.ActionMain);
            androidApp.AddCategory(Android.Content.Intent.CategoryLauncher);
            androidApp.SetPackage(packageName);
            var activityInfo = androidApp.ResolveActivity(Android.App.Application.Context.PackageManager!);
            if (activityInfo!= null)
            {
                Android.App.Application.Context.StartActivity(androidApp);
            }
            else
            {
                GameBtn.Text = "App not found";
            }
#elif IOS
            var packageName = "swkotor2://";
            var url = new Foundation.NSUrl($"{packageName}://");
            if (Foundation.NSUrl.RequestsOpenAccess(url, out var error))
            {
                Foundation.NSUrl.OpenUrl(url);
            }
            else
            {
                GameBtn.Text = "App not found";
            }
#else
            GameBtn.Text = "App not supported";
#endif
        }
        private void ConfigureClicked(object sender, EventArgs e)
        {
            //click_play();
            UpdateUI("Back", true, false);
        }
        private void WebsiteClicked(object sender, EventArgs e)
        {
            //click_play();
            Launcher.OpenAsync("https://www.moddb.com/mods/kotor-ii-tsl-expanded-galaxy");
        }
        private void DiscordClicked(object sender, EventArgs e)
        {
            //click_play();
            Launcher.OpenAsync("https://discord.gg/bkbj8Feu7b");
        }
        private void ExitClicked(object sender, EventArgs e)
        {
            //click_play();
            if (!config) { App.Current!.Quit(); }
            UpdateUI("Exit", false, true);
        }
        /// <summary>
        /// UpdateUI updates the visibility of the UI elements when opening or closing the configuration page.
        /// </summary>
        private void UpdateUI(string button1Text, bool configVisible, bool mainButtonsVisible)
        {
            /* // PC Launcher Code
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
            */
        }
    }
}
