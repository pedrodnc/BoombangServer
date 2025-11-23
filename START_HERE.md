# 🚀 EMPIEZA AQUÍ - Guía de Inicio Rápido

## ✅ Lo que YA tienes instalado

```
✓ Node.js v24.10.0
✓ npm v11.6.0
✓ Git
```

## ❌ Lo que FALTA

```
✗ PHP
✗ Composer
✗ MySQL
```

---

## 🎯 ELIGE TU CAMINO

### Camino A: Homebrew (Recomendado para Mac)
**Tiempo:** ~10 minutos
**Dificultad:** ⭐⭐⭐

```bash
# 1. Instalar Homebrew (si no lo tienes)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2. Instalar requisitos
brew install php composer mysql

# 3. Iniciar MySQL
brew services start mysql

# 4. Verificar
./test-ruffle.sh
```

### Camino B: XAMPP (Más Simple)
**Tiempo:** ~15 minutos
**Dificultad:** ⭐

```bash
# 1. Descargar XAMPP
open https://www.apachefriends.org/download.html

# 2. Instalar (incluye PHP + MySQL + Apache)

# 3. Iniciar desde panel de control XAMPP

# 4. Configurar PATH:
export PATH="/Applications/XAMPP/bin:$PATH"

# 5. Verificar
./test-ruffle.sh
```

### Camino C: Docker (Más Profesional)
**Tiempo:** ~5 minutos
**Dificultad:** ⭐⭐

```bash
# 1. Instalar Docker Desktop
open https://www.docker.com/products/docker-desktop

# 2. Iniciar servicios
docker-compose up -d

# 3. ¡Listo! Todo está corriendo en contenedores
```

---

## 🤔 ¿Cuál elegir?

### Elige Homebrew si:
- ✅ Quieres tener control total
- ✅ Ya usas terminal frecuentemente
- ✅ Quieres las últimas versiones

### Elige XAMPP si:
- ✅ Prefieres interfaz gráfica
- ✅ Quieres algo simple y rápido
- ✅ No quieres usar terminal

### Elige Docker si:
- ✅ Ya conoces Docker
- ✅ Quieres aislar el proyecto
- ✅ Trabajas en equipo

---

## ⚡ INICIO ULTRA RÁPIDO (Mi Recomendación)

Si quieres empezar YA y ver Ruffle funcionando:

### Opción 1: Homebrew (10 comandos)

```bash
# Instalar todo
brew install php composer mysql

# Iniciar MySQL
brew services start mysql

# Ir al proyecto
cd boombang-2022-app-master

# Instalar dependencias
composer install
npm install

# Crear base de datos
mysql -u root -e "CREATE DATABASE boombang"

# Configurar .env
cp .env.example .env
php artisan key:generate

# Iniciar Laravel
php artisan serve
```

Abre otra terminal:
```bash
# Iniciar Node.js
cd boombang-2022-app-master/node
npm install
npm start
```

¡Listo! Abre: http://localhost:8000/debug-ruffle.html

---

## 📋 Checklist Paso a Paso

### Fase 1: Instalación (5-15 min)
- [ ] Elegir método (Homebrew/XAMPP/Docker)
- [ ] Instalar PHP
- [ ] Instalar Composer
- [ ] Instalar MySQL
- [ ] Ejecutar `./test-ruffle.sh` → Todo ✅

### Fase 2: Configuración (10 min)
- [ ] `cd boombang-2022-app-master`
- [ ] `composer install`
- [ ] `npm install`
- [ ] `cp .env.example .env`
- [ ] `php artisan key:generate`
- [ ] Crear BD: `mysql -u root -e "CREATE DATABASE boombang"`

### Fase 3: Probar Ruffle (5 min)
- [ ] Terminal 1: `php artisan serve`
- [ ] Terminal 2: Emulador C# (si lo tienes compilado)
- [ ] Terminal 3: `cd node && npm start`
- [ ] Navegador: `http://localhost:8000/debug-ruffle.html`
- [ ] Ver panel de debug → ¿Todo ✅?

---

## 🆘 Si tienes problemas

### PHP no se encuentra
```bash
# Con Homebrew:
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# Con XAMPP:
echo 'export PATH="/Applications/XAMPP/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

### MySQL no inicia
```bash
# Con Homebrew:
brew services restart mysql

# Ver logs:
brew services list
```

### Composer falla
```bash
# Instalar manualmente:
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
```

---

## 🎬 Video Tutorial (Próximamente)

Mientras tanto, usa:
- `INSTALL_REQUIREMENTS.md` - Guía detallada
- `TROUBLESHOOTING.md` - Solución de problemas
- `test-ruffle.sh` - Script de verificación

---

## 💬 Dime tu elección

¿Qué camino prefieres?

**A) Homebrew** - Te ayudo con los comandos exactos
**B) XAMPP** - Te guío con la instalación
**C) Docker** - Configuramos docker-compose
**D) Ya lo tengo** - Vamos directo a probar Ruffle

Responde A, B, C o D y continuamos. 🚀
