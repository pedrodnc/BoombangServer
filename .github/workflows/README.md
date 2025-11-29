# GitHub Actions Workflows

## 🤖 Build Auto Elfather

**Archivo**: `build-autoelfather.yml`

### ¿Qué hace?

Este workflow compila automáticamente ambas versiones de Auto Elfather (V1 y V2) usando servidores de GitHub con Windows.

### ¿Cuándo se ejecuta?

1. **Automáticamente** cuando haces push de cambios a:
   - `ring/AutoElfatherWindows/` (V1)
   - `ring/AutoElfatherWindows_CursorLibre/` (V2)
   - `.github/workflows/build-autoelfather.yml` (el propio workflow)

2. **Manualmente** desde la pestaña "Actions" de GitHub:
   - Ve a: Actions → Build Auto Elfather → Run workflow

### ¿Qué genera?

El workflow:

1. ✅ Compila `AutoElfather_V1.exe` (Cursor movido tradicional)
2. ✅ Compila `AutoElfather_V2.exe` (Cursor libre para multitasking)
3. 📦 Sube los .exe como **artifacts** (puedes descargarlos desde la pestaña Actions)
4. 💾 **Commitea** los .exe al repositorio en las carpetas:
   - `ring/AutoElfatherWindows/build/AutoElfather_V1.exe`
   - `ring/AutoElfatherWindows_CursorLibre/build/AutoElfather_V2.exe`

### Cómo obtener los .exe compilados

#### Opción 1: Desde el repositorio (después del workflow)
```bash
git pull
```
Los .exe estarán en:
- `ring/AutoElfatherWindows/build/AutoElfather_V1.exe`
- `ring/AutoElfatherWindows_CursorLibre/build/AutoElfather_V2.exe`

#### Opción 2: Desde GitHub Actions artifacts

1. Ve a la pestaña **Actions** en GitHub
2. Haz click en la ejecución del workflow
3. Baja a **Artifacts** al final de la página
4. Descarga:
   - `AutoElfather_V1.zip`
   - `AutoElfather_V2.zip`

### Requisitos

- El repositorio debe estar en GitHub
- La rama debe tener permisos de escritura para GitHub Actions
- **IMPORTANTE**: Asegúrate de que GitHub Actions tenga permisos de escritura:
  1. Ve a: Settings → Actions → General
  2. En "Workflow permissions", selecciona: **Read and write permissions**
  3. Guarda los cambios

### Notas técnicas

- **Runner**: `windows-latest` (Windows Server con .NET 6 preinstalado)
- **Compilación**: Self-contained, single-file, x64
- **Tiempo aproximado**: 2-3 minutos por ejecución
- **Costo**: Gratis (GitHub Actions gratuito para repos públicos)

---

**Made with ❤️ by erKabesa aka JkPedro**
**BBBBRRRRRRRRRR** 🚀
