# MAX-VIEW Microscope → MIDI

Convierte el vídeo WiFi del microscopio **MAX-VIEW / JoyHonest** en MIDI de 3 bandas (graves / medios / agudos) para **Max** o **Max for Live** (Ableton). Habla el protocolo UDP de la app Android; no hace falta bridge HTTP ni VLC.

## Requisitos

- Max 8+ o Ableton Live con **Max for Live** (incluye Node for Max)
- Microscopio en modo WiFi (`MAXVIEW-XXXX`)
- PC en esa red (IP típica `192.168.29.2`, cámara `192.168.29.1`)
- Node.js/npm en PATH (solo la 1ª vez, para instalar `sharp`)

## Arranque rápido (Max)

1. Clona el repo y, opcionalmente, `npm install` en esta carpeta.
2. Abre `DIAG_node_visible.maxpat` (presentación + audio de prueba) o `MaxView Camera MIDI.maxpat`.
3. Conecta el WiFi del microscopio.
4. El `node.script` arranca solo (`@autostart 1`). Activa el **ezdac~** si no oyes audio.
5. **Solo suena si hay variación de píxeles** (movimiento bajo el objetivo). Imagen fija = silencio.

## Ableton (Max for Live)

1. Abre `MaxView Camera MIDI.maxpat` en Max.
2. **File → Save As Max for Live Device…** → MIDI Effect (o Instrument).
3. Guárdalo en tu User Library de Ableton.
4. Enruta la salida MIDI a un instrumento (Analog, Operator, VST…).

## Controles

| Control | Función |
|---------|---------|
| Start / Stop | Stream UDP (también auto-start al cargar) |
| Freeze | Reinicia el frame de referencia |
| Sensitivity | Ganancia del movimiento |
| Gate | Umbral mínimo de movimiento |
| Velocity / Hold | Dinámica y duración de nota |
| Scale | pentatonic / major / minor / chromatic |
| Camera IP / Bind IP | Por defecto `192.168.29.1` / `192.168.29.2` |

Mensajes útiles al `node.script`: `noise <1–64>` (umbral anti-ruido JPEG, default 12).

## Protocolo

1. Comandos JHCMD UDP `:20000` — init `10 00`, `20 00`, keep-alive `D0 01`
2. JPEG fragmentado UDP `:10900` (8 bytes de cabecera por paquete)
3. Frame en 3 bandas horizontales → movimiento → notas MIDI

## Archivos

| Archivo | Rol |
|---------|-----|
| `maxview_microscope.js` | Node for Max: protocolo, motion, MIDI |
| `DIAG_node_visible.maxpat` | Patch de uso con UI en presentación + synth |
| `MaxView Camera MIDI.maxpat` | Device orientado a M4L |
| `hello_maxview.js` | Script mínimo de diagnóstico |
| `package.json` | Dependencia `sharp` |

## Notas

- Un solo cliente en el AP del microscopio a la vez.
- Cierra cualquier bridge/VLC que use el puerto **10900**.
- USB UVC no forma parte de este device (el stream útil es el WiFi).
- La 1ª carga puede ejecutar `npm install` automáticamente si falta `sharp`.



## Preview de vídeo

Al abrir el patch se lanza **MaxView_Preview.maxpat** (otra ventana):

- Vídeo del microscopio en `jit.window` flotante
- **Efecto MIDI**: bandas de color (cian/verde/naranja) al disparar notas — se puede apagar con el toggle
- **Pantalla completa** (toggle; ESC para salir)
- El frame se escribe en `preview.jpg` (~15 fps)



## Ventana de vídeo (aparte)

`MaxView_Preview.maxpat` es una **ventana independiente** del panel de controles:

- **Fullscreen** / **Ventana** / **Maximizar** / **Minimizar**
- **Monitor 1 / 2 / 3** mueve la ventana (orígenes 0 / 1920 / 3840; ajusta Offset X Y si tu layout es otro)
- **FX** — efecto discreto de 3 bandas (borde + líneas)
- Se abre sola al cargar el patch de controles, o con el botón **Abrir Video**

## Licencia

MIT
