namespace MobileLauncher
{
    public partial class MainPage : ContentPage
    {
        public string documentsPath;
        public string enablePath;
        public string disablePath;
        public string checkPath;
        public const string healthOn = "Health Regeneration: On";
        public const string healthOff = "Health Regeneration: Off";
        public const string overrideDirectory = "Override";
        public MainPage()
        {
            InitializeComponent();
#if ANDROID
            documentsPath = "/Home/Android/data/com.aspyr.swkotor2/files";
#elif IOS
            documentsPath = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
#else
            documentsPath = ""; // Never used... just to avoid a warning.
#endif
            enablePath = System.IO.Path.Combine(documentsPath, overrideDirectory, "regeneration.2da");
            disablePath = System.IO.Path.Combine(documentsPath, overrideDirectory, "regeneration2da.sets");
            checkPath = System.IO.Path.Combine(documentsPath, "dialog.tlk.main");
            HealthSwitch.Toggled += HealthSwitch_Toggled!;
            if (!File.Exists(disablePath)) // Parser Equivalent is just health regeneration.
            {
                HealthSwitch.IsEnabled = false;
                HealthLabel.Text = healthOff;
            }
            if (!File.Exists(checkPath)) // Registry Equivalent is just which dialog file exists.
            {
                K1Button.IsEnabled = false;
                K1Button.BackgroundColor = Colors.Blue;
                K2Button.BackgroundColor = Colors.Transparent;
                K2Button.TextColor = Colors.Black;
            }
            else
            {
                K2Button.IsEnabled = false;
                K2Button.BackgroundColor = Colors.Green;
                K1Button.BackgroundColor = Colors.Transparent;
                K1Button.TextColor = Colors.Black;
            }
            RunMusic();
        }
        private void GameButton_Clicked(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            Button otherButton = button == K1Button ? K2Button : K1Button;
            button.IsEnabled = false;
            button.BackgroundColor = button == K1Button ? Colors.Blue : Colors.Green;
            otherButton.IsEnabled = true;
            otherButton.BackgroundColor = Colors.Transparent;
            //SwapGameFiles(button == K1Button ? "port" : "main", button == K1Button ? "main" : "port");
            //SwapSaveFolders(button == K1Button ? "SavesK1" : "SavesK2", button == K1Button ? "SavesK2" : "SavesK1");
            RunMusic();
        }
        private void RunMusic()
        {
            if (K1Button.IsEnabled == true)
            {
                //PlaySoundAsync("MobileLauncher.Resources.Audio.background.wav");
                BackgrounImage.Source = "k2swlauncher1.bmp";
            }
            else
            {
                //PlaySoundAsync("MobileLauncher.Resources.Audio.k1background.wav");
                BackgrounImage.Source = "k1swlauncher1.bmp";
            }
        }
        private void HealthSwitch_Toggled(object sender, ToggledEventArgs e)
        {
            string sourcePath = e.Value ? enablePath : disablePath;
            string destinationPath = e.Value ? disablePath : enablePath;
            string statusText;
            if (!File.Exists(sourcePath)) { statusText = "ERROR : FILE NOT FOUND"; }
            else
            {
                File.Move(sourcePath, destinationPath);
                statusText = e.Value ? healthOn : healthOff;
            }
            HealthLabel.Text = statusText;
        }
        /// <summary>
        /// SwapGameFiles swaps the game files when switching between games.
        /// </summary>
        private void SwapGameFiles(string target, string previous)
        {
            string[] textFromFile = File.ReadAllLines(System.IO.Path.Combine(documentsPath, "port-file-list.txt"));
            foreach (string line in textFromFile)
            {
                File.Move(System.IO.Path.Combine(documentsPath, overrideDirectory, $"{line}"), System.IO.Path.Combine(documentsPath, overrideDirectory, $"{line}.{previous}"));
                File.Move(System.IO.Path.Combine(documentsPath, overrideDirectory, $"{line}.{target}"), System.IO.Path.Combine(documentsPath, overrideDirectory, $"{line}"));
            }
            string[] files = new string[]
            {
                "Movies\\ObsidianEnt.bik",
                "dialog.tlk",
                "lips\\001EBO_loc.mod",
                "Modules\\001ebo.mod",
                "StreamMusic\\mus_sion.wav"
            };
            MoveFiles(files, "", $".{previous}");
            MoveFiles(files, $".{target}", "");
        }
        /// <summary>
        /// MoveFiles is used by checkBox1_CheckedChanged to swap files for the class changes.
        /// </summary>
        private void MoveFiles(string[] files, string sourceSuffix, string destinationSuffix)
        {
            foreach (string file in files)
            {
                File.Move(System.IO.Path.Combine(documentsPath, $"{file}{sourceSuffix}"), System.IO.Path.Combine(documentsPath, $"{file}{destinationSuffix}"));
            }
        }
        /// <summary>
        /// SwapSaveFolders swaps the save folders when switching between games.
        /// </summary>
        private void SwapSaveFolders(string target, string previous)
        {
            string saves = System.IO.Path.Combine(documentsPath, "Saves");
            if (Directory.Exists(saves))
            {
                Directory.Move(saves, previous);
                if (Directory.Exists(target)) { Directory.Move(target, saves); }
                else { Directory.CreateDirectory(saves); }
            }
            else { Directory.CreateDirectory(saves); }
        }
        /// <summary>
        /// InitializeParser parses the relevant settings from swkotor2.ini
        /// </summary>
        /// <remarks>
        /// Only parses the relevant settings.
        /// </remarks>
        private void GameClicked(object sender, EventArgs e)
        {
            click_play();
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
        private void WebsiteClicked(object sender, EventArgs e)
        {
            click_play();
            Launcher.OpenAsync("https://www.moddb.com/mods/kotor-ii-tsl-expanded-galaxy");
        }
        private void DiscordClicked(object sender, EventArgs e)
        {
            click_play();
            Launcher.OpenAsync("https://discord.gg/bkbj8Feu7b");
        }
        private void ExitClicked(object sender, EventArgs e)
        {
            click_play();
            App.Current!.Quit();
        }
        /// <summary>
        /// click_play
        /// </summary>
        private void click_play()
        {
            //PlaySoundAsync("MobileLauncher.Resources.Audio.click.wav");
        }
    }
}
