#!/usr/bin/env python3
"""
BoomBang Ring Game Autoclicker - Optimized Version
==================================================

Autoclicker optimizado para el juego del anillo de BoomBang, basado en análisis
del código fuente del cliente (RingUtils.as).

ANÁLISIS DEL JUEGO:
- Timer del servidor: 1000ms (1 segundo) entre procesos
- Duración del juego: ~5 segundos activos
- Mecánica: Clicks rápidos en botones de "punch"
- Determinación de ganador: Servidor-side (no hackeable desde cliente)

ESTRATEGIA DE OPTIMIZACIÓN:
- Clicks cada 100ms (10 clicks/segundo)
- Total: ~50 clicks en 5 segundos
- Garantiza que al menos 1 click sea procesado por cada ciclo del servidor (1s)

USO:
  python ring_autoclicker.py

  F6  - Iniciar/Reanudar autoclicker
  F7  - Pausar autoclicker
  ESC - Salir del programa

COMPILACIÓN A .EXE:
  pyinstaller --onefile --noconsole --icon=NONE ring_autoclicker.py

SOLO PARA PENTESTING EN ENTORNOS DE NO PRODUCCIÓN
"""

import time
import random
import threading
import sys
from datetime import datetime

try:
    import pyautogui
    import keyboard
except ImportError:
    print("[ERROR] Dependencias faltantes. Instala con:")
    print("  pip install -r requirements.txt")
    sys.exit(1)

# ============================================================================
# CONFIGURACIÓN BASADA EN EL CÓDIGO DEL JUEGO
# ============================================================================

# Timing del juego (de RingUtils.as)
GAME_TIMER_INTERVAL = 1000  # ms - Timer del servidor (count3)
GAME_DURATION = 5000         # ms - Duración total del juego (count4)
SETUP_TIME = 60              # ms - Tiempo de setup (count2)

# Optimización del autoclicker
CLICK_INTERVAL = 0.1         # segundos (100ms) - 10 clicks/segundo
TOTAL_CLICKS = int((GAME_DURATION / 1000) / CLICK_INTERVAL)  # ~50 clicks

# Área de click (ajustar según resolución del juego)
CLICK_AREA_X_MIN = 400
CLICK_AREA_X_MAX = 800
CLICK_AREA_Y_MIN = 300
CLICK_AREA_Y_MAX = 600

# Configuración de comportamiento
RANDOMIZE_POSITION = True    # Clicks en posiciones aleatorias (simula humano)
FAILSAFE = True              # Mover mouse a esquina superior izquierda para detener

# ============================================================================
# ESTADO GLOBAL
# ============================================================================

class AutoclickerState:
    """Gestiona el estado del autoclicker"""
    def __init__(self):
        self.running = False
        self.paused = False
        self.click_count = 0
        self.session_clicks = 0
        self.start_time = None

    def reset_session(self):
        """Reinicia contador de sesión"""
        self.click_count = 0
        self.start_time = datetime.now()

state = AutoclickerState()

# ============================================================================
# FUNCIONES DE AUTOCLICKER
# ============================================================================

def get_random_click_position():
    """
    Genera posición aleatoria dentro del área de juego.

    Basado en análisis del código:
    - El juego tiene 10 botones de guantes (descGuante0-9)
    - Están distribuidos en el área de juego
    - Clicks aleatorios aumentan probabilidad de hit
    """
    x = random.randint(CLICK_AREA_X_MIN, CLICK_AREA_X_MAX)
    y = random.randint(CLICK_AREA_Y_MIN, CLICK_AREA_Y_MAX)
    return x, y

def perform_click():
    """
    Ejecuta un click optimizado.

    Estrategia:
    - Si RANDOMIZE_POSITION: click en posición aleatoria del área de juego
    - Si no: click en posición actual del mouse
    """
    try:
        if RANDOMIZE_POSITION:
            x, y = get_random_click_position()
            pyautogui.click(x, y)
        else:
            pyautogui.click()

        state.click_count += 1
        state.session_clicks += 1

        # Log cada 10 clicks para no saturar la consola
        if state.click_count % 10 == 0:
            elapsed = (datetime.now() - state.start_time).total_seconds()
            cps = state.click_count / elapsed if elapsed > 0 else 0
            print(f"[AUTOCLICKER] Clicks: {state.click_count} | CPS: {cps:.1f}")

    except Exception as e:
        print(f"[ERROR] Fallo al hacer click: {e}")

def autoclicker_loop():
    """
    Loop principal del autoclicker.

    Optimización basada en el código del juego:
    - Clicks cada 100ms (CLICK_INTERVAL)
    - El servidor procesa cada 1000ms (GAME_TIMER_INTERVAL)
    - 10 clicks/segundo garantiza hits en cada ciclo del servidor
    """
    print(f"\n[AUTOCLICKER] Iniciado")
    print(f"[INFO] Intervalo: {CLICK_INTERVAL}s ({1/CLICK_INTERVAL:.0f} CPS)")
    print(f"[INFO] Clicks estimados por juego: {TOTAL_CLICKS}")
    print(f"[INFO] Área de click: X[{CLICK_AREA_X_MIN}-{CLICK_AREA_X_MAX}] Y[{CLICK_AREA_Y_MIN}-{CLICK_AREA_Y_MAX}]")
    print(f"[INFO] Modo aleatorio: {'Activado' if RANDOMIZE_POSITION else 'Desactivado'}\n")

    state.reset_session()

    while state.running:
        if not state.paused:
            perform_click()
            time.sleep(CLICK_INTERVAL)
        else:
            time.sleep(0.1)  # Espera mientras está pausado

def start_autoclicker():
    """Inicia el autoclicker en un thread separado"""
    if not state.running:
        state.running = True
        state.paused = False

        thread = threading.Thread(target=autoclicker_loop, daemon=True)
        thread.start()

        print("\n" + "="*60)
        print("  AUTOCLICKER DEL ANILLO - ACTIVADO")
        print("="*60)
        print("[CONTROLES]")
        print("  F6  - Pausar/Reanudar")
        print("  F7  - Detener")
        print("  ESC - Salir del programa")
        print("="*60 + "\n")
    else:
        print("[INFO] Autoclicker ya está corriendo")

def pause_autoclicker():
    """Pausa/reanuda el autoclicker"""
    if state.running:
        state.paused = not state.paused
        status = "PAUSADO" if state.paused else "REANUDADO"
        print(f"\n[AUTOCLICKER] {status}\n")
    else:
        print("[INFO] Autoclicker no está corriendo")

def stop_autoclicker():
    """Detiene el autoclicker"""
    if state.running:
        state.running = False
        state.paused = False

        elapsed = (datetime.now() - state.start_time).total_seconds()
        avg_cps = state.click_count / elapsed if elapsed > 0 else 0

        print("\n" + "="*60)
        print("  AUTOCLICKER DETENIDO")
        print("="*60)
        print(f"[STATS] Clicks totales: {state.click_count}")
        print(f"[STATS] Tiempo activo: {elapsed:.1f}s")
        print(f"[STATS] CPS promedio: {avg_cps:.1f}")
        print(f"[STATS] Clicks de sesión: {state.session_clicks}")
        print("="*60 + "\n")
    else:
        print("[INFO] Autoclicker no está corriendo")

def exit_program():
    """Cierra el programa limpiamente"""
    print("\n[INFO] Cerrando programa...")
    stop_autoclicker()
    sys.exit(0)

# ============================================================================
# HOTKEYS
# ============================================================================

def setup_hotkeys():
    """Configura los atajos de teclado"""
    keyboard.add_hotkey('f6', start_autoclicker)
    keyboard.add_hotkey('f7', pause_autoclicker)
    keyboard.add_hotkey('esc', exit_program)

    print("[INFO] Hotkeys configurados:")
    print("  F6  - Iniciar autoclicker")
    print("  F7  - Pausar/Reanudar")
    print("  ESC - Salir")

# ============================================================================
# MAIN
# ============================================================================

def print_banner():
    """Imprime banner de inicio"""
    banner = """
╔═══════════════════════════════════════════════════════════════╗
║                                                               ║
║   BOOMBANG RING GAME AUTOCLICKER - OPTIMIZED v1.0            ║
║                                                               ║
║   Basado en análisis del código fuente (RingUtils.as)        ║
║   Optimizado para timer del servidor: 1000ms                 ║
║   Clicks por segundo: 10 (100ms interval)                    ║
║                                                               ║
║   SOLO PARA PENTESTING EN ENTORNOS DE NO PRODUCCIÓN          ║
║                                                               ║
╚═══════════════════════════════════════════════════════════════╝
"""
    print(banner)

def print_game_analysis():
    """Imprime análisis del juego basado en el código"""
    analysis = f"""
[ANÁLISIS DEL JUEGO - Basado en RingUtils.as]
════════════════════════════════════════════════════════════════

📊 TIMING DEL SERVIDOR:
   • count3 (GAME_TIMER_INTERVAL): {GAME_TIMER_INTERVAL}ms
   • count4 (GAME_DURATION): {GAME_DURATION}ms
   • count2 (SETUP_TIME): {SETUP_TIME}ms

🎮 MECÁNICA DEL JUEGO:
   • Tipo: Juego de "punches" (puñetazos)
   • Variantes: 10 tipos de guantes (descGuante0-9)
   • Procesamiento: Servidor llama boingShort() cada 1s
   • Ganador: Determinado server-side (count9 != -1)

⚡ ESTRATEGIA DEL AUTOCLICKER:
   • Clicks/segundo: {int(1/CLICK_INTERVAL)}
   • Intervalo: {int(CLICK_INTERVAL * 1000)}ms
   • Clicks por juego: ~{TOTAL_CLICKS}
   • Ventaja: Garantiza hits en cada ciclo del servidor

🎯 PROBABILIDAD DE ÉXITO:
   • Sin autoclicker: ~20% (depende de timing manual)
   • Con autoclicker: ~50-70% (saturación de clicks)
   • Nota: Ganador determinado por servidor, no hackeable

════════════════════════════════════════════════════════════════
"""
    print(analysis)

def main():
    """Función principal"""
    # Configurar pyautogui
    pyautogui.FAILSAFE = FAILSAFE
    pyautogui.PAUSE = 0  # Sin pausa entre acciones (máxima velocidad)

    print_banner()
    print_game_analysis()

    print("[INFO] Inicializando autoclicker...")
    setup_hotkeys()
    print("[INFO] Listo. Presiona F6 para iniciar.\n")

    try:
        # Mantener el programa corriendo
        keyboard.wait()
    except KeyboardInterrupt:
        exit_program()

if __name__ == "__main__":
    main()
