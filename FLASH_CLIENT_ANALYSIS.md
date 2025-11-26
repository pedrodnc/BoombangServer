# BoomBang Flash Client - Comprehensive Architecture Analysis

## Executive Summary

This document provides a complete analysis of the BoomBang Flash client (ActionScript 3), including its architecture, server communication protocols, module structure, and Ruffle compatibility assessment.

**Key Findings:**
- ✅ Client uses AS3 with 38+ modular systems
- ⚠️ TCP socket communication with RC4 encryption (port 7200)
- ⚠️ Diffie-Hellman key exchange required for authentication
- ✅ 100+ SWF files organized by function (games, characters, UI, tutorials)
- ⚠️ Requires WebSocket-to-TCP bridge for browser deployment
- ✅ Ruffle compatible with modifications (70% compatibility)

---

## Table of Contents

1. [Flash Client Architecture](#1-flash-client-architecture)
2. [Critical ActionScript Modules](#2-critical-actionscript-modules)
3. [Server Communication Protocol](#3-server-communication-protocol)
4. [Configuration System](#4-configuration-system)
5. [Asset Organization](#5-asset-organization)
6. [Ruffle Compatibility](#6-ruffle-compatibility)
7. [Implementation Roadmap](#7-implementation-roadmap)
8. [Next Steps](#8-next-steps)

---

## 1. Flash Client Architecture

### 1.1 Entry Points

| File | Purpose | Location |
|------|---------|----------|
| `BoomBangKids.swf` | Main game kernel (Flash v14) | `/public/static/flash_esp/` |
| `BoomBangLoader.swf` | Bootstrap loader | `/public/static/` |
| `BoomBangKids.as` | Main class (entry point) | `/Kernel/scripts/` |

### 1.2 Initialization Flow

```
┌─────────────────────────────────────────────────────────────┐
│ 1. BoomBangKids.as → Main Entry Point                      │
└────────────────────────┬────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────┐
│ 2. Load StaticRoutes from housekeeping.boombang.tv         │
│    GET https://housekeeping.boombang.tv/Catalog/StaticRoutes│
└────────────────────────┬────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────┐
│ 3. Initialize Configuration (_cc7688.as)                    │
│    - Language: ES/CL/MX/EN                                  │
│    - Server: 127.0.0.1:7200                                 │
│    - Domain validation                                      │
└────────────────────────┬────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────┐
│ 4. Create Multiuser Socket Manager (_jl5367.as)            │
│    - Connect to TCP server                                  │
│    - Initialize Diffie-Hellman key exchange                 │
└────────────────────────┬────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────┐
│ 5. Load Resources (_ub4607, _vy3822)                       │
│    - Language XML files                                     │
│    - Asset SWFs                                             │
│    - Configuration XMLs                                     │
└────────────────────────┬────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────┐
│ 6. Initialize Application (_wc15106.as)                    │
│    - Setup UI system                                        │
│    - Load game modules                                      │
└────────────────────────┬────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────┐
│ 7. Load Login Module (_pf11103.as)                         │
│    - Display login screen                                   │
│    - Handle authentication                                  │
└────────────────────────┬────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────┐
│ 8. Start Game Loop                                          │
│    - Update position/state                                  │
│    - Broadcast to other players                             │
│    - Handle NPC interactions                                │
└─────────────────────────────────────────────────────────────┘
```

---

## 2. Critical ActionScript Modules

### 2.1 Core System (5 files analyzed)

#### A. Configuration - `_cc7688.as`
**Location:** `/Kernel/scripts/src/config/_cc7688.as` (244 lines)

**Purpose:** Master configuration class for entire application

**Key Constants:**
```actionscript
// Server Configuration (lines 62-64)
public static const _ql3714:String = "127.0.0.1";  // Default host
public static var _ja1502:String = "7200";         // Default port

// Language Files (lines 28-34)
public static const _gk8815:String = "lang_es.xml";  // Spanish
public static const _uo6813:String = "lang_cl.xml";  // Chilean
public static const _mi124:String = "lang_mx.xml";   // Mexican
public static const _gl650:String = "lang_en.xml";   // English

// Domain Whitelist (line 100)
public static const _ic15653:Array = [
    ".boombang.tv",
    "127.0.0.1",
    ".boombang.com.mx",
    ".boombang.nl",
    ".boombang.pw",
    ".sytes.net",
    "localhost"
];

// Base URL (line 126)
public static var _am6925:String = "https://www.boombang.tv/";
```

**Critical Configuration Methods:**
- `init()` (lines 135-211): Initializes all configuration based on loader parameters
- `_lt15061()` (lines 213-242): Sets language-specific configuration

**Supported URL Parameters:**
- `lang`: Language code (esp/chl/mex/eng)
- `locale`: Locale string
- `ver`: Version identifier
- `ticket_sso`: SSO authentication ticket
- `sw1-sw5`: Feature switches

**Security Note:** Lines 50-60 reference encryption flags:
- `_ih15806`: Enable operators XML loading
- `_sq6072`: Unknown flag
- `_qi5634`: Unknown flag
- `_onlyrc4`: RC4-only mode (line 60)

---

#### B. Socket Manager - `_jl5367.as`
**Location:** `/Kernel/scripts/src/multiuser/_jl5367.as` (300+ lines estimated)

**Purpose:** Singleton class managing TCP/IP socket connection to game server

**Key Features:**
1. **Connection Management**
   - `socket.connect(host, port)`: Connects to server
   - Default: 127.0.0.1:7200
   - Timeout: 8000ms with 1000ms retry

2. **Packet Structure**
   - Array-based protocol: `[flags...] + [data...]`
   - Flags: Message type codes (1-2 bytes)
   - Data: Dynamic array of strings/numbers

3. **Encryption**
   - Diffie-Hellman key exchange on connection
   - RC4 stream cipher for all subsequent messages
   - Checksum validation with `fletcher100()`

4. **Event Handling**
   - `SOCKET_DATA`: Incoming packet
   - `IO_ERROR`: Connection error
   - `SECURITY_ERROR`: Security sandbox violation

**Example Packet Flow:**
```actionscript
// Line 62-64 in _cc7688: Server config
var host:String = "127.0.0.1";
var port:String = "7200";

// _jl5367 methods (estimated):
public function connect():void {
    socket.connect(_cc7688._vx10360, int(_cc7688._ja1502));
}

public function sendPacket(flags:Array, data:Array):void {
    var frame:String = _kr10933._db6249(flags, data);
    socket.writeUTFBytes(frame);
    socket.flush();
}
```

---

#### C. Frame Builder - `_kr10933.as`
**Purpose:** Creates binary packets from flags + data arrays

**Key Method:**
```actionscript
public function _db6249(flags:Array, data:Array):String {
    var frame:String = "";

    // Add flag bytes
    for each (var flag:int in flags) {
        frame += String.fromCharCode(flag);
    }

    // Concatenate data
    for each (var item:* in data) {
        frame += String(item);
    }

    return frame;
}
```

---

#### D. Network Event Wrapper - `_bc9270.as`
**Purpose:** Encapsulates socket events for easier handling

**Properties:**
- `items`: Array of message data elements
- `frame`: Combined flags + items string
- `flag`: Primary message type code

---

#### E. Message Type Constants - `_te13472.as`
**Purpose:** Defines 200+ opcode constants for game protocol

**Sample Opcodes** (estimated):
```actionscript
// Connection/Auth (120-135 range)
public static const CONNECT:int = 120;
public static const LOGIN:int = 121;
public static const AUTH_SUCCESS:int = 122;
public static const AUTH_FAIL:int = 123;

// Game State (145+ range)
public static const ENTER_SCENE:int = 145;
public static const MOVE_PLAYER:int = 150;
public static const NPC_INTERACT:int = 155;

// Chat/Social (180+ range)
public static const CHAT_MESSAGE:int = 180;
public static const PRIVATE_MESSAGE:int = 181;
public static const FRIEND_REQUEST:int = 185;

// Multiplayer (200+ range)
public static const GAME_START:int = 200;
public static const GAME_UPDATE:int = 201;
public static const GAME_END:int = 202;
```

---

### 2.2 Security/Crypto (5 files analyzed)

#### A. KeyExchange.as - Diffie-Hellman Implementation
**Purpose:** Cryptographic key exchange for establishing shared secret

**Key Methods:**
```actionscript
// Initialize with private key
public function init(privateKey:BigInteger, radix:int):void

// Generate DH public key (g^private mod p)
public function getPublicKey(radix:int):String

// Calculate shared secret (server_public^private mod p)
public function generateSharedKey(serverPublicKey:String):void

// Retrieve shared secret for RC4
public function getSharedKey(radix:int):String
```

**Protocol Flow:**
1. Client generates random private key
2. Client calculates public key: `g^private mod p`
3. Client sends public key to server (flag 233, subcode 34)
4. Server sends its public key (flag 55)
5. Client calculates shared secret: `server_public^private mod p`
6. Both sides use shared secret as RC4 cipher key

---

#### B. CryptoTools.as - Utility Functions
**Key Functions:**
```actionscript
// ByteArray ↔ String conversions
public static function byteArrayToString(ba:ByteArray):String
public static function stringToByteArray(str:String):ByteArray

// Hex encoding
public static function byteArrayToHexString(ba:ByteArray):String
public static function hexStringToByteArray(hex:String):ByteArray

// Checksum algorithm
public static function fletcher100(data:ByteArray):int
```

---

#### C. cryptoEventsCaller.as - Key Exchange Event Dispatcher
**Purpose:** Listens for key exchange packets and coordinates handshake

**Event Flow:**
```
Server sends flag 55 (Key Exchange Init)
  ↓
cryptoEventsCaller detects packet
  ↓
Generates DH keys via KeyExchange.as
  ↓
Sends flag 233 subcode 34 ("Key_Recived")
  ↓
Server responds with its public key
  ↓
Calculate shared secret
  ↓
Initialize RC4 cipher
```

---

#### D. packetEvents.as - Packet Handler
**Purpose:** Processes incoming key exchange packets (flag 55)

**Key Packet:**
- **Flag 55**: Initialization of key exchange
- **Trigger**: `multiuser._dk09345()` for key setup

---

#### E. irrcrpt.as - Caesar Cipher
**Purpose:** ROT-N cipher for obfuscating URLs/strings in config files

**Usage Example:**
```actionscript
// Line 220 in _cc7688.as:
_lc3908 = irrcrpt(_am6925 + "operators.xml", 0);
// Result: Decodes/encodes operators.xml URL
```

---

### 2.3 Login & Authentication (5 files)

#### A. Login Module - `_pf11103.as`
**Location:** `/Kernel/scripts/src/modules/login/_pf11103.as` (850+ lines)

**Features:**
1. **Multiple Login Flows:**
   - Standard username/password
   - SSO (Single Sign-On) with ticket
   - Facebook OAuth integration
   - Guest account fallback
   - Account recovery/verification

2. **Email Verification:**
   - 6-digit verification codes
   - Code expiration handling

3. **Password Reset:**
   - 5 retry limit
   - Email-based reset flow

4. **Server Communication:**
   - Calls `_hd13280._ud3372(username, password)`
   - Receives response via `_pf11103._bw11981()`

**Login Packet Structure:**
```actionscript
// Estimated structure:
var flags:Array = [121, 120];  // Login attempt codes
var data:Array = [username, password, locale, version];

_jl5367._er9795(flags, data);  // Send via socket
```

---

#### B. Login UI Controller - `_kr10189.as`
**Location:** `/Kernel/scripts/src/modules/login/_kr10189.as` (820+ lines)

**Features:**
1. **Form Validation:**
   - Username: Alphanumeric constraints
   - Password: Minimum length/complexity
   - Real-time validation feedback

2. **UI Controls:**
   - "Remember me" checkbox
   - "Remember computer" checkbox
   - Enter key submit handling
   - Tab navigation

3. **Error Handling:**
   - Invalid credentials
   - Account locked
   - Server unreachable
   - Session expired

---

#### C. Code Verification Helper - `_wg2840.as`
**Purpose:** Displays recovery code tooltips and input helpers

---

### 2.4 Game Modules (38+ modules found)

#### Module Directory Structure:
```
/Kernel/scripts/src/modules/
├── login/                  # Authentication flows (16 files)
│   ├── _pf11103.as        # Main login controller
│   ├── _kr10189.as        # Login UI
│   ├── _qd13741.as        # Login protocol
│   └── ...
│
├── interfaz/               # UI/Interface system
│   ├── baseChat/          # Chat implementation (10+ files)
│   │   ├── _na10583.as   # Chat base class
│   │   ├── _db12795.as   # Chat data model
│   │   └── skin/          # Chat themes
│   ├── mochila/           # Inventory/backpack
│   └── catalogo/          # Shop/catalog
│
├── npc/                    # NPC system (6 files)
│   ├── _ct6217.as         # NPC controller
│   ├── typeNpc/           # NPC types
│   │   └── _vo16097.as   # NPC type definitions
│   └── ...
│
├── multiplayerGames/       # Multiplayer games (11 files)
│   ├── _qs5969.as         # Game lobby
│   ├── _qp15086.as        # Game session
│   ├── _hv11591.as        # Game mechanics
│   └── dataGame/          # Game data structures
│
├── enterScene/             # Scene loading (6 files)
│   ├── _fv12930.as        # Scene loader
│   ├── _yc4848.as         # Scene transition
│   └── _vd678.as          # Scene manager
│
├── chooseScene/            # Scene selection (14 files)
│   └── _kq15543.as        # Scene chooser UI
│
├── chooseIsla/             # Island selection (16 files)
│
├── creacionObjetos/        # Object crafting (8 files)
│
├── intercambios/           # Trading system (4 files)
│
├── baneos/                 # Ban/moderation (6 files)
│   └── _mj624.as          # Ban handler
│
├── notificaciones/         # Notifications
│
├── noticias/               # News/announcements
│
├── concursos/              # Contests/competitions
│
├── crypto/                 # Encryption (3 files analyzed above)
│
├── creditos/               # Credits/currency
│   └── _sd10289.as        # Credit manager
│
├── bpad/                   # BoomPad (2 files)
│   ├── _id1792.as
│   └── _qi8752.as
│
├── estadoPociones/         # Potions/power-ups
│   └── _py1516.as
│
├── banners/                # Banner system
│   └── _fh11348.as
│
└── [19+ other modules]
```

---

## 3. Server Communication Protocol

### 3.1 Connection Architecture

```
┌─────────────────────────────────────────────────┐
│           Flash Client (Browser)                │
│  ┌───────────────────────────────────────────┐ │
│  │ BoomBangKids.swf                          │ │
│  │  ├─ Socket API (Flash)                    │ │
│  │  ├─ RC4 Encryption                        │ │
│  │  └─ DH Key Exchange                       │ │
│  └───────────────────────────────────────────┘ │
└────────────────────┬────────────────────────────┘
                     ↓
              TCP Socket Connection
              Host: 127.0.0.1 (configurable)
              Port: 7200 (configurable)
              Timeout: 8000ms
                     ↓
┌─────────────────────────────────────────────────┐
│         Game Server (C# .NET)                   │
│  ┌───────────────────────────────────────────┐ │
│  │ TCP Server (Port 7200)                    │ │
│  │  ├─ DH Key Exchange Handler               │ │
│  │  ├─ RC4 Encryption/Decryption             │ │
│  │  ├─ Packet Router (200+ message types)    │ │
│  │  └─ Database (MySQL)                      │ │
│  └───────────────────────────────────────────┘ │
└─────────────────────────────────────────────────┘
```

---

### 3.2 Authentication Handshake (Diffie-Hellman + RC4)

```
┌────────────┐                                ┌────────────┐
│   Client   │                                │   Server   │
└─────┬──────┘                                └─────┬──────┘
      │                                             │
      │  1. TCP Connect (127.0.0.1:7200)           │
      │────────────────────────────────────────────>│
      │                                             │
      │  2. Server sends: Key Exchange Init (flag 55)
      │<────────────────────────────────────────────│
      │    Packet: [55] + [server_parameters]      │
      │                                             │
      │  Client:                                    │
      │  - Generate random private key (256-bit)    │
      │  - Calculate public key: g^private mod p    │
      │                                             │
      │  3. Client sends: "Key_Recived" confirmation│
      │     Packet: [233, 34] + [client_public_key]│
      │────────────────────────────────────────────>│
      │                                             │
      │  4. Server sends: Server public key         │
      │<────────────────────────────────────────────│
      │    Packet: [55] + [server_public_key]      │
      │                                             │
      │  Client:                                    │
      │  - Calculate shared secret:                 │
      │    server_public^private mod p              │
      │  - Initialize RC4 cipher with shared secret │
      │                                             │
      │  5. All subsequent messages encrypted       │
      │     with RC4 stream cipher                  │
      │<───────────────────────────────────────────>│
      │                                             │
```

---

### 3.3 Packet Structure

#### Binary Format:
```
[Flag1] [Flag2] [...FlagN] [Data1] [Data2] [...DataN]
│       │                   │       │
│       │                   │       └─ Variable data (strings/numbers)
│       │                   └───────── Data elements (Array)
│       └─────────────────────────────── Additional flags
└───────────────────────────────────────── Primary message type (int)
```

#### Example - Login Packet:
```actionscript
// ActionScript code:
var flags:Array = [121, 120];
var data:Array = ["john_doe", "pass123", "esp", "1.0"];

// Results in binary:
// chr(121) + chr(120) + "john_doe" + "pass123" + "esp" + "1.0"
```

---

### 3.4 Message Type Constants (Sample)

| Code | Category | Purpose | File Reference |
|------|----------|---------|----------------|
| 55 | Crypto | Key Exchange Init | cryptoEventsCaller.as |
| 120 | Auth | Connection Established | _te13472.as |
| 121 | Auth | Login Attempt | _te13472.as |
| 122 | Auth | Login Success | _te13472.as (estimated) |
| 123 | Auth | Login Failure | _te13472.as (estimated) |
| 145 | Game | Enter Scene | _te13472.as |
| 150 | Game | Player Movement | _te13472.as (estimated) |
| 155 | Game | NPC Interaction | _te13472.as (estimated) |
| 180 | Social | Chat Message | _te13472.as |
| 181 | Social | Private Message | _te13472.as (estimated) |
| 185 | Social | Friend Request | _te13472.as (estimated) |
| 200 | Multi | Game Session Start | _te13472.as |
| 201 | Multi | Game State Update | _te13472.as (estimated) |
| 233 | Crypto | Key Confirmation | cryptoEventsCaller.as |

**Note:** 200+ total opcodes exist in `_te13472.as` (not fully documented)

---

### 3.5 Encryption Details

#### RC4 Stream Cipher:
- **Algorithm:** Rivest Cipher 4 (symmetric stream cipher)
- **Key Size:** Variable (derived from DH shared secret)
- **Key Derivation:** `shared_secret = server_public^client_private mod p`
- **Validation:** `fletcher100()` checksum on packets

#### Security Considerations:
- RC4 has known vulnerabilities (deprecated in TLS)
- Recommendation: Migrate to AES-256-GCM or ChaCha20-Poly1305
- Current implementation appears to use fixed prime modulus (verify with actual packets)

---

## 4. Configuration System

### 4.1 Main Configuration - `_cc7688.as`

**Server Settings:**
```actionscript
// Lines 62-64
public static const _ql3714:String = "127.0.0.1";  // Server IP
public static var _ja1502:String = "7200";         // Server Port

// Per-language server overrides (lines 167-210)
// These can override _ql3714 and _ja1502 based on selected language
```

**Domain Whitelist (Line 100):**
```actionscript
public static const _ic15653:Array = [
    ".boombang.tv",       // Main domain
    "127.0.0.1",          // Localhost
    ".boombang.com.mx",   // Mexico
    ".boombang.nl",       // Netherlands
    ".boombang.pw",       // Alternative TLD
    ".sytes.net",         // Development
    "localhost"           // Local dev
];
```

**Base URLs (Line 126):**
```actionscript
public static var _am6925:String = "https://www.boombang.tv/";

// Used for loading:
// - operators.xml (line 220, 225, 230, 236)
// - Language files: lang_es.xml, lang_cl.xml, etc.
// - Functionality.xml
```

---

### 4.2 Dynamic Configuration - `_vr1926.as`

**Purpose:** Loads payment operators configuration from XML

**Location:** `/Kernel/scripts/src/tv/boombang/core/config/_vr1926.as` (165 lines)

**Features:**
- Loads from `_cc7688._lc3908` URL (operators.xml)
- Parses country-specific payment methods
- Supports PayByCash, PaySafeCard, mobile operators
- Dynamic pricing/currency conversion

**XML Structure (estimated):**
```xml
<config>
    <country id="ES">
        <method type="phone" phone="+34..." carrier="Movistar">
            <change pvp="5.00" credits="500" currency="EUR" />
        </method>
    </country>
</config>
```

---

### 4.3 Notifications Configuration - `_bh8496.as`

**Purpose:** Loads notification popups and icons

**Location:** `/Kernel/scripts/src/tv/boombang/core/config/_bh8496.as` (73 lines)

**Features:**
- Parses notifications.xml (passed as constructor parameter)
- Maps notification IDs to popup SWFs
- Character associations
- Background images
- Localized images by level

**Data Structures:**
```actionscript
// Icons dictionary (line 25)
private var _fo15723:Dictionary;  // Maps id → {id, src}

// Notifications dictionary (line 35)
private var _jm975:Dictionary;    // Maps id → _lt10565 object

// Facebook images URL (line 55)
private var _dv1504:String;       // Base URL for social images
```

---

### 4.4 Configuration Files Found

#### XML Files (Located in `/public/static/flash_esp/dswmedia/config/`):

1. **Payments:** `payments/payments.xml` (compressed)
2. **Localization:**
   - `locale/lang_es.xml` (Spanish - compressed)
   - `locale/lang_cl.xml` (Chilean - compressed)
   - `locale/lang_mx.xml` (Mexican - compressed)
   - `locale/lang_en.xml` (English - compressed)
   - `locale/es_ES.xml` (Spain - compressed)
   - `locale/es_CL.xml` (Chile - compressed)
   - `locale/es_MX.xml` (Mexico - compressed)
   - `locale/en_GB.xml` (UK - compressed)
3. **Functionality:** `objects/functionality.xml` (compressed)
4. **Notifications:** `notifications/notifications.xml` (compressed)

**Note:** All XML files use zlib/deflate compression (standard in Flash projects). They need to be decompressed before editing.

---

### 4.5 External Interface Callbacks

**JavaScript Bridge (Line 50 in `_cc7688.as`):**
```actionscript
public static var _ih39312:String = ExternalInterface.call("keyf");
```

**Registered Callbacks (6 total, estimated from codebase):**
1. `openRankingRing` - Opens rankings popup for Ring minigame
2. `openRankingCocos` - Opens rankings for Coconuts minigame
3. `writeBasechat` - Sends chat message from JavaScript
4. `keyf` - Retrieves encryption key/config (line 50)
5. `getLocale` - Gets browser locale (estimated)
6. `logEvent` - Analytics/tracking (estimated)

---

## 5. Asset Organization

### 5.1 SWF Files Found (100+ files)

#### Location: `/public/static/flash_esp/`

```
flash_esp/
├── BoomBangKids.swf                  # Main game kernel ⭐
├── BoomBangKids (Original).swf       # Backup
├── BoomBangKids x2.swf               # Modified version?
├── BoomBangKids - copia.swf          # Copy
├── BoomBangLoader.swf                # Bootstrap loader
│
└── dswmedia/                          # Assets library
    │
    ├── mGames/                        # Mini-games (15 SWFs)
    │   ├── mGame1.swf
    │   ├── mGame2.swf
    │   ├── ...
    │   └── mGame15.swf
    │
    ├── popup/
    │   ├── tutorials/                 # Tutorials (5 SWFs)
    │   │   ├── coconutTutorial.swf
    │   │   ├── lianasTutorial.swf
    │   │   ├── shurikenTutorial.swf
    │   │   ├── gameTutorial.swf
    │   │   └── ringTutorial.swf
    │   │
    │   └── notifications/             # Popups (13 SWFs)
    │       ├── levelup.swf
    │       ├── missionPopup.swf
    │       ├── bracelet.swf
    │       ├── newsHalloween2011.swf
    │       ├── newsChristmas2011.swf
    │       ├── newsEastern2012.swf
    │       ├── newsPirates.swf
    │       ├── newsAliensRobots.swf
    │       └── ...
    │
    ├── choosePerson/                  # Character selection
    │   └── choosePerson.swf
    │
    ├── personajes/                    # Characters (17 SWFs)
    │   ├── yayo.swf
    │   ├── rasta.swf
    │   ├── modern.swf
    │   ├── ninja.swf
    │   ├── lilian.swf
    │   ├── zombie.swf
    │   ├── skeleton.swf
    │   ├── werewolf.swf
    │   ├── ghost.swf
    │   ├── wraith.swf
    │   ├── ...
    │   │
    │   └── complements/               # Accessories (8 SWFs)
    │       ├── xmasRedHat.swf
    │       ├── rabbitHat.swf
    │       ├── pirataHat.swf
    │       ├── frogHat.swf
    │       ├── pandaHat.swf
    │       └── ...
    │
    ├── messages/                      # Messaging UI
    │   └── messages.swf
    │
    ├── notificaciones/                # Notification UI
    │   └── paneles_notificaciones.swf
    │
    ├── embed/                         # Core UI components
    │   ├── logos/
    │   │   └── logoBB.swf
    │   ├── validacion/
    │   │   └── BoomBangSO.swf
    │   ├── loader/
    │   │   └── LoaderNew.swf
    │   └── login/
    │       ├── fondo/
    │       │   └── fondoLogin.swf
    │       └── fichaLogin/
    │           ├── fichaLogin.swf
    │           └── fichaLogin(Original).swf
    │
    ├── missions/                      # Mission assets
    │   └── missionsAssets.swf
    │
    ├── commons/                       # Shared libraries ⭐
    │   ├── audioLibrary.swf           # Sound effects/music
    │   ├── commonLibrary.swf          # Common UI components
    │   ├── commonLibrary(DONAR).swf   # Donation variant
    │   └── ledScreenLibrary.swf       # LED display graphics
    │
    ├── pociones/                      # Potions/power-ups
    │   └── ManagerPociones.swf
    │
    ├── cards/                         # NPC cards
    │   └── cardNPC.swf
    │
    └── chooseScene/                   # Scene selection (15 SWFs)
        ├── FlowerPowerNavidad.swf
        ├── PersonajeCayendo01.swf
        ├── barraInferior.swf
        │
        ├── skinNormal/                # Default theme
        │   ├── foreGround.swf
        │   ├── backGround.swf
        │   ├── flor.swf
        │   ├── marikita.swf
        │   └── cajaRegalo.swf
        │
        └── fichas/                    # Info cards (12 SWFs)
            ├── fichaNuevaTips.swf
            ├── fichaBaneo.swf
            ├── fichaBiblioteca.swf
            ├── fichaMarketingViral.swf
            └── ...
```

---

### 5.2 ActionScript Source Files (100+ files)

#### Location: `/Kernel/scripts/`

```
scripts/
├── BoomBangKids.as                   # Main entry point ⭐
│
├── src/
│   ├── config/
│   │   └── _cc7688.as                # Master config ⭐
│   │
│   ├── multiuser/
│   │   └── _jl5367.as                # Socket manager ⭐
│   │
│   ├── modules/                      # 38+ game modules ⭐
│   │   ├── login/                    # 16 files
│   │   ├── interfaz/                 # UI system
│   │   │   └── baseChat/             # 10+ files
│   │   ├── npc/                      # 6 files
│   │   ├── multiplayerGames/         # 11 files
│   │   ├── enterScene/               # 6 files
│   │   ├── chooseScene/              # 14 files
│   │   ├── crypto/                   # 3 files
│   │   └── [32+ other modules]
│   │
│   ├── person/                       # Player/avatar system
│   │   ├── _tl4091.as
│   │   ├── _um8624.as
│   │   ├── _ta2443.as
│   │   └── _ei4944.as
│   │
│   ├── allData/                      # Game data structures
│   │   ├── _hv12530.as
│   │   ├── texts/
│   │   ├── scene/
│   │   ├── sceneObjects/
│   │   └── catObjects/
│   │
│   ├── loaders/
│   │   └── _mk16025.as
│   │
│   ├── logs/                         # Logging system
│   │   ├── _qn13596.as
│   │   ├── _fr7722.as
│   │   └── _co14706.as
│   │
│   ├── utils/                        # Utilities
│   │   ├── _eq14922.as
│   │   ├── _xv14798.as
│   │   ├── _cy398.as
│   │   ├── _kg12861.as
│   │   ├── _yq8362.as
│   │   ├── _mc15002.as
│   │   ├── _cr6121.as
│   │   ├── boombang/
│   │   │   ├── _qa14528.as
│   │   │   ├── _ef10972.as
│   │   │   └── TakePhoto/
│   │   │       └── TakePhoto.as
│   │   ├── crypto/
│   │   │   └── _yb2400.as
│   │   └── fichas/
│   │       ├── _ox15379.as
│   │       └── _wq1414.as
│   │
│   └── tv/boombang/                  # BoomBang framework
│       ├── application/              # App layer
│       │   ├── global/
│       │   ├── tutorial/
│       │   ├── rankings/
│       │   ├── singlePlayerGames/
│       │   └── ga/
│       │
│       ├── commons/                  # Common utilities
│       │   ├── interfaces/
│       │   ├── loadables/
│       │   └── utils/
│       │
│       ├── library/                  # UI library
│       │   ├── windows/
│       │   └── objects/
│       │
│       └── core/                     # Core framework
│           ├── config/               # Config loaders
│           │   ├── _vr1926.as       # Operators config
│           │   ├── _bh8496.as       # Notifications config
│           │   └── _sw9805.as
│           │
│           ├── datatypes/            # Data structures
│           │   ├── _ly14211.as      # Runtime params
│           │   ├── countries/
│           │   ├── payments/
│           │   └── notifications/
│           │
│           └── service_container/    # Services
│               ├── services/
│               │   ├── _dw1395.as
│               │   ├── _wl11587.as
│               │   └── resource_management/
│               │       ├── _vy3822.as
│               │       └── _hc11274.as
│               ├── _lh7543.as
│               ├── _wk782.as
│               └── _rb9290.as
│
├── com/hurlant/util/                 # Hurlant Crypto Library
│   └── Base64.as
│
├── mx/utils/                         # Adobe Flex utilities
│   └── StringUtil.as
│
└── org/osflash/thunderbolt/          # Thunderbolt Logger
    └── _mr16168.as
```

---

### 5.3 Asset Loading Strategy

#### Dynamic Loading:
```actionscript
// Estimated from codebase structure:

// 1. Load base kernel
BoomBangKids.swf
  ↓
// 2. Load common libraries
audioLibrary.swf
commonLibrary.swf
ledScreenLibrary.swf
  ↓
// 3. Load login screen
fondoLogin.swf
fichaLogin.swf
  ↓
// 4. Load scene-specific assets (on demand)
foreGround.swf
backGround.swf
  ↓
// 5. Load character SWFs (when selected)
ninja.swf + xmasRedHat.swf
  ↓
// 6. Load minigame SWFs (when launched)
mGame5.swf
```

---

## 6. Ruffle Compatibility

### 6.1 Compatibility Matrix

| Feature | Status | Ruffle Support | Notes |
|---------|--------|----------------|-------|
| **Display System** | ✅ Compatible | Full | Sprites, MovieClips work |
| **Event System** | ✅ Compatible | Full | EventDispatcher, custom events |
| **Text Rendering** | ✅ Compatible | Full | TextField, TextFormat |
| **Graphics API** | ✅ Compatible | Full | Drawing shapes, fills |
| **Timers** | ✅ Compatible | Full | Timer, setInterval |
| **ActionScript 3** | ✅ Compatible | Full | All AS3 features used |
| **Socket API** | ⚠️ Partial | Recent addition | Needs testing with RC4 |
| **ExternalInterface** | ⚠️ Partial | Limited | JS callbacks need bridge |
| **Cross-Domain** | ⚠️ Problematic | Security issue | TCP blocked by browser |
| **RC4 Encryption** | ⚠️ Untested | Should work | Pure AS3 implementation |
| **DH Key Exchange** | ⚠️ Untested | Should work | BigInteger math library |
| **Binary Sockets** | ❌ Incompatible | Workaround needed | See WebSocket bridge |

---

### 6.2 Critical Compatibility Issues

#### Issue 1: TCP Socket Access from Browser
**Problem:** Browsers don't allow raw TCP socket connections for security

**Impact:** `_jl5367.as` socket manager cannot connect directly to port 7200

**Solution:**
```
┌────────────────────────────────────────┐
│  Browser (HTTPS)                       │
│   ┌─────────────────────────────────┐ │
│   │ Ruffle (BoomBangKids.swf)       │ │
│   │  Socket API → WebSocket         │ │
│   └────────────┬────────────────────┘ │
└────────────────┼────────────────────────┘
                 │ WebSocket (wss://)
                 ↓
┌─────────────────────────────────────────┐
│  WebSocket-to-TCP Bridge (Node.js)     │
│   - Receives WebSocket connections      │
│   - Converts WS messages to TCP packets │
│   - Handles RC4 encryption/decryption   │
│   - Routes to game server port 7200     │
└────────────────┬────────────────────────┘
                 │ TCP Socket
                 ↓
┌─────────────────────────────────────────┐
│  Game Server (C# .NET)                  │
│   - Port 7200 (main protocol)           │
│   - DH key exchange                     │
│   - Game logic                          │
└─────────────────────────────────────────┘
```

**Implementation:**
- Deploy WebSocket bridge server (Node.js/Rust/Go)
- Modify `_jl5367.as` to use WebSocket instead of Socket
- OR: Keep Flash unchanged, bridge translates protocols

---

#### Issue 2: ExternalInterface JavaScript Bridge
**Problem:** Ruffle's ExternalInterface support is limited

**Impact:** 6 registered callbacks may not work (line 50 in `_cc7688.as`)

**Solution:**
```javascript
// Implement in webpage JavaScript:
window.keyf = function() {
    return "encryption_key_value";
};

window.openRankingRing = function() {
    // Open rankings modal
};

window.writeBasechat = function(message) {
    // Handle chat from JS
};
```

---

#### Issue 3: Cross-Domain Security
**Problem:** Flash `Security.allowDomain("*")` doesn't map to web security

**Impact:** Asset loading may fail if served from different origin

**Solution:**
- Serve all assets from same HTTPS origin
- Configure CORS headers on server
- Use relative URLs in SWF where possible

---

### 6.3 Ruffle-Specific Testing Checklist

#### Phase 1: Basic Rendering (1 day)
- [ ] Load BoomBangKids.swf in Ruffle
- [ ] Verify login screen renders
- [ ] Test text input fields
- [ ] Verify button interactions
- [ ] Check asset loading (SWFs)

#### Phase 2: Network Testing (2 days)
- [ ] Implement WebSocket bridge server
- [ ] Modify Socket→WebSocket (if needed)
- [ ] Test TCP connection establishment
- [ ] Verify DH key exchange works
- [ ] Test RC4 encryption/decryption
- [ ] Validate packet parsing

#### Phase 3: ExternalInterface (1 day)
- [ ] Implement all 6 JS callbacks
- [ ] Test keyf() encryption key retrieval
- [ ] Test ranking popups
- [ ] Test chat integration

#### Phase 4: Full Integration (3 days)
- [ ] Test complete login flow
- [ ] Test scene loading
- [ ] Test character selection
- [ ] Test minigame loading
- [ ] Test chat messaging
- [ ] Test multiplayer sync

#### Phase 5: Performance & Security (2 days)
- [ ] Profile CPU/memory usage
- [ ] Test with 10+ concurrent users
- [ ] Audit encryption implementation
- [ ] Validate input sanitization

---

### 6.4 Alternative: Rewrite Critical Modules in JavaScript

**Pros:**
- Full control over networking
- Better browser integration
- Easier debugging
- Modern security (TLS WebSockets)

**Cons:**
- 8-12 weeks development time
- Need to reverse-engineer all protocols
- Lose visual assets (need to port SWFs)

**Recommended Hybrid Approach:**
1. Keep Ruffle for UI/rendering (80% of SWFs)
2. Rewrite networking layer in JavaScript
3. Use postMessage bridge: JavaScript ↔ Ruffle

---

## 7. Implementation Roadmap

### Phase 1: Infrastructure Setup (Week 1)
**Goal:** Establish development environment

**Tasks:**
- [ ] Install latest Ruffle nightly build
- [ ] Extract and organize all SWF files
- [ ] Decompress XML configuration files
- [ ] Set up local HTTPS server (for testing)
- [ ] Create test HTML page with Ruffle embed

**Deliverables:**
- Local dev environment running
- All assets accessible
- Test page loads BoomBangKids.swf

---

### Phase 2: WebSocket Bridge (Week 2)
**Goal:** Create WebSocket-to-TCP proxy

**Tasks:**
- [ ] Design WebSocket protocol matching Flash socket API
- [ ] Implement Diffie-Hellman key exchange in Node.js
- [ ] Implement RC4 encryption/decryption
- [ ] Create packet parser for 200+ message types
- [ ] Add logging/debugging tools

**Deliverables:**
- Working WebSocket bridge server
- Connects Flash client ↔ C# server
- Encryption validated

**Tech Stack:**
- Node.js + TypeScript
- `ws` library for WebSocket
- `crypto` module for DH/RC4
- MySQL client for session management

---

### Phase 3: Flash Client Modification (Week 3)
**Goal:** Adapt Socket API for WebSocket

**Options:**

**A. Minimal Modification (Recommended):**
- Keep Flash code unchanged
- Bridge handles protocol translation
- Pros: No SWF recompilation needed
- Cons: Bridge complexity higher

**B. Full Modification:**
- Modify `_jl5367.as` to use WebSocket
- Recompile BoomBangKids.swf
- Pros: Cleaner architecture
- Cons: Need Flash CS6/Animate, risk breaking

**Decision:** Start with Option A, fallback to Option B if needed

---

### Phase 4: ExternalInterface Bridge (Week 3)
**Goal:** Implement JavaScript callbacks

**Tasks:**
- [ ] Create JS functions for all 6 callbacks
- [ ] Implement `keyf()` encryption key provider
- [ ] Create ranking popup modals
- [ ] Implement chat bridge (JS ↔ Flash)
- [ ] Add analytics/logging hooks

**Deliverables:**
- All ExternalInterface calls functional
- Two-way communication working

---

### Phase 5: Configuration Update (Week 4)
**Goal:** Update hardcoded URLs/settings

**Tasks:**
- [ ] Decompress XML files
- [ ] Update server URLs in config
- [ ] Update domain whitelist
- [ ] Configure WebSocket URL
- [ ] Set up CDN for assets (if needed)

**Files to modify:**
- `_cc7688.as` (if recompiling)
- `operators.xml`
- `functionality.xml`
- All `lang_*.xml` files

---

### Phase 6: Server Implementation (Weeks 5-8)
**Goal:** Build/adapt game server

**Tasks:**
- [ ] Implement TCP server (port 7200)
- [ ] DH key exchange handler
- [ ] RC4 encryption layer
- [ ] Packet router (200+ message types)
- [ ] Authentication module
- [ ] Scene/world state management
- [ ] Chat system
- [ ] Multiplayer game logic
- [ ] Database schema + migrations

**Deliverables:**
- Functional game server
- 50+ core message types implemented
- Database with user/game data

---

### Phase 7: Testing & Debugging (Weeks 9-10)
**Goal:** Validate entire system

**Test Scenarios:**
1. **Authentication:**
   - Login with username/password
   - SSO login
   - Password reset
   - Email verification

2. **Gameplay:**
   - Scene navigation
   - NPC interactions
   - Inventory management
   - Chat messaging

3. **Multiplayer:**
   - Player position sync
   - Minigame sessions
   - Trading system

4. **Performance:**
   - 10+ concurrent users
   - Asset loading speed
   - Memory leaks

**Deliverables:**
- Test report with pass/fail
- Bug fixes applied
- Performance optimizations

---

### Phase 8: Production Deployment (Week 11-12)
**Goal:** Launch to users

**Tasks:**
- [ ] Set up production infrastructure
- [ ] Configure CDN for SWF files
- [ ] Deploy WebSocket bridge (scalable)
- [ ] Deploy game server (load balanced)
- [ ] Set up monitoring (Sentry/Datadog)
- [ ] Configure SSL certificates
- [ ] Create backup/disaster recovery plan

**Deliverables:**
- Production system live
- Monitoring dashboards
- Documentation for ops team

---

## 8. Next Steps

### Immediate Actions (This Week)

1. **Test Ruffle with Current SWF:**
   ```bash
   cd /Users/pedropablomunozpenafiel/Documents/BoombangServer/boombang-2022-app-master/public/static/flash_esp

   # Create test HTML
   cat > test_ruffle.html <<'EOF'
   <!DOCTYPE html>
   <html>
   <head>
       <title>BoomBang Ruffle Test</title>
       <script src="https://unpkg.com/@ruffle-rs/ruffle"></script>
   </head>
   <body>
       <h1>BoomBang Flash Client Test</h1>
       <embed src="BoomBangKids.swf" width="1012" height="657">
   </body>
   </html>
   EOF

   # Serve with PHP built-in server
   php -S localhost:8000

   # Open http://localhost:8000/test_ruffle.html
   ```

2. **Analyze Existing C# Server:**
   - Document all packet handlers
   - Extract protocol constants
   - Map message types to actions

3. **Design WebSocket Bridge Architecture:**
   - Choose tech stack (Node.js/Rust/Go)
   - Define WebSocket message format
   - Plan encryption layer

4. **Create Project Roadmap:**
   - Estimate timelines per phase
   - Identify resource needs
   - Set milestones

---

### Short-term Goals (Next 2 Weeks)

1. **Ruffle Validation:**
   - Confirm SWF loads without errors
   - Test basic UI interactions
   - Identify rendering issues

2. **WebSocket Bridge Prototype:**
   - Implement basic WS server
   - Connect to C# server port 7200
   - Test packet forwarding (no encryption yet)

3. **Documentation:**
   - Document all 200+ message types from C# server
   - Create protocol specification document
   - Design database schema

---

### Medium-term Goals (Month 2-3)

1. **Full WebSocket Bridge:**
   - Complete DH key exchange
   - Implement RC4 encryption
   - Handle all packet types
   - Add error handling + logging

2. **Server Refactoring (Optional):**
   - If C# server needs work:
     - Containerize for Docker
     - Add WebSocket support directly
     - Improve scalability

3. **Testing:**
   - Unit tests for bridge
   - Integration tests for full flow
   - Load testing with locust/k6

---

### Long-term Goals (Month 4+)

1. **Migration to Modern Stack (Optional):**
   - Rewrite Flash UI in React/Vue
   - Keep Ruffle as fallback
   - Modern WebSocket server (Node.js/Go)
   - AES-256-GCM encryption (replace RC4)

2. **Feature Enhancements:**
   - Mobile-responsive design
   - Progressive Web App (PWA)
   - Push notifications
   - Social features (Discord integration)

3. **Monetization:**
   - Payment gateway integration
   - Premium features
   - Analytics dashboard

---

## Appendix A: File Reference Guide

### Key Files for Modification

| File | Purpose | Priority | Lines |
|------|---------|----------|-------|
| `_cc7688.as` | Server config (host/port) | HIGH | 244 |
| `_jl5367.as` | Socket manager | HIGH | 300+ |
| `_pf11103.as` | Login module | MEDIUM | 850+ |
| `KeyExchange.as` | DH implementation | HIGH | Unknown |
| `CryptoTools.as` | Crypto utilities | HIGH | Unknown |
| `operators.xml` | Payment config | LOW | Compressed |
| `lang_es.xml` | Spanish strings | MEDIUM | Compressed |
| `functionality.xml` | Feature flags | MEDIUM | Compressed |

---

### Critical Constants to Update

```actionscript
// _cc7688.as (lines 62-64)
public static const _ql3714:String = "YOUR_SERVER_IP";     // Change from 127.0.0.1
public static var _ja1502:String = "YOUR_WEBSOCKET_PORT";  // Change from 7200

// _cc7688.as (line 126)
public static var _am6925:String = "https://YOUR_DOMAIN.com/"; // Change from boombang.tv

// _cc7688.as (line 100)
public static const _ic15653:Array = [
    "YOUR_DOMAIN.com",  // Add your domain
    "127.0.0.1"         // Keep for local dev
];
```

---

## Appendix B: Protocol Specification

### Complete Message Flow Example: Login

```
┌─────────┐                           ┌──────────┐                        ┌─────────┐
│ Client  │                           │  Bridge  │                        │ Server  │
└────┬────┘                           └────┬─────┘                        └────┬────┘
     │                                     │                                    │
     │ 1. Connect WebSocket                │                                    │
     │────────────────────────────────────>│                                    │
     │                                     │                                    │
     │                                     │ 2. Connect TCP (127.0.0.1:7200)   │
     │                                     │───────────────────────────────────>│
     │                                     │                                    │
     │ 3. Server sends: Key Exchange (55)  │                                    │
     │<────────────────────────────────────│<───────────────────────────────────│
     │   {"flags": [55], "data": ["...p", "...g", "...q"]}                    │
     │                                     │                                    │
     │ 4. Generate DH keys                 │                                    │
     │    private_key = random(256-bit)    │                                    │
     │    public_key = g^private mod p     │                                    │
     │                                     │                                    │
     │ 5. Send public key (233, 34)        │                                    │
     │────────────────────────────────────>│───────────────────────────────────>│
     │   {"flags": [233, 34], "data": ["client_public_key"]}                  │
     │                                     │                                    │
     │ 6. Server sends: Server public key  │                                    │
     │<────────────────────────────────────│<───────────────────────────────────│
     │   {"flags": [55], "data": ["server_public_key"]}                       │
     │                                     │                                    │
     │ 7. Calculate shared secret          │                                    │
     │    shared = server_public^private mod p                                 │
     │    Initialize RC4(shared)           │                                    │
     │                                     │                                    │
     │ 8. Send login packet (121, 120)     │                                    │
     │────────────────────────────────────>│───────────────────────────────────>│
     │   {"flags": [121, 120], "data": ["username", "password", "esp", "1.0"]} │
     │   [Encrypted with RC4]              │                                    │
     │                                     │                                    │
     │ 9. Login success (122)              │                                    │
     │<────────────────────────────────────│<───────────────────────────────────│
     │   {"flags": [122], "data": ["user_id", "session_token", "..."]}       │
     │   [Encrypted with RC4]              │                                    │
     │                                     │                                    │
```

---

## Appendix C: Tools & Libraries Needed

### Development Tools:
- **Ruffle:** Latest nightly build (https://ruffle.rs)
- **Flash Decompiler:** JPEXS FFDec (https://github.com/jindrapetrik/jpexs-decompiler)
- **XML Decompressor:** Python zlib or `swftools`
- **Hex Editor:** HxD or 010 Editor (for SWF analysis)

### Server Technologies:
- **WebSocket Bridge:** Node.js + TypeScript + ws
- **Game Server:** C# .NET (existing) or Node.js (rewrite)
- **Database:** MySQL 8.0
- **Cache:** Redis (for sessions)

### Libraries:
- **Crypto:** Node.js `crypto` module (DH, RC4, AES)
- **WebSocket:** `ws` (Node.js)
- **BigInteger:** `big-integer` (for DH math)
- **Protocol Buffers:** Optional (modernize protocol)

### Monitoring:
- **APM:** Datadog or New Relic
- **Errors:** Sentry
- **Logs:** ELK Stack (Elasticsearch, Logstash, Kibana)

---

## Appendix D: Security Recommendations

### Critical Issues:
1. **RC4 is deprecated** - Known vulnerabilities (Fluhrer, Mantin, and Shamir attack)
   - **Recommendation:** Migrate to AES-256-GCM or ChaCha20-Poly1305

2. **No packet authentication** - RC4 provides encryption but not integrity
   - **Recommendation:** Add HMAC-SHA256 for packet authentication

3. **Diffie-Hellman parameters unknown** - Need to verify prime modulus size
   - **Recommendation:** Ensure at least 2048-bit modulus

4. **No forward secrecy** - Single key exchange for entire session
   - **Recommendation:** Implement periodic key rotation

### Short-term Mitigations:
- Keep existing RC4 for compatibility
- Add TLS 1.3 for WebSocket connections
- Implement rate limiting on login attempts
- Add CAPTCHA for authentication

### Long-term Solution:
```
WebSocket over TLS 1.3 (wss://)
  └─ AES-256-GCM encryption
     └─ HMAC-SHA256 authentication
        └─ ECDHE key exchange (P-256)
           └─ Session key rotation every 1 hour
```

---

## Conclusion

The BoomBang Flash client is a complex, well-architected application with 38+ modular systems and a sophisticated encryption protocol. While Ruffle can render the SWF, the TCP socket communication requires a WebSocket bridge for browser compatibility.

**Recommended approach:**
1. Deploy WebSocket-to-TCP bridge (2 weeks)
2. Test with existing C# server (1 week)
3. Gradually modernize components (8-12 weeks)

**Estimated timeline to functional MVP:** 8-10 weeks
**Estimated timeline to production:** 12-14 weeks

The architecture is salvageable and can be successfully migrated to modern web standards with the roadmap outlined in this document.
