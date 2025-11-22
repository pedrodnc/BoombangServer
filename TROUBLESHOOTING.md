# Troubleshooting Rápido - Ruffle

Soluciones rápidas a los problemas más comunes.

## 🚀 Inicio Rápido de Debug

### 1. Ejecutar Script de Test
```bash
cd /Users/pedropablomunozpenafiel/Documents/BoombangServer
./test-ruffle.sh
```

### 2. Abrir Panel de Debug
```
http://localhost:8000/debug-ruffle.html
```
(después de iniciar PHP artisan serve)

---

## ❌ PROBLEMA: "PHP command not found"

### Causa
PHP no está en el PATH del sistema

### Solución
```bash
# Mac (con Homebrew):
brew install php

# O usar la versión del sistema:
export PATH="/usr/bin:$PATH"

# Verificar:
which php
php --version
```

---

## ❌ PROBLEMA: Pantalla en Blanco después del Login

### Causa Probable
1. SWF no se está cargando
2. Ruffle no está interceptando
3. Error de JavaScript

### Solución
```javascript
// 1. Abre Developer Tools (F12)
// 2. Ve a Console
// 3. Busca errores en rojo

// 4. Ejecuta esto en la consola:
console.log(window.RufflePlayer);
// Debería mostrar un objeto, no undefined

// 5. Ejecuta esto:
document.querySelector('object[type="application/x-shockwave-flash"]');
// Debería devolver el elemento <object>

// 6. Verifica que el SWF exista:
fetch('/static/flash_esp/BoomBangLoader.swf')
  .then(r => console.log('SWF existe:', r.status === 200))
  .catch(e => console.error('SWF error:', e));
```

---

## ❌ PROBLEMA: "Ruffle has encountered a major issue"

### Causa
El SWF usa características no soportadas por Ruffle

### Solución 1: Activar Debug
Edita `resources/views/components/game-page/flash.blade.php`:

```javascript
// Cambia:
"logLevel": "warn",

// Por:
"logLevel": "debug",
```

Recarga y revisa la consola para más detalles.

### Solución 2: Probar con Configuración Alternativa
```javascript
window.RufflePlayer.config = {
    "autoplay": "on",
    "unmuteOverlay": "visible",  // Mostrar botón unmute
    "backgroundColor": "#0099cc",
    "letterbox": "on",           // Activar letterbox
    "warnOnUnsupportedContent": true,  // Mostrar warnings
    "logLevel": "debug",         // Debug completo
    "allowScriptAccess": true,
    "menu": true                 // Activar menú contextual
};
```

---

## ❌ PROBLEMA: Sin Sonido

### Causa
Navegadores bloquean autoplay de audio

### Solución
```javascript
// 1. Haz click en la pantalla después de cargar
// 2. O activa el overlay de unmute:

window.RufflePlayer.config = {
    // ...
    "unmuteOverlay": "visible",  // Cambiar de "hidden" a "visible"
};
```

---

## ❌ PROBLEMA: Socket.IO no conecta

### Verificación
```bash
# Terminal 3 (Node.js) debería mostrar:
Socket server is running on port 3000
Connected to C# server at 127.0.0.1:3300
```

### Si NO dice "Connected to C#":
1. Verifica que el emulador C# esté corriendo PRIMERO
2. Reinicia el servidor Node.js

### Si el cliente no conecta:
```javascript
// En la consola del navegador:
console.log(socket);
console.log(socket.connected);  // Debería ser true
```

---

## ❌ PROBLEMA: CORS Error

### Síntoma
```
Access to fetch at ... has been blocked by CORS policy
```

### Solución
Verifica `node/.env`:
```env
ALLOWED_ORIGINS=http://localhost:8000,http://127.0.0.1:8000
```

Asegúrate de usar la MISMA URL que en el navegador (localhost o 127.0.0.1).

---

## ❌ PROBLEMA: Base de Datos Connection Failed

### Verificación Rápida
```bash
mysql -u root -p
# Luego:
USE boombang;
SHOW TABLES;
```

### Si falla:
```bash
# Crear base de datos:
mysql -u root -p -e "CREATE DATABASE boombang;"

# Verificar credenciales en .env:
cat .env | grep DB_
```

---

## ❌ PROBLEMA: "Class 'Hash' not found"

### Causa
Caché de Laravel desactualizada

### Solución
```bash
cd boombang-2022-app-master
php artisan cache:clear
php artisan config:clear
php artisan route:clear
composer dump-autoload
```

---

## ❌ PROBLEMA: Performance Muy Lento

### Es Normal
Ruffle es ~2-3x más lento que Flash nativo.

### Optimizaciones Posibles
1. **Cerrar otras pestañas** del navegador
2. **Desactivar extensiones** temporalmente
3. **Usar Chrome** (mejor performance que Firefox/Safari)
4. **Reducir calidad** del SWF (si es posible)

### Si es EXTREMADAMENTE lento:
```javascript
// Intenta reducir el framerate:
window.RufflePlayer.config = {
    // ...
    "maxExecutionDuration": 15,  // Máximo 15 segundos por frame
};
```

---

## ❌ PROBLEMA: "Cannot read property 'name' of null"

### Causa
No estás autenticado / no hay usuario en sesión

### Solución
```bash
# 1. Crear un usuario de test:
php artisan tinker

# 2. En tinker:
$user = new App\Models\User();
$user->name = 'test';
$user->email = 'test@test.com';
$user->password = Hash::make('test123');
$user->save();
exit

# 3. Login con:
# Usuario: test
# Contraseña: test123
```

---

## ❌ PROBLEMA: FlashVars no se pasan al SWF

### Verificación
```javascript
// En la consola del navegador (después de cargar):
console.log('FlashVars pasados:', document.querySelector('param[name="flashvars"]')?.value);
```

Debería mostrar:
```
sw1=&sw2=&sw3=&sw4=&u=admin&p=...&sw5=0&lang=e&locale=es_ES&ver=4828183825
```

### Si NO se muestran:
Revisa `resources/views/components/game-page/flash.blade.php` líneas 47-50.

---

## ❌ PROBLEMA: Ruffle no se carga desde CDN

### Causa
Sin conexión a internet o CDN bloqueado

### Solución: Self-Host Ruffle
```bash
# 1. Descargar Ruffle:
cd boombang-2022-app-master/public/js/library
curl -L https://github.com/ruffle-rs/ruffle/releases/latest/download/ruffle.js -o ruffle.js

# 2. Editar resources/views/layout/app.blade.php:
# Cambiar:
<script src="https://unpkg.com/@ruffle-rs/ruffle"></script>

# Por:
<script src="{{ asset('js/library/ruffle.js') }}"></script>
```

---

## ❌ PROBLEMA: Errores 404 en archivos SWF

### Verificación
```bash
ls -lh public/static/flash_esp/ | grep -i swf | head -5
```

Deberías ver BoomBangLoader.swf y otros archivos.

### Si faltan archivos:
```bash
# Verificar permisos:
chmod -R 755 public/static/

# Verificar que Laravel public esté configurado:
php artisan storage:link
```

---

## 🔍 Comandos de Debug Útiles

### Ver logs de Laravel
```bash
tail -f storage/logs/laravel.log
```

### Ver logs de Node.js
Ya están en la terminal donde ejecutaste `npm start`

### Ver logs de Ruffle en navegador
```javascript
window.RufflePlayer.config.logLevel = "trace";
```

### Verificar que todo está corriendo
```bash
# Verificar puertos abiertos:
lsof -i :8000  # Laravel
lsof -i :3000  # Node.js
lsof -i :3300  # C# Emulator
lsof -i :3306  # MySQL
```

---

## 📊 Checklist de Verificación Completa

Antes de abrir un issue, verifica:

- [ ] Rama: `feature/ruffle-flash-emulator`
- [ ] PHP funciona: `php --version`
- [ ] Composer instalado: `composer --version`
- [ ] Node.js funciona: `node --version`
- [ ] MySQL corriendo: `mysql --version`
- [ ] Dependencias Laravel instaladas: `ls node_modules | wc -l` > 100
- [ ] Dependencias Socket.IO instaladas: `ls node/node_modules | wc -l` > 5
- [ ] Base de datos existe: `mysql -u root -p boombang -e "SELECT 1"`
- [ ] Usuario de prueba existe: `mysql -u root -p boombang -e "SELECT * FROM users LIMIT 1"`
- [ ] SWF existe: `ls -lh public/static/flash_esp/BoomBangLoader.swf`
- [ ] .env configurado: `cat .env | grep DB_DATABASE`
- [ ] Laravel corre: Terminal 1 activa
- [ ] C# corre: Terminal 2 activa
- [ ] Node.js corre: Terminal 3 activa con "Connected to C#"
- [ ] Navegador abierto: `http://localhost:8000`
- [ ] Developer Tools abierto: F12
- [ ] Console sin errores rojos
- [ ] Ruffle cargado: `console.log(window.RufflePlayer)` != undefined
- [ ] Login funciona: Puedes entrar con un usuario

---

## 🆘 Obtener Ayuda

Si después de revisar todo esto sigues con problemas:

### 1. Recopilar Información
```bash
# Ejecutar y guardar el output:
./test-ruffle.sh > debug-report.txt 2>&1
```

### 2. Capturar Logs del Navegador
1. F12 → Console
2. Click derecho → "Save as..."
3. Guardar como `console-log.txt`

### 3. Screenshot del Error
Captura pantalla del error

### 4. Reportar
Incluye:
- Sistema operativo
- Navegador y versión
- Output de `test-ruffle.sh`
- Console logs
- Screenshot

---

## 🎯 Solución Rápida: Empezar de Cero

Si todo falla, empezar limpio:

```bash
# 1. Detener todos los servidores (Ctrl+C en cada terminal)

# 2. Limpiar Laravel
cd boombang-2022-app-master
rm -rf node_modules vendor
composer install
npm install
php artisan cache:clear
php artisan config:clear
php artisan route:clear

# 3. Limpiar Node.js
cd node
rm -rf node_modules
npm install
cd ..

# 4. Verificar .env
cat .env | grep -E "DB_|APP_"

# 5. Reiniciar en orden:
# Terminal 1: php artisan serve
# Terminal 2: Ejecutar emulador C#
# Terminal 3: cd node && npm start

# 6. Probar
open http://localhost:8000/debug-ruffle.html
```

---

**Última actualización:** 2025-11-22
