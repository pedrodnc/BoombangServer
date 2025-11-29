#!/usr/bin/env python3
"""
BoomBang Ring Game Autoclicker - GUI Version
============================================

Autoclicker con interfaz gráfica para el juego del anillo de BoomBang.
Optimizado basándose en el análisis del código fuente (RingUtils.as).

CARACTERÍSTICAS:
- Interfaz gráfica (Tkinter) para macOS/Linux/Windows
- Configuración de CPS (clicks por segundo) ajustable
- Calibración de coordenadas con hotkey (F8)
- Advertencia de lag con potencias altas
- Estadísticas en tiempo real

CONTROLES:
  F6  - Iniciar/Detener autoclicker
  F7  - Pausar/Reanudar
  F8  - Calibrar coordenadas de click
  ESC - Salir

REQUISITOS:
  pip install pyautogui pynput

SOLO PARA PENTESTING EN ENTORNOS DE NO PRODUCCIÓN
"""

import tkinter as tk
from tkinter import ttk, messagebox
import threading
import time
import random
from datetime import datetime
import sys

try:
    import pyautogui
    from pynput import keyboard
except ImportError:
    print("[ERROR] Dependencias faltantes")
    print("Instala con: pip install pyautogui pynput")
    sys.exit(1)

# ============================================================================
# CONFIGURACIÓN DEL JUEGO (basada en RingUtils.as)
# ============================================================================

GAME_TIMER_INTERVAL = 1000  # ms - Timer del servidor (count3)
GAME_DURATION = 5000         # ms - Duración total del juego (count4)

# ============================================================================
# CLASE PRINCIPAL - AUTOCLICKER GUI
# ============================================================================

class RingAutoclickerGUI:
    def __init__(self, root):
        self.root = root
        self.root.title("BoomBang Ring Autoclicker - GUI")
        self.root.geometry("600x700")
        self.root.resizable(False, False)

        # Estado del autoclicker
        self.running = False
        self.paused = False
        self.click_count = 0
        self.start_time = None
        self.click_thread = None

        # Coordenadas de click
        self.click_x = None
        self.click_y = None
        self.calibrating = False

        # Configuración
        self.cps = tk.IntVar(value=10)  # Clicks por segundo (default: 10)
        self.randomize = tk.BooleanVar(value=False)  # Click en posición fija

        # Configurar PyAutoGUI (Failsafe DESACTIVADO)
        pyautogui.FAILSAFE = False
        pyautogui.PAUSE = 0

        # Configurar interfaz
        self.setup_ui()

        # Configurar hotkeys
        self.setup_hotkeys()

        # Actualizar stats cada 100ms
        self.update_stats()

    def setup_ui(self):
        """Configura la interfaz gráfica"""

        # ========== TÍTULO ==========
        title_frame = tk.Frame(self.root, bg="#2c3e50", height=80)
        title_frame.pack(fill=tk.X)

        title_label = tk.Label(
            title_frame,
            text="🎮 BOOMBANG RING AUTOCLICKER",
            font=("Helvetica", 18, "bold"),
            bg="#2c3e50",
            fg="white"
        )
        title_label.pack(pady=20)

        # ========== FRAME DE CONFIGURACIÓN ==========
        config_frame = tk.LabelFrame(
            self.root,
            text="⚙️ Configuración",
            font=("Helvetica", 12, "bold"),
            padx=20,
            pady=10
        )
        config_frame.pack(fill=tk.X, padx=20, pady=10)

        # CPS (Clicks por segundo)
        tk.Label(
            config_frame,
            text="Clicks por segundo (CPS):",
            font=("Helvetica", 11)
        ).grid(row=0, column=0, sticky=tk.W, pady=5)

        cps_frame = tk.Frame(config_frame)
        cps_frame.grid(row=0, column=1, sticky=tk.W, padx=10)

        self.cps_scale = tk.Scale(
            cps_frame,
            from_=1,
            to=100,
            orient=tk.HORIZONTAL,
            variable=self.cps,
            length=200,
            command=self.on_cps_change
        )
        self.cps_scale.pack(side=tk.LEFT)

        self.cps_value_label = tk.Label(
            cps_frame,
            text="10 CPS",
            font=("Helvetica", 11, "bold"),
            width=10
        )
        self.cps_value_label.pack(side=tk.LEFT, padx=10)

        # Advertencia de lag
        self.lag_warning = tk.Label(
            config_frame,
            text="⚠️ ADVERTENCIA: CPS > 50 puede causar lag",
            font=("Helvetica", 9),
            fg="orange"
        )
        self.lag_warning.grid(row=1, column=0, columnspan=2, pady=5)
        self.lag_warning.grid_remove()  # Ocultar por defecto

        # Coordenadas de click
        tk.Label(
            config_frame,
            text="Coordenadas de click:",
            font=("Helvetica", 11)
        ).grid(row=2, column=0, sticky=tk.W, pady=5)

        coord_frame = tk.Frame(config_frame)
        coord_frame.grid(row=2, column=1, sticky=tk.W, padx=10)

        self.coord_label = tk.Label(
            coord_frame,
            text="No calibrado",
            font=("Helvetica", 11),
            fg="red"
        )
        self.coord_label.pack(side=tk.LEFT)

        self.calibrate_btn = tk.Button(
            coord_frame,
            text="📍 Calibrar (F8)",
            command=self.start_calibration,
            bg="#3498db",
            fg="white",
            font=("Helvetica", 10, "bold"),
            padx=10
        )
        self.calibrate_btn.pack(side=tk.LEFT, padx=10)

        # Modo aleatorio
        self.randomize_check = tk.Checkbutton(
            config_frame,
            text="Clicks en posiciones aleatorias (±10px)",
            variable=self.randomize,
            font=("Helvetica", 10)
        )
        self.randomize_check.grid(row=3, column=0, columnspan=2, sticky=tk.W, pady=5)

        # ========== FRAME DE CONTROL ==========
        control_frame = tk.LabelFrame(
            self.root,
            text="🎮 Control",
            font=("Helvetica", 12, "bold"),
            padx=20,
            pady=10
        )
        control_frame.pack(fill=tk.X, padx=20, pady=10)

        button_frame = tk.Frame(control_frame)
        button_frame.pack()

        self.start_btn = tk.Button(
            button_frame,
            text="▶️ INICIAR (F6)",
            command=self.toggle_autoclicker,
            bg="#27ae60",
            fg="white",
            font=("Helvetica", 12, "bold"),
            width=15,
            height=2
        )
        self.start_btn.grid(row=0, column=0, padx=5)

        self.pause_btn = tk.Button(
            button_frame,
            text="⏸️ PAUSAR (F7)",
            command=self.toggle_pause,
            bg="#f39c12",
            fg="white",
            font=("Helvetica", 12, "bold"),
            width=15,
            height=2,
            state=tk.DISABLED
        )
        self.pause_btn.grid(row=0, column=1, padx=5)

        # ========== FRAME DE ESTADÍSTICAS ==========
        stats_frame = tk.LabelFrame(
            self.root,
            text="📊 Estadísticas",
            font=("Helvetica", 12, "bold"),
            padx=20,
            pady=10
        )
        stats_frame.pack(fill=tk.BOTH, expand=True, padx=20, pady=10)

        # Estado
        tk.Label(
            stats_frame,
            text="Estado:",
            font=("Helvetica", 11, "bold")
        ).grid(row=0, column=0, sticky=tk.W, pady=5)

        self.status_label = tk.Label(
            stats_frame,
            text="⚪ Detenido",
            font=("Helvetica", 11),
            fg="gray"
        )
        self.status_label.grid(row=0, column=1, sticky=tk.W, padx=10)

        # Clicks totales
        tk.Label(
            stats_frame,
            text="Clicks totales:",
            font=("Helvetica", 11, "bold")
        ).grid(row=1, column=0, sticky=tk.W, pady=5)

        self.clicks_label = tk.Label(
            stats_frame,
            text="0",
            font=("Helvetica", 11)
        )
        self.clicks_label.grid(row=1, column=1, sticky=tk.W, padx=10)

        # CPS actual
        tk.Label(
            stats_frame,
            text="CPS actual:",
            font=("Helvetica", 11, "bold")
        ).grid(row=2, column=0, sticky=tk.W, pady=5)

        self.current_cps_label = tk.Label(
            stats_frame,
            text="0.0",
            font=("Helvetica", 11)
        )
        self.current_cps_label.grid(row=2, column=1, sticky=tk.W, padx=10)

        # Tiempo activo
        tk.Label(
            stats_frame,
            text="Tiempo activo:",
            font=("Helvetica", 11, "bold")
        ).grid(row=3, column=0, sticky=tk.W, pady=5)

        self.time_label = tk.Label(
            stats_frame,
            text="0.0s",
            font=("Helvetica", 11)
        )
        self.time_label.grid(row=3, column=1, sticky=tk.W, padx=10)

        # ========== FRAME DE INFORMACIÓN ==========
        info_frame = tk.LabelFrame(
            self.root,
            text="ℹ️ Información",
            font=("Helvetica", 12, "bold"),
            padx=20,
            pady=10
        )
        info_frame.pack(fill=tk.X, padx=20, pady=10)

        info_text = (
            "Basado en análisis de RingUtils.as:\n"
            f"• Timer del servidor: {GAME_TIMER_INTERVAL}ms\n"
            f"• Duración del juego: {GAME_DURATION}ms\n"
            "• Failsafe: DESACTIVADO\n\n"
            "⚠️ Uso responsable: Solo para pentesting autorizado"
        )

        tk.Label(
            info_frame,
            text=info_text,
            font=("Helvetica", 9),
            justify=tk.LEFT,
            fg="#555"
        ).pack()

    def on_cps_change(self, value):
        """Callback cuando cambia el CPS"""
        cps = int(float(value))
        self.cps_value_label.config(text=f"{cps} CPS")

        # Mostrar advertencia si CPS > 50
        if cps > 50:
            self.lag_warning.grid()
            self.lag_warning.config(
                text=f"⚠️ ADVERTENCIA: {cps} CPS puede causar lag significativo",
                fg="red" if cps > 80 else "orange"
            )
        else:
            self.lag_warning.grid_remove()

    def start_calibration(self):
        """Inicia el proceso de calibración de coordenadas"""
        if self.running:
            messagebox.showwarning(
                "Advertencia",
                "Detén el autoclicker antes de calibrar"
            )
            return

        self.calibrating = True
        self.calibrate_btn.config(text="⏳ Moviendo cursor...", state=tk.DISABLED)
        self.coord_label.config(text="Mueve el mouse y presiona F8", fg="blue")

        messagebox.showinfo(
            "Calibración",
            "Mueve el mouse a la posición donde quieres hacer click.\n\n"
            "Presiona F8 cuando estés listo para guardar la posición."
        )

    def save_calibration(self):
        """Guarda las coordenadas actuales del mouse"""
        if self.calibrating:
            self.click_x, self.click_y = pyautogui.position()
            self.calibrating = False
            self.calibrate_btn.config(text="📍 Calibrar (F8)", state=tk.NORMAL)
            self.coord_label.config(
                text=f"X: {self.click_x}, Y: {self.click_y}",
                fg="green"
            )
            messagebox.showinfo(
                "Calibración Completada",
                f"Coordenadas guardadas:\nX: {self.click_x}\nY: {self.click_y}"
            )

    def toggle_autoclicker(self):
        """Inicia/detiene el autoclicker"""
        if not self.running:
            # Verificar que se hayan calibrado las coordenadas
            if self.click_x is None or self.click_y is None:
                messagebox.showwarning(
                    "Coordenadas no calibradas",
                    "Primero debes calibrar las coordenadas de click.\n\n"
                    "Presiona el botón 'Calibrar (F8)' o la tecla F8."
                )
                return

            # Iniciar autoclicker
            self.running = True
            self.paused = False
            self.click_count = 0
            self.start_time = datetime.now()

            self.start_btn.config(text="⏹️ DETENER (F6)", bg="#e74c3c")
            self.pause_btn.config(state=tk.NORMAL)
            self.status_label.config(text="🟢 Activo", fg="green")

            # Iniciar thread de clicks
            self.click_thread = threading.Thread(target=self.autoclicker_loop, daemon=True)
            self.click_thread.start()
        else:
            # Detener autoclicker
            self.running = False
            self.paused = False

            self.start_btn.config(text="▶️ INICIAR (F6)", bg="#27ae60")
            self.pause_btn.config(state=tk.DISABLED, text="⏸️ PAUSAR (F7)")
            self.status_label.config(text="⚪ Detenido", fg="gray")

    def toggle_pause(self):
        """Pausa/reanuda el autoclicker"""
        if self.running:
            self.paused = not self.paused

            if self.paused:
                self.pause_btn.config(text="▶️ REANUDAR (F7)", bg="#27ae60")
                self.status_label.config(text="🟡 Pausado", fg="orange")
            else:
                self.pause_btn.config(text="⏸️ PAUSAR (F7)", bg="#f39c12")
                self.status_label.config(text="🟢 Activo", fg="green")

    def autoclicker_loop(self):
        """Loop principal del autoclicker"""
        interval = 1.0 / self.cps.get()  # Intervalo en segundos

        while self.running:
            if not self.paused:
                try:
                    # Calcular posición de click
                    if self.randomize.get():
                        # Añadir variación aleatoria de ±10px
                        x = self.click_x + random.randint(-10, 10)
                        y = self.click_y + random.randint(-10, 10)
                    else:
                        x = self.click_x
                        y = self.click_y

                    # Hacer click
                    pyautogui.click(x, y)
                    self.click_count += 1

                    # Esperar el intervalo
                    time.sleep(interval)

                except Exception as e:
                    print(f"[ERROR] {e}")
                    self.running = False
                    break
            else:
                time.sleep(0.1)

    def update_stats(self):
        """Actualiza las estadísticas en tiempo real"""
        if self.running and not self.paused:
            elapsed = (datetime.now() - self.start_time).total_seconds()
            current_cps = self.click_count / elapsed if elapsed > 0 else 0

            self.clicks_label.config(text=str(self.click_count))
            self.current_cps_label.config(text=f"{current_cps:.1f}")
            self.time_label.config(text=f"{elapsed:.1f}s")

        # Programar siguiente actualización
        self.root.after(100, self.update_stats)

    def setup_hotkeys(self):
        """Configura los atajos de teclado con pynput"""
        def on_press(key):
            try:
                # F6 - Iniciar/Detener
                if key == keyboard.Key.f6:
                    self.root.after(0, self.toggle_autoclicker)

                # F7 - Pausar/Reanudar
                elif key == keyboard.Key.f7:
                    self.root.after(0, self.toggle_pause)

                # F8 - Calibrar
                elif key == keyboard.Key.f8:
                    if self.calibrating:
                        self.root.after(0, self.save_calibration)
                    else:
                        self.root.after(0, self.start_calibration)

                # ESC - Salir
                elif key == keyboard.Key.esc:
                    self.root.after(0, self.on_closing)

            except AttributeError:
                pass

        # Iniciar listener en thread separado
        listener = keyboard.Listener(on_press=on_press)
        listener.daemon = True
        listener.start()

    def on_closing(self):
        """Maneja el cierre de la aplicación"""
        if self.running:
            if messagebox.askokcancel("Salir", "El autoclicker está activo. ¿Seguro que quieres salir?"):
                self.running = False
                self.root.destroy()
        else:
            self.root.destroy()

# ============================================================================
# MAIN
# ============================================================================

def main():
    """Función principal"""
    root = tk.Tk()
    app = RingAutoclickerGUI(root)

    # Manejar cierre de ventana
    root.protocol("WM_DELETE_WINDOW", app.on_closing)

    # Iniciar loop de Tkinter
    root.mainloop()

if __name__ == "__main__":
    main()
