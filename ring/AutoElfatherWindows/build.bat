@echo off
echo ========================================
echo   AUTO ELFATHER - COMPILADOR
echo   Creado por erKabesa aka JkPedro
echo ========================================
echo.

echo [1/4] Limpiando builds anteriores...
if exist build rd /s /q build
if exist bin rd /s /q bin
if exist obj rd /s /q obj
echo      Limpieza completada!
echo.

echo [2/4] Restaurando paquetes NuGet...
dotnet restore
if %errorlevel% neq 0 (
    echo ERROR: Fallo al restaurar paquetes
    pause
    exit /b 1
)
echo      Paquetes restaurados!
echo.

echo [3/4] Compilando proyecto...
dotnet build -c Release
if %errorlevel% neq 0 (
    echo ERROR: Fallo al compilar
    pause
    exit /b 1
)
echo      Compilacion exitosa!
echo.

echo [4/4] Publicando ejecutable...
dotnet publish -c Release -r win-x64 --self-contained true -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true -o .\build
if %errorlevel% neq 0 (
    echo ERROR: Fallo al publicar
    pause
    exit /b 1
)
echo      Publicacion exitosa!
echo.

echo ========================================
echo   COMPILACION COMPLETADA!
echo ========================================
echo.
echo El ejecutable esta en: .\build\AutoElfather.exe
echo.
echo Si tienes la imagen elfather.png, copiala a la carpeta build\
echo.
pause
