# 🥷 BoomBang Shuriken - Scripts de Explotación

Scripts listos para ejecutar para el minijuego Shuriken (Camino Ninja).

## 📦 Contenido

- `shuriken_packet_injector.py` - Inyección de paquetes de victoria
- `shuriken_autoclicker.py` - Auto-clicker con detección visual de ninjas
- `README.md` - Este archivo

## 🚀 Quick Start

### Script #1: Packet Injector

```bash
# Instalar dependencias
pip install -r requirements.txt

# Ejecutar (modo victoria)
python shuriken_packet_injector.py \
    --server 192.168.1.100 \
    --port 7200 \
    --user-id 123 \
    --username "TuNombre"

# Ejecutar (modo flood)
python shuriken_packet_injector.py \
    --server 192.168.1.100 \
    --port 7200 \
    --user-id 123 \
    --username "TuNombre" \
    --mode flood \
    --num-clicks 500
```

### Script #2: Auto-Clicker

```bash
# Instalar dependencias
pip install pyautogui pillow pynput opencv-python

# Ejecutar
python shuriken_autoclicker.py

# Controles:
# F6 - Iniciar/Detener
# F7 - Pausar/Reanudar
# ESC - Salir
```

## 📋 Requisitos

- Python 3.7+
- Permisos de accesibilidad (macOS/Linux)
- Acceso de red al servidor (para packet injector)

## ⚠️ Disclaimer

**USO SOLO PARA PENTESTING AUTORIZADO**

Estos scripts son para fines educativos y de investigación en seguridad únicamente.
El uso no autorizado en servidores públicos es ilegal.

## 📖 Documentación Completa

Ver `shuriken_caminoNinja_95.md` para documentación exhaustiva con:
- Análisis completo de vulnerabilidades
- Guías paso a paso
- Troubleshooting
- Contramedidas recomendadas
