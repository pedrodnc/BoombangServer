# Instalación de Requisitos - BoomBang Server

## Estado Actual del Sistema

✅ **Node.js v24.10.0** - INSTALADO
✅ **npm v11.6.0** - INSTALADO
❌ **PHP** - NO ENCONTRADO
❌ **Composer** - NO ENCONTRADO
❌ **MySQL** - NO ENCONTRADO

---

## 🚀 Instalación Rápida (macOS)

### Opción 1: Homebrew (RECOMENDADO)

Si no tienes Homebrew instalado:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Luego instala todo:
```bash
# PHP
brew install php

# Composer
brew install composer

# MySQL
brew install mysql

# Iniciar MySQL
brew services start mysql
```

### Opción 2: XAMPP/MAMP (Alternativa más simple)

**XAMPP:**
1. Descargar de: https://www.apachefriends.org/download.html
2. Instalar (incluye PHP + MySQL)
3. Iniciar desde panel de control

**MAMP:**
1. Descargar de: https://www.mamp.info/en/downloads/
2. Instalar (incluye PHP + MySQL)
3. Iniciar desde aplicación

---

## Verificar Instalación

Después de instalar, ejecuta:

```bash
# PHP
php --version
# Debería mostrar: PHP 8.x.x

# Composer
composer --version
# Debería mostrar: Composer version 2.x.x

# MySQL
mysql --version
# Debería mostrar: mysql  Ver 8.x.x
```

---

## ⚡ Alternativa RÁPIDA: Usar Docker

Si prefieres no instalar todo localmente:

```bash
# 1. Instalar Docker Desktop
# https://www.docker.com/products/docker-desktop

# 2. Crear archivo docker-compose.yml (ya lo creo yo)

# 3. Ejecutar
docker-compose up
```

¿Quieres que cree una configuración Docker para el proyecto? (más rápido y aislado)

---

## 🎯 Próximos Pasos

### Después de instalar todo:

1. **Verificar:**
   ```bash
   ./test-ruffle.sh
   ```

2. **Si todo está ✅, continuar con:**
   - Crear base de datos
   - Instalar dependencias Laravel
   - Probar Ruffle

---

## ❓ ¿Qué prefieres?

### A) Instalar con Homebrew (mejor para desarrollo)
```bash
brew install php composer mysql
```

### B) Instalar XAMPP/MAMP (más simple)
- Todo en uno, interfaz gráfica
- Más fácil de configurar

### C) Usar Docker (más profesional)
- Aislado del sistema
- Fácil de compartir con equipo
- Requiere Docker Desktop

---

## 🆘 Si tienes problemas

**Problema: brew command not found**
```bash
# Instalar Homebrew primero
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

**Problema: MySQL no inicia**
```bash
# Con Homebrew:
brew services restart mysql

# Con XAMPP/MAMP:
# Usar el panel de control
```

**Problema: PHP no se encuentra después de instalar**
```bash
# Agregar al PATH (Homebrew):
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# Verificar:
which php
```

---

## 📞 Dime cuál opción prefieres y te ayudo con los pasos específicos
