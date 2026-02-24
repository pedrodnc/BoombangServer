# [XSS] - [SEVERIDAD: ALTA] - [BYPASS DE SANITIZACIÓN NODEJS]

## 📍 Ubicación
- Archivo: `boombang-2022-app-master/node/controllers/SocketIOController.js`
- Función/Línea: `validateData` (línea 19), `prepairData` (línea 49)

## ⚔️ Vector de Ataque
La función `validateData` solo aplica sanitización de caracteres HTML al campo `paramater`. Sin embargo, el campo `token_uid` no se sanitiza y se confía ciegamente en él.

Un atacante puede enviar un evento `send-message` a través de Socket.IO con un `token_uid` manipulado que contenga el delimitador interno del protocolo (`³`). Esto permite inyectar parámetros adicionales en el paquete que se envía al emulador C#.

Debido a que el emulador C# interpreta el segundo parámetro del paquete `send-message` como el contenido del mensaje (ignorando el `paramater` original que sí fue sanitizado), el atacante puede enviar cualquier contenido (incluyendo HTML/XSS o comandos maliciosos) que será retransmitido a todos los usuarios en la sala.

> "El atacante inyecta `³` en `token_uid` para desplazar los parámetros interpretados por el servidor C#, logrando que su payload malicioso sea tratado como el mensaje de chat legítimo, eludiendo así la sanitización del nodo."

## 🧪 Prueba de Concepto (PoC)
Código para reproducir la vulnerabilidad (ejecutar en Node.js o consola del navegador):

```javascript
// Simulación del ataque desde el cliente o script
const maliciousPayload = "<script>alert('XSS')</script>";
const validUID = "UID_VALIDO_DEL_USUARIO";

// Inyección: El token_uid contiene el delimitador y el payload
const exploitUID = `${validUID}³${maliciousPayload}`;

socket.emit('send-message', {
    channel: 'send-message',
    token_uid: exploitUID,
    paramater: 'Este mensaje será ignorado por el C# como mensaje principal'
});
```

**Resultado en el servidor C#:**
El paquete recibido será:
`send-message³²UID_VALIDO_DEL_USUARIO³<script>alert('XSS')</script>³Este mensaje será ignorado...³IP`

El servidor C# parseará:
- UID: `UID_VALIDO_DEL_USUARIO`
- Mensaje (Param 1): `<script>alert('XSS')</script>` (SIN SANITIZAR)

## 🛡️ Solución Recomendada
1.  **Sanitizar TODOS los campos de entrada** en `SocketIOController.js`, no solo `paramater`.
2.  **Validar el formato del `token_uid`**. El UID legítimo es una cadena Base64 alfanumérica (con `+`, `/`, `=`). No debe contener caracteres como `³` o `²`.

```javascript
// Ejemplo de corrección en validateData
if (data.token_uid && typeof data.token_uid === 'string') {
    // Rechazar si contiene delimitadores del protocolo
    if (data.token_uid.includes('³') || data.token_uid.includes('²')) {
        return false;
    }
    // Opcional: Validar formato Base64 estricto
}
```

## 🔄 Estado de Verificación
- [x] Probado contra el código actual (verificado con script de reproducción `reproduce_xss.js`)
- [ ] Confirmado como vulnerable (Bypass logrado)
- [ ] Corregido
