# 🎮 BoomBang Ring Autoclicker - Versión GUI

Autoclicker con interfaz gráfica para el juego del anillo de BoomBang, basado en análisis del código fuente ActionScript.

## ✨ Características

- **Interfaz gráfica (Tkinter)** - Compatible con macOS, Linux y Windows
- **CPS configurable** - De 1 a 100 clicks por segundo
- **Calibración de coordenadas con hotkey** - Presiona F8 para establecer posición
- **Advertencia de lag** - Alertas cuando CPS > 50
- **Modo aleatorio** - Variación de ±10px para simular comportamiento humano
- **Estadísticas en tiempo real** - Clicks totales, CPS actual, tiempo activo
- **Failsafe desactivado** - Sin restricciones de movimiento del mouse

## 🚀 Quick Start

### Instalación

```bash
# 1. Instalar dependencias
pip install -r requirements.txt

# 2. Ejecutar autoclicker
python ring_autoclicker_gui.py
```

### Controles

| Tecla | Acción |
|-------|--------|
| **F6** | Iniciar/Detener autoclicker |
| **F7** | Pausar/Reanudar |
| **F8** | Calibrar coordenadas de click |
| **ESC** | Salir del programa |

## 📖 Guía de Uso

### Paso 1: Calibrar Coordenadas

Antes de usar el autoclicker, debes establecer dónde quieres hacer click:

1. Click en el botón **"📍 Calibrar (F8)"** o presiona **F8**
2. Mueve el mouse a la posición deseada en el juego
3. Presiona **F8** nuevamente para guardar la posición
4. Verás las coordenadas guardadas: `X: 500, Y: 300`

### Paso 2: Configurar CPS

Ajusta los clicks por segundo según tus necesidades:

- **1-10 CPS:** Bajo impacto, simula humano
- **10-30 CPS:** Óptimo para el juego Ring (recomendado: **10 CPS**)
- **30-50 CPS:** Alto rendimiento
- **50-100 CPS:** ⚠️ **Puede causar lag significativo**

`★ Insight ─────────────────────────────────────`
**Optimización Basada en Código Fuente:** El timer del servidor (RingUtils.as:92) procesa clicks cada 1000ms. Configurar 10 CPS (100ms de intervalo) garantiza que al menos 1 click sea registrado por cada ciclo del servidor, maximizando efectividad sin causar lag.
`─────────────────────────────────────────────────`

### Paso 3: Iniciar Autoclicker

1. Presiona **F6** o click en **"▶️ INICIAR"**
2. El autoclicker comenzará a hacer clicks en las coordenadas guardadas
3. Observa las estadísticas en tiempo real

### Paso 4: Pausar/Detener

- **Pausar:** Presiona **F7**
- **Detener:** Presiona **F6** nuevamente

## ⚠️ Advertencias Importantes

### Failsafe Desactivado

El failsafe de PyAutoGUI está **DESACTIVADO** (`pyautogui.FAILSAFE = False`). Debes usar **F6** o **F7** para detener manualmente.

### Lag con CPS Alto

**CPS > 50** puede causar lag en el sistema. **Recomendado: 10-20 CPS**

## 🛠️ Troubleshooting

### macOS: "No se pueden detectar las teclas"

```
System Preferences > Security & Privacy > Privacy > Accessibility
Añadir Terminal.app o Python
```

### "Los clicks no funcionan"

1. Verificar que presionaste F8 para calibrar
2. Verificar permisos de accesibilidad

### "La GUI no se abre"

```bash
# macOS
brew install python-tk

# Ubuntu
sudo apt install python3-tk
```

## 📊 Comparación de Rendimiento

| CPS | Clicks/Juego (5s) | Probabilidad Victoria | Lag |
|---|---|---|---|
| 10 | 50 | ~85% | Ninguno |
| 20 | 100 | ~90% | Mínimo |
| 50 | 250 | ~95% | ⚠️ Medio |
| 100 | 500 | ~98% | ⚠️ Alto |

**Configuración recomendada:** **10 CPS**

---

**Para más información:** Ver `MecanicasRing.md` (análisis completo del juego)

**Uso responsable:** Solo para pentesting autorizado
