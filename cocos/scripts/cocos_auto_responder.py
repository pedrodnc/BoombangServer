#!/usr/bin/env python3
"""
BoomBang Cocos - Auto-Responder
Detecta estímulos visuales y responde instantáneamente

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

class CocosAutoResponder:
    def __init__(self):
        self.running = False
        self.paused = False
        self.total_responses = 0
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
        pyautogui.PAUSE = 0

        print("[+] Cocos Auto-Responder iniciado")
        print("[+] F6: Iniciar/Detener")
        print("[+] F7: Pausar/Reanudar")
        print("[+] ESC: Salir")

    def detect_stimulus(self):
        """
        Detecta estímulo visual (cambio de color o aparición de objeto)
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

        # Convertir a HSV
        hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)

        # Buscar objetos marrones/dorados (cocos)
        lower_brown = np.array([10, 100, 20])
        upper_brown = np.array([30, 255, 200])

        # Crear máscara
        mask = cv2.inRange(hsv, lower_brown, upper_brown)

        # Contar píxeles que coinciden
        coco_pixels = cv2.countNonZero(mask)

        # Si hay más de 1000 píxeles, hay un coco visible
        return coco_pixels > 1000

    def respond(self):
        """Responde al estímulo con click o tecla"""
        # Clickear en el centro del área de juego
        center_x = self.game_area['x'] + self.game_area['width'] // 2
        center_y = self.game_area['y'] + self.game_area['height'] // 2

        pyautogui.click(center_x, center_y)
        self.total_responses += 1

    def run(self):
        """Loop principal del auto-responder"""
        self.running = True
        self.start_time = time.time()

        print(f"\n[▶️] Auto-responder INICIADO")

        previous_state = False

        while self.running:
            if not self.paused:
                try:
                    # Detectar estímulo
                    current_state = self.detect_stimulus()

                    # Responder cuando aparece estímulo (flanco ascendente)
                    if current_state and not previous_state:
                        self.respond()
                        print(f"[+] Respuesta #{self.total_responses}")

                    previous_state = current_state

                except Exception as e:
                    print(f"[-] Error: {e}")

            time.sleep(0.001)  # 1000 checks por segundo = tiempo de reacción <1ms

        print(f"\n[⏹️] Auto-responder DETENIDO")
        print(f"[+] Total respuestas: {self.total_responses}")

    def stop(self):
        """Detiene el auto-responder"""
        self.running = False

    def toggle_pause(self):
        """Pausa/reanuda el auto-responder"""
        self.paused = not self.paused
        status = "PAUSADO" if self.paused else "REANUDADO"
        print(f"\n[⏸️] Auto-responder {status}")

def main():
    auto_responder = CocosAutoResponder()

    def on_press(key):
        try:
            if key == keyboard.Key.f6:
                if not auto_responder.running:
                    import threading
                    threading.Thread(target=auto_responder.run, daemon=True).start()
                else:
                    auto_responder.stop()

            elif key == keyboard.Key.f7:
                auto_responder.toggle_pause()

            elif key == keyboard.Key.esc:
                auto_responder.stop()
                return False  # Detener listener

        except AttributeError:
            pass

    # Iniciar listener de teclado
    with keyboard.Listener(on_press=on_press) as listener:
        listener.join()

if __name__ == '__main__':
    main()
