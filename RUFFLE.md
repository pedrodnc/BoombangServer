# Implementación de Ruffle Flash Emulator

## ¿Qué es Ruffle?

Ruffle es un emulador de Flash Player escrito en Rust que se compila a WebAssembly. Permite ejecutar contenido Flash en navegadores modernos sin necesidad de Adobe Flash Player.

**Sitio oficial:** https://ruffle.rs/

## ¿Por qué Ruffle?

- ✅ **Flash Player murió en 2020** - Adobe descontinuó Flash Player
- ✅ **Navegadores modernos NO soportan Flash** - Chrome, Firefox, Safari bloquearon Flash
- ✅ **Ruffle funciona en todos los navegadores** - Compatible con Chrome, Firefox, Safari, Edge
- ✅ **Open Source y gratuito** - Licencia MIT/Apache 2.0
- ✅ **Sin plugins** - Funciona directamente en el navegador

## Arquitectura Actual

### Antes (Flash Player + swfobject)
```
Usuario → Navegador → Flash Player Plugin → BoomBangLoader.swf
                           ❌ DEPRECADO
```

### Después (Ruffle)
```
Usuario → Navegador → Ruffle (WebAssembly) → BoomBangLoader.swf
                           ✅ MODERNO
```

## Cambios Implementados

### 1. Layout Principal (`resources/views/layout/app.blade.php`)

**ANTES:**
```html
<script src="{{ asset('js/library/swfobject.js') }}"></script>
```

**DESPUÉS:**
```html
<!-- Ruffle Flash Emulator - Modern replacement for Flash Player -->
<script src="https://unpkg.com/@ruffle-rs/ruffle"></script>
```

### 2. Contenedor del Juego (`resources/views/components/game-page/game-container.blade.php`)

**ANTES:**
```html
<object type="application/x-shockwave-flash" id="flash_boombang">
    <param name="movie" id="flash_boombang" />
    <param name="allowScriptAccess" value="always" />
</object>
```

**DESPUÉS:**
```html
<!-- Ruffle will inject the Flash player here -->
<div id="flash_boombang"></div>
```

### 3. Carga del SWF (`resources/views/components/game-page/flash.blade.php`)

**ANTES (swfobject):**
```javascript
swfobject.embedSWF(
    "{{ asset('static/flash_esp/BoomBangLoader.swf') }}",
    'flash_boombang',
    '1013px', '658px',
    '9.0.115',
    './http://boombang.tv/swfobject/expressInstall.swf/',
    flashvars, params, attributes
);
```

**DESPUÉS (Ruffle):**
```javascript
// Configure Ruffle
window.RufflePlayer.config = {
    "autoplay": "on",
    "unmuteOverlay": "hidden",
    "backgroundColor": "#0099cc",
    // ... más configuraciones
};

// Crear elemento object
var objectElement = document.createElement('object');
objectElement.type = 'application/x-shockwave-flash';
objectElement.data = "{{ asset('static/flash_esp/BoomBangLoader.swf') }}";
// ... agregar parámetros y FlashVars
```

## Configuración de Ruffle

### Opciones Disponibles

```javascript
window.RufflePlayer.config = {
    // Auto-iniciar el SWF
    "autoplay": "on",              // "on" | "off" | "auto"

    // Ocultar overlay de sonido
    "unmuteOverlay": "hidden",      // "visible" | "hidden"

    // Color de fondo
    "backgroundColor": "#0099cc",   // Color hexadecimal

    // Letterbox (barras negras)
    "letterbox": "off",             // "on" | "off" | "fullscreen"

    // Advertencias sobre contenido no soportado
    "warnOnUnsupportedContent": false,

    // Nivel de logging
    "logLevel": "warn",             // "error" | "warn" | "info" | "debug" | "trace"

    // Permitir acceso a scripts
    "allowScriptAccess": true,

    // Menú contextual
    "menu": false                   // true | false
};
```

## FlashVars - Parámetros del Juego

Los FlashVars pasan información al SWF (usuario, contraseña, configuración):

```javascript
var flashvars = {
    sw1: "",                                    // Parámetro server 1
    sw2: "",                                    // Parámetro server 2
    sw3: "",                                    // Parámetro server 3
    sw4: "",                                    // Parámetro server 4
    u: "{{ auth()->user()->name }}",           // Usuario
    p: "{{ auth()->user()->password }}",       // Contraseña (hasheada)
    sw5: "0",                                   // Parámetro server 5
    lang: "e",                                  // Idioma
    locale: "es_ES",                            // Locale
    ver: "4828183825",                          // Versión
};
```

## Compatibilidad

### ✅ Funcionalidades Soportadas

- ActionScript 1.0
- ActionScript 2.0
- ActionScript 3.0 (parcial)
- FlashVars
- ExternalInterface (comunicación JavaScript ↔ Flash)
- Sonido
- Video (FLV)
- Mouse y teclado
- LocalStorage (SharedObjects)

### ⚠️ Limitaciones Conocidas

- **ActionScript 3.0**: No 100% completo
- **P2P Networking**: No soportado
- **Cámaras/Micrófonos**: No soportado
- **DRM**: No soportado
- **Algunas APIs avanzadas**: En desarrollo

## Testing

### Verificar que Ruffle está Cargado

Abre la consola del navegador (F12) y escribe:

```javascript
console.log(window.RufflePlayer);
```

Deberías ver el objeto RufflePlayer.

### Verificar Carga del SWF

En la consola deberías ver:

```
Ruffle: Loading BoomBang SWF with FlashVars
Ruffle Configuration: {autoplay: "on", unmuteOverlay: "hidden", ...}
FlashVars: {sw1: "", sw2: "", u: "admin", ...}
```

### Pruebas Recomendadas

1. **Login básico** - ¿El juego carga?
2. **Animaciones** - ¿Los personajes se mueven?
3. **Interacciones** - ¿Los clicks funcionan?
4. **Chat** - ¿Se pueden enviar mensajes?
5. **Socket.IO** - ¿La comunicación en tiempo real funciona?
6. **Sonido** - ¿El audio funciona?

## Troubleshooting

### El SWF no carga

1. **Verificar la consola** del navegador para errores
2. **Verificar que Ruffle se cargó**: `console.log(window.RufflePlayer)`
3. **Verificar la ruta del SWF**: `{{ asset('static/flash_esp/BoomBangLoader.swf') }}`
4. **Verificar permisos**: El archivo SWF debe ser accesible

### Error: "Ruffle has encountered a major issue"

- El SWF puede usar características no soportadas
- Revisar `logLevel: "debug"` para más información
- Consultar: https://github.com/ruffle-rs/ruffle/issues

### El juego carga pero no funciona correctamente

1. **ActionScript 3.0**: Si el juego usa AS3 avanzado, puede haber incompatibilidades
2. **ExternalInterface**: Verificar que las llamadas JS ↔ Flash funcionan
3. **Shared Objects**: LocalStorage puede comportarse diferente

### Performance lento

- Ruffle puede ser ~2-3x más lento que Flash nativo
- Considerar optimizar el SWF si es posible
- En futuras versiones de Ruffle mejorará la performance

## Alternativas a Ruffle

Si Ruffle no funciona bien para tu caso:

### 1. **Lightspark** (Linux)
- Emulador Flash alternativo
- Solo Linux
- Menos compatible que Ruffle

### 2. **Flashpoint** (Archivado)
- Proyecto de preservación de Flash
- Requiere instalación local
- No funciona en navegador

### 3. **Migrar a HTML5** (Recomendado a largo plazo)
- Reescribir el juego en HTML5/Canvas/WebGL
- Stack: React + PixiJS o Phaser.js
- Costo: 6-12 meses, $50k-$150k USD

## CDN vs Self-Hosted

### CDN (Actual)
```html
<script src="https://unpkg.com/@ruffle-rs/ruffle"></script>
```

**Ventajas:**
- ✅ Siempre la última versión
- ✅ No requiere descarga
- ✅ CDN distribuido globalmente

**Desventajas:**
- ⚠️ Depende de servicio externo
- ⚠️ Puede cambiar sin aviso

### Self-Hosted (Alternativa)

1. Descargar Ruffle:
```bash
npm install @ruffle-rs/ruffle
```

2. Copiar archivos:
```bash
cp node_modules/@ruffle-rs/ruffle/ruffle.js public/js/library/
```

3. Actualizar layout:
```html
<script src="{{ asset('js/library/ruffle.js') }}"></script>
```

## Migración Futura

Ruffle es una **solución de transición**. Para el futuro se recomienda:

### Opción 1: Mantener Ruffle
- Seguir actualizando Ruffle
- Funciona bien para preservación
- Comunidad activa

### Opción 2: Migrar a HTML5
- Reescribir el cliente en JavaScript/TypeScript
- Usar PixiJS (muy similar a Flash)
- Mejor performance y compatibilidad

## Recursos

- **Sitio oficial:** https://ruffle.rs/
- **Documentación:** https://github.com/ruffle-rs/ruffle/wiki
- **Demo:** https://ruffle.rs/demo/
- **GitHub:** https://github.com/ruffle-rs/ruffle
- **Discord:** https://discord.gg/ruffle

## Changelog

### v1.0 - 2025-11-22
- ✅ Implementación inicial de Ruffle
- ✅ Reemplazo de swfobject
- ✅ Configuración de FlashVars
- ✅ Documentación completa

## Soporte

Si encuentras problemas:

1. Revisa la consola del navegador (F12)
2. Activa `logLevel: "debug"` en la configuración
3. Consulta issues de Ruffle: https://github.com/ruffle-rs/ruffle/issues
4. Considera migración a HTML5 si Ruffle no es suficiente
