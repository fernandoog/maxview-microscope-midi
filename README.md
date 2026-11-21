# MAX-VIEW Microscope → MIDI

**Versión 1.00** (definitiva)

Vídeo WiFi del microscopio **MAX-VIEW / JoyHonest** → MIDI de 3 bandas (graves / medios / agudos) en **Max**. Protocolo UDP nativo (sin VLC ni bridge HTTP).

## Arranque

1. Conecta el WiFi del microscopio (`MAXVIEW-XXXX`). PC típico: `192.168.29.2`, cámara: `192.168.29.1`.
2. Ejecuta **`ABRIR_MaxView.bat`** o abre **`MaxView.maxpat`**.
3. Panel de control (dark): **start / stop / Video**, estado y MIDI.
4. **Video** abre `MaxView_Preview.maxpat` — **Full / Win / Mon1 / Mon2** (escala al monitor).
5. Solo suena con **movimiento** bajo el objetivo (imagen fija = silencio).
6. Audio del instrumento: **WinMIDI → Microsoft GS Wavetable** (altavoces de Windows).

Primera vez: Node/npm en PATH para instalar `sharp` automáticamente.

## Archivos que importan

| Archivo | Rol |
|---------|-----|
| `MaxView.maxpat` | Panel de control (presentación) |
| `MaxView_Preview.maxpat` | Ventana de vídeo |
| `maxview_microscope.js` | Node: stream, motion, MIDI, WinMIDI |
| `maxview_boot.js` | Auto audio + abrir vídeo |
| `maxview_window.js` | Full / Win / Mon + escalado fpic |
| `win_midi_daemon.ps1` | Salida MIDI a altavoces Windows |
| `ABRIR_MaxView.bat` | Lanza Max con el patch |

## Mensajes al `node.script`

`start` · `stop` · `freeze` · `cam <ip>` · `bind <ip>` · `sensitivity` · `gate` · `noise` · `scale` · `fxvis`

## Notas

- Un solo cliente en el AP del microscopio.
- Libera el puerto **10900** (cierra VLC/bridges).
- Si el panel queda en blanco: cierra Max por completo y vuelve a abrir `MaxView.maxpat`.
