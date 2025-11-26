#!/usr/bin/env python3
"""
BoomBang Shuriken Game - Packet Injector
Envía paquetes falsos de victoria al servidor

Uso:
    python shuriken_packet_injector.py --server 192.168.1.100 --port 7200 --user-id 123 --username "TuNombre"
"""

import socket
import struct
import sys
import argparse

class ShurikenExploit:
    def __init__(self, server_ip, server_port, user_id, username):
        self.server_ip = server_ip
        self.server_port = server_port
        self.user_id = user_id
        self.username = username
        self.sock = None

    def connect(self):
        """Conecta al servidor BoomBang"""
        try:
            self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            self.sock.connect((self.server_ip, self.server_port))
            print(f"[+] Conectado a {self.server_ip}:{self.server_port}")
            return True
        except Exception as e:
            print(f"[-] Error de conexión: {e}")
            return False

    def create_victory_packet(self):
        """Crea paquete de victoria falso"""
        packet = bytearray()

        # Opcode 125 (0x7D) - Minijuegos
        packet.append(125)

        # Subopcode 8 - Game end
        packet.append(8)

        # User ID (4 bytes, big-endian)
        packet.extend(struct.pack('>I', self.user_id))

        # Username (null-terminated)
        packet.extend(self.username.encode('utf-8'))
        packet.append(0x00)

        # Points (string, null-terminated)
        packet.extend(b"9999\x00")

        # Extra info (vacío, null-terminated)
        packet.append(0x00)

        return bytes(packet)

    def send_victory(self):
        """Envía paquete de victoria"""
        if not self.connect():
            return False

        try:
            packet = self.create_victory_packet()
            self.sock.send(packet)
            print(f"[+] Paquete de victoria enviado")
            print(f"[+] User ID: {self.user_id}")
            print(f"[+] Username: {self.username}")
            print(f"[+] Points: 9999")

            # Esperar respuesta del servidor
            response = self.sock.recv(1024)
            print(f"[+] Respuesta del servidor: {response.hex()}")

            print("\n[✓] EXPLOIT EXITOSO")
            return True

        except Exception as e:
            print(f"[-] Error enviando paquete: {e}")
            return False
        finally:
            if self.sock:
                self.sock.close()

    def flood_clicks(self, num_clicks=100):
        """Envía múltiples clicks falsos al servidor"""
        if not self.connect():
            return False

        try:
            for i in range(num_clicks):
                # Paquete de click en ninja
                # Opcode 125, Subopcode 122 (count22)
                packet = bytearray()
                packet.append(125)  # Opcode minijuegos
                packet.append(122)  # Subopcode click
                packet.extend(struct.pack('>I', self.user_id))
                packet.extend(struct.pack('>I', i % 6))  # Ninja ID (0-5)
                packet.extend(struct.pack('>H', 100))    # Mouse X
                packet.extend(struct.pack('>H', 100))    # Mouse Y

                self.sock.send(bytes(packet))

                if (i + 1) % 10 == 0:
                    print(f"[+] Enviados {i+1}/{num_clicks} clicks")

            print(f"\n[✓] {num_clicks} clicks enviados exitosamente")
            return True

        except Exception as e:
            print(f"[-] Error en flood: {e}")
            return False
        finally:
            if self.sock:
                self.sock.close()

def main():
    parser = argparse.ArgumentParser(description='BoomBang Shuriken Exploit')
    parser.add_argument('--server', required=True, help='IP del servidor')
    parser.add_argument('--port', type=int, default=7200, help='Puerto del servidor')
    parser.add_argument('--user-id', type=int, required=True, help='Tu user ID')
    parser.add_argument('--username', required=True, help='Tu username')
    parser.add_argument('--mode', choices=['victory', 'flood'], default='victory',
                       help='Modo: victory (enviar victoria) o flood (spam de clicks)')
    parser.add_argument('--num-clicks', type=int, default=100,
                       help='Número de clicks (solo para modo flood)')

    args = parser.parse_args()

    exploit = ShurikenExploit(args.server, args.port, args.user_id, args.username)

    if args.mode == 'victory':
        exploit.send_victory()
    else:
        exploit.flood_clicks(args.num_clicks)

if __name__ == '__main__':
    main()
