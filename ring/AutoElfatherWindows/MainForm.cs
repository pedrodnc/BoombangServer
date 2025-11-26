using System;
using System.Drawing;
using System.Windows.Forms;
using System.Runtime.InteropServices;
using System.Diagnostics;
using System.Net.NetworkInformation;
using System.Threading;
using System.Threading.Tasks;

namespace AutoElfather
{
    public partial class MainForm : Form
    {
        // Win32 API imports
        [DllImport("user32.dll")]
        static extern void mouse_event(uint dwFlags, int dx, int dy, uint dwData, int dwExtraInfo);

        [DllImport("user32.dll")]
        static extern bool SetCursorPos(int X, int Y);

        [DllImport("user32.dll")]
        [return: MarshalAs(UnmanagedType.Bool)]
        static extern bool GetCursorPos(out POINT lpPoint);

        [StructLayout(LayoutKind.Sequential)]
        public struct POINT
        {
            public int X;
            public int Y;
        }

        private const uint MOUSEEVENTF_LEFTDOWN = 0x02;
        private const uint MOUSEEVENTF_LEFTUP = 0x04;

        // Estado y configuración
        private bool isRunning = false;
        private Point fixedCoordinates = Point.Empty;
        private TabControl tabControl;
        private Label coordLabel, pingLabel, statusLabel;
        private TextBox messageBox;
        private System.Windows.Forms.Timer clickTimer;
        private System.Windows.Forms.Timer pingTimer;
        private Button brrButton, launcherButton, helpButton;

        // Configuraciones de potencia (basadas en el análisis del juego Ring)
        private PowerConfig lowPower = new PowerConfig {
            Name = "Baja (30-40%)",
            ClickDelay = 80,
            HoldTime = 30,
            Description = "Rápida y precisa para distancias cortas"
        };

        private PowerConfig medPower = new PowerConfig {
            Name = "Media (50-70%)",
            ClickDelay = 120,
            HoldTime = 60,
            Description = "Balance perfecto velocidad/potencia"
        };

        private PowerConfig highPower = new PowerConfig {
            Name = "Alta (80-100%)",
            ClickDelay = 180,
            HoldTime = 100,
            Description = "Máxima potencia para distancias largas"
        };

        private PowerConfig currentConfig;

        public MainForm()
        {
            InitializeComponent();
            SetupForm();
            SetupTabs();
            SetupControls();
            SetupTimers();
            SetupHotkeys();
            currentConfig = medPower; // Default a media potencia
        }

        private void SetupForm()
        {
            this.Text = "Auto elfather, el boss del sexxxx";
            this.Size = new Size(900, 650);
            this.FormBorderStyle = FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.StartPosition = FormStartPosition.CenterScreen;

            // Intentar cargar la imagen de fondo
            try
            {
                string imagePath = System.IO.Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "elfather.png");
                if (System.IO.File.Exists(imagePath))
                {
                    this.BackgroundImage = Image.FromFile(imagePath);
                    this.BackgroundImageLayout = ImageLayout.Stretch;
                }
                else
                {
                    // Fondo gradiente si no hay imagen
                    this.Paint += (s, e) => {
                        using (var brush = new System.Drawing.Drawing2D.LinearGradientBrush(
                            this.ClientRectangle,
                            Color.FromArgb(20, 20, 40),
                            Color.FromArgb(60, 30, 80),
                            45f))
                        {
                            e.Graphics.FillRectangle(brush, this.ClientRectangle);
                        }
                    };
                }
            }
            catch
            {
                this.BackColor = Color.FromArgb(30, 30, 50);
            }

            // Label de créditos
            Label creditLabel = new Label
            {
                Text = "Creado por erKabesa aka JkPedro",
                Font = new Font("Segoe UI", 10, FontStyle.Bold | FontStyle.Italic),
                ForeColor = Color.Gold,
                BackColor = Color.Transparent,
                AutoSize = true,
                Location = new Point(10, this.ClientSize.Height - 35)
            };
            this.Controls.Add(creditLabel);
        }

        private void SetupTabs()
        {
            tabControl = new TabControl
            {
                Location = new Point(20, 20),
                Size = new Size(850, 400),
                Font = new Font("Segoe UI", 11, FontStyle.Bold)
            };

            // Tab 1: Baja Potencia
            var tab1 = CreatePowerTab(lowPower, Color.FromArgb(100, 180, 255));
            tabControl.TabPages.Add(tab1);

            // Tab 2: Media Potencia
            var tab2 = CreatePowerTab(medPower, Color.FromArgb(255, 200, 100));
            tabControl.TabPages.Add(tab2);

            // Tab 3: Alta Potencia
            var tab3 = CreatePowerTab(highPower, Color.FromArgb(255, 100, 100));
            tabControl.TabPages.Add(tab3);

            tabControl.SelectedIndexChanged += (s, e) => {
                switch (tabControl.SelectedIndex)
                {
                    case 0: currentConfig = lowPower; break;
                    case 1: currentConfig = medPower; break;
                    case 2: currentConfig = highPower; break;
                }
                UpdateStatus($"Configuración cambiada a: {currentConfig.Name}");
            };

            this.Controls.Add(tabControl);
        }

        private TabPage CreatePowerTab(PowerConfig config, Color themeColor)
        {
            var tab = new TabPage(config.Name);
            tab.BackColor = Color.FromArgb(40, 40, 60);

            var descPanel = new Panel
            {
                Location = new Point(20, 20),
                Size = new Size(800, 100),
                BackColor = Color.FromArgb(60, 60, 80),
                BorderStyle = BorderStyle.FixedSingle
            };

            var titleLabel = new Label
            {
                Text = $"⚡ {config.Name}",
                Font = new Font("Segoe UI", 16, FontStyle.Bold),
                ForeColor = themeColor,
                AutoSize = true,
                Location = new Point(15, 10),
                BackColor = Color.Transparent
            };
            descPanel.Controls.Add(titleLabel);

            var descLabel = new Label
            {
                Text = config.Description,
                Font = new Font("Segoe UI", 12),
                ForeColor = Color.White,
                AutoSize = true,
                Location = new Point(15, 45),
                BackColor = Color.Transparent
            };
            descPanel.Controls.Add(descLabel);

            var statsLabel = new Label
            {
                Text = $"⏱ Delay: {config.ClickDelay}ms | ⏳ Hold: {config.HoldTime}ms",
                Font = new Font("Consolas", 10),
                ForeColor = Color.LightGreen,
                AutoSize = true,
                Location = new Point(15, 70),
                BackColor = Color.Transparent
            };
            descPanel.Controls.Add(statsLabel);

            tab.Controls.Add(descPanel);

            // Instrucciones de uso para esta configuración
            var instructionsPanel = new Panel
            {
                Location = new Point(20, 140),
                Size = new Size(800, 200),
                BackColor = Color.FromArgb(50, 50, 70),
                BorderStyle = BorderStyle.FixedSingle,
                AutoScroll = true
            };

            string instructions = GetInstructionsForPower(config);
            var instructionsLabel = new Label
            {
                Text = instructions,
                Font = new Font("Segoe UI", 10),
                ForeColor = Color.White,
                Location = new Point(10, 10),
                Size = new Size(760, 180),
                BackColor = Color.Transparent
            };
            instructionsPanel.Controls.Add(instructionsLabel);
            tab.Controls.Add(instructionsPanel);

            return tab;
        }

        private string GetInstructionsForPower(PowerConfig config)
        {
            if (config == lowPower)
                return "✨ BAJA POTENCIA (30-40%)\n\n" +
                       "📌 Ideal para: Anillos cercanos (1-3 posiciones)\n" +
                       "⚡ Velocidad: Ultra rápida\n" +
                       "🎯 Precisión: Alta\n" +
                       "💡 Tip: Perfecta para speedruns y máxima velocidad de juego";
            else if (config == medPower)
                return "⚖️ MEDIA POTENCIA (50-70%)\n\n" +
                       "📌 Ideal para: Distancias medias (4-6 posiciones)\n" +
                       "⚡ Velocidad: Balanceada\n" +
                       "🎯 Precisión: Óptima\n" +
                       "💡 Tip: Configuración recomendada para la mayoría de situaciones";
            else
                return "💪 ALTA POTENCIA (80-100%)\n\n" +
                       "📌 Ideal para: Anillos lejanos (7-10 posiciones)\n" +
                       "⚡ Velocidad: Controlada\n" +
                       "🎯 Precisión: Máxima potencia\n" +
                       "💡 Tip: Para alcanzar objetivos difíciles o muy distantes";
        }

        private void SetupControls()
        {
            int yPos = 440;

            // Panel de estado
            var statusPanel = new Panel
            {
                Location = new Point(20, yPos),
                Size = new Size(850, 140),
                BackColor = Color.FromArgb(40, 40, 60),
                BorderStyle = BorderStyle.FixedSingle
            };

            // Coordenadas
            coordLabel = new Label
            {
                Text = "📍 Coordenadas: No fijadas (Presiona F6)",
                Font = new Font("Consolas", 11, FontStyle.Bold),
                ForeColor = Color.Cyan,
                AutoSize = true,
                Location = new Point(15, 15),
                BackColor = Color.Transparent
            };
            statusPanel.Controls.Add(coordLabel);

            // Ping
            pingLabel = new Label
            {
                Text = "📡 Ping: -- ms",
                Font = new Font("Consolas", 11, FontStyle.Bold),
                ForeColor = Color.LightGreen,
                AutoSize = true,
                Location = new Point(15, 45),
                BackColor = Color.Transparent
            };
            statusPanel.Controls.Add(pingLabel);

            // Estado
            statusLabel = new Label
            {
                Text = "⏸️ Estado: Inactivo (Presiona F1 para activar)",
                Font = new Font("Consolas", 11, FontStyle.Bold),
                ForeColor = Color.Yellow,
                AutoSize = true,
                Location = new Point(15, 75),
                BackColor = Color.Transparent
            };
            statusPanel.Controls.Add(statusLabel);

            // MessageBox
            messageBox = new TextBox
            {
                Location = new Point(450, 15),
                Size = new Size(250, 30),
                Font = new Font("Consolas", 10),
                BackColor = Color.FromArgb(60, 60, 80),
                ForeColor = Color.White,
                BorderStyle = BorderStyle.FixedSingle
            };
            statusPanel.Controls.Add(messageBox);

            // Botón BRRR
            brrButton = new Button
            {
                Text = "🚀 BBBBRRRRRRRRRR",
                Location = new Point(710, 10),
                Size = new Size(120, 40),
                Font = new Font("Segoe UI", 9, FontStyle.Bold),
                BackColor = Color.FromArgb(200, 50, 50),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat
            };
            brrButton.FlatAppearance.BorderColor = Color.Red;
            brrButton.FlatAppearance.BorderSize = 2;
            brrButton.Click += (s, e) => messageBox.Text = "BBBBRRRRRRRRRR";
            statusPanel.Controls.Add(brrButton);

            // Botón Launcher
            launcherButton = new Button
            {
                Text = "🎮 Launcher",
                Location = new Point(450, 60),
                Size = new Size(120, 35),
                Font = new Font("Segoe UI", 9, FontStyle.Bold),
                BackColor = Color.FromArgb(50, 100, 200),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat
            };
            launcherButton.FlatAppearance.BorderColor = Color.DodgerBlue;
            launcherButton.Click += (s, e) => new LauncherForm().Show();
            statusPanel.Controls.Add(launcherButton);

            // Botón Ayuda
            helpButton = new Button
            {
                Text = "❓ Instrucciones",
                Location = new Point(580, 60),
                Size = new Size(120, 35),
                Font = new Font("Segoe UI", 9, FontStyle.Bold),
                BackColor = Color.FromArgb(100, 150, 50),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat
            };
            helpButton.FlatAppearance.BorderColor = Color.GreenYellow;
            helpButton.Click += (s, e) => new HelpForm().Show();
            statusPanel.Controls.Add(helpButton);

            // Info adicional
            var infoLabel = new Label
            {
                Text = "💬 Mensaje personalizado:",
                Font = new Font("Segoe UI", 9),
                ForeColor = Color.LightGray,
                AutoSize = true,
                Location = new Point(450, -5),
                BackColor = Color.Transparent
            };
            statusPanel.Controls.Add(infoLabel);

            this.Controls.Add(statusPanel);
        }

        private void SetupTimers()
        {
            clickTimer = new System.Windows.Forms.Timer { Interval = 100 };
            clickTimer.Tick += ClickTimer_Tick;

            pingTimer = new System.Windows.Forms.Timer { Interval = 1000 };
            pingTimer.Tick += PingTimer_Tick;
            pingTimer.Start();
        }

        private void SetupHotkeys()
        {
            this.KeyPreview = true;
            this.KeyDown += (s, e) =>
            {
                if (e.KeyCode == Keys.F1)
                {
                    StartAutoclicker();
                    e.Handled = true;
                }
                else if (e.KeyCode == Keys.F2)
                {
                    StopAutoclicker();
                    e.Handled = true;
                }
                else if (e.KeyCode == Keys.F6)
                {
                    FixCoordinates();
                    e.Handled = true;
                }
            };
        }

        private void StartAutoclicker()
        {
            if (fixedCoordinates == Point.Empty)
            {
                MessageBox.Show("⚠️ Primero fija las coordenadas con F6", "Advertencia",
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            isRunning = true;
            clickTimer.Interval = currentConfig.ClickDelay;
            clickTimer.Start();
            UpdateStatus($"▶️ ACTIVO - {currentConfig.Name}");
            statusLabel.ForeColor = Color.LimeGreen;
        }

        private void StopAutoclicker()
        {
            isRunning = false;
            clickTimer.Stop();
            UpdateStatus("⏸️ Estado: Inactivo");
            statusLabel.ForeColor = Color.Yellow;
        }

        private void FixCoordinates()
        {
            GetCursorPos(out POINT p);
            fixedCoordinates = new Point(p.X, p.Y);
            coordLabel.Text = $"📍 Coordenadas: ({fixedCoordinates.X}, {fixedCoordinates.Y}) ✅";
            coordLabel.ForeColor = Color.LimeGreen;

            // Mensaje de confirmación visual
            var msg = MessageBox.Show(
                $"✅ Coordenadas fijadas en:\nX: {fixedCoordinates.X}\nY: {fixedCoordinates.Y}\n\nPresiona F1 para activar el autoclicker",
                "Coordenadas Fijadas",
                MessageBoxButtons.OK,
                MessageBoxIcon.Information
            );
        }

        private void ClickTimer_Tick(object sender, EventArgs e)
        {
            if (!isRunning || fixedCoordinates == Point.Empty) return;

            SetCursorPos(fixedCoordinates.X, fixedCoordinates.Y);

            // Simular click con el tiempo de hold configurado
            mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
            Thread.Sleep(currentConfig.HoldTime);
            mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
        }

        private async void PingTimer_Tick(object sender, EventArgs e)
        {
            try
            {
                using (Ping ping = new Ping())
                {
                    // Ping a localhost como ejemplo (cambiar por la IP del servidor del juego)
                    PingReply reply = await ping.SendPingAsync("127.0.0.1", 1000);

                    if (reply.Status == IPStatus.Success)
                    {
                        pingLabel.Text = $"📡 Ping: {reply.RoundtripTime} ms";

                        // Colorear según el ping
                        if (reply.RoundtripTime < 50)
                            pingLabel.ForeColor = Color.LimeGreen;
                        else if (reply.RoundtripTime < 100)
                            pingLabel.ForeColor = Color.Yellow;
                        else
                            pingLabel.ForeColor = Color.Red;
                    }
                }
            }
            catch
            {
                pingLabel.Text = "📡 Ping: Error de conexión";
                pingLabel.ForeColor = Color.Red;
            }
        }

        private void UpdateStatus(string message)
        {
            statusLabel.Text = message;
        }

        protected override void OnFormClosing(FormClosingEventArgs e)
        {
            StopAutoclicker();
            pingTimer?.Stop();
            base.OnFormClosing(e);
        }
    }

    public class PowerConfig
    {
        public string Name { get; set; }
        public int ClickDelay { get; set; }
        public int HoldTime { get; set; }
        public string Description { get; set; }
    }
}
