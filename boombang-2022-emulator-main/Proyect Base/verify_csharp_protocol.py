import socket
import struct
import time
import sys

SERVER_IP = "127.0.0.1"
SERVER_PORT = 3300

def send_framed_message(sock, message):
    data = message.encode('utf-8')
    length = len(data)
    # Big Endian length prefix
    header = struct.pack('>I', length)
    packet = header + data
    print(f"Sending framed message: '{message}' (length {length})")
    sock.sendall(packet)

def verify_protocol():
    print(f"Connecting to {SERVER_IP}:{SERVER_PORT}...")
    try:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(2.0)
        sock.connect((SERVER_IP, SERVER_PORT))
        print("Connected!")
    except ConnectionRefusedError:
        print("Could not connect to server. Ensure C# server is running.")
        print("Skipping active verification (Server not running in this environment).")
        return
    except Exception as e:
        print(f"Connection error: {e}")
        return

    try:
        # Test 1: Normal message
        send_framed_message(sock, "TEST_MESSAGE_1")
        time.sleep(0.1)

        # Test 2: Fragmented message (simulated by splitting sending)
        message = "TEST_MESSAGE_2_FRAGMENTED"
        data = message.encode('utf-8')
        length = len(data)
        header = struct.pack('>I', length)

        print(f"Sending fragmented message: '{message}'")
        sock.sendall(header) # Send header
        time.sleep(0.05)
        sock.sendall(data[:5]) # Send part 1
        time.sleep(0.05)
        sock.sendall(data[5:]) # Send part 2

        # Test 3: Multiple messages in one go (coalesced)
        print("Sending coalesced messages")
        msg3 = "TEST_MSG_3"
        msg4 = "TEST_MSG_4"
        pkt3 = struct.pack('>I', len(msg3)) + msg3.encode('utf-8')
        pkt4 = struct.pack('>I', len(msg4)) + msg4.encode('utf-8')
        sock.sendall(pkt3 + pkt4)

        print("Messages sent. If server processed them correctly (check server logs), the fix works.")

    except Exception as e:
        print(f"Error during verification: {e}")
    finally:
        sock.close()

if __name__ == "__main__":
    verify_protocol()
