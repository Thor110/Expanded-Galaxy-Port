using Plugin.Maui.Audio;

namespace MobileLauncher
{
    public partial class MainPage : ContentPage
    {
        private readonly IAudioManager audioManager;
        private IAudioPlayer? musicPlayer;
        private IAudioPlayer? soundPlayer;
        public bool swappingFiles;
        public string documentsPath = String.Empty;
        public string disablePath = String.Empty;
        public string enablePath = String.Empty;
        public string checkPath = String.Empty;
        public const string healthOn = "Health Regeneration: On";
        public const string healthOff = "Health Regeneration: Off";
        public const string overrideDirectory = "override";
        public MainPage(IAudioManager audioManager)
        {
            InitializeComponent();
#if ANDROID
            documentsPath = "/Home/Android/data/com.aspyr.swkotor2/files";
#elif IOS
            documentsPath = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
#else
            documentsPath = ""; // Never used... just to avoid a warning.
#endif
            this.audioManager = audioManager;
            RequestAccess();
        }
        private async void PlayAudio(string audioFile, bool isSound)
        {
            if(!isSound)
            {
                musicPlayer?.Dispose();
            }
            musicPlayer = audioManager.CreatePlayer(await FileSystem.OpenAppPackageFileAsync(audioFile));
            musicPlayer.Play();
        }
        private void GameButton_Clicked(object sender, EventArgs e)
        {
            if(swappingFiles) { return; } // Prevents multiple clicks.
            swappingFiles = true;
            click_play();
            Microsoft.Maui.Controls.Button button = (Microsoft.Maui.Controls.Button)sender;
            Microsoft.Maui.Controls.Button otherButton = button == K1Button ? K2Button : K1Button;
            button.IsEnabled = false;
            button.BackgroundColor = button == K1Button ? Colors.Blue : Colors.Green;
            otherButton.IsEnabled = true;
            otherButton.BackgroundColor = Colors.Transparent;
            //disabled actual file swapping until file access is resolved.
            //SwapGameFiles(button == K1Button ? "port" : "main", button == K1Button ? "main" : "port");
            //SwapSaveFolders(button == K1Button ? "SavesK1" : "SavesK2", button == K1Button ? "SavesK2" : "SavesK1");
            RunMusic();
            swappingFiles = false;
        }
        private async void RequestAccess()
        {
            var status = await Permissions.RequestAsync<Permissions.StorageRead>();
            if (status == PermissionStatus.Granted) // Permission granted, you can access files
            {
                HealthLabel.Text = "FILE ACCESS PERMISSION GRANTED";
                AccessGranted();
            }
            else // Permission denied, display an error message
            {
                HealthLabel.Text = "FILE ACCESS PERMISSION DENIED";
                K1Button.IsEnabled = false;
                K2Button.IsEnabled = false;
                GameBtn.IsEnabled = false;
                HealthSwitch.IsEnabled = false;
            }
        }
        private void AccessGranted()
        {
            disablePath = System.IO.Path.Combine(documentsPath, overrideDirectory, "regeneration.2da"); // disables health regeneration
            enablePath = System.IO.Path.Combine(documentsPath, overrideDirectory, "regeneration2da.sets"); // enables health regeneration
            checkPath = System.IO.Path.Combine(documentsPath, "dialog.tlk.main");
            HealthSwitch.Toggled += HealthSwitch_Toggled!;

            
            try
            {
                using (var stream = File.OpenRead(enablePath))
                {
                    // If we get here, the file exists
                    HealthLabel.Text = "FILE FOUND";
                }
            }
            catch (Exception ex)
            {
                // If we get here, an error occurred
                HealthLabel.Text = $"ERROR : {ex.Message}";
            }



            /*
            if (File.Exists(disablePath)) // Parser Equivalent is just health regeneration.
            {
                HealthSwitch.IsToggled = false;
                HealthLabel.Text = healthOff;
            }
            // test code
            if (File.Exists(enablePath)) // Parser Equivalent is just health regeneration.
            {
                HealthSwitch.IsToggled = true;
                HealthLabel.Text = healthOn;
            }
            else
            {
                HealthSwitch.IsEnabled = false;
                //HealthLabel.Text = "ERROR : FILE NOT FOUND";
                HealthLabel.Text = $"ERROR : FILE NOT FOUND :{disablePath}"; // this is happening.
                //
                //BlueStacks Total Commander File Manager reports the file is there, but the app can't find it.
                if (File.Exists(System.IO.Path.Combine("/storage/emulated/0/", enablePath))) // Parser Equivalent is just health regeneration.
                {
                    HealthSwitch.IsToggled = true;
                    HealthLabel.Text = "verified at /storage/emulated/0/";
                }
            }*/
            // test code
            /*
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
            }*/
            RunMusic();
        }
        private void RunMusic()
        {
            if (K1Button.IsEnabled == true)
            {
                PlayAudio("background.wav", false);
                BackgroundImage.Source = "k2swlauncher1.png";
            }
            else
            {
                PlayAudio("k1background.wav", false);
                BackgroundImage.Source = "k1swlauncher1.png";
            }
        }
        private void HealthSwitch_Toggled(object sender, ToggledEventArgs e)
        {
            string sourcePath = e.Value ? enablePath : disablePath;
            string destinationPath = e.Value ? disablePath : enablePath;
            string statusText;
            if (File.Exists(sourcePath)) { statusText = "ERROR : FILE NOT FOUND"; }
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
        private void GameClicked(object sender, EventArgs e)
        {
            click_play();
#if ANDROID
            var packageName = "com.aspyr.swkotor2";
            var androidApp = new Android.Content.Intent(Android.Content.Intent.ActionMain);
            androidApp.AddCategory(Android.Content.Intent.CategoryLauncher);
            androidApp.SetPackage(packageName);
            var activityInfo = androidApp.ResolveActivity(Android.App.Application.Context.PackageManager!);
            if (activityInfo != null)
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
            /*if (Foundation.NSUrl.RequestsOpenAccess(url, out var error))
            {
                Foundation.NSUrl.OpenUrl(url);
            }
            else
            {
                GameBtn.Text = "App not found";
            }*/
            GameBtn.Text = "iOS not supported";//
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
        private async void ExitClicked(object sender, EventArgs e)
        {
            click_play();
            await Task.Delay(100); // slow pause to allow sound to actually play?
            App.Current!.Quit();
        }
        /// <summary>
        /// click_play
        /// </summary>
        private void click_play() { PlayAudio("click.wav", true); }
    }
}
