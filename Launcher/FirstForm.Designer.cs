namespace Launcher
{
    partial class FirstForm
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FirstForm));
            button1 = new Button();
            button2 = new Button();
            button3 = new Button();
            button4 = new Button();
            button5 = new Button();
            comboBox1 = new ComboBox();
            SuspendLayout();
            // 
            // button1
            // 
            button1.BackColor = Color.Transparent;
            button1.FlatAppearance.BorderSize = 0;
            button1.FlatAppearance.MouseDownBackColor = SystemColors.GradientActiveCaption;
            button1.FlatAppearance.MouseOverBackColor = Color.LightSlateGray;
            button1.FlatStyle = FlatStyle.Flat;
            button1.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            button1.ForeColor = SystemColors.AppWorkspace;
            button1.Location = new Point(208, 376);
            button1.Name = "button1";
            button1.Size = new Size(182, 39);
            button1.TabIndex = 4;
            button1.Text = "Exit";
            button1.UseVisualStyleBackColor = false;
            button1.Click += close_Click;
            button1.MouseDown += button_MouseDown;
            button1.MouseEnter += button_MouseEnter;
            button1.MouseLeave += button_MouseLeave;
            // 
            // button2
            // 
            button2.BackColor = Color.Transparent;
            button2.FlatAppearance.BorderSize = 0;
            button2.FlatAppearance.MouseDownBackColor = SystemColors.GradientActiveCaption;
            button2.FlatAppearance.MouseOverBackColor = Color.LightSlateGray;
            button2.FlatStyle = FlatStyle.Flat;
            button2.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            button2.ForeColor = SystemColors.AppWorkspace;
            button2.Location = new Point(208, 334);
            button2.Name = "button2";
            button2.Size = new Size(182, 39);
            button2.TabIndex = 3;
            button2.Text = "Discord";
            button2.UseVisualStyleBackColor = false;
            button2.Click += discord_Click;
            button2.MouseDown += button_MouseDown;
            button2.MouseEnter += button_MouseEnter;
            button2.MouseLeave += button_MouseLeave;
            // 
            // button3
            // 
            button3.BackColor = Color.Transparent;
            button3.FlatAppearance.BorderSize = 0;
            button3.FlatAppearance.MouseDownBackColor = SystemColors.GradientActiveCaption;
            button3.FlatAppearance.MouseOverBackColor = Color.LightSlateGray;
            button3.FlatStyle = FlatStyle.Flat;
            button3.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            button3.ForeColor = SystemColors.AppWorkspace;
            button3.Location = new Point(208, 292);
            button3.Name = "button3";
            button3.Size = new Size(182, 39);
            button3.TabIndex = 2;
            button3.Text = "Mod Page";
            button3.UseVisualStyleBackColor = false;
            button3.Click += website_Click;
            button3.MouseDown += button_MouseDown;
            button3.MouseEnter += button_MouseEnter;
            button3.MouseLeave += button_MouseLeave;
            // 
            // button4
            // 
            button4.BackColor = Color.Transparent;
            button4.FlatAppearance.BorderSize = 0;
            button4.FlatAppearance.MouseDownBackColor = SystemColors.GradientActiveCaption;
            button4.FlatAppearance.MouseOverBackColor = Color.LightSlateGray;
            button4.FlatStyle = FlatStyle.Flat;
            button4.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            button4.ForeColor = SystemColors.AppWorkspace;
            button4.Location = new Point(208, 250);
            button4.Name = "button4";
            button4.Size = new Size(182, 39);
            button4.TabIndex = 1;
            button4.Text = "Configure";
            button4.UseVisualStyleBackColor = false;
            button4.Click += settings_Click;
            button4.MouseDown += button_MouseDown;
            button4.MouseEnter += button_MouseEnter;
            button4.MouseLeave += button_MouseLeave;
            // 
            // button5
            // 
            button5.BackColor = Color.Transparent;
            button5.FlatAppearance.BorderSize = 0;
            button5.FlatAppearance.MouseDownBackColor = SystemColors.GradientActiveCaption;
            button5.FlatAppearance.MouseOverBackColor = Color.LightSlateGray;
            button5.FlatStyle = FlatStyle.Flat;
            button5.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            button5.ForeColor = SystemColors.AppWorkspace;
            button5.Location = new Point(208, 208);
            button5.Name = "button5";
            button5.Size = new Size(182, 39);
            button5.TabIndex = 0;
            button5.Text = "Game";
            button5.UseVisualStyleBackColor = false;
            button5.Click += game_Click;
            button5.MouseDown += button_MouseDown;
            button5.MouseEnter += button_MouseEnter;
            button5.MouseLeave += button_MouseLeave;
            // 
            // comboBox1
            // 
            comboBox1.FormattingEnabled = true;
            comboBox1.Location = new Point(136, 527);
            comboBox1.Name = "comboBox1";
            comboBox1.Size = new Size(64, 23);
            comboBox1.TabIndex = 7;
            comboBox1.Text = "KotOR1";
            comboBox1.SelectedIndexChanged += comboBox1_SelectedIndexChanged;
            // 
            // FirstForm
            // 
            AcceptButton = button5;
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackgroundImage = Properties.Resources.k1swlauncher1;
            BackgroundImageLayout = ImageLayout.Zoom;
            CancelButton = button1;
            ClientSize = new Size(600, 560);
            Controls.Add(comboBox1);
            Controls.Add(button1);
            Controls.Add(button2);
            Controls.Add(button3);
            Controls.Add(button4);
            Controls.Add(button5);
            DoubleBuffered = true;
            FormBorderStyle = FormBorderStyle.None;
            Icon = (Icon)resources.GetObject("$this.Icon");
            KeyPreview = true;
            MaximizeBox = false;
            MinimizeBox = false;
            Name = "FirstForm";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Expanded Galaxy";
            Load += FirstForm_Load;
            ResumeLayout(false);
        }
        #endregion
        private Button button1;
        private Button button2;
        private Button button3;
        private Button button4;
        private Button button5;
        private ComboBox comboBox1;
    }
}