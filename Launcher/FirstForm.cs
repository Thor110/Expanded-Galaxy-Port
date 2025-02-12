using Microsoft.Win32;
using System.Diagnostics;
using System.Media;
using NAudio.Wave;

namespace Launcher
{
    public partial class FirstForm : Form
    {
        private RegistryKey key = Registry.CurrentUser.OpenSubKey(@"Expanded Galaxy")!;
        public int game;
        public bool combo;
        private CancellationTokenSource cts;
        private WaveOutEvent waveOutEvent;
        public FirstForm()
        {
            InitializeComponent();
            comboBox1.Items.Add("KotOR1");
            comboBox1.Items.Add("KotOR2");
            InitializeRegistry();
            // SoundPlayer cannot play sounds simultaneously
        }
        private void FirstForm_Load(object sender, EventArgs e)
        {
            //Check which game is loaded here maybe
        }
        /// <summary>
        /// Initialises the registry.
        /// </summary>
        private void InitializeRegistry()
        {
            if (key != null)
            {
                game = (int)key.GetValue("Game")!;
            }
            else
            {
                key = Registry.CurrentUser.CreateSubKey(@"Expanded Galaxy");
                game = 1;
                key.SetValue("Game", game);
            }
            if (game == 1)
            {
                PlayBackgroundSound(Properties.Resources.k1background);
            }
            if (game == 2)
            {
                PlayBackgroundSound(Properties.Resources.background);
                comboBox1.SelectedIndex = 1;
                this.BackgroundImage = Properties.Resources.k2swlauncher1;
            }
            key.Close();
            combo = true;
        }
        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!combo)
            {
                return;
            }
            if(comboBox1.SelectedIndex == 0)
            {
                if (game == 2)
                {
                    game = 1;
                    setKotOR1();
                }
            }
            else
            {
                if (game == 1)
                {
                    game = 2;
                    setKotOR2();
                }
            }
        }
        private void setReg()
        {
            key = Registry.CurrentUser.OpenSubKey(@"Expanded Galaxy", true)!;
            key.SetValue("Game", game);
            key.Close();
        }
        private void runBatch(string name)
        {
            var process = new Process();
            var startinfo = new ProcessStartInfo(name);
            process.StartInfo = startinfo;
            process.StartInfo.CreateNoWindow = true;
            process.OutputDataReceived += (sender, argsx) => Console.WriteLine(argsx.Data);
            process.Start();
            process.WaitForExit();
        }
        private void setKotOR1()
        {
            if (File.Exists("dialog.tlk.port"))
            {
                // port disabled currently. enable it.
                // lazy non cross platform solution
                runBatch("enable.bat");
                setReg();
                this.BackgroundImage = Properties.Resources.k1swlauncher1;
                PlayBackgroundSound(Properties.Resources.k1background);
            }
            else
            {
                // port enabled currently do nothing
                MessageBox.Show("Huh? Error? : B1"); // only happens if you swap using the original launcher.bat file.
            }
        }
        private void setKotOR2()
        {
            if (File.Exists("dialog.tlk.main"))
            {
                // port enabled currently. disable it.
                // lazy non cross platform solution
                runBatch("disable.bat");
                setReg();
                this.BackgroundImage = Properties.Resources.k2swlauncher1;
                PlayBackgroundSound(Properties.Resources.background);
            }
            else
            {
                // port disabled currently do nothing
                MessageBox.Show("Huh? Error? : B2"); // only happens if you swap using the original launcher.bat file.
            }
        }
        private void game_Click(object sender, EventArgs e)
        {
            click_play();
            runBatch("play.bat");
            Close();
        }
        private void settings_Click(object sender, EventArgs e)
        {
            click_play();
            MessageBox.Show("No Settings Yet!");
        }
        private void website_Click(object sender, EventArgs e) { click_play(); Process.Start(new ProcessStartInfo("https://www.moddb.com/mods/kotor-ii-tsl-expanded-galaxy") { UseShellExecute = true }); }
        private void discord_Click(object sender, EventArgs e) { click_play(); Process.Start(new ProcessStartInfo("https://discord.gg/bkbj8Feu7b") { UseShellExecute = true }); }
        private void close_Click(object sender, EventArgs e) { click_play(); Close(); }
        private void minimise_Click(object sender, EventArgs e) { click_play(); this.WindowState = FormWindowState.Minimized; }
        public void PlaySound(string soundFilePath)
        {
            using (var waveFileReader = new WaveFileReader(soundFilePath))
            using (var waveOutEvent = new WaveOutEvent())
            {
                waveOutEvent.Init(waveFileReader);
                waveOutEvent.Play();
                while (waveOutEvent.PlaybackState == PlaybackState.Playing)
                {
                    System.Threading.Thread.Sleep(100);
                }
            }
        }
        private void PlayBackgroundSound(Stream soundStream)
        {
            cts?.Cancel(); // Cancel the current sound
            cts = new CancellationTokenSource();
            waveOutEvent?.Dispose(); // Dispose the previous WaveOutEvent
            waveOutEvent = new WaveOutEvent();
            System.Threading.Thread thread = new System.Threading.Thread(() =>
            {
                using (var waveFileReader = new WaveFileReader(soundStream))
                {
                    waveOutEvent.Init(waveFileReader);
                    waveOutEvent.Play();
                    while (waveOutEvent.PlaybackState == PlaybackState.Playing && !cts.IsCancellationRequested)
                    {
                        System.Threading.Thread.Sleep(100);
                    }
                    waveOutEvent.Stop(); // Stop the sound playback
                }
            });
            thread.IsBackground = true; // So that the thread dies when the form closes
            thread.Start();
        }
        private void hover_play()
        {
            System.Threading.Thread thread = new System.Threading.Thread(() =>
            {
                PlaySound(Properties.Resources.hover);
            });
            thread.IsBackground = true;
            thread.Start();
        }

        private void click_play()
        {
            System.Threading.Thread thread = new System.Threading.Thread(() =>
            {
                PlaySound(Properties.Resources.click);
            });
            thread.IsBackground = true;
            thread.Start();
        }
        private void PlaySound(Stream soundStream)
        {
            using (var waveFileReader = new WaveFileReader(soundStream))
            using (var waveOutEvent = new WaveOutEvent())
            {
                waveOutEvent.Init(waveFileReader);
                waveOutEvent.Play();
                while (waveOutEvent.PlaybackState == PlaybackState.Playing)
                {
                    System.Threading.Thread.Sleep(100);
                }
            }
        }
        private void button_MouseEnter(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            if (game == 1) { button.BackgroundImage = Properties.Resources.mouseover; }
            if (game == 2) { button.BackgroundImage = Properties.Resources.k2mouseover; }
            hover_play();
        }
        private void button_MouseLeave(object sender, EventArgs e) { Button button = (Button)sender; button.BackgroundImage = null; }
        private void button_MouseDown(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            if (game == 1) { button.BackgroundImage = Properties.Resources.mousedown; }
            if (game == 2) { button.BackgroundImage = Properties.Resources.k2mousedown; }
        }
    }
}