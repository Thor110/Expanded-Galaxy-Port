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
            button1 = new CustomButton();
            button2 = new CustomButton();
            button3 = new CustomButton();
            button4 = new CustomButton();
            button5 = new CustomButton();
            comboBox1 = new ComboBox();
            checkBox1 = new CheckBox();
            checkBox2 = new CheckBox();
            pictureBox1 = new PictureBox();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            SuspendLayout();
            // 
            // button1
            // 
            button1.BackColor = Color.Transparent;
            button1.FlatAppearance.BorderColor = Color.Black;
            button1.FlatAppearance.BorderSize = 0;
            button1.FlatAppearance.MouseDownBackColor = Color.Transparent;
            button1.FlatAppearance.MouseOverBackColor = Color.Transparent;
            button1.FlatStyle = FlatStyle.Flat;
            button1.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            button1.ForeColor = SystemColors.AppWorkspace;
            button1.Location = new Point(209, 374);
            button1.Name = "button1";
            button1.Size = new Size(182, 43);
            button1.TabIndex = 0;
            button1.Text = "Exit";
            button1.UseVisualStyleBackColor = false;
            button1.Click += close_Click;
            button1.GotFocus += button_MouseEnter;
            button1.LostFocus += button_MouseLeave;
            button1.MouseDown += button_MouseDown;
            button1.MouseEnter += button_MouseEnter;
            button1.MouseLeave += button_MouseLeave;
            // 
            // button2
            // 
            button2.BackColor = Color.Transparent;
            button2.FlatAppearance.BorderColor = Color.Black;
            button2.FlatAppearance.BorderSize = 0;
            button2.FlatAppearance.MouseDownBackColor = Color.Transparent;
            button2.FlatAppearance.MouseOverBackColor = Color.Transparent;
            button2.FlatStyle = FlatStyle.Flat;
            button2.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            button2.ForeColor = SystemColors.AppWorkspace;
            button2.Location = new Point(209, 332);
            button2.Name = "button2";
            button2.Size = new Size(182, 43);
            button2.TabIndex = 4;
            button2.Text = "Discord";
            button2.UseVisualStyleBackColor = false;
            button2.Click += discord_Click;
            button2.GotFocus += button_MouseEnter;
            button2.LostFocus += button_MouseLeave;
            button2.MouseDown += button_MouseDown;
            button2.MouseEnter += button_MouseEnter;
            button2.MouseLeave += button_MouseLeave;
            // 
            // button3
            // 
            button3.BackColor = Color.Transparent;
            button3.FlatAppearance.BorderColor = Color.Black;
            button3.FlatAppearance.BorderSize = 0;
            button3.FlatAppearance.MouseDownBackColor = Color.Transparent;
            button3.FlatAppearance.MouseOverBackColor = Color.Transparent;
            button3.FlatStyle = FlatStyle.Flat;
            button3.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            button3.ForeColor = SystemColors.AppWorkspace;
            button3.Location = new Point(209, 290);
            button3.Name = "button3";
            button3.Size = new Size(182, 43);
            button3.TabIndex = 3;
            button3.Text = "Website";
            button3.UseVisualStyleBackColor = false;
            button3.Click += website_Click;
            button3.GotFocus += button_MouseEnter;
            button3.LostFocus += button_MouseLeave;
            button3.MouseDown += button_MouseDown;
            button3.MouseEnter += button_MouseEnter;
            button3.MouseLeave += button_MouseLeave;
            // 
            // button4
            // 
            button4.BackColor = Color.Transparent;
            button4.FlatAppearance.BorderColor = Color.Black;
            button4.FlatAppearance.BorderSize = 0;
            button4.FlatAppearance.MouseDownBackColor = Color.Transparent;
            button4.FlatAppearance.MouseOverBackColor = Color.Transparent;
            button4.FlatStyle = FlatStyle.Flat;
            button4.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            button4.ForeColor = SystemColors.AppWorkspace;
            button4.Location = new Point(209, 248);
            button4.Name = "button4";
            button4.Size = new Size(182, 43);
            button4.TabIndex = 2;
            button4.Text = "Configure";
            button4.UseVisualStyleBackColor = false;
            button4.Click += configure_Click;
            button4.GotFocus += button_MouseEnter;
            button4.LostFocus += button_MouseLeave;
            button4.MouseDown += button_MouseDown;
            button4.MouseEnter += button_MouseEnter;
            button4.MouseLeave += button_MouseLeave;
            // 
            // button5
            // 
            button5.BackColor = Color.Transparent;
            button5.FlatAppearance.BorderColor = Color.Black;
            button5.FlatAppearance.BorderSize = 0;
            button5.FlatAppearance.MouseDownBackColor = Color.Transparent;
            button5.FlatAppearance.MouseOverBackColor = Color.Transparent;
            button5.FlatStyle = FlatStyle.Flat;
            button5.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            button5.ForeColor = SystemColors.AppWorkspace;
            button5.Location = new Point(209, 205);
            button5.Name = "button5";
            button5.Size = new Size(182, 43);
            button5.TabIndex = 1;
            button5.Text = "Game";
            button5.UseVisualStyleBackColor = false;
            button5.Click += game_Click;
            button5.GotFocus += button_MouseEnter;
            button5.LostFocus += button_MouseLeave;
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
            comboBox1.TabIndex = 6;
            comboBox1.TabStop = false;
            comboBox1.Text = "KotOR1";
            comboBox1.SelectedIndexChanged += comboBox1_SelectedIndexChanged;
            // 
            // checkBox1
            // 
            checkBox1.AutoSize = true;
            checkBox1.BackColor = Color.Transparent;
            checkBox1.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            checkBox1.ForeColor = SystemColors.AppWorkspace;
            checkBox1.Location = new Point(247, 218);
            checkBox1.Name = "checkBox1";
            checkBox1.Size = new Size(135, 19);
            checkBox1.TabIndex = 7;
            checkBox1.Text = "Jedi From The Start";
            checkBox1.UseVisualStyleBackColor = false;
            checkBox1.Visible = false;
            checkBox1.CheckedChanged += checkBox1_CheckedChanged;
            // 
            // checkBox2
            // 
            checkBox2.AutoSize = true;
            checkBox2.BackColor = Color.Transparent;
            checkBox2.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            checkBox2.ForeColor = SystemColors.AppWorkspace;
            checkBox2.Location = new Point(271, 218);
            checkBox2.Name = "checkBox2";
            checkBox2.Size = new Size(111, 19);
            checkBox2.TabIndex = 8;
            checkBox2.Text = "KotOR1 Classes";
            checkBox2.UseVisualStyleBackColor = false;
            checkBox2.Visible = false;
            checkBox2.CheckedChanged += checkBox2_CheckedChanged;
            // 
            // pictureBox1
            // 
            pictureBox1.BackColor = Color.Black;
            pictureBox1.Location = new Point(209, 205);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(182, 168);
            pictureBox1.TabIndex = 9;
            pictureBox1.TabStop = false;
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
            Controls.Add(checkBox2);
            Controls.Add(checkBox1);
            Controls.Add(comboBox1);
            Controls.Add(button1);
            Controls.Add(button2);
            Controls.Add(button3);
            Controls.Add(button4);
            Controls.Add(button5);
            Controls.Add(pictureBox1);
            DoubleBuffered = true;
            FormBorderStyle = FormBorderStyle.None;
            Icon = (Icon)resources.GetObject("$this.Icon");
            KeyPreview = true;
            MaximizeBox = false;
            MinimizeBox = false;
            Name = "FirstForm";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Expanded Galaxy";
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private ComboBox comboBox1;
        private CustomButton button1;
        private CustomButton button2;
        private CustomButton button3;
        private CustomButton button4;
        private CustomButton button5;
        private CheckBox checkBox1;
        private CheckBox checkBox2;
        private PictureBox pictureBox1;
    }
}