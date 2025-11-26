#!/usr/bin/env python3
"""
BoomBang Shuriken - Auto-Clicker
Detecta ninjas en pantalla y los clickea automáticamente

Requisitos:
    pip install pyautogui pillow pynput opencv-python

Controles:
    F6: Iniciar/Detener
    F7: Pausar/Reanudar
    ESC: Salir
"""

import pyautogui
import cv2
import numpy as np
from pynput import keyboard
import time
import sys

class ShurikenAutoClicker:
    def __init__(self):
        self.running = False
        self.paused = False
        self.total_clicks = 0
        self.start_time = None

        # Coordenadas del área de juego (calibrar manualmente)
        self.game_area = {
            'x': 100,
            'y': 100,
            'width': 800,
            'height': 600
        }

        # Desactivar failsafe
        pyautogui.FAILSAFE = False
        pyautogui.PAUSE = 0.001  # Delay mínimo entre acciones

        print("[+] Shuriken Auto-Clicker iniciado")
        print("[+] F6: Iniciar/Detener")
        print("[+] F7: Pausar/Reanudar")
        print("[+] ESC: Salir")

    def find_ninjas(self):
        """
        Encuentra ninjas en la pantalla usando detección de color
        Los ninjas suelen tener colores oscuros (negro, gris)
        """
        # Capturar área de juego
        screenshot = pyautogui.screenshot(region=(
            self.game_area['x'],
            self.game_area['y'],
            self.game_area['width'],
            self.game_area['height']
        ))

        # Convertir a numpy array
        img = cv2.cvtColor(np.array(screenshot), cv2.COLOR_RGB2BGR)

        # Convertir a HSV para detección de color
        hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)

        # Rango de color para ninjas (negro/gris oscuro)
        lower_black = np.array([0, 0, 0])
        upper_black = np.array([180, 255, 50])

        # Crear máscara
        mask = cv2.inRange(hsv, lower_black, upper_black)

        # Encontrar contornos
        contours, _ = cv2.findContours(mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

        ninja_positions = []

        for contour in contours:
            area = cv2.contourArea(contour)

            # Filtrar por tamaño (ninjas tienen área entre 100-5000 píxeles)
            if 100 < area < 5000:
                M = cv2.moments(contour)
                if M["m00"] != 0:
                    cX = int(M["m10"] / M["m00"]) + self.game_area['x']
                    cY = int(M["m01"] / M["m00"]) + self.game_area['y']
                    ninja_positions.append((cX, cY))

        return ninja_positions

    def click_ninjas(self):
        """Clickea todos los ninjas detectados"""
        ninjas = self.find_ninjas()

        for x, y in ninjas:
            if not self.running or self.paused:
                break

            pyautogui.click(x, y)
            self.total_clicks += 1

    def run(self):
        """Loop principal del auto-clicker"""
        self.running = True
        self.start_time = time.time()

        print(f"\n[▶️] Auto-clicker INICIADO")

        while self.running:
            if not self.paused:
                try:
                    self.click_ninjas()

                    # Mostrar estadísticas cada 100 clicks
                    if self.total_clicks % 100 == 0:
                        elapsed = time.time() - self.start_time
                        cps = self.total_clicks / elapsed if elapsed > 0 else 0
                        print(f"[+] Clicks: {self.total_clicks} | CPS: {cps:.2f}")

                except Exception as e:
                    print(f"[-] Error: {e}")

            time.sleep(0.01)  # 100 checks por segundo

        print(f"\n[⏹️] Auto-clicker DETENIDO")
        print(f"[+] Total clicks: {self.total_clicks}")

    def stop(self):
        """Detiene el auto-clicker"""
        self.running = False

    def toggle_pause(self):
        """Pausa/reanuda el auto-clicker"""
        self.paused = not self.paused
        status = "PAUSADO" if self.paused else "REANUDADO"
        print(f"\n[⏸️] Auto-clicker {status}")

def main():
    auto_clicker = ShurikenAutoClicker()

    def on_press(key):
        try:
            if key == keyboard.Key.f6:
                if not auto_clicker.running:
                    import threading
                    threading.Thread(target=auto_clicker.run, daemon=True).start()
                else:
                    auto_clicker.stop()

            elif key == keyboard.Key.f7:
                auto_clicker.toggle_pause()

            elif key == keyboard.Key.esc:
                auto_clicker.stop()
                return False  # Detener listener

        except AttributeError:
            pass

    # Iniciar listener de teclado
    with keyboard.Listener(on_press=on_press) as listener:
        listener.join()

if __name__ == '__main__':
    main()
