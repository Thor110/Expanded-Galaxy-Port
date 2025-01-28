using Microsoft.Win32;
using System;
using System.Diagnostics;
using System.Media;

namespace Launcher
{
    public partial class FirstForm : Form
    {
        private RegistryKey key = Registry.CurrentUser.OpenSubKey(@"Expanded Galaxy")!;
        public int game = 1;
        public bool combo;
        public FirstForm()
        {
            InitializeComponent();
            comboBox1.Items.Add("KotOR1");
            comboBox1.Items.Add("KotOR2");
            InitializeRegistry();
        }
        private void FirstForm_Load(object sender, EventArgs e)
        {
            //Check which game is loaded here maybe
            PlaySound(Properties.Resources.background);
            // SoundPlayer cannot play sounds simultaneously
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
                key.SetValue("Game", 1);
            }
            /*if (game == 1)
            {
                //MessageBox.Show("KotOR1");
                //comboBox1.SelectedIndex = 0;
                // no need to set background image as default is 1
            }*/
            if (game == 2)
            {
                //MessageBox.Show("KotOR2");
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
                    // change game
                    //MessageBox.Show("Enabling Port");
                    key = Registry.CurrentUser.OpenSubKey(@"Expanded Galaxy", true)!;
                    key.SetValue("Game", 1);
                    key.Close();
                    game = 1;
                    setKotOR1();
                }
            }
            else
            {
                if (game == 1)
                {
                    // change game
                    //MessageBox.Show("Enabling Main");
                    key = Registry.CurrentUser.OpenSubKey(@"Expanded Galaxy", true)!;
                    key.SetValue("Game", 2);
                    key.Close();
                    game = 2;
                    setKotOR2();
                }
            }
        }
        private void setKotOR1()
        {
            if (File.Exists("dialog.tlk.port"))
            {
                // port disabled currently. enable it.
                // lazy non cross platform solution
                var process = new Process();
                var startinfo = new ProcessStartInfo("enable.bat");
                startinfo.RedirectStandardOutput = true;
                startinfo.UseShellExecute = false;
                process.StartInfo = startinfo;
                process.OutputDataReceived += (sender, argsx) => Console.WriteLine(argsx.Data); // do whatever processing you need to do in this handler
                process.Start();
                process.BeginOutputReadLine();
                process.WaitForExit();
                this.BackgroundImage = Properties.Resources.k1swlauncher1;
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
                var process = new Process();
                var startinfo = new ProcessStartInfo("disable.bat");
                startinfo.RedirectStandardOutput = true;
                startinfo.UseShellExecute = false;
                process.StartInfo = startinfo;
                process.OutputDataReceived += (sender, argsx) => Console.WriteLine(argsx.Data); // do whatever processing you need to do in this handler
                process.Start();
                process.BeginOutputReadLine();
                process.WaitForExit();
                this.BackgroundImage = Properties.Resources.k2swlauncher1;
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
            var process = new Process();
            var startinfo = new ProcessStartInfo("play.bat");
            startinfo.RedirectStandardOutput = true;
            startinfo.UseShellExecute = false;
            process.StartInfo = startinfo;
            process.OutputDataReceived += (sender, argsx) => Console.WriteLine(argsx.Data); // do whatever processing you need to do in this handler
            process.Start();
            process.BeginOutputReadLine();
            process.WaitForExit();
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
        public void PlaySound(Stream s) { var player = new SoundPlayer(s); player.Play(); }
        private void hover_play() { PlaySound(Properties.Resources.hover); }
        private void click_play() { PlaySound(Properties.Resources.click); }
        private void button6_MouseEnter(object sender, EventArgs e) { this.button6.BackgroundImage = Properties.Resources.minimisebuttonover; hover_play(); }
        private void button6_MouseLeave(object sender, EventArgs e) { this.button6.BackgroundImage = Properties.Resources.minimisebutton; }
        private void button7_MouseEnter(object sender, EventArgs e) { this.button7.BackgroundImage = Properties.Resources.xbuttonover; hover_play(); }
        private void button7_MouseLeave(object sender, EventArgs e) { this.button7.BackgroundImage = Properties.Resources.xbutton; }
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