using System;
using System.Drawing;
using System.Windows.Forms;

namespace AutoElfather
{
    public class HelpForm : Form
    {
        public HelpForm()
        {
            InitializeComponent();
        }

        private void InitializeComponent()
        {
            this.Text = "❓ Instrucciones de Uso - Auto elfather";
            this.Size = new Size(700, 600);
            this.FormBorderStyle = FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.StartPosition = FormStartPosition.CenterParent;
            this.BackColor = Color.FromArgb(30, 30, 50);

            // Panel principal con scroll
            var mainPanel = new Panel
            {
                Location = new Point(10, 10),
                Size = new Size(665, 540),
                AutoScroll = true,
                BackColor = Color.FromArgb(40, 40, 60),
                BorderStyle = BorderStyle.FixedSingle
            };

            int yPos = 10;

            // Título
            var titleLabel = new Label
            {
                Text = "🎮 MANUAL DE USO - AUTO ELFATHER",
                Font = new Font("Segoe UI", 18, FontStyle.Bold),
                ForeColor = Color.Gold,
                AutoSize = true,
                Location = new Point(20, yPos),
                BackColor = Color.Transparent
            };
            mainPanel.Controls.Add(titleLabel);
            yPos += 50;

            // Sección de hotkeys
            AddSection(mainPanel, ref yPos, "⌨️ TECLAS RÁPIDAS (HOTKEYS)", new[]
            {
                "🟢 F1 - Activar Autoclicker",
                "   Inicia el autoclicker en las coordenadas fijadas",
                "",
                "🔴 F2 - Desactivar Autoclicker",
                "   Detiene el autoclicker inmediatamente",
                "",
                "📍 F6 - Fijar Coordenadas",
                "   Guarda la posición actual del cursor para el autoclicker",
                "   IMPORTANTE: Debes fijar coordenadas ANTES de activar F1"
            });

            yPos += 20;

            // Sección de configuraciones
            AddSection(mainPanel, ref yPos, "⚡ CONFIGURACIONES DE VELOCIDAD", new[]
            {
                "El autoclicker tiene 3 velocidades de clicks continuos:",
                "• CPS = Clicks Por Segundo (cuántos clicks hace)",
                "",
                "🐢 VELOCIDAD LENTA (5-10 CPS)",
                "   • CPS: ~10 clicks por segundo",
                "   • Delay: 100ms entre clicks",
                "   • Uso: Clicks controlados y precisos",
                "   • Tip: Perfecta para jugar sin que se note",
                "",
                "⚖️ VELOCIDAD MEDIA (15-20 CPS) ⭐ RECOMENDADA",
                "   • CPS: ~20 clicks por segundo",
                "   • Delay: 50ms entre clicks",
                "   • Uso: Juego normal y competitivo",
                "   • Tip: Configuración óptima para la mayoría de casos",
                "",
                "🚀 VELOCIDAD RÁPIDA (30-50 CPS)",
                "   • CPS: ~50 clicks por segundo",
                "   • Delay: 20ms entre clicks",
                "   • Uso: Máxima velocidad de juego",
                "   • Tip: Ultra rápido para dominar completamente"
            });

            yPos += 20;

            // Sección de uso paso a paso
            AddSection(mainPanel, ref yPos, "📋 GUÍA PASO A PASO", new[]
            {
                "1️⃣ Abre BoomBang y entra al juego Ring",
                "",
                "2️⃣ Selecciona la velocidad de clicks deseada",
                "   (en las pestañas de arriba: Lenta, Media o Rápida)",
                "",
                "3️⃣ Posiciona el cursor sobre el botón de lanzamiento",
                "   del juego Ring (donde haces click normalmente)",
                "",
                "4️⃣ Presiona F6 para fijar las coordenadas",
                "   Verás un mensaje de confirmación",
                "",
                "5️⃣ Presiona F1 para activar el autoclicker",
                "   El bot empezará a hacer clicks automáticos",
                "",
                "6️⃣ Presiona F2 cuando quieras detenerlo",
                "",
                "⚠️ IMPORTANTE:",
                "• NO muevas la ventana del juego una vez fijadas coordenadas",
                "• Puedes cambiar de configuración sin desactivar F2",
                "• El ping se muestra en tiempo real abajo"
            });

            yPos += 20;

            // Sección de funciones extra
            AddSection(mainPanel, ref yPos, "🎁 FUNCIONES ESPECIALES", new[]
            {
                "🚀 Botón BBBBRRRRRRRRRR",
                "   Escribe el mensaje épico en el campo de texto",
                "   Úsalo cuando necesites celebrar tus victorias",
                "",
                "🎮 Botón Launcher",
                "   Abre una ventana con el launcher del juego",
                "   Acceso rápido sin salir de la aplicación",
                "",
                "📡 Monitor de Ping",
                "   Muestra tu latencia en tiempo real",
                "   Verde < 50ms | Amarillo < 100ms | Rojo > 100ms"
            });

            yPos += 20;

            // Sección de tips
            AddSection(mainPanel, ref yPos, "💡 TIPS PROFESIONALES", new[]
            {
                "• Experimenta con las 3 configuraciones para encontrar",
                "  la que mejor se adapte a tu estilo de juego",
                "",
                "• Ajusta la posición de las coordenadas con precisión",
                "  Un pixel puede hacer la diferencia",
                "",
                "• Usa velocidad lenta (10 CPS) para jugar con control",
                "• Usa velocidad rápida (50 CPS) para dominar el juego",
                "• Usa velocidad media (20 CPS) como tu configuración por defecto"
            });

            yPos += 30;

            // Créditos
            var creditLabel = new Label
            {
                Text = "✨ Creado por erKabesa aka JkPedro\n" +
                       "🎂 Feliz cumpleaños, crack!\n" +
                       "🎮 Que lo disfrutes, boss del sexxxx",
                Font = new Font("Segoe UI", 10, FontStyle.Bold | FontStyle.Italic),
                ForeColor = Color.Gold,
                Location = new Point(20, yPos),
                Size = new Size(600, 80),
                TextAlign = ContentAlignment.MiddleCenter,
                BackColor = Color.Transparent
            };
            mainPanel.Controls.Add(creditLabel);

            this.Controls.Add(mainPanel);

            // Botón cerrar
            var closeButton = new Button
            {
                Text = "✅ Entendido",
                Location = new Point(250, 555),
                Size = new Size(180, 40),
                Font = new Font("Segoe UI", 11, FontStyle.Bold),
                BackColor = Color.FromArgb(50, 150, 50),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat
            };
            closeButton.FlatAppearance.BorderColor = Color.LimeGreen;
            closeButton.FlatAppearance.BorderSize = 2;
            closeButton.Click += (s, e) => this.Close();
            this.Controls.Add(closeButton);
        }

        private void AddSection(Panel panel, ref int yPos, string title, string[] content)
        {
            // Título de sección
            var titleLabel = new Label
            {
                Text = title,
                Font = new Font("Segoe UI", 13, FontStyle.Bold),
                ForeColor = Color.Cyan,
                AutoSize = true,
                Location = new Point(20, yPos),
                BackColor = Color.Transparent
            };
            panel.Controls.Add(titleLabel);
            yPos += 35;

            // Contenido
            var contentText = string.Join("\n", content);
            var contentLabel = new Label
            {
                Text = contentText,
                Font = new Font("Consolas", 9),
                ForeColor = Color.White,
                Location = new Point(30, yPos),
                Size = new Size(600, 1000),
                AutoSize = true,
                BackColor = Color.Transparent
            };
            panel.Controls.Add(contentLabel);

            yPos += contentLabel.Height + 15;
        }
    }
}
