
namespace ProjectMain
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
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
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dataGrabbingButton = new System.Windows.Forms.Button();
            this.dataOutput = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // dataGrabbingButton
            // 
            this.dataGrabbingButton.Location = new System.Drawing.Point(460, 243);
            this.dataGrabbingButton.Name = "dataGrabbingButton";
            this.dataGrabbingButton.Size = new System.Drawing.Size(75, 23);
            this.dataGrabbingButton.TabIndex = 0;
            this.dataGrabbingButton.Text = "Grab Data";
            this.dataGrabbingButton.UseVisualStyleBackColor = true;
            this.dataGrabbingButton.Click += new System.EventHandler(this.dataGrabbingButton_Click);
            // 
            // dataOutput
            // 
            this.dataOutput.Location = new System.Drawing.Point(447, 217);
            this.dataOutput.Name = "dataOutput";
            this.dataOutput.Size = new System.Drawing.Size(100, 20);
            this.dataOutput.TabIndex = 1;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.WindowFrame;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.ClientSize = new System.Drawing.Size(1452, 647);
            this.Controls.Add(this.dataOutput);
            this.Controls.Add(this.dataGrabbingButton);
            this.HelpButton = true;
            this.Name = "Form1";
            this.Opacity = 0.6D;
            this.Text = "Gamer\'s Gallery";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button dataGrabbingButton;
        private System.Windows.Forms.TextBox dataOutput;
    }
}

