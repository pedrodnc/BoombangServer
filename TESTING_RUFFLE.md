# Guía de Pruebas - Ruffle Flash Emulator

Esta guía te ayudará a probar la implementación de Ruffle en el proyecto BoomBang.

## Prerequisitos

Asegúrate de estar en la rama correcta:

```bash
git checkout feature/ruffle-flash-emulator
```

## Paso 1: Iniciar los Servidores

Sigue el orden exacto:

### Terminal 1: Laravel
```bash
cd boombang-2022-app-master
php artisan serve
```

### Terminal 2: C# Emulator
Ejecuta el emulador C# desde Visual Studio o:
```bash
cd boombang-2022-emulator-main/Proyect\ Base/bin/Debug
./ProyectBase.exe
```

### Terminal 3: Node.js Socket Server
```bash
cd boombang-2022-app-master/node
npm start
```

## Paso 2: Verificar Carga de Ruffle

1. Abre tu navegador en: `http://localhost:8000`
2. Abre las **Developer Tools** (F12)
3. Ve a la pestaña **Console**

Deberías ver mensajes como:
```
Ruffle: Loading BoomBang SWF with FlashVars
Ruffle Configuration: {autoplay: "on", ...}
FlashVars: {u: "admin", ...}
```

## Paso 3: Verificar que Ruffle está Activo

En la consola del navegador, ejecuta:

```javascript
console.log(window.RufflePlayer);
```

Deberías ver un objeto con propiedades de Ruffle.

## Paso 4: Login y Prueba del Juego

1. **Login**: Ingresa con tu usuario y contraseña
2. **Observa la carga**: Deberías ver el logo de Ruffle brevemente
3. **Espera**: El SWF puede tardar unos segundos en cargar

### Si ves una pantalla azul (#0099cc)
✅ Ruffle está cargando el SWF correctamente

### Si ves el contenido del juego
✅ ¡Ruffle funciona! El juego está ejecutándose

## Paso 5: Pruebas Funcionales

### Test 1: Animaciones
- [ ] ¿Se ven animaciones en pantalla?
- [ ] ¿Los personajes se mueven?
- [ ] ¿Los botones tienen hover effects?

### Test 2: Interacciones
- [ ] ¿Los clicks funcionan?
- [ ] ¿Puedes navegar por menús?
- [ ] ¿Los formularios responden?

### Test 3: Comunicación Socket.IO
- [ ] ¿El chat funciona?
- [ ] ¿Puedes enviar mensajes?
- [ ] ¿Recibes actualizaciones en tiempo real?

### Test 4: Audio
- [ ] ¿Se escucha música de fondo?
- [ ] ¿Los efectos de sonido funcionan?
- [ ] ¿Puedes mutear/desmutear?

### Test 5: FlashVars
Verifica que los parámetros se pasaron correctamente:

En la consola:
```javascript
// El SWF debería tener acceso a estos parámetros
// Verifica en los logs que se muestran al cargar
```

## Problemas Comunes y Soluciones

### ❌ Pantalla en blanco

**Problema:** No se ve nada después del login

**Solución:**
1. Abre la consola (F12)
2. Busca errores en rojo
3. Verifica que el archivo SWF existe:
   ```bash
   ls -lh boombang-2022-app-master/public/static/flash_esp/BoomBangLoader.swf
   ```
4. Verifica la ruta en el código fuente (View Page Source)

### ❌ Error: "Ruffle has encountered a major issue"

**Problema:** Ruffle muestra un error crítico

**Solución:**
1. El SWF puede usar características no soportadas
2. Activa debug logging:
   ```javascript
   // En flash.blade.php, cambia:
   "logLevel": "debug"
   ```
3. Revisa la consola para más detalles
4. Reporta el issue en: https://github.com/ruffle-rs/ruffle/issues

### ❌ El SWF carga pero no responde

**Problema:** Ves el contenido pero no puedes interactuar

**Solución:**
1. Verifica que Socket.IO está conectado (Terminal 3)
2. Verifica que el C# Emulator está ejecutándose (Terminal 2)
3. Revisa la consola del navegador para errores de red
4. Verifica que los FlashVars se pasaron correctamente

### ❌ Sin sonido

**Problema:** No se escucha audio

**Solución:**
1. Muchos navegadores bloquean autoplay de audio
2. Haz click en la pantalla para activar el audio
3. Verifica el volumen del navegador
4. Revisa la configuración de Ruffle:
   ```javascript
   "unmuteOverlay": "visible"  // Muestra el botón de unmute
   ```

### ❌ Performance lento

**Problema:** El juego va muy lento

**Solución:**
1. Ruffle es ~2-3x más lento que Flash nativo (normal)
2. Cierra otras pestañas del navegador
3. Desactiva extensiones del navegador temporalmente
4. Prueba en otro navegador (Chrome suele ser más rápido)

## Comparación de Navegadores

### Recomendado: Chrome/Edge
- ✅ Mejor performance con Ruffle
- ✅ Mejor soporte de WebAssembly
- ⚠️ Puede consumir más RAM

### Firefox
- ✅ Buen soporte de Ruffle
- ✅ Menos consumo de RAM
- ⚠️ Ligeramente más lento que Chrome

### Safari
- ✅ Funciona en versiones recientes
- ⚠️ Performance variable
- ⚠️ Algunas características pueden fallar

### Navegadores Móviles
- ⚠️ iOS Safari: Soporte limitado
- ⚠️ Chrome Android: Funciona pero lento
- ❌ No recomendado para dispositivos móviles

## Debug Avanzado

### Activar Logs Detallados

1. Edita `resources/views/components/game-page/flash.blade.php`
2. Cambia la configuración:
   ```javascript
   "logLevel": "debug"  // o "trace" para máximo detalle
   ```
3. Recarga la página
4. Revisa la consola para logs detallados

### Inspeccionar el Elemento Ruffle

En las Developer Tools:
1. Ve a la pestaña **Elements** (Elementos)
2. Busca el elemento `<object id="ruffle_player">`
3. Deberías ver algo como:
   ```html
   <object id="ruffle_player" type="application/x-shockwave-flash">
     <param name="flashvars" value="...">
     ...
   </object>
   ```

### Verificar que Ruffle Polyfill se Aplicó

```javascript
// En la consola:
document.querySelectorAll('object[type="application/x-shockwave-flash"]')
// Debería devolver tu elemento <object>
```

## Métricas de Performance

### Tiempo de Carga Esperado

- **Ruffle**: ~2-3 segundos para cargar el emulador
- **SWF**: ~3-5 segundos para cargar el juego
- **Total**: ~5-8 segundos hasta ver el juego

Esto es normal y más lento que Flash nativo.

### Consumo de Recursos

- **RAM**: ~200-400 MB (Ruffle + SWF)
- **CPU**: 20-40% en uso activo
- **GPU**: Acelera rendering si está disponible

## Reportar Problemas

Si encuentras un bug, incluye:

1. **Navegador y versión** (ej: Chrome 120.0.6099.199)
2. **Sistema operativo** (ej: Windows 11, macOS Sonoma)
3. **Descripción del problema**
4. **Logs de la consola** (F12 → Console → copiar todo)
5. **Screenshot o video** si es posible

## Siguiente Paso

Si Ruffle funciona bien: ✅ ¡Listo! Puedes usar esta rama

Si Ruffle NO funciona: ⚠️ Considera migración a HTML5
- Ver [RUFFLE.md](RUFFLE.md) sección "Migración Futura"
- Estimar costo y tiempo de desarrollo

## Checklist de Testing Completo

Antes de considerar la implementación exitosa:

- [ ] Ruffle se carga sin errores
- [ ] SWF se carga y muestra contenido
- [ ] Login funciona correctamente
- [ ] Animaciones y UI se ven bien
- [ ] Clicks e interacciones funcionan
- [ ] Socket.IO se conecta
- [ ] Chat en tiempo real funciona
- [ ] Audio funciona (después de click)
- [ ] No hay errores en consola (o solo warnings menores)
- [ ] Performance es aceptable (no extremadamente lento)
- [ ] Funciona en Chrome/Firefox/Edge
- [ ] FlashVars se pasan correctamente

## Reporte de Testing

Después de completar las pruebas, documenta:

```markdown
### Resultados de Testing - Ruffle

**Fecha:** [Fecha]
**Navegador:** [Navegador + versión]
**Sistema:** [OS]

**Tests Pasados:** X/11
**Tests Fallados:** Y/11

**Problemas Encontrados:**
1. [Problema 1]
2. [Problema 2]

**Performance:**
- Tiempo de carga: X segundos
- FPS promedio: Y fps
- Consumo RAM: Z MB

**Conclusión:**
[¿Ruffle es viable para producción? ¿Qué falta?]
```

## Recursos Adicionales

- 📖 [RUFFLE.md](RUFFLE.md) - Documentación completa
- 🌐 [Ruffle Demo](https://ruffle.rs/demo/) - Prueba Ruffle con otros SWFs
- 🐛 [Ruffle Issues](https://github.com/ruffle-rs/ruffle/issues) - Reportar bugs
- 💬 [Ruffle Discord](https://discord.gg/ruffle) - Comunidad de soporte

---

**¡Buena suerte con las pruebas!** 🚀
