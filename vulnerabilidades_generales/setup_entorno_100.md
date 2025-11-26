# 🔧 Instalación del Entorno de Testing

**Tiempo estimado:** 15-20 minutos
**Nivel:** Principiante
**Sistemas:** Linux & macOS

---

## 📋 Índice

1. [Instalación Automática](#1-instalación-automática-recomendado)
2. [Instalación Manual](#2-instalación-manual)
3. [Verificación](#3-verificación)
4. [Configuración Inicial](#4-configuración-inicial)
5. [Troubleshooting](#5-troubleshooting)

---

## 1. Instalación Automática (Recomendado)

### Para macOS

```bash
# Paso 1: Descargar el script de instalación
cd ~/Documents/BoombangServer
curl -O https://raw.githubusercontent.com/.../install_macos.sh

# Paso 2: Dar permisos de ejecución
chmod +x install_macos.sh

# Paso 3: Ejecutar (te pedirá tu contraseña para sudo)
./install_macos.sh

# Output esperado:
# 🔧 Instalando herramientas para macOS...
# [✓] Homebrew instalado
# [✓] Python 3 instalado
# [✓] Flask instalado
# [✓] Herramientas completadas
# ✅ Instalación completada!
```

### Para Linux (Ubuntu/Debian)

```bash
# Paso 1: Descargar el script
cd ~/Documents/BoombangServer
wget https://raw.githubusercontent.com/.../install_linux.sh

# Paso 2: Dar permisos
chmod +x install_linux.sh

# Paso 3: Ejecutar
./install_linux.sh

# Output esperado:
# 🔧 Instalando herramientas para Linux...
# [✓] Python 3 instalado
# [✓] pip instalado
# [✓] Flask instalado
# [✓] Herramientas completadas
# ✅ Instalación completada!
```

**Si la instalación automática falla**, continúa con la instalación manual.

---

## 2. Instalación Manual

### 2.1 Python 3.8+

**¿Qué es Python y por qué lo necesitas?**
- Python es el lenguaje de programación que usaremos para los scripts
- Necesitamos versión 3.8 o superior

**Verificar si ya está instalado:**
```bash
python3 --version
```

**Si dice "Python 3.8" o superior → Ya está instalado ✅**

**Si NO está instalado o la versión es menor:**

#### macOS:
```bash
# Opción 1: Homebrew (recomendado)
# Primero, instalar Homebrew si no lo tienes:
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Luego, instalar Python:
brew install python3

# Verificar:
python3 --version
```

#### Linux (Ubuntu/Debian):
```bash
sudo apt update
sudo apt install -y python3 python3-pip

# Verificar:
python3 --version
```

#### Linux (Fedora/CentOS):
```bash
sudo dnf install -y python3 python3-pip

# Verificar:
python3 --version
```

---

### 2.2 Flask

**¿Qué es Flask y por qué lo necesitas?**
- Flask es un framework web para Python
- Lo usamos para crear los servidores que reciben datos robados

**Instalación:**
```bash
# Para todos los sistemas (macOS, Linux):
pip3 install flask

# Si dice "command not found: pip3":
python3 -m ensurepip
python3 -m pip install flask

# Verificar instalación:
python3 -c "import flask; print(f'Flask {flask.__version__} instalado')"

# Output esperado: "Flask 2.3.0 instalado" (o similar)
```

---

### 2.3 Herramientas Básicas del Sistema

#### curl

**¿Para qué?** Hacer peticiones HTTP desde terminal

**Verificar:**
```bash
curl --version
```

**Instalar si no está:**
```bash
# macOS
brew install curl

# Linux
sudo apt install curl  # Ubuntu/Debian
sudo dnf install curl  # Fedora/CentOS
```

#### netcat (nc)

**¿Para qué?** Verificar que los puertos están abiertos

**Verificar:**
```bash
nc -h
```

**Instalar si no está:**
```bash
# macOS
brew install netcat

# Linux
sudo apt install netcat  # Ubuntu/Debian
sudo dnf install nc      # Fedora/CentOS
```

#### git

**¿Para qué?** Clonar repositorios y gestionar versiones

**Verificar:**
```bash
git --version
```

**Instalar si no está:**
```bash
# macOS
brew install git

# Linux
sudo apt install git  # Ubuntu/Debian
sudo dnf install git  # Fedora/CentOS
```

---

### 2.4 Herramientas Opcionales

#### Charles Proxy

**¿Para qué?** Interceptar y modificar tráfico HTTP/HTTPS

**Necesario para:** Inyectar payloads XSS manualmente

**Instalación:**

**macOS:**
```bash
brew install --cask charles
```

**Linux:**
```bash
# Descargar desde la web oficial
wget https://www.charlesproxy.com/download/latest-release/

# O instalar manualmente:
wget https://www.charlesproxy.com/packages/apt/charles-proxy_4.6.3_amd64.deb
sudo dpkg -i charles-proxy_4.6.3_amd64.deb
```

**Verificar:**
```bash
# macOS
open -a Charles

# Linux
charles-proxy &
```

#### Wireshark

**¿Para qué?** Capturar y analizar tráfico de red

**Necesario para:** Análisis avanzado del protocolo del juego

**Instalación:**

**macOS:**
```bash
brew install --cask wireshark
```

**Linux (Ubuntu/Debian):**
```bash
sudo apt install wireshark

# Dar permisos para capturar sin sudo:
sudo usermod -aG wireshark $USER

# IMPORTANTE: Cerrar sesión y volver a entrar
```

**Linux (Fedora/CentOS):**
```bash
sudo dnf install wireshark-qt
```

**Verificar:**
```bash
# macOS
open -a Wireshark

# Linux
wireshark &
```

---

## 3. Verificación

### 3.1 Script Automático de Verificación

```bash
cd ~/Documents/BoombangServer

# Crear script de verificación
cat > check_environment.sh << 'EOF'
#!/bin/bash

echo "🔍 Verificando entorno de testing..."
echo ""

# Función para verificar comando
check_tool() {
    if command -v $1 &> /dev/null; then
        echo "[✓] $2 instalado"
        return 0
    else
        echo "[✗] $2 NO instalado"
        return 1
    fi
}

# Herramientas obligatorias
check_tool python3 "Python 3"
check_tool pip3 "pip"
python3 -c "import flask" 2>/dev/null && echo "[✓] Flask instalado" || echo "[✗] Flask NO instalado"
check_tool curl "curl"
check_tool nc "netcat"
check_tool git "git"

echo ""
echo "Herramientas opcionales:"
check_tool charles "Charles Proxy" || echo "[~] Charles Proxy no instalado (opcional)"
check_tool wireshark "Wireshark" || echo "[~] Wireshark no instalado (opcional)"

echo ""

# Verificar versiones
echo "Versiones:"
python3 --version
pip3 --version
curl --version | head -1

echo ""
echo "✅ Verificación completada"
EOF

chmod +x check_environment.sh
./check_environment.sh
```

**Output esperado:**
```
🔍 Verificando entorno de testing...

[✓] Python 3 instalado
[✓] pip instalado
[✓] Flask instalado
[✓] curl instalado
[✓] netcat instalado
[✓] git instalado

Herramientas opcionales:
[✓] Charles Proxy instalado
[✓] Wireshark instalado

Versiones:
Python 3.11.0
pip 23.0 from /usr/local/lib/python3.11/site-packages/pip (python 3.11)
curl 8.0.1 (x86_64-apple-darwin22.0) libcurl/8.0.1

✅ Verificación completada
```

### 3.2 Verificación Manual

Si prefieres verificar manualmente:

```bash
# Test 1: Python
python3 -c "print('Python OK')"
# Debe imprimir: Python OK

# Test 2: Flask
python3 -c "import flask; print('Flask OK')"
# Debe imprimir: Flask OK

# Test 3: curl
curl -I https://www.google.com | head -1
# Debe mostrar: HTTP/2 200

# Test 4: nc
echo "test" | nc -l 9999 &
sleep 1
nc 127.0.0.1 9999 <<< "test"
# Debe mostrar: test

# Test 5: git
git --version
# Debe mostrar: git version X.X.X
```

---

## 4. Configuración Inicial

### 4.1 Estructura de Directorios

```bash
# Crear estructura de trabajo
cd ~/Documents
mkdir -p BoomBang_Security_Testing/{scripts,payloads,logs,tools,exploits}
cd BoomBang_Security_Testing

# Verificar estructura
tree -L 1
# Output:
# .
# ├── exploits
# ├── logs
# ├── payloads
# ├── scripts
# └── tools
```

### 4.2 Archivo de Configuración

```bash
# Crear archivo de configuración
cd ~/Documents/BoomBang_Security_Testing

cat > config.ini << 'EOF'
# BoomBang Security Testing - Configuración

[SERVER]
# Servidor del juego
# CAMBIAR según tu entorno:
# - 127.0.0.1 para testing local
# - 192.168.x.x para testing en red local
# - IP pública para testing remoto
GAME_SERVER_IP = 127.0.0.1
GAME_SERVER_PORT = 7200

[COLLECTOR]
# Servidor para recibir datos robados
# CAMBIAR según tu entorno (igual que arriba)
COLLECTOR_IP = 127.0.0.1
COLLECTOR_PORT = 5000
COLLECTOR_URL = http://127.0.0.1:5000

[PAYLOADS]
# Servidor de payloads JavaScript
PAYLOAD_SERVER_IP = 127.0.0.1
PAYLOAD_SERVER_PORT = 8000
PAYLOAD_SERVER_URL = http://127.0.0.1:8000

[LOGGING]
# Configuración de logs
LOG_LEVEL = INFO
LOG_FILE = logs/testing.log
DB_FILE = logs/stolen_data.db
EOF

# Mostrar configuración
cat config.ini
```

### 4.3 Obtener Tu IP

**¿Cuándo necesitas esto?**
- Si el cliente del juego está en otra computadora
- Si estás usando un servidor remoto

**macOS:**
```bash
# Obtener IP local (red WiFi/Ethernet)
ifconfig | grep "inet " | grep -v 127.0.0.1 | awk '{print $2}' | head -1

# O más simple:
ipconfig getifaddr en0  # WiFi
ipconfig getifaddr en1  # Ethernet

# Ejemplo de output: 192.168.1.100
```

**Linux:**
```bash
# Obtener IP local
ip addr show | grep "inet " | grep -v 127.0.0.1 | awk '{print $2}' | cut -d/ -f1 | head -1

# O más simple:
hostname -I | awk '{print $1}'

# Ejemplo de output: 192.168.1.100
```

**Anotar esta IP:**
```bash
# Guardar en archivo para referencia
echo "MI_IP=192.168.1.100" > my_ip.txt
cat my_ip.txt
```

**Actualizar config.ini:**
```bash
# Reemplazar 127.0.0.1 con tu IP
sed -i '' 's/127.0.0.1/192.168.1.100/g' config.ini  # macOS
sed -i 's/127.0.0.1/192.168.1.100/g' config.ini     # Linux

# Verificar cambios
grep "192.168.1.100" config.ini
```

### 4.4 Configurar Firewall

**¿Por qué?**
- Los servidores necesitan aceptar conexiones
- El firewall puede bloquear los puertos

#### macOS:

```bash
# Opción 1: Desactivar firewall temporalmente (solo para testing)
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate off

# Opción 2: Permitir Python específicamente (recomendado)
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --add /usr/bin/python3
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --unblockapp /usr/bin/python3

# Verificar estado
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --getglobalstate
```

#### Linux (Ubuntu/Debian con ufw):

```bash
# Verificar si ufw está activo
sudo ufw status

# Si está activo, abrir puertos necesarios:
sudo ufw allow 5000/tcp comment 'XSS Collector'
sudo ufw allow 8000/tcp comment 'Payload Server'
sudo ufw allow 7200/tcp comment 'Game Server'

# Recargar
sudo ufw reload

# Verificar
sudo ufw status numbered
```

#### Linux (Fedora/CentOS con firewalld):

```bash
# Abrir puertos
sudo firewall-cmd --add-port=5000/tcp --permanent
sudo firewall-cmd --add-port=8000/tcp --permanent
sudo firewall-cmd --add-port=7200/tcp --permanent

# Recargar
sudo firewall-cmd --reload

# Verificar
sudo firewall-cmd --list-ports
```

---

## 5. Troubleshooting

### Problema 1: "Command not found: python3"

**Solución:**
```bash
# Verificar que Python está instalado
which python3

# Si no aparece nada, instalarlo:
# macOS:
brew install python3

# Linux:
sudo apt install python3  # Ubuntu/Debian
sudo dnf install python3  # Fedora/CentOS

# Si dice que ya está instalado pero no lo encuentra, agregar al PATH:
export PATH="/usr/local/bin:$PATH"
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bashrc  # Linux
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.zshrc   # macOS
```

### Problema 2: "No module named 'flask'"

**Solución:**
```bash
# Reinstalar Flask
pip3 install --upgrade flask

# Si dice "permission denied":
pip3 install --user flask

# Si aún falla, usar Python directamente:
python3 -m pip install flask

# Verificar:
python3 -c "import flask; print(flask.__version__)"
```

### Problema 3: "Permission denied" al abrir puertos

**Solución:**
```bash
# Los puertos < 1024 requieren sudo
# NUESTROS puertos (5000, 8000, 7200) NO requieren sudo

# Si aún da error, verificar que no estés usando puerto < 1024
# y que el puerto no esté en uso:
lsof -i :5000

# Si está en uso, matar el proceso:
kill -9 <PID>

# O cambiar el puerto en config.ini
```

### Problema 4: "Connection refused" desde otra máquina

**Diagnóstico:**
```bash
# En la máquina del servidor:

# Test 1: ¿El servidor está escuchando?
netstat -an | grep 5000
# Debe mostrar: *.5000  *.*  LISTEN

# Test 2: ¿El firewall permite conexiones?
sudo ufw status  # Linux
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --getglobalstate  # macOS

# Test 3: ¿La IP es correcta?
hostname -I  # Linux
ipconfig getifaddr en0  # macOS

# En la máquina cliente:

# Test 4: ¿Hay conectividad?
ping 192.168.1.100

# Test 5: ¿El puerto está accesible?
nc -zv 192.168.1.100 5000
# Debe decir: "Connection to 192.168.1.100 port 5000 [tcp/*] succeeded!"

# Si falla, el problema es firewall o el servidor no está escuchando en 0.0.0.0
```

**Solución:**
```bash
# Verificar que el servidor escucha en 0.0.0.0 (no 127.0.0.1)
# En el script Python, asegurar:
app.run(host='0.0.0.0', port=5000)  # ✅ Correcto
# NO:
app.run(host='127.0.0.1', port=5000)  # ❌ Solo local
```

### Problema 5: "Permission denied" al instalar con pip

**Solución:**
```bash
# Opción 1: Instalar para el usuario actual (recomendado)
pip3 install --user flask

# Opción 2: Usar sudo (NO recomendado)
sudo pip3 install flask

# Opción 3: Usar virtual environment (mejor práctica)
python3 -m venv ~/venv
source ~/venv/bin/activate
pip install flask
```

### Problema 6: Homebrew no instalado (macOS)

**Solución:**
```bash
# Instalar Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Seguir las instrucciones en pantalla

# Agregar al PATH (Apple Silicon M1/M2):
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Verificar:
brew --version
```

---

## 6. Verificación Final

Una vez instalado todo, ejecutar:

```bash
cd ~/Documents/BoomBang_Security_Testing

# Test completo
cat > final_test.sh << 'EOF'
#!/bin/bash

echo "🧪 Test final del entorno..."
echo ""

# Test 1: Crear servidor Flask simple
echo "Test 1: Servidor Flask..."
cat > test_server.py << 'PYTHON'
from flask import Flask
app = Flask(__name__)

@app.route('/')
def test():
    return 'OK'

if __name__ == '__main__':
    print('[*] Servidor iniciado en http://localhost:5001')
    app.run(host='0.0.0.0', port=5001, debug=False)
PYTHON

# Iniciar servidor en background
python3 test_server.py &
SERVER_PID=$!
sleep 2

# Testear servidor
RESPONSE=$(curl -s http://localhost:5001)
if [ "$RESPONSE" = "OK" ]; then
    echo "[✓] Servidor Flask funcionando"
else
    echo "[✗] Servidor Flask NO funciona"
fi

# Limpiar
kill $SERVER_PID 2>/dev/null
rm test_server.py

echo ""
echo "✅ Test final completado!"
echo ""
echo "📚 Siguiente paso:"
echo "cd exploits/01_XSS"
echo "cat XSS_STEP_BY_STEP.md"
EOF

chmod +x final_test.sh
./final_test.sh
```

**Output esperado:**
```
🧪 Test final del entorno...

Test 1: Servidor Flask...
[*] Servidor iniciado en http://localhost:5001
[✓] Servidor Flask funcionando

✅ Test final completado!

📚 Siguiente paso:
cd exploits/01_XSS
cat XSS_STEP_BY_STEP.md
```

---

## 7. Resumen

**Has instalado:**
- ✅ Python 3.8+
- ✅ Flask
- ✅ curl, netcat, git
- ✅ (Opcional) Charles Proxy, Wireshark

**Has configurado:**
- ✅ Estructura de directorios
- ✅ Archivo config.ini
- ✅ Firewall
- ✅ IP correcta

**Estás listo para:**
- ✅ Ejecutar exploits XSS
- ✅ Ejecutar exploits IDOR
- ✅ Capturar y analizar tráfico

**Siguiente paso:**
```bash
cd ~/Documents/BoomBang_Security_Testing/exploits/01_XSS
cat XSS_STEP_BY_STEP.md
```

---

**⏱️ Tiempo total:** 15-20 minutos
**✅ Completado**
