-- Inicialización de la base de datos BoomBang
-- Este archivo se ejecuta automáticamente cuando se crea el contenedor MySQL

-- Crear base de datos si no existe
CREATE DATABASE IF NOT EXISTS boombang CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Usar la base de datos
USE boombang;

-- Mensaje de confirmación
SELECT 'Base de datos BoomBang inicializada correctamente' AS status;
