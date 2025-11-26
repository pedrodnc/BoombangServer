# 🎮 Auto elfather, el boss del sexxxx

**Autoclicker personalizado para el juego Ring de BoomBang**

Creado por **erKabesa aka JkPedro** 🎂

---

## ✨ Características

### 🎯 Sistema de Velocidades de Click
- **3 configuraciones de velocidad** con clicks continuos automáticos
- **Velocidad Lenta (5-10 CPS)**: Clicks controlados, 100ms delay
- **Velocidad Media (15-20 CPS)**: Balance perfecto (RECOMENDADA)
- **Velocidad Rápida (30-50 CPS)**: Máxima velocidad, 20ms delay

### ⌨️ Hotkeys Profesionales
- **F1**: Activar autoclicker
- **F2**: Desactivar autoclicker
- **F6**: Fijar coordenadas del cursor

### 📊 Monitoreo en Tiempo Real
- **Display de coordenadas**: Visualiza dónde está fijado el click
- **Monitor de ping**: Verifica tu latencia en tiempo real
- **Indicadores de estado**: Saber siempre qué está pasando

### 🎨 Interfaz Moderna
- **Pestañas organizadas**: Una pestaña por configuración
- **Fondo personalizado**: Soporta imagen `elfather.png`
- **Botón BBBBRRRRRRRRRR**: Diversión garantizada
- **Launcher integrado**: Abre el juego sin salir

---

## 🛠️ Compilación en Windows

### Requisitos previos
1. **Instalar .NET 6.0 SDK** (o superior)
   - Descarga desde: https://dotnet.microsoft.com/download/dotnet/6.0
   - Instalar el SDK (no solo el Runtime)

2. **Verificar instalación**:
   ```cmd
   dotnet --version
   ```
   Debe mostrar `6.0.x` o superior

### Pasos de compilación

1. **Navegar a la carpeta del proyecto**:
   ```cmd
   cd C:\ruta\a\AutoElfatherWindows
   ```

2. **(Opcional) Agregar imagen de fondo**:
   - Coloca la imagen `elfather.png` en la carpeta del proyecto
   - Si no la agregas, se usará un fondo degradado

3. **Compilar el proyecto**:
   ```cmd
   dotnet build -c Release
   ```

4. **Publicar como ejecutable único**:
   ```cmd
   dotnet publish -c Release -r win-x64 --self-contained true -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true
   ```

5. **Ubicación del .exe**:
   ```
   bin\Release\net6.0-windows\win-x64\publish\AutoElfather.exe
   ```

### Compilación rápida (un comando)
```cmd
dotnet publish -c Release -r win-x64 --self-contained true -p:PublishSingleFile=true -o .\build
```
El .exe estará en la carpeta `build\`

---

## 📖 Cómo Usar

### Primera vez
1. **Ejecutar `AutoElfather.exe`**
2. **Seleccionar configuración** (pestañas arriba)
3. **Abrir BoomBang** y entrar al juego Ring
4. **Posicionar cursor** sobre el botón de lanzamiento
5. **Presionar F6** para fijar coordenadas
6. **Presionar F1** para activar el autoclicker
7. **Presionar F2** cuando quieras detenerto

### Cambiar configuración
- Simplemente selecciona otra pestaña
- No necesitas desactivar F2 primero
- Los cambios se aplican inmediatamente

### Funciones especiales
- **🚀 BBBBRRRRRRRRRR**: Escribe el mensaje épico
- **🎮 Launcher**: Abre BoomBang directamente
- **❓ Instrucciones**: Manual completo integrado

---

## 🎯 Configuraciones Detalladas

### 🐢 Velocidad Lenta (5-10 CPS)
```
Delay entre clicks: 100ms
CPS (Clicks Por Segundo): ~10
Tipo: Clicks continuos automáticos
```
**Ventajas**: Control total, difícil de detectar, precisión máxima
**Desventajas**: Más lenta que las otras opciones
**Uso ideal**: Para jugar con control y sin llamar la atención

### ⚖️ Velocidad Media (15-20 CPS) ⭐
```
Delay entre clicks: 50ms
CPS (Clicks Por Segundo): ~20
Tipo: Clicks continuos automáticos
```
**Ventajas**: Balance perfecto entre velocidad y control
**Desventajas**: Ninguna, es la configuración óptima
**Uso ideal**: Juego normal, competitivo, uso general

### 🚀 Velocidad Rápida (30-50 CPS)
```
Delay entre clicks: 20ms
CPS (Clicks Por Segundo): ~50
Tipo: Clicks continuos automáticos
```
**Ventajas**: Velocidad ultra rápida, dominio total del juego
**Desventajas**: Puede ser muy obvio que estás usando autoclicker
**Uso ideal**: Cuando quieres dominar completamente y no te importa

---

## ⚠️ Notas Importantes

### Coordenadas
- Las coordenadas son **absolutas** (posición en pantalla)
- NO muevas la ventana del juego después de fijar F6
- Si mueves la ventana, debes fijar coordenadas nuevamente

### Ping Monitor
- Por defecto hace ping a `127.0.0.1` (localhost)
- Para cambiar el servidor, edita `MainForm.cs` línea ~480
- Reemplaza `"127.0.0.1"` con la IP del servidor del juego

### Antivirus
- Algunos antivirus pueden detectar el .exe como sospechoso
- Es un **falso positivo** común en autoclickers
- Agrégalo a la lista blanca si es necesario
- El código fuente está disponible para inspección

---

## 🔧 Personalización

### Cambiar imagen de fondo
1. Coloca `elfather.png` en la carpeta del .exe
2. La imagen se ajustará automáticamente (ImageLayout.Stretch)

### Ajustar configuraciones de potencia
Edita `MainForm.cs` líneas 35-52:
```csharp
private PowerConfig lowPower = new PowerConfig {
    ClickDelay = 80,   // Cambiar delay
    HoldTime = 30      // Cambiar tiempo de hold
};
```

### Cambiar hotkeys
Edita `MainForm.cs` método `SetupHotkeys()` línea ~230

---

## 📁 Estructura del Proyecto

```
AutoElfatherWindows/
├── AutoElfather.csproj    # Configuración del proyecto
├── Program.cs             # Punto de entrada
├── MainForm.cs            # Formulario principal
├── HelpForm.cs            # Ventana de ayuda
├── LauncherForm.cs        # Ventana de launcher
├── README.md              # Este archivo
└── elfather.png           # (Opcional) Imagen de fondo
```

---

## 🐛 Solución de Problemas

### "No se puede ejecutar el .exe"
- Instala .NET 6.0 Runtime: https://dotnet.microsoft.com/download/dotnet/6.0
- O recompila con `--self-contained true`

### "Las coordenadas no funcionan"
- Verifica que hayas presionado F6 primero
- NO muevas la ventana del juego después de F6
- Intenta fijar coordenadas de nuevo

### "No se ve la imagen de fondo"
- Verifica que `elfather.png` esté en la misma carpeta que el .exe
- Verifica que el nombre sea exactamente `elfather.png` (minúsculas)
- Si falla, se usará un fondo degradado automáticamente

### "El autoclicker es muy rápido/lento"
- Cambia de configuración (pestañas)
- O edita los valores en `MainForm.cs` y recompila

---

## 🎁 Créditos

**Desarrollado por**: erKabesa aka JkPedro
**Para**: Tu amigo, en su cumpleaños 🎂
**Basado en**: Análisis del juego Ring de BoomBang
**Tecnologías**: C# .NET 6.0 + WinForms

---

## 📜 Licencia

Este proyecto es un regalo personal. Úsalo con responsabilidad.

**Disclaimer**: Este autoclicker es solo para fines educativos y de entretenimiento personal. El uso de bots puede violar los términos de servicio de algunos juegos. Úsalo bajo tu propia responsabilidad.

---

## 💝 Mensaje Final

**¡Feliz cumpleaños, crack!** 🎂🎉

Que disfrutes este regalo hecho especialmente para ti. Eres el **boss del sexxxx** y espero que este autoclicker te ayude a dominar el Ring como nunca antes.

**BBBBRRRRRRRRRR** 🚀

---

*Made with ❤️ by erKabesa aka JkPedro*
