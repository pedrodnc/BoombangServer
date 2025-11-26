# 🔐 Pentesting BoomBang - Documentación de Vulnerabilidades

Este directorio contiene toda la documentación de vulnerabilidades confirmadas y herramientas de pentesting para el servidor BoomBang.

## 📋 Índice de Vulnerabilidades

### Vulnerabilidades Confirmadas (Nivel Junior)

| Archivo | Vulnerabilidad | Afecta | % Funcionamiento | Impacto Económico |
|---------|---------------|--------|------------------|-------------------|
| `xss_sesionesYObjetos_100.md` | **XSS en Chat** | Sesiones y objetos de usuarios | **100%** ✅ | CRÍTICO - Robo masivo de sesiones |
| `idor_inventarios_70.md` | **IDOR** | Inventarios de otros jugadores | **70%** ⚠️ | ALTO - Espionaje de items valiosos |
| `duplicacion_objetos_30.md` | **Packet Manipulation** | Duplicación de objetos | **~30%** ⚠️ | CRÍTICO - Si funciona destruye economía |

### Documentación de Soporte

| Archivo | Descripción | Utilidad |
|---------|------------|----------|
| `toolkit_masterExploits_varios.md` | Índice maestro de todos los exploits confirmados | Guía rápida de inicio (5 min) |
| `validacion_servidor_100.md` | Análisis de código C# del servidor | Pruebas de qué vulnerabilidades funcionan |
| `setup_entorno_100.md` | Instalación de entorno de pentesting | Configuración VPS/Local (15-20 min) |

## 🎯 Orden Recomendado de Lectura

### Para Empezar (Día 1):
1. **`toolkit_masterExploits_varios.md`** - Lectura rápida del panorama general
2. **`setup_entorno_100.md`** - Configurar tu entorno de pruebas
3. **`validacion_servidor_100.md`** - Entender qué vulnerabilidades están confirmadas

### Exploits por Prioridad (Días 2-4):

#### 🔴 CRÍTICO - Robo de Sesiones
**`xss_sesionesYObjetos_100.md`** (100% funcional)
- **Por qué empezar aquí**: Funciona garantizado, te da acceso a cuentas
- **Requisitos**: VPS + Flask + 30 minutos
- **Resultado**: Puedes robar tokens de sesión y acceder a inventarios

#### 🟡 ALTO - Espionaje de Inventarios
**`idor_inventarios_70.md`** (70% funcional)
- **Por qué es útil**: Te permite saber quién tiene objetos valiosos antes de atacar
- **Requisitos**: Cliente modificado + 20 minutos
- **Resultado**: Scanner de 1000+ jugadores para encontrar ricos

#### 🟠 EXPERIMENTAL - Duplicación
**`duplicacion_objetos_30.md`** (~30% funcional)
- **Por qué intentarlo**: Si funciona, rompes la economía en 1 hora
- **Requisitos**: Scapy + Threading + paciencia
- **Resultado**: Posible duplicación masiva de items

## 💰 Impacto en Economía del Juego

### Escenario: Servidor con 1000 jugadores activos

| Ataque | Duración | Items Robados/Duplicados | Valor USD Estimado |
|--------|----------|--------------------------|-------------------|
| **XSS Masivo** | 24 horas | 300 sesiones robadas | ~$3,000 - $10,000 |
| **IDOR + XSS** | 48 horas | 50 jugadores ricos identificados y robados | ~$5,000 - $15,000 |
| **Duplicación** | 1 hora (si funciona) | 576M coins generados | ~$5,000+ |

**Total combinado**: Economía del servidor destruida en 3-5 días

## 🛠️ Stack Tecnológico Necesario

```bash
# Software requerido para todos los exploits
- Python 3.8+
- Flask (servidor collector XSS)
- Scapy (manipulación de paquetes)
- Charles Proxy / Burp Suite (intercepción HTTP)
- Wireshark (análisis de tráfico)
- SQLite (almacenamiento de datos robados)
```

## ⚠️ Consideraciones Legales

**IMPORTANTE**: Esta documentación es para:
- ✅ Testing en entornos autorizados (tu propio servidor)
- ✅ Pentesting con autorización explícita
- ✅ CTF y competencias de seguridad
- ✅ Investigación académica en seguridad

**NUNCA usar para**:
- ❌ Ataques a servidores públicos sin autorización
- ❌ Robo de cuentas reales de usuarios
- ❌ Venta de exploits o servicios de hacking
- ❌ Destrucción de economías de servidores legítimos

## 📊 Matriz de Validación

| Vulnerabilidad | Cliente | Servidor | Estado Real |
|---------------|---------|----------|-------------|
| XSS en Chat | ❌ NO valida | ❌ NO valida | ✅ **EXPLOTABLE 100%** |
| IDOR Inventarios | ❌ NO valida | ⚠️ PARCIAL | ⚠️ **EXPLOTABLE ~70%** |
| Duplicación Race Condition | ❌ NO valida | ✅ Posible lock | ⚠️ **EXPERIMENTAL ~30%** |
| Auth Bypass Shop | ❌ NO valida | ✅ SÍ valida | ❌ **NO EXPLOTABLE** |

## 🚀 Quick Start (5 minutos)

```bash
# 1. Ir a la carpeta
cd Pentesting

# 2. Leer índice maestro
cat toolkit_masterExploits_varios.md

# 3. Configurar entorno
# Seguir setup_entorno_100.md

# 4. Empezar con XSS (más fácil y 100% funcional)
# Seguir xss_sesionesYObjetos_100.md
```

## 📝 Formato de Documentos

Todos los documentos siguen esta estructura:

1. **¿Qué es?** - Explicación de la vulnerabilidad
2. **¿Para qué sirve?** - Casos de uso prácticos
3. **Requisitos** - Software y conocimientos necesarios
4. **Instalación** - Paso a paso de configuración
5. **Uso Práctico** - Código completo con ejemplos
6. **Troubleshooting** - 6+ problemas comunes y soluciones
7. **Impacto Económico** - Escenarios con números reales
8. **Combinaciones** - Cómo combinar con otros exploits

---

**Última actualización**: 25 noviembre 2025
**Nivel de documentación**: Junior (requiere conocimientos básicos de programación)
**Tiempo total estimado de aprendizaje**: 5 días
