<script type="text/javascript">
    (function() {
        // Configure Ruffle
        window.RufflePlayer = window.RufflePlayer || {};
        window.RufflePlayer.config = {
            "autoplay": "on",
            "unmuteOverlay": "hidden",
            "backgroundColor": "#0099cc",
            "letterbox": "off",
            "warnOnUnsupportedContent": false,
            "logLevel": "warn",
            "allowScriptAccess": true,
            "menu": false
        };

        // FlashVars - parámetros para el SWF
        var flashvars = {
            sw1: "",
            sw2: "",
            sw3: "",
            sw4: "",
            u: "{{ auth()->user()->name }}",
            p: "{{ auth()->user()->password }}",
            sw5: "0",
            lang: "e",
            locale: "es_ES",
            ver: "4828183825",
        };

        // Construir string de FlashVars
        var flashVarsString = Object.keys(flashvars)
            .map(key => encodeURIComponent(key) + '=' + encodeURIComponent(flashvars[key]))
            .join('&');

        // Crear el objeto embed para Ruffle
        var container = document.getElementById('flash_boombang');

        // Crear elemento object para el SWF
        var objectElement = document.createElement('object');
        objectElement.id = 'ruffle_player';
        objectElement.style.width = '1013px';
        objectElement.style.height = '658px';
        objectElement.type = 'application/x-shockwave-flash';
        objectElement.data = "{{ asset('static/flash_esp/BoomBangLoader.swf') }}";

        // Agregar parámetros
        var paramFlashVars = document.createElement('param');
        paramFlashVars.name = 'flashvars';
        paramFlashVars.value = flashVarsString;
        objectElement.appendChild(paramFlashVars);

        var paramQuality = document.createElement('param');
        paramQuality.name = 'quality';
        paramQuality.value = 'high';
        objectElement.appendChild(paramQuality);

        var paramBgColor = document.createElement('param');
        paramBgColor.name = 'bgcolor';
        paramBgColor.value = '#0099cc';
        objectElement.appendChild(paramBgColor);

        var paramAllowScriptAccess = document.createElement('param');
        paramAllowScriptAccess.name = 'allowScriptAccess';
        paramAllowScriptAccess.value = 'always';
        objectElement.appendChild(paramAllowScriptAccess);

        var paramAllowFullScreen = document.createElement('param');
        paramAllowFullScreen.name = 'allowFullScreen';
        paramAllowFullScreen.value = 'true';
        objectElement.appendChild(paramAllowFullScreen);

        // Insertar en el contenedor
        if (container) {
            container.appendChild(objectElement);
            console.log('Ruffle: Loading BoomBang SWF with FlashVars');
        }

        window.user_id = "{{ auth()->user()->id }}";

        // Debug info
        console.log('Ruffle Configuration:', window.RufflePlayer.config);
        console.log('FlashVars:', flashvars);
    })();
</script>
