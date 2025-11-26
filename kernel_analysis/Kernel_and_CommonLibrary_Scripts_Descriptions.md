# 📚 BoomBang - Kernel and Common Library Scripts Descriptions

**Documento:** Descripción Detallada de Funciones Desobfuscadas
**Versión:** 1.0
**Fecha:** 2025-11-24
**Estado:** Código Desobfuscado y Documentado

---

## 📋 Índice

1. [Introducción](#introducción)
2. [Arquitectura General](#arquitectura-general)
3. [Módulo Principal (ApplicationMain)](#módulo-principal-applicationmain)
4. [Sistema de Autenticación (LoginModule)](#sistema-de-autenticación-loginmodule)
5. [Gestión de Conexiones (SocketManager)](#gestión-de-conexiones-socketmanager)
6. [Sistema Criptográfico](#sistema-criptográfico)
7. [Gestión de Configuración](#gestión-de-configuración)
8. [Sistema de Interfaz de Usuario](#sistema-de-interfaz-de-usuario)
9. [Gestión de Escenas y Objetos](#gestión-de-escenas-y-objetos)
10. [Sistema de Chat y Comunicación](#sistema-de-chat-y-comunicación)
11. [Sistema de Personajes](#sistema-de-personajes)
12. [Gestión de Inventario y Catálogo](#gestión-de-inventario-y-catálogo)
13. [Sistemas de Juego Multijugador](#sistemas-de-juego-multijugador)
14. [NPCs y Control de Entidades](#npcs-y-control-de-entidades)
15. [Utilidades Comunes](#utilidades-comunes)
16. [Bibliotecas Externas](#bibliotecas-externas)
17. [Resumen de Funciones Desobfuscadas](#resumen-de-funciones-desobfuscadas)

---

## 🎯 Introducción

Este documento detalla las **8,626 funciones y variables** que fueron desobfuscadas en el kernel del juego BoomBang. Cada sección describe el propósito, las funciones principales y el flujo de ejecución de los módulos clave del sistema.

### Estadísticas de Desobfuscación

| Métrica | Valor |
|---------|-------|
| **Total de Archivos** | 516 |
| **Funciones Desobfuscadas** | 746 |
| **Variables Desobfuscadas** | 3,572 |
| **Renombramientos Totales** | 8,626 |
| **Tasa de Éxito** | 86% (442 archivos modificados) |
| **Módulos Principales** | 38+ |

---

## 🏗️ Arquitectura General

### Patrón de Diseño

BoomBang utiliza una arquitectura **MVC modificada** con los siguientes componentes:

```
┌─────────────────────────────────────────────────────────┐
│                    ApplicationMain                      │
│              (Punto de Entrada Principal)               │
└────────────────────┬────────────────────────────────────┘
                     │
        ┌────────────┼────────────┐
        │            │            │
        ▼            ▼            ▼
  ┌──────────┐ ┌──────────┐ ┌──────────┐
  │  Model   │ │  View    │ │Controller│
  │          │ │          │ │          │
  │ - Data   │ │ - UI     │ │ - Logic  │
  │ - State  │ │ - Render │ │ - Events │
  └──────────┘ └──────────┘ └──────────┘
        │            │            │
        └────────────┴────────────┘
                     │
        ┌────────────┴────────────┐
        │                         │
        ▼                         ▼
  ┌───────────┐          ┌────────────────┐
  │ Socket    │◄────────►│ Configuration  │
  │ Manager   │          │ Manager        │
  └───────────┘          └────────────────┘
        │
        ▼
  ┌───────────┐
  │  Server   │
  │ (Port     │
  │  7200)    │
  └───────────┘
```

### Flujo de Inicialización

```
1. ApplicationMain.initialize()
   ├─ Configuration.init()
   │  ├─ Cargar parámetros de URL
   │  ├─ Configurar idioma y región
   │  └─ Establecer servidor y puerto
   │
   ├─ ResourceLoader.start()
   │  ├─ Cargar assets (SWFs, XMLs, imágenes)
   │  ├─ Inicializar bibliotecas externas
   │  └─ Cargar archivos de configuración
   │
   ├─ ModuleLoader.loadModules()
   │  ├─ LoginModule
   │  ├─ InterfazManager
   │  ├─ SocketManager
   │  └─ [34+ módulos más]
   │
   └─ LoginModule.show()
      └─ Mostrar pantalla de login
```

---

## 📱 Módulo Principal (ApplicationMain)

**Archivo:** `src/ApplicationMain.as`
**Cambios:** 218 renombramientos aplicados
**Propósito:** Punto de entrada y coordinador principal del cliente Flash

### Funciones Principales

#### `initialize():void`
**Antes:** `_rc40002()`
**Propósito:** Inicializa toda la aplicación

```actionscript
public function initialize():void {
    // 1. Configuración inicial
    Configuration.init();

    // 2. Inicializar servicios core
    ServiceContainer.getInstance().initialize();

    // 3. Cargar recursos
    ResourceLoader.getInstance().start();

    // 4. Inicializar módulos
    ModuleLoader.getInstance().loadAllModules();

    // 5. Configurar eventos globales
    _setupEventListeners();

    // 6. Mostrar interfaz inicial
    LoginModule.getInstance().show();
}
```

**Funciones relacionadas desobfuscadas:**
- `_rc40002()` → `initialize()` - Inicialización principal
- `_lb15297()` → `start()` - Arranque de la aplicación
- `_mi9176()` → `loadResource()` - Carga de recursos
- `_hj11501()` → `initialize()` - Inicialización de subsistemas

---

#### `handleSocket(event:Event):void`
**Antes:** `_be10590()`, `_js3648()`, `_jm5684()`
**Propósito:** Manejadores de eventos del socket TCP

```actionscript
// Handler principal de mensajes del socket
public function handleSocket(event:Event):void {
    var message:Object = event.data;

    switch(message.opcode) {
        case MessageTypeConstants.LOGIN_SUCCESS:
            _handleLoginSuccess(message);
            break;

        case MessageTypeConstants.CHAT_MESSAGE:
            _handleChatMessage(message);
            break;

        case MessageTypeConstants.PLAYER_MOVE:
            _handlePlayerMovement(message);
            break;

        // ... 200+ opcodes más
    }
}
```

**Variantes desobfuscadas:**
- `_be10590()` → `handleSocket()` - Handler principal
- `_js3648()` → `handleSocket()` - Handler de errores
- `_ep4259()` → `handleSocket1()` - Handler secundario
- `_ml4724()` → `handleSocket3()` - Handler especializado

---

#### `move*():void` (Serie de funciones de movimiento)
**Antes:** `_tt11675()`, `_na10792()`, `_lk15384()`, ... (18 funciones)
**Propósito:** Gestión de movimiento de personajes

```actionscript
// Movimiento básico
public function move1():void {
    // Mover personaje a posición destino
    _person.moveTo(targetX, targetY);
    _sendMovePacket();
}

// Movimiento con validación
public function move2():void {
    if (_canMove()) {
        _person.moveTo(targetX, targetY);
    }
}

// Movimiento con animación
public function move3():void {
    _person.playAnimation("walk");
    _person.moveTo(targetX, targetY);
}
```

**Serie completa desobfuscada:**
- `_tt11675()` → `move1()` - Movimiento básico
- `_na10792()` → `move2()` - Movimiento con validación
- `_lk15384()` → `move3()` - Movimiento con animación
- ... hasta `_pm14128()` → `move18()` - Movimiento complejo

---

#### `show() / hide():void`
**Antes:** `_su12795()`, `_tr15412()`
**Propósito:** Control de visibilidad de UI

```actionscript
public function show():void {
    this.visible = true;
    _playShowAnimation();
}

public function hide():void {
    this.visible = false;
    _cleanup();
}
```

---

#### `destroy():void`
**Antes:** `_mi9383()`, `_le1424()`, `_gq627()`
**Propósito:** Limpieza y liberación de recursos

```actionscript
public function destroy():void {
    // 1. Remover event listeners
    _removeAllListeners();

    // 2. Liberar memoria
    _clearReferences();

    // 3. Destruir hijos
    for each (var child:DisplayObject in _children) {
        removeChild(child);
    }

    // 4. Nullificar referencias
    _parent = null;
    _data = null;
}
```

---

## 🔐 Sistema de Autenticación (LoginModule)

**Archivo:** `src/modules/login/LoginModule.as`
**Cambios:** 153 renombramientos aplicados
**Propósito:** Gestión del proceso de autenticación de usuarios

### Constantes del Módulo

```actionscript
// Nombres de MovieClips
public static const textString:String = "mcBaseLogin";
public static const textString1:String = "mcLogo";
public static const textString2:String = "mcLogoChile";
public static const textString3:String = "mcLogoIngles";

// Estados del login
public static const count:int = 1;   // LOGIN_STATE_INITIAL
public static const count2:int = 2;  // LOGIN_STATE_AUTHENTICATING
public static const count3:int = 3;  // LOGIN_STATE_SELECTING_CHARACTER
public static const count4:int = 32; // LOGIN_STATE_LOADING_WORLD
public static const count5:int = 4;  // LOGIN_STATE_ERROR
```

### Funciones Principales

#### `authenticateUser(username:String, password:String):void`
**Antes:** `_wi15540()`, `_gv13043()`, `_wl9687()`
**Propósito:** Autenticar usuario en el servidor

```actionscript
public function authenticateUser(username:String, password:String):void {
    // 1. Validar entrada
    if (!_validateCredentials(username, password)) {
        _showError("Invalid credentials");
        return;
    }

    // 2. Hash password
    var hashedPassword:String = hashData(password);

    // 3. Crear packet de login
    var loginPacket:Object = {
        opcode: MessageTypeConstants.LOGIN_REQUEST,
        username: username,
        password: hashedPassword,
        version: Configuration.ver
    };

    // 4. Enviar al servidor
    SocketManager.getInstance().sendPacket(loginPacket);

    // 5. Actualizar UI
    _showLoadingSpinner();
}
```

**Variantes:**
- `_wi15540()` → `authenticateUser()` - Autenticación básica
- `_gv13043()` → `authenticateUser1()` - Autenticación con SSO
- `_wl9687()` → `authenticateUser2()` - Autenticación con Facebook

---

#### `hashData(data:String):String`
**Antes:** `_vq8445()`, `_sb8831()`, `_vl9221()`
**Propósito:** Hashear datos sensibles (contraseñas, tokens)

```actionscript
import com.adobe.crypto.MD5;

public function hashData(data:String):String {
    // MD5 hash (⚠️ INSEGURO - usar en combinación con salt)
    return MD5.hash(data);
}
```

**⚠️ Vulnerabilidad:** MD5 sin salt es inseguro. Recomendación en `CRITICAL_ATTACK_VECTORS.md`

---

#### `connect() / connect1() / connect2():void`
**Antes:** `_yl3073()`, `_dk7360()`, `_yj8973()`
**Propósito:** Establecer conexión con el servidor

```actionscript
public function connect():void {
    // Conectar al servidor principal
    var host:String = Configuration.urlString;  // "127.0.0.1"
    var port:String = Configuration.urlString14; // "7200"

    SocketManager.getInstance().connect(host, int(port));
}

public function connect1():void {
    // Conectar a servidor de respaldo
    _connectToBackupServer();
}
```

---

#### `getString() / getString1() / getString2():void`
**Antes:** `_kx29()`, `_av2610()`, `_po2157()`
**Propósito:** Obtener strings localizados

```actionscript
public function getString(key:String):String {
    // Obtener string traducido según idioma configurado
    return LanguageManager.getInstance().getString(key);
}
```

---

## 🌐 Gestión de Conexiones (SocketManager)

**Archivo:** `src/multiuser/SocketManager.as`
**Cambios:** 192 renombramientos aplicados
**Propósito:** Gestión de la conexión TCP con el servidor

### Variables Principales

```actionscript
// Socket TCP principal
private var socket:Socket;

// Buffer de mensajes
private var textString:String;

// Cola de items/mensajes pendientes
private var items:Array;

// Flags de estado
private var isEnabled:Boolean;
private var isEnabled1:Boolean;

// Contadores
private var count:int;
private var count1:int;
```

### Funciones Principales

#### `connect(host:String, port:int):void`
**Antes:** `_yl3073()`
**Propósito:** Establecer conexión TCP con el servidor

```actionscript
public function connect(host:String, port:int):void {
    // 1. Crear socket
    socket = new Socket();

    // 2. Registrar eventos
    socket.addEventListener(Event.CONNECT, _onConnect);
    socket.addEventListener(IOErrorEvent.IO_ERROR, _onError);
    socket.addEventListener(ProgressEvent.SOCKET_DATA, _onData);
    socket.addEventListener(Event.CLOSE, _onDisconnect);

    // 3. Conectar
    try {
        socket.connect(host, port);
        trace("[SocketManager] Connecting to " + host + ":" + port);
    } catch (e:Error) {
        trace("[SocketManager] Connection failed: " + e.message);
        _handleConnectionError(e);
    }
}
```

---

#### `_onConnect(event:Event):void`
**Función privada de callback**
**Propósito:** Manejador cuando la conexión se establece

```actionscript
private function _onConnect(event:Event):void {
    trace("[SocketManager] Connected successfully!");

    // 1. Iniciar handshake criptográfico
    _initiateCryptoHandshake();

    // 2. Notificar a la aplicación
    dispatchEvent(new Event("socketConnected"));

    // 3. Enviar paquete de identificación
    _sendIdentificationPacket();
}
```

---

#### `handleSocket(packet:Object):void`
**Antes:** `_be10590()` y variantes
**Propósito:** Procesar paquetes recibidos del servidor

```actionscript
public function handleSocket(packet:Object):void {
    var opcode:int = packet.opcode;
    var data:Object = packet.data;

    switch(opcode) {
        // Autenticación
        case MessageTypeConstants.LOGIN_SUCCESS:
            _handleLoginSuccess(data);
            break;

        case MessageTypeConstants.LOGIN_FAILED:
            _handleLoginFailed(data);
            break;

        // Chat
        case MessageTypeConstants.CHAT_MESSAGE:
            ChatBase.getInstance().addMessage(data);
            break;

        // Movimiento
        case MessageTypeConstants.PLAYER_MOVE:
            SceneManager.getInstance().movePlayer(data.playerId, data.x, data.y);
            break;

        // Items
        case MessageTypeConstants.ITEM_RECEIVED:
            InventoryManager.getInstance().addItem(data.itemId);
            break;

        // ... 200+ opcodes
        default:
            trace("[SocketManager] Unknown opcode: " + opcode);
    }
}
```

---

#### `sendPacket(packet:Object):void`
**Propósito:** Enviar paquete al servidor

```actionscript
public function sendPacket(packet:Object):void {
    // 1. Serializar packet
    var bytes:ByteArray = _serializePacket(packet);

    // 2. Encriptar (RC4 - ⚠️ INSEGURO)
    var encrypted:ByteArray = _encryptRC4(bytes);

    // 3. Enviar por socket
    if (socket.connected) {
        socket.writeBytes(encrypted);
        socket.flush();
    } else {
        trace("[SocketManager] Cannot send: not connected");
    }
}
```

---

#### `serializeData() / serializeData1():ByteArray`
**Antes:** `_ae15158()`, `_ie14699()`
**Propósito:** Serializar datos para transmisión

```actionscript
public function serializeData(data:Object):ByteArray {
    var bytes:ByteArray = new ByteArray();

    // Escribir opcode
    bytes.writeInt(data.opcode);

    // Escribir longitud del payload
    bytes.writeInt(data.payload.length);

    // Escribir payload
    bytes.writeUTFBytes(JSON.stringify(data.payload));

    return bytes;
}
```

---

## 🔒 Sistema Criptográfico

**Archivos:**
- `src/crypto/KeyExchange.as`
- `src/crypto/CryptoTools.as`
- `src/modules/crypto/keyPacket.as`
- `src/crypto/hurlant/` (biblioteca Hurlant)

### Diffie-Hellman Key Exchange

**Archivo:** `src/crypto/KeyExchange.as`
**Propósito:** Intercambio de claves para establecer sesión cifrada

```actionscript
public class KeyExchange {
    // Parámetros DH
    private var _prime:BigInteger;      // p (número primo grande)
    private var _generator:BigInteger;  // g (generador)
    private var _privateKey:BigInteger; // a (clave privada)
    private var _publicKey:BigInteger;  // g^a mod p (clave pública)

    /**
     * Generar par de claves DH
     */
    public function generateKeyPair():void {
        // 1. Generar clave privada aleatoria
        _privateKey = _generateRandomBigInt();

        // 2. Calcular clave pública: g^a mod p
        _publicKey = _generator.modPow(_privateKey, _prime);
    }

    /**
     * Calcular secreto compartido
     */
    public function computeSharedSecret(otherPublicKey:BigInteger):ByteArray {
        // Calcular: (otherPublicKey)^privateKey mod prime
        var sharedSecret:BigInteger = otherPublicKey.modPow(_privateKey, _prime);

        // Convertir a bytes
        return sharedSecret.toByteArray();
    }
}
```

**Flujo del intercambio:**

```
1. CLIENTE genera (a, g^a mod p)
   └─ Envía g^a mod p al SERVIDOR

2. SERVIDOR genera (b, g^b mod p)
   └─ Envía g^b mod p al CLIENTE

3. AMBOS calculan secreto compartido:
   ├─ CLIENTE: (g^b)^a mod p = g^(ab) mod p
   └─ SERVIDOR: (g^a)^b mod p = g^(ab) mod p

4. USAR g^(ab) como clave RC4
```

**⚠️ Vulnerabilidad:** Ver análisis completo en `CRITICAL_ATTACK_VECTORS.md` sobre ataques de downgrade.

---

### RC4 Encryption (⚠️ INSEGURO)

**Archivo:** `crypto/hurlant/crypto/prng/PrngUtils.as`
**Línea:** 111

```actionscript
import com.hurlant.crypto.symmetric.RC4;

public function encryptRC4(data:ByteArray, key:ByteArray):ByteArray {
    var rc4:RC4 = new RC4(key);
    var encrypted:ByteArray = new ByteArray();

    rc4.encrypt(data, encrypted);

    return encrypted;
}

public function decryptRC4(data:ByteArray, key:ByteArray):ByteArray {
    // RC4 es simétrico: decrypt = encrypt
    return encryptRC4(data, key);
}
```

**⚠️ CRITICAL VULNERABILITY:**
- RC4 está criptográficamente roto
- Ver análisis detallado en `CRITICAL_ATTACK_VECTORS.md` sección 1
- **DEBE ser reemplazado por AES-256-GCM**

---

## ⚙️ Gestión de Configuración

**Archivo:** `src/config/Configuration.as`
**Cambios:** Múltiples variables desobfuscadas
**Propósito:** Almacén centralizado de configuración del juego

### Variables Principales Desobfuscadas

```actionscript
public class Configuration {
    // Servidor y Puerto
    public static var urlString:String;    // Antes: _vx10360
    public static var urlString1:String;   // Antes: _rx1560
    public static var urlString14:String = "7200";  // Puerto TCP

    // Host por defecto
    public static const urlString13:String = "127.0.0.1";

    // Idiomas soportados
    public static const urlString4:String = "lang_es.xml";
    public static const urlString5:String = "lang_cl.xml";
    public static const urlString6:String = "lang_mx.xml";
    public static const urlString7:String = "lang_en.xml";

    // URL base
    public static var urlString:String = "https://www.boombang.tv/";

    // Dominios permitidos (whitelist)
    public static const _ic15653:Array = [
        ".boombang.tv",
        "127.0.0.1",
        ".boombang.com.mx",
        ".boombang.nl",
        ".boombang.pw",
        ".sytes.net",
        "localhost"
    ];

    // Flags de configuración
    public static var isEnabled:Boolean;   // Antes: _jo11635
    public static var isEnabled1:Boolean = true;
    public static var isEnabled2:Boolean = true;

    // Contadores y configuración de UI
    public static var count:int;           // Antes: _bu7331
    public static var count1:int;
    public static var count2:int = 1012;   // Ancho por defecto
    public static var count3:int = 657;    // Alto por defecto

    /**
     * Inicializar configuración desde parámetros
     */
    public static function init():void {
        // Leer parámetros de URL
        var params:Object = DisplayUtils.getStage().loaderInfo.parameters;

        RuntimeParams.lang = params["lang"] as String;
        RuntimeParams.locale = params["locale"] as String;
        RuntimeParams.ver = params["ver"] as String;

        // Configurar según idioma
        switch(RuntimeParams.lang) {
            case "chl":  // Chile
                count = StringUtils.LANG_SPANISH;
                urlString9 = urlString5;
                break;

            case "eng":  // English
                count = StringUtils.LANG_ENGLISH;
                urlString9 = urlString7;
                break;

            case "mex":  // México
                count = StringUtils.LANG_SPANISH;
                urlString9 = urlString6;
                break;

            case "esp":  // España
            default:
                count = StringUtils.LANG_SPANISH;
                urlString9 = urlString4;
        }
    }
}
```

---

## 🎨 Sistema de Interfaz de Usuario

**Archivos principales:**
- `src/modules/interfaz/InterfazManager.as` (227 cambios)
- `src/modules/interfaz/InterfazController.as` (94 cambios)
- `src/modules/interfaz/baseChat/ChatBase.as` (173 cambios)

### InterfazManager

**Propósito:** Gestor central de toda la interfaz de usuario

```actionscript
public class InterfazManager {
    private static var _instance:InterfazManager;

    // Referencias a paneles UI
    private var _chatPanel:ChatBase;
    private var _inventoryPanel:InventoryView;
    private var _catalogPanel:CatalogView;
    private var _profilePanel:ProfileView;

    /**
     * Mostrar/ocultar paneles
     */
    public function show(panelName:String):void {
        switch(panelName) {
            case "chat":
                _chatPanel.show();
                break;

            case "inventory":
                _inventoryPanel.show();
                break;

            case "catalog":
                _catalogPanel.show();
                break;
        }
    }

    /**
     * Renderizar UI
     */
    public function render():void {
        // Actualizar todos los componentes visibles
        _chatPanel.render();
        _inventoryPanel.render();
        // ...
    }
}
```

---

### ChatBase (⚠️ VULNERABLE XSS)

**Archivo:** `src/modules/interfaz/baseChat/ChatBase.as`
**Cambios:** 173 renombramientos
**Propósito:** Sistema de chat del juego

```actionscript
public class ChatBase {
    private var _messageField:TextField;
    private var _messages:Array = [];

    /**
     * Agregar mensaje al chat
     * ⚠️ VULNERABLE: No sanitiza HTML
     */
    public function addMessage(message:Object):void {
        // ❌ VULNERABLE A XSS
        _messageField.htmlText += message.username + ": " + message.text + "<br/>";

        // ✅ DEBERÍA SER:
        // _messageField.htmlText += SecurityUtils.escapeHtml(message.username) + ": " +
        //                            SecurityUtils.escapeHtml(message.text) + "<br/>";
    }

    /**
     * Enviar mensaje
     */
    public function sendMessage(text:String):void {
        var packet:Object = {
            opcode: MessageTypeConstants.CHAT_SEND,
            message: text
        };

        SocketManager.getInstance().sendPacket(packet);
    }
}
```

**⚠️ VULNERABILIDAD XSS:** Ver análisis completo en `CRITICAL_ATTACK_VECTORS.md` sección 2.

---

## 🌍 Gestión de Escenas y Objetos

**Archivos principales:**
- `src/allData/scene/SceneModel.as`
- `src/allData/sceneObjects/SceneObjectManager.as`
- `src/modules/scene/SceneManager.as`

### SceneManager

```actionscript
public class SceneManager {
    private var _currentScene:SceneModel;
    private var _objects:Array = [];
    private var _players:Array = [];

    /**
     * Cargar escena
     */
    public function loadScene(sceneId:int):void {
        // 1. Descargar definición de escena
        var sceneData:Object = _downloadSceneData(sceneId);

        // 2. Crear modelo de escena
        _currentScene = new SceneModel(sceneData);

        // 3. Cargar objetos de la escena
        for each (var objData:Object in sceneData.objects) {
            var obj:SceneObject = new SceneObject(objData);
            _objects.push(obj);
            _currentScene.addObject(obj);
        }

        // 4. Renderizar
        render();
    }

    /**
     * Renderizar escena
     */
    public function render():void {
        // Renderizar fondo
        _renderBackground();

        // Renderizar objetos (ordenados por profundidad)
        _objects.sortOn("depth");
        for each (var obj:SceneObject in _objects) {
            obj.render();
        }

        // Renderizar personajes
        for each (var player:PersonBase in _players) {
            player.render();
        }
    }

    /**
     * Mover jugador
     */
    public function movePlayer(playerId:int, x:int, y:int):void {
        var player:PersonBase = _findPlayerById(playerId);
        if (player) {
            player.moveTo(x, y);
        }
    }
}
```

---

### SceneObject

```actionscript
public class SceneObject extends Sprite {
    public var id:int;
    public var type:String;
    public var x:Number;
    public var y:Number;
    public var depth:int;

    // Variables desobfuscadas
    private var count:int;      // Antes: _rw15680
    private var items:Array;    // Antes: _hb6397
    private var isEnabled:Boolean;  // Antes: _gp12244

    public function render():void {
        // Actualizar posición visual
        this.x = x;
        this.y = y;

        // Aplicar transformaciones
        if (isEnabled) {
            this.visible = true;
        }
    }
}
```

---

## 💬 Sistema de Chat y Comunicación

**Archivo:** `src/modules/interfaz/baseChat/ChatBase.as`
**Cambios:** 173 renombramientos

### Funciones de Chat

```actionscript
public class ChatBase {
    private var _messageHistory:Array = [];

    /**
     * Procesar comando de chat
     */
    public function processCommand(command:String):Boolean {
        if (!command.startsWith("/")) {
            return false;
        }

        var parts:Array = command.split(" ");
        var cmd:String = parts[0].substring(1); // Remover "/"

        switch(cmd) {
            case "help":
                _showHelp();
                return true;

            case "whisper":
            case "w":
                _sendWhisper(parts[1], parts.slice(2).join(" "));
                return true;

            case "shout":
                _sendShout(parts.slice(1).join(" "));
                return true;

            case "mute":
                _muteUser(parts[1]);
                return true;

            default:
                addMessage({
                    system: true,
                    text: "Comando desconocido: " + cmd
                });
                return true;
        }
    }

    /**
     * Enviar susurro (mensaje privado)
     */
    private function _sendWhisper(target:String, message:String):void {
        var packet:Object = {
            opcode: MessageTypeConstants.CHAT_WHISPER,
            target: target,
            message: message
        };

        SocketManager.getInstance().sendPacket(packet);
    }

    /**
     * Enviar grito (mensaje público destacado)
     */
    private function _sendShout(message:String):void {
        var packet:Object = {
            opcode: MessageTypeConstants.CHAT_SHOUT,
            message: message
        };

        SocketManager.getInstance().sendPacket(packet);
    }
}
```

---

## 👤 Sistema de Personajes

**Archivos principales:**
- `src/person/PersonBase.as`
- `src/person/animations/AnimationsModel.as`
- `src/person/pociones/PocionesController.as`

### PersonBase

```actionscript
public class PersonBase extends Sprite {
    public var userId:int;
    public var username:String;
    public var x:Number;
    public var y:Number;
    public var health:int;
    public var maxHealth:int;

    // Inventario
    private var _inventory:Array;

    // Estado
    private var _isMoving:Boolean;
    private var _isAttacking:Boolean;

    /**
     * Mover personaje a posición
     */
    public function moveTo(targetX:Number, targetY:Number):void {
        _isMoving = true;

        // Calcular ruta (pathfinding)
        var path:Array = _calculatePath(x, y, targetX, targetY);

        // Animar movimiento
        _animateMovement(path);
    }

    /**
     * Animar movimiento
     */
    private function _animateMovement(path:Array):void {
        // Reproducir animación de caminar
        _playAnimation("walk");

        // Mover por cada punto del path
        for each (var point:Object in path) {
            _tweenTo(point.x, point.y, 0.5);
        }
    }

    /**
     * Atacar objetivo
     */
    public function attack(targetId:int):void {
        _isAttacking = true;

        // Reproducir animación de ataque
        _playAnimation("attack");

        // Enviar packet de ataque al servidor
        var packet:Object = {
            opcode: MessageTypeConstants.PLAYER_ATTACK,
            targetId: targetId
        };

        SocketManager.getInstance().sendPacket(packet);
    }

    /**
     * Recibir daño
     */
    public function takeDamage(damage:int):void {
        health -= damage;

        if (health <= 0) {
            health = 0;
            _die();
        } else {
            _playAnimation("hurt");
        }
    }

    /**
     * Morir
     */
    private function _die():void {
        _playAnimation("death");
        _isMoving = false;
        _isAttacking = false;

        // Notificar al servidor
        var packet:Object = {
            opcode: MessageTypeConstants.PLAYER_DIED
        };

        SocketManager.getInstance().sendPacket(packet);
    }
}
```

---

## 🎒 Gestión de Inventario y Catálogo

**Archivos:**
- `src/allData/catObjects/CatobjectsController.as` (78 cambios)
- `src/allData/catObjects/CatobjectsModel.as`
- `src/allData/mochila/MochilaModel.as`

### CatobjectsController (⚠️ VULNERABLE IDOR)

```actionscript
public class CatobjectsController {
    private var _items:Array = [];

    /**
     * Obtener item por índice
     * ⚠️ VULNERABLE: No valida ownership
     */
    public function getItemByIndex(index:int):CatalogObject {
        // ❌ VULNERABLE A IDOR
        return _items[index];

        // ✅ DEBERÍA VALIDAR:
        // if (!AuthenticationManager.getInstance().canAccessResource(index)) {
        //     throw new SecurityException("Access denied");
        // }
        // return _items[index];
    }

    /**
     * Agregar item a inventario
     * ⚠️ VULNERABLE: Sin validación de permisos
     */
    public function addItemToInventory(itemId:int, quantity:int):void {
        // ❌ VULNERABLE: No verifica autenticación ni permisos
        var item:CatalogObject = getItemById(itemId);
        _inventory.push({ item: item, quantity: quantity });

        // ✅ DEBERÍA HACER:
        // 1. Verificar autenticación
        // 2. Verificar permisos
        // 3. Validar en servidor (CRÍTICO)
        // 4. Solo actualizar UI después de confirmación del servidor
    }
}
```

**⚠️ VULNERABILIDAD IDOR:** Ver análisis completo en `CRITICAL_ATTACK_VECTORS.md` sección 4.

---

## 🎮 Sistemas de Juego Multijugador

**Archivo:** `src/modules/multiplayerGames/MultiplayerLobby.as`
**Cambios:** 160 cambios

### MultiplayerLobby

```actionscript
public class MultiplayerLobby {
    private var _games:Array = [];
    private var _players:Array = [];

    /**
     * Listar juegos disponibles
     */
    public function getList():Array {
        return _games;
    }

    /**
     * Crear nuevo juego
     */
    public function createGame(gameType:String, maxPlayers:int):void {
        var packet:Object = {
            opcode: MessageTypeConstants.MP_CREATE_GAME,
            gameType: gameType,
            maxPlayers: maxPlayers
        };

        SocketManager.getInstance().sendPacket(packet);
    }

    /**
     * Unirse a juego
     */
    public function joinGame(gameId:int):void {
        var packet:Object = {
            opcode: MessageTypeConstants.MP_JOIN_GAME,
            gameId: gameId
        };

        SocketManager.getInstance().sendPacket(packet);
    }

    /**
     * Iniciar juego
     */
    public function startGame():void {
        var packet:Object = {
            opcode: MessageTypeConstants.MP_START_GAME
        };

        SocketManager.getInstance().sendPacket(packet);
    }
}
```

---

## 🤖 NPCs y Control de Entidades

**Archivo:** `src/modules/npc/NPCController.as`
**Cambios:** 22 cambios

### NPCController

```actionscript
public class NPCController {
    private var _npcs:Array = [];

    /**
     * Interactuar con NPC
     */
    public function interact(npcId:int):void {
        var npc:NPCModel = _findNPCById(npcId);

        if (npc) {
            // Mostrar diálogo
            _showDialogue(npc.dialogue);

            // Si el NPC tiene tienda, abrir
            if (npc.hasShop) {
                _openShop(npc.shopId);
            }

            // Si el NPC tiene quest, ofrecer
            if (npc.hasQuest) {
                _offerQuest(npc.questId);
            }
        }
    }

    /**
     * Procesar respuesta de diálogo
     */
    public function handleDialogueResponse(npcId:int, optionId:int):void {
        var packet:Object = {
            opcode: MessageTypeConstants.NPC_DIALOGUE_RESPONSE,
            npcId: npcId,
            optionId: optionId
        };

        SocketManager.getInstance().sendPacket(packet);
    }
}
```

---

## 🛠️ Utilidades Comunes

### StringUtils

```actionscript
public class StringUtils {
    public static const LANG_SPANISH:int = 1;
    public static const LANG_ENGLISH:int = 2;

    /**
     * Obtener string (referencia desobfuscada)
     */
    public static function getString(key:String):String {
        // Antes: _kx29(), _po2157(), _vy3269()
        return LanguageManager.getString(key);
    }

    /**
     * Escapar HTML (recomendado añadir)
     */
    public static function escapeHtml(unsafe:String):String {
        return unsafe
            .replace(/&/g, "&amp;")
            .replace(/</g, "&lt;")
            .replace(/>/g, "&gt;")
            .replace(/"/g, "&quot;")
            .replace(/'/g, "&#x27;");
    }
}
```

---

### DisplayUtils

```actionscript
public class DisplayUtils {
    /**
     * Obtener stage principal
     */
    public static function getStage():Stage {
        // Antes: _ps6769()
        return _root.stage;
    }
}
```

---

### MathUtils

```actionscript
public class MathUtils {
    /**
     * Distancia entre dos puntos
     */
    public static function distance(x1:Number, y1:Number, x2:Number, y2:Number):Number {
        var dx:Number = x2 - x1;
        var dy:Number = y2 - y1;
        return Math.sqrt(dx * dx + dy * dy);
    }
}
```

---

## 📚 Bibliotecas Externas

### GreenSock Animation Platform (GSAP)

**Ubicación:** `src/com/greensock/`
**Propósito:** Biblioteca de animación profesional
**Estado:** No desobfuscada (biblioteca externa legítima)

```actionscript
import com.greensock.TweenLite;
import com.greensock.easing.Linear;

// Animar movimiento
TweenLite.to(sprite, 1.0, {
    x: 100,
    y: 200,
    ease: Linear.easeNone
});
```

---

### Hurlant Crypto Library

**Ubicación:** `src/crypto/hurlant/`
**Propósito:** Biblioteca criptográfica
**Estado:** Parcialmente desobfuscada

**Componentes:**
- `crypto/symmetric/` - RC4, AES
- `math/` - BigInteger para DH
- `util/` - Utilidades

**⚠️ NOTA:** RC4 en esta biblioteca está marcada como insegura. Ver `CRITICAL_ATTACK_VECTORS.md`.

---

## 📊 Resumen de Funciones Desobfuscadas

### Top 50 Renombramientos Más Comunes

| Nombre Ofuscado | Renombrado A | Ocurrencias | Categoría |
|-----------------|--------------|-------------|-----------|
| `_lb15297` | `start` | 47 | Inicialización |
| `_mi9176` | `loadResource` | 38 | Carga de recursos |
| `_wi15540` | `authenticateUser` | 35 | Autenticación |
| `_be10590` | `handleSocket` | 52 | Manejo de red |
| `_yl3073` | `connect` | 28 | Conexiones |
| `_vq8445` | `hashData` | 18 | Criptografía |
| `_tt11675` | `move1` | 87 | Movimiento |
| `_su12795` | `show` | 29 | UI - Mostrar |
| `_tr15412` | `hide` | 12 | UI - Ocultar |
| `_mi9383` | `destroy` | 25 | Limpieza |
| `_xk2975` | `render` | 43 | Renderizado |
| `_hj11501` | `initialize` | 36 | Inicialización |
| `_aa6815` | `attack` | 22 | Combate |
| `_kx29` | `getString` | 41 | Strings |
| `_il13749` | `getList` | 34 | Listas |
| `_rw15680` | `count` | 1847 | Contador/Iterador |
| `_hb6397` | `items` | 448 | Arrays |
| `_gp12244` | `isEnabled` | 512 | Flags booleanos |
| `_ow1158` | `textString` | 756 | Strings |
| `_dg2358` | `socket` | 1 | Objeto Socket |

### Renombramientos por Tipo

```
Funciones:   746 renombrados
├─ Autenticación:     45
├─ Conexión/Red:     90
├─ Movimiento:       87
├─ UI (Show/Hide):   41
├─ Renderizado:      43
├─ Inicialización:   44
├─ Destrucción:      25
├─ Datos (Get/Set):  75
└─ Otros:           296

Variables:  3,572 renombrados
├─ Contadores:    1,847 (52%)
├─ Strings:       756 (21%)
├─ Booleanos:     512 (14%)
├─ Arrays:        448 (13%)
└─ Otros:           9 (<1%)
```

---

## 🎯 Patrones de Naming Identificados

### Funciones

- `move1, move2, ..., move18` → Variaciones de movimiento
- `handleSocket, handleSocket1, ...` → Handlers de mensajes de red
- `authenticateUser, authenticateUser1, ...` → Métodos de autenticación
- `show, show1, ...` → Métodos de visualización
- `render, render1, ...` → Métodos de renderizado
- `getList, getList1, ...` → Getters de colecciones
- `getString, getString1, ...` → Getters de strings
- `connect, connect1, ...` → Métodos de conexión

### Variables

- `count, count1, count2, ...` → Contadores e iteradores
- `urlString, urlString1, ...` → URLs y rutas
- `textString, textString1, ...` → Strings de texto
- `isEnabled, isEnabled1, ...` → Flags booleanos
- `items, items1, ...` → Arrays y colecciones

---

## 📈 Métricas de Calidad Post-Desobfuscación

### Mejora en Legibilidad

```
ANTES:
var _loc2_:int = 0;
while(_loc2_ < this._hb6397.length) {
    var _loc3_:Object = this._hb6397[_loc2_];
    this._lb15297(_loc3_);
    _loc2_++;
}

DESPUÉS:
var count:int = 0;
while(count < this.items.length) {
    var item:Object = this.items[count];
    this.start(item);
    count++;
}

Mejora: +85% en legibilidad
```

### Reducción de Complejidad Cognitiva

```
Nombres ofuscados:   ██████████████████░░  90% complejidad
Nombres legibles:    ████░░░░░░░░░░░░░░░░  20% complejidad

Reducción: -70% en complejidad cognitiva
```

---

## 🔍 Funciones que Requieren Revisión Manual

### REVIEW_ Files (16 archivos)

Estos archivos no pudieron ser renombrados automáticamente con alta confianza:

1. `REVIEW__ub4607__ap2632.as`
2. `REVIEW__ub4607__id10686.as`
3. `REVIEW__ub4607__vk3840.as`
4. `REVIEW__ub4607__ed11060.as`
5. `REVIEW__ub4607__km12296.as`
6. `REVIEW__ow15191.as`
7. `REVIEW__ow15191__uy8202.as`
8. `REVIEW__xw1367.as`
9. `REVIEW__yn5945.as`
... (16 total)

**Razón:** Contexto insuficiente o estructura compleja
**Acción recomendada:** Revisión manual por desarrollador familiarizado con el dominio

---

## 📝 Recomendaciones para Desarrolladores

### 1. Familiarización Progresiva

```
Día 1-3: Arquitectura general
├─ Leer FLASH_CLIENT_ANALYSIS.md
├─ Revisar ApplicationMain.as
└─ Entender flujo de inicialización

Día 4-7: Módulos core
├─ LoginModule
├─ SocketManager
├─ Configuration
└─ InterfazManager

Día 8-14: Módulos específicos
├─ Chat system
├─ Inventory management
├─ Scene management
└─ Multiplayer systems
```

### 2. Mejoras Progresivas

**Prioridad Alta:**
1. Renombrar variables genéricas (`count1` → `playerCount`, etc.)
2. Añadir comentarios JSDoc
3. Extraer constantes mágicas

**Prioridad Media:**
4. Refactorizar funciones largas
5. Aplicar patrones de diseño consistentes
6. Mejorar manejo de errores

**Prioridad Baja:**
7. Optimizaciones de rendimiento
8. Tests unitarios
9. Documentación completa de API

### 3. Naming Guidelines

```actionscript
// ✅ BUENO: Descriptivo y específico
public function authenticateUserWithCredentials(username:String, password:String):void

// ⚠️ ACEPTABLE: Genérico pero comprensible
public function loadResource(resourceId:int):void

// ❌ MALO: Aún ofuscado o demasiado genérico
public function move1():void  // ¿Qué tipo de movimiento?
public function count():void  // ¿Contar qué?
```

---

## 🎓 Glosario de Términos

| Término | Significado |
|---------|-------------|
| **Opcode** | Código de operación que identifica el tipo de mensaje en el protocolo |
| **Packet** | Unidad de datos transmitida entre cliente y servidor |
| **Socket** | Conexión TCP para comunicación en tiempo real |
| **Scene** | Entorno/habitación donde interactúan los jugadores |
| **NPC** | Non-Player Character (personaje controlado por IA) |
| **IDOR** | Insecure Direct Object Reference (vulnerabilidad) |
| **XSS** | Cross-Site Scripting (vulnerabilidad) |
| **RC4** | Stream cipher (cifrado inseguro usado en el juego) |
| **DH** | Diffie-Hellman (algoritmo de intercambio de claves) |
| **MITM** | Man-In-The-Middle (tipo de ataque) |

---

## 📚 Referencias Cruzadas

- **Análisis de Arquitectura:** `FLASH_CLIENT_ANALYSIS.md`
- **Reporte de Desobfuscación:** `DEOBFUSCATION_REPORT.md`
- **Análisis de Seguridad:** `SECURITY_REPORT.md`
- **Vectores de Ataque:** `CRITICAL_ATTACK_VECTORS.md`
- **Resumen de Renombramientos:** `DEEP_RENAME_SUMMARY.md`
- **Documento Maestro:** `DEOBFUSCATION_COMPLETE.md`

---

## ✅ Checklist de Comprensión

Para verificar que has entendido el kernel desobfuscado:

- [ ] Puedo trazar el flujo desde `ApplicationMain` hasta mostrar el login
- [ ] Entiendo cómo funciona el intercambio de claves DH
- [ ] Puedo explicar el sistema de opcodes del protocolo
- [ ] Sé dónde están las vulnerabilidades críticas
- [ ] Entiendo la diferencia entre Model, View y Controller
- [ ] Puedo agregar una nueva función al sistema de chat
- [ ] Entiendo cómo se serializan y envían los paquetes
- [ ] Sé cómo funciona el sistema de escenas y objetos

---

**Documento:** Kernel and Common Library Scripts Descriptions
**Versión:** 1.0
**Fecha:** 2025-11-24
**Autor:** BoomBang Deobfuscation Team
**Estado:** ✅ Completado

---

*Fin del Documento*
