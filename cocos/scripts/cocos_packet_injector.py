#!/usr/bin/env python3
"""
BoomBang Cocos Game - Packet Injector
Envía paquetes falsos de victoria con tiempo perfecto

Uso:
    python cocos_packet_injector.py --server 192.168.1.100 --port 7200 --user-id 123 --username "TuNombre"
"""

import socket
import struct
import sys
import argparse

class CocosExploit:
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

    def create_victory_packet(self, reaction_time="0"):
        """Crea paquete de victoria con tiempo de reacción especificado"""
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

        # Reaction time (string, null-terminated)
        # "0" = tiempo perfecto instantáneo
        packet.extend(reaction_time.encode('utf-8'))
        packet.append(0x00)

        # Extra info (vacío, null-terminated)
        packet.append(0x00)

        return bytes(packet)

    def send_victory(self, reaction_time="0"):
        """Envía paquete de victoria"""
        if not self.connect():
            return False

        try:
            packet = self.create_victory_packet(reaction_time)
            self.sock.send(packet)
            print(f"[+] Paquete de victoria enviado")
            print(f"[+] User ID: {self.user_id}")
            print(f"[+] Username: {self.username}")
            print(f"[+] Tiempo de reacción: {reaction_time}ms")

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

def main():
    parser = argparse.ArgumentParser(description='BoomBang Cocos Exploit')
    parser.add_argument('--server', required=True, help='IP del servidor')
    parser.add_argument('--port', type=int, default=7200, help='Puerto del servidor')
    parser.add_argument('--user-id', type=int, required=True, help='Tu user ID')
    parser.add_argument('--username', required=True, help='Tu username')
    parser.add_argument('--reaction-time', default='0',
                       help='Tiempo de reacción en ms (default: 0 = perfecto)')

    args = parser.parse_args()

    exploit = CocosExploit(args.server, args.port, args.user_id, args.username)
    exploit.send_victory(args.reaction_time)

if __name__ == '__main__':
    main()
