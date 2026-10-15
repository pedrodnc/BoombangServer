import pytest
import struct
import sys
import os

# Ensure the script can be imported
sys.path.append(os.path.dirname(os.path.abspath(__file__)))

from cocos_packet_injector import CocosExploit

def test_create_victory_packet_default():
    """Test standard packet structure with default reaction time"""
    exploit = CocosExploit("127.0.0.1", 7200, 12345, "TestUser")
    packet = exploit.create_victory_packet()

    # Construct expected packet manually
    expected = bytearray()
    expected.append(125)        # Opcode
    expected.append(8)          # Subopcode
    expected.extend(struct.pack('>I', 12345))  # User ID
    expected.extend(b"TestUser") # Username
    expected.append(0)          # Null terminator for username
    expected.extend(b"0")       # Reaction time
    expected.append(0)          # Null terminator for reaction time
    expected.append(0)          # Extra info

    assert packet == expected

def test_create_victory_packet_custom_reaction():
    """Test packet with custom reaction time"""
    exploit = CocosExploit("127.0.0.1", 7200, 12345, "TestUser")
    packet = exploit.create_victory_packet(reaction_time="500")

    expected = bytearray()
    expected.append(125)
    expected.append(8)
    expected.extend(struct.pack('>I', 12345))
    expected.extend(b"TestUser")
    expected.append(0)
    expected.extend(b"500")
    expected.append(0)
    expected.append(0)

    assert packet == expected

def test_create_victory_packet_special_chars():
    """Test with special characters in username (UTF-8)"""
    username = "JugadorÑ"
    exploit = CocosExploit("127.0.0.1", 7200, 12345, username)
    packet = exploit.create_victory_packet()

    expected = bytearray()
    expected.append(125)
    expected.append(8)
    expected.extend(struct.pack('>I', 12345))
    expected.extend(username.encode('utf-8'))
    expected.append(0)
    expected.extend(b"0")
    expected.append(0)
    expected.append(0)

    assert packet == expected

def test_create_victory_packet_large_userid():
    """Test with large user ID (max 32-bit integer)"""
    user_id = 4294967295  # 2^32 - 1
    exploit = CocosExploit("127.0.0.1", 7200, user_id, "User")
    packet = exploit.create_victory_packet()

    expected = bytearray()
    expected.append(125)
    expected.append(8)
    expected.extend(struct.pack('>I', user_id))
    expected.extend(b"User")
    expected.append(0)
    expected.extend(b"0")
    expected.append(0)
    expected.append(0)

    assert packet == expected
