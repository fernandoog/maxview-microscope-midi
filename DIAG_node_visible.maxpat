{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 8,
      "minor": 6,
      "revision": 0,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      60,
      60,
      780,
      520
    ],
    "bglocked": 0,
    "openinpresentation": 1,
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "fontsize": 18.0,
          "fontname": "Arial Bold",
          "text": "MAX-VIEW Microscope MIDI",
          "patching_rect": [
            20.0,
            8.0,
            900.0,
            26.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            12.0,
            700.0,
            26.0
          ]
        }
      },
      {
        "box": {
          "id": "hint",
          "maxclass": "comment",
          "fontsize": 12.0,
          "text": "Auto-start + Preview. FX MIDI en ventana video. ezdac~ = audio.",
          "patching_rect": [
            20.0,
            36.0,
            900.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            42.0,
            700.0,
            20.0
          ]
        }
      },
      {
        "box": {
          "id": "node",
          "maxclass": "newobj",
          "fontsize": 13.0,
          "text": "node.script maxview_microscope.js @autostart 1",
          "textfile": {
            "filename": "maxview_microscope.js",
            "flags": 0,
            "embed": 0,
            "autowatch": 1
          },
          "saved_object_attributes": {
            "autostart": 1,
            "defer": 0,
            "node": "",
            "npm": "",
            "watch": 1
          },
          "patching_rect": [
            20.0,
            70.0,
            420.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            440.0,
            420.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "btn_start",
          "maxclass": "textbutton",
          "text": "Start",
          "texton": "Start",
          "patching_rect": [
            20.0,
            110.0,
            80.0,
            32.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            80.0,
            90.0,
            36.0
          ]
        }
      },
      {
        "box": {
          "id": "btn_stop",
          "maxclass": "textbutton",
          "text": "Stop",
          "texton": "Stop",
          "patching_rect": [
            110.0,
            110.0,
            80.0,
            32.0
          ],
          "presentation": 1,
          "presentation_rect": [
            120.0,
            80.0,
            90.0,
            36.0
          ]
        }
      },
      {
        "box": {
          "id": "sel_start",
          "maxclass": "newobj",
          "text": "sel 1",
          "patching_rect": [
            20.0,
            150.0,
            40.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "sel_stop",
          "maxclass": "newobj",
          "text": "sel 1",
          "patching_rect": [
            110.0,
            150.0,
            40.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "msg_start",
          "maxclass": "message",
          "text": "start",
          "patching_rect": [
            20.0,
            180.0,
            50.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "msg_stop",
          "maxclass": "message",
          "text": "stop",
          "patching_rect": [
            110.0,
            180.0,
            50.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "adc_on",
          "maxclass": "message",
          "text": "start",
          "patching_rect": [
            220.0,
            110.0,
            160.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "ezdac",
          "maxclass": "ezdac~",
          "patching_rect": [
            400.0,
            110.0,
            45.0,
            45.0
          ],
          "presentation": 1,
          "presentation_rect": [
            240.0,
            78.0,
            48.0,
            48.0
          ]
        }
      },
      {
        "box": {
          "id": "dac_label",
          "maxclass": "comment",
          "text": "Audio ON/OFF",
          "patching_rect": [
            460.0,
            120.0,
            220.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            300.0,
            90.0,
            260.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "route",
          "maxclass": "newobj",
          "text": "route midi status levels ready frame fx",
          "patching_rect": [
            20.0,
            220.0,
            220.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "unpack_midi",
          "maxclass": "newobj",
          "text": "unpack",
          "patching_rect": [
            20.0,
            260.0,
            55.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "makenote",
          "maxclass": "newobj",
          "text": "makenote 100 250",
          "patching_rect": [
            20.0,
            290.0,
            120.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "noteout",
          "maxclass": "newobj",
          "text": "noteout",
          "patching_rect": [
            20.0,
            320.0,
            55.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "mtof",
          "maxclass": "newobj",
          "text": "mtof",
          "patching_rect": [
            160.0,
            290.0,
            40.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "cycle",
          "maxclass": "newobj",
          "text": "cycle~",
          "patching_rect": [
            160.0,
            320.0,
            50.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "velo_scale",
          "maxclass": "newobj",
          "text": "* 0.004",
          "patching_rect": [
            240.0,
            290.0,
            60.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "line",
          "maxclass": "newobj",
          "text": "line~",
          "patching_rect": [
            240.0,
            320.0,
            45.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "pack_env",
          "maxclass": "newobj",
          "text": "pack 0 10",
          "patching_rect": [
            240.0,
            260.0,
            70.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "mult",
          "maxclass": "newobj",
          "text": "*~",
          "patching_rect": [
            160.0,
            360.0,
            35.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "gain",
          "maxclass": "newobj",
          "text": "*~ 0.35",
          "patching_rect": [
            160.0,
            390.0,
            60.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "print_midi",
          "maxclass": "newobj",
          "text": "print MIDI",
          "patching_rect": [
            320.0,
            220.0,
            80.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "prepend_set",
          "maxclass": "newobj",
          "text": "prepend set",
          "patching_rect": [
            280.0,
            250.0,
            90.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "status_ui",
          "maxclass": "textedit",
          "fontsize": 14.0,
          "text": "(esperando\u2026)",
          "bgcolor": [
            1.0,
            0.92,
            0.5,
            1.0
          ],
          "patching_rect": [
            20.0,
            440.0,
            700.0,
            90.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            150.0,
            700.0,
            100.0
          ]
        }
      },
      {
        "box": {
          "id": "note_ui",
          "maxclass": "textedit",
          "fontsize": 20.0,
          "fontname": "Arial Bold",
          "text": "MIDI: \u2014",
          "bgcolor": [
            0.7,
            1.0,
            0.75,
            1.0
          ],
          "patching_rect": [
            20.0,
            540.0,
            700.0,
            40.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            270.0,
            700.0,
            56.0
          ]
        }
      },
      {
        "box": {
          "id": "note_fmt",
          "maxclass": "newobj",
          "text": "sprintf MIDI pitch %d vel %d",
          "patching_rect": [
            400.0,
            260.0,
            180.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "note_set",
          "maxclass": "newobj",
          "text": "prepend set",
          "patching_rect": [
            400.0,
            290.0,
            90.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "lb",
          "maxclass": "newobj",
          "text": "loadbang",
          "patching_rect": [
            520.0,
            70.0,
            70.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "del",
          "maxclass": "newobj",
          "text": "delay 1500",
          "patching_rect": [
            520.0,
            100.0,
            80.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "msg_ss",
          "maxclass": "message",
          "text": "script start",
          "patching_rect": [
            520.0,
            130.0,
            90.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "lvl_b",
          "maxclass": "live.meter~",
          "patching_rect": [
            740.0,
            160.0,
            20.0,
            120.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "pres_help",
          "maxclass": "comment",
          "fontsize": 12.0,
          "text": "STATUS = fps/notas | verde = ultima nota MIDI",
          "presentation": 1,
          "presentation_rect": [
            20.0,
            340.0,
            700.0,
            20.0
          ],
          "patching_rect": [
            20.0,
            600.0,
            700.0,
            20.0
          ]
        }
      },
      {
        "box": {
          "id": "s_frame",
          "maxclass": "newobj",
          "text": "s maxview_frame",
          "patching_rect": [
            520.0,
            220.0,
            110.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "r_fxvis",
          "maxclass": "newobj",
          "text": "r maxview_fxvis",
          "patching_rect": [
            520.0,
            250.0,
            110.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "msg_fxvis",
          "maxclass": "message",
          "text": "fxvis $1",
          "patching_rect": [
            640.0,
            250.0,
            70.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "btn_preview",
          "maxclass": "textbutton",
          "text": "Preview",
          "texton": "Preview",
          "patching_rect": [
            330.0,
            110.0,
            90.0,
            32.0
          ],
          "presentation": 1,
          "presentation_rect": [
            330.0,
            110.0,
            90.0,
            32.0
          ]
        }
      },
      {
        "box": {
          "id": "sel_prev",
          "maxclass": "newobj",
          "text": "sel 1",
          "patching_rect": [
            330.0,
            150.0,
            40.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "open_prev",
          "maxclass": "message",
          "text": "; max openfile \"D:/Dv/Repo/Android/MaxView/MaxViewInstrument/MaxView Preview.maxpat\"",
          "patching_rect": [
            330.0,
            180.0,
            280.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "max_obj",
          "maxclass": "newobj",
          "text": "max",
          "patching_rect": [
            330.0,
            210.0,
            40.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "auto_open_del",
          "maxclass": "newobj",
          "text": "delay 3500",
          "patching_rect": [
            640.0,
            100.0,
            80.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "auto_open_msg",
          "maxclass": "message",
          "text": "; max openfile \"D:/Dv/Repo/Android/MaxView/MaxViewInstrument/MaxView Preview.maxpat\"",
          "patching_rect": [
            640.0,
            130.0,
            280.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "embed_metro",
          "maxclass": "newobj",
          "text": "metro 70",
          "patching_rect": [
            20.0,
            620.0,
            70.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "embed_tgl",
          "maxclass": "toggle",
          "patching_rect": [
            100.0,
            620.0,
            24.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            380.0,
            28.0,
            28.0
          ]
        }
      },
      {
        "box": {
          "id": "embed_vid_label",
          "maxclass": "comment",
          "text": "Video window",
          "patching_rect": [
            130.0,
            622.0,
            100.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            54.0,
            384.0,
            100.0,
            20.0
          ]
        }
      },
      {
        "box": {
          "id": "embed_read",
          "maxclass": "message",
          "text": "read D:/Dv/Repo/Android/MaxView/MaxViewInstrument/preview.jpg",
          "patching_rect": [
            20.0,
            660.0,
            320.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "embed_movie",
          "maxclass": "newobj",
          "text": "jit.movie @adapt 1 @unique 1 @autostart 0",
          "patching_rect": [
            20.0,
            700.0,
            240.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "embed_win",
          "maxclass": "newobj",
          "text": "jit.window maxview @size 1280 720 @floating 1 @fsmenubar 1",
          "patching_rect": [
            20.0,
            740.0,
            400.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "embed_fs_tgl",
          "maxclass": "toggle",
          "patching_rect": [
            240.0,
            620.0,
            24.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            170.0,
            380.0,
            28.0,
            28.0
          ]
        }
      },
      {
        "box": {
          "id": "embed_fs_label",
          "maxclass": "comment",
          "text": "Fullscreen",
          "patching_rect": [
            270.0,
            622.0,
            80.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            204.0,
            384.0,
            80.0,
            20.0
          ]
        }
      },
      {
        "box": {
          "id": "embed_fs_msg",
          "maxclass": "message",
          "text": "fullscreen $1",
          "patching_rect": [
            240.0,
            660.0,
            100.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "embed_fx_tgl",
          "maxclass": "toggle",
          "patching_rect": [
            380.0,
            620.0,
            24.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            300.0,
            380.0,
            28.0,
            28.0
          ]
        }
      },
      {
        "box": {
          "id": "embed_fx_label",
          "maxclass": "comment",
          "text": "FX MIDI",
          "patching_rect": [
            410.0,
            622.0,
            60.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            334.0,
            384.0,
            60.0,
            20.0
          ]
        }
      },
      {
        "box": {
          "id": "embed_fx_msg",
          "maxclass": "message",
          "text": "fxvis $1",
          "patching_rect": [
            380.0,
            660.0,
            70.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "embed_lb",
          "maxclass": "newobj",
          "text": "loadbang",
          "patching_rect": [
            500.0,
            620.0,
            70.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "embed_one",
          "maxclass": "message",
          "text": "1",
          "patching_rect": [
            500.0,
            650.0,
            30.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "embed_sprintf",
          "maxclass": "newobj",
          "text": "sprintf read %s",
          "patching_rect": [
            280.0,
            700.0,
            110.0,
            22.0
          ],
          "presentation": 0
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "btn_start",
            0
          ],
          "destination": [
            "sel_start",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "btn_stop",
            0
          ],
          "destination": [
            "sel_stop",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sel_start",
            0
          ],
          "destination": [
            "msg_start",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sel_stop",
            0
          ],
          "destination": [
            "msg_stop",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msg_start",
            0
          ],
          "destination": [
            "node",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msg_stop",
            0
          ],
          "destination": [
            "node",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb",
            0
          ],
          "destination": [
            "del",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "del",
            0
          ],
          "destination": [
            "msg_ss",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msg_ss",
            0
          ],
          "destination": [
            "node",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "node",
            0
          ],
          "destination": [
            "route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            0
          ],
          "destination": [
            "unpack_midi",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            0
          ],
          "destination": [
            "print_midi",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            0
          ],
          "destination": [
            "note_fmt",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            1
          ],
          "destination": [
            "prepend_set",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "prepend_set",
            0
          ],
          "destination": [
            "status_ui",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "note_fmt",
            0
          ],
          "destination": [
            "note_set",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "note_set",
            0
          ],
          "destination": [
            "note_ui",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack_midi",
            0
          ],
          "destination": [
            "makenote",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack_midi",
            1
          ],
          "destination": [
            "makenote",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "makenote",
            0
          ],
          "destination": [
            "noteout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "makenote",
            1
          ],
          "destination": [
            "noteout",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack_midi",
            0
          ],
          "destination": [
            "mtof",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack_midi",
            1
          ],
          "destination": [
            "velo_scale",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "velo_scale",
            0
          ],
          "destination": [
            "pack_env",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pack_env",
            0
          ],
          "destination": [
            "line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mtof",
            0
          ],
          "destination": [
            "cycle",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cycle",
            0
          ],
          "destination": [
            "mult",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "line",
            0
          ],
          "destination": [
            "mult",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mult",
            0
          ],
          "destination": [
            "gain",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gain",
            0
          ],
          "destination": [
            "ezdac",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gain",
            0
          ],
          "destination": [
            "ezdac",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            4
          ],
          "destination": [
            "s_frame",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "r_fxvis",
            0
          ],
          "destination": [
            "msg_fxvis",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msg_fxvis",
            0
          ],
          "destination": [
            "node",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "btn_preview",
            0
          ],
          "destination": [
            "sel_prev",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sel_prev",
            0
          ],
          "destination": [
            "open_prev",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "open_prev",
            0
          ],
          "destination": [
            "max_obj",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb",
            0
          ],
          "destination": [
            "auto_open_del",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "auto_open_del",
            0
          ],
          "destination": [
            "auto_open_msg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "auto_open_msg",
            0
          ],
          "destination": [
            "max_obj",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "embed_tgl",
            0
          ],
          "destination": [
            "embed_metro",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "embed_metro",
            0
          ],
          "destination": [
            "embed_read",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "embed_read",
            0
          ],
          "destination": [
            "embed_movie",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "embed_movie",
            0
          ],
          "destination": [
            "embed_win",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "embed_fs_tgl",
            0
          ],
          "destination": [
            "embed_fs_msg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "embed_fs_msg",
            0
          ],
          "destination": [
            "embed_win",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "embed_fx_tgl",
            0
          ],
          "destination": [
            "embed_fx_msg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "embed_fx_msg",
            0
          ],
          "destination": [
            "node",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "embed_lb",
            0
          ],
          "destination": [
            "embed_one",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "embed_one",
            0
          ],
          "destination": [
            "embed_tgl",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "embed_one",
            0
          ],
          "destination": [
            "embed_fx_tgl",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            4
          ],
          "destination": [
            "embed_sprintf",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "embed_sprintf",
            0
          ],
          "destination": [
            "embed_movie",
            0
          ]
        }
      }
    ]
  }
}