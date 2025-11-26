# 🥥 BoomBang Cocos - Scripts de Explotación

Scripts listos para ejecutar para el minijuego Cocos (Tiempo de Reacción).

## 📦 Contenido

- `cocos_packet_injector.py` - Inyección de paquetes de victoria con tiempo perfecto
- `cocos_auto_responder.py` - Auto-responder con detección visual de estímulos
- `README.md` - Este archivo

## 🚀 Quick Start

### Script #1: Packet Injector

```bash
# Instalar dependencias
pip install -r requirements.txt

# Ejecutar (tiempo perfecto: 0ms)
python cocos_packet_injector.py \
    --server 192.168.1.100 \
    --port 7200 \
    --user-id 123 \
    --username "TuNombre" \
    --reaction-time "0"

# Ejecutar (tiempo realista: 150ms)
python cocos_packet_injector.py \
    --server 192.168.1.100 \
    --port 7200 \
    --user-id 123 \
    --username "TuNombre" \
    --reaction-time "150"
```

### Script #2: Auto-Responder

```bash
# Instalar dependencias
pip install pyautogui pillow pynput opencv-python

# Ejecutar
python cocos_auto_responder.py

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

Ver `cocos_tiempoReaccion_95.md` para documentación exhaustiva con:
- Análisis completo de vulnerabilidades
- Guías paso a paso
- Troubleshooting
- Contramedidas recomendadas
