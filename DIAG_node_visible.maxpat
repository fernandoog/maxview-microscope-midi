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
      80.0,
      80.0,
      390.0,
      360.0
    ],
    "openinpresentation": 1,
    "toolbarvisible": 0,
    "bgcolor": [
      0.16,
      0.16,
      0.18,
      1.0
    ],
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "text": "MAX-VIEW",
          "fontsize": 22.0,
          "fontname": "Arial Bold",
          "textcolor": [
            0.95,
            0.95,
            0.95,
            1.0
          ],
          "patching_rect": [
            24.0,
            16.0,
            200.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            18.0,
            200.0,
            28.0
          ]
        }
      },
      {
        "box": {
          "id": "sub",
          "maxclass": "comment",
          "text": "MIDI \u2192 altavoces (Wavetable) \u00b7 arranque auto",
          "fontsize": 11.0,
          "textcolor": [
            0.7,
            0.7,
            0.72,
            1.0
          ],
          "patching_rect": [
            24.0,
            44.0,
            280.0,
            18.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            46.0,
            280.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "ezdac",
          "maxclass": "ezdac~",
          "patching_rect": [
            24.0,
            80.0,
            48.0,
            48.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            78.0,
            48.0,
            48.0
          ]
        }
      },
      {
        "box": {
          "id": "dac_lab",
          "maxclass": "comment",
          "text": "AUDIO",
          "fontsize": 14.0,
          "fontname": "Arial Bold",
          "textcolor": [
            0.95,
            0.95,
            0.95,
            1.0
          ],
          "patching_rect": [
            84.0,
            92.0,
            70.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            84.0,
            92.0,
            70.0,
            20.0
          ]
        }
      },
      {
        "box": {
          "id": "status_ui",
          "maxclass": "textedit",
          "text": "arrancando\u2026",
          "fontsize": 12.0,
          "bgcolor": [
            0.12,
            0.12,
            0.14,
            1.0
          ],
          "textcolor": [
            0.95,
            0.95,
            0.92,
            1.0
          ],
          "bordercolor": [
            0.4,
            0.4,
            0.42,
            1.0
          ],
          "patching_rect": [
            24.0,
            150.0,
            320.0,
            70.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            150.0,
            320.0,
            70.0
          ]
        }
      },
      {
        "box": {
          "id": "note_ui",
          "maxclass": "textedit",
          "text": "MIDI \u2014",
          "fontsize": 13.0,
          "bgcolor": [
            0.12,
            0.12,
            0.14,
            1.0
          ],
          "textcolor": [
            0.7,
            1.0,
            0.75,
            1.0
          ],
          "bordercolor": [
            0.4,
            0.4,
            0.42,
            1.0
          ],
          "patching_rect": [
            24.0,
            232.0,
            320.0,
            36.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            232.0,
            320.0,
            36.0
          ]
        }
      },
      {
        "box": {
          "id": "foot",
          "maxclass": "comment",
          "text": "Sonido via MIDI Wavetable + ezdac. Si silencio: Options > Audio Status > Driver = Realtek/MME",
          "fontsize": 10.0,
          "textcolor": [
            0.55,
            0.55,
            0.58,
            1.0
          ],
          "patching_rect": [
            24.0,
            280.0,
            320.0,
            36.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            280.0,
            320.0,
            36.0
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
            24.0,
            340.0,
            70.0,
            28.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "btn_stop",
          "maxclass": "textbutton",
          "text": "Stop",
          "texton": "Stop",
          "patching_rect": [
            100.0,
            340.0,
            70.0,
            28.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "btn_video",
          "maxclass": "textbutton",
          "text": "Video",
          "texton": "Video",
          "patching_rect": [
            176.0,
            340.0,
            70.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            200.0,
            84.0,
            70.0,
            36.0
          ]
        }
      },
      {
        "box": {
          "id": "node",
          "maxclass": "newobj",
          "text": "node.script maxview_microscope.js @autostart 1 @defer 1",
          "textfile": {
            "filename": "maxview_microscope.js",
            "flags": 0,
            "embed": 0,
            "autowatch": 1
          },
          "saved_object_attributes": {
            "autostart": 1,
            "defer": 1,
            "node": "",
            "npm": "",
            "watch": 1
          },
          "patching_rect": [
            24.0,
            400.0,
            400.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "bootjs",
          "maxclass": "newobj",
          "text": "js maxview_boot.js",
          "patching_rect": [
            24.0,
            430.0,
            140.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "route",
          "maxclass": "newobj",
          "text": "route midi status levels ready frame fx noteui",
          "patching_rect": [
            24.0,
            460.0,
            300.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "s_frame",
          "maxclass": "newobj",
          "text": "s maxview_frame",
          "patching_rect": [
            340.0,
            460.0,
            110.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "r_fx",
          "maxclass": "newobj",
          "text": "r maxview_fxvis",
          "patching_rect": [
            460.0,
            460.0,
            110.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_fx",
          "maxclass": "message",
          "text": "fxvis $1",
          "patching_rect": [
            460.0,
            490.0,
            70.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_bind",
          "maxclass": "message",
          "text": "bind 192.168.29.2",
          "patching_rect": [
            24.0,
            520.0,
            130.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_cam",
          "maxclass": "message",
          "text": "cam 192.168.29.1",
          "patching_rect": [
            160.0,
            520.0,
            130.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_start",
          "maxclass": "message",
          "text": "start",
          "patching_rect": [
            300.0,
            520.0,
            50.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_stop",
          "maxclass": "message",
          "text": "stop",
          "patching_rect": [
            360.0,
            520.0,
            50.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "unp",
          "maxclass": "newobj",
          "text": "unpack",
          "patching_rect": [
            24.0,
            560.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "mn",
          "maxclass": "newobj",
          "text": "makenote 120 500",
          "patching_rect": [
            24.0,
            590.0,
            120.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "mtof",
          "maxclass": "newobj",
          "text": "mtof",
          "patching_rect": [
            160.0,
            590.0,
            40.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "cycle",
          "maxclass": "newobj",
          "text": "cycle~",
          "patching_rect": [
            160.0,
            620.0,
            50.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "velo",
          "maxclass": "newobj",
          "text": "* 0.01",
          "patching_rect": [
            220.0,
            590.0,
            60.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "packe",
          "maxclass": "newobj",
          "text": "pack 0 10",
          "patching_rect": [
            220.0,
            620.0,
            70.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "line",
          "maxclass": "newobj",
          "text": "line~",
          "patching_rect": [
            220.0,
            650.0,
            45.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "mul",
          "maxclass": "newobj",
          "text": "*~",
          "patching_rect": [
            160.0,
            680.0,
            35.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "gain",
          "maxclass": "newobj",
          "text": "*~ 0.85",
          "patching_rect": [
            160.0,
            710.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "dac",
          "maxclass": "newobj",
          "text": "dac~",
          "patching_rect": [
            160.0,
            740.0,
            40.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "click",
          "maxclass": "newobj",
          "text": "click~",
          "patching_rect": [
            280.0,
            680.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "clickg",
          "maxclass": "newobj",
          "text": "*~ 0.25",
          "patching_rect": [
            280.0,
            710.0,
            60.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "lb",
          "maxclass": "newobj",
          "text": "loadbang",
          "patching_rect": [
            500.0,
            400.0,
            70.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "d1",
          "maxclass": "newobj",
          "text": "delay 400",
          "patching_rect": [
            500.0,
            430.0,
            70.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "d2",
          "maxclass": "newobj",
          "text": "delay 1500",
          "patching_rect": [
            500.0,
            460.0,
            80.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "d3",
          "maxclass": "newobj",
          "text": "delay 2500",
          "patching_rect": [
            500.0,
            490.0,
            80.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "d4",
          "maxclass": "newobj",
          "text": "delay 3500",
          "patching_rect": [
            500.0,
            520.0,
            80.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "one",
          "maxclass": "message",
          "text": "1",
          "patching_rect": [
            600.0,
            430.0,
            30.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_ss",
          "maxclass": "message",
          "text": "script start",
          "patching_rect": [
            600.0,
            460.0,
            90.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_bangboot",
          "maxclass": "message",
          "text": "bang",
          "patching_rect": [
            600.0,
            490.0,
            45.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_openvid",
          "maxclass": "message",
          "text": "openvideo",
          "patching_rect": [
            600.0,
            520.0,
            80.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "sel_v",
          "maxclass": "newobj",
          "text": "sel 1",
          "patching_rect": [
            260.0,
            340.0,
            40.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "sel_s",
          "maxclass": "newobj",
          "text": "sel 1",
          "patching_rect": [
            24.0,
            370.0,
            40.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "sel_t",
          "maxclass": "newobj",
          "text": "sel 1",
          "patching_rect": [
            100.0,
            370.0,
            40.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "pc",
          "maxclass": "newobj",
          "text": "pcontrol",
          "patching_rect": [
            700.0,
            490.0,
            70.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_pc",
          "maxclass": "message",
          "text": "open D:/Dv/Repo/Android/MaxView/MaxViewInstrument/MaxView_Preview.maxpat",
          "patching_rect": [
            700.0,
            520.0,
            380.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "noteout",
          "maxclass": "newobj",
          "text": "noteout",
          "patching_rect": [
            24.0,
            770.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_port1",
          "maxclass": "message",
          "text": "port Microsoft GS Wavetable Synth",
          "patching_rect": [
            90.0,
            770.0,
            240.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_port2",
          "maxclass": "message",
          "text": "port Sintetizador GS Wavetable de Microsoft",
          "patching_rect": [
            90.0,
            800.0,
            280.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "midiinfo",
          "maxclass": "newobj",
          "text": "midiinfo",
          "patching_rect": [
            400.0,
            770.0,
            70.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "print_midi",
          "maxclass": "newobj",
          "text": "print midiports",
          "patching_rect": [
            480.0,
            770.0,
            100.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_dsp",
          "maxclass": "message",
          "text": "; dsp set 1",
          "patching_rect": [
            400.0,
            800.0,
            90.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_as",
          "maxclass": "message",
          "text": "; max showaudiostatus",
          "patching_rect": [
            500.0,
            800.0,
            150.0,
            22.0
          ]
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "lb",
            0
          ],
          "destination": [
            "d1",
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
            "d2",
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
            "d3",
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
            "d4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d1",
            0
          ],
          "destination": [
            "one",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "one",
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
            "d1",
            0
          ],
          "destination": [
            "msg_bangboot",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msg_bangboot",
            0
          ],
          "destination": [
            "bootjs",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d2",
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
            "d2",
            0
          ],
          "destination": [
            "msg_bind",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d2",
            0
          ],
          "destination": [
            "msg_cam",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msg_bind",
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
            "msg_cam",
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
            "d3",
            0
          ],
          "destination": [
            "msg_openvid",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msg_openvid",
            0
          ],
          "destination": [
            "bootjs",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d3",
            0
          ],
          "destination": [
            "msg_pc",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msg_pc",
            0
          ],
          "destination": [
            "pc",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d3",
            0
          ],
          "destination": [
            "one",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d4",
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
            "d4",
            0
          ],
          "destination": [
            "click",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d4",
            0
          ],
          "destination": [
            "msg_openvid",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "bootjs",
            1
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
            "btn_video",
            0
          ],
          "destination": [
            "sel_v",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sel_v",
            0
          ],
          "destination": [
            "msg_openvid",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sel_v",
            0
          ],
          "destination": [
            "msg_pc",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "btn_start",
            0
          ],
          "destination": [
            "sel_s",
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
            "sel_t",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sel_s",
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
            "sel_t",
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
            "unp",
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
            "status_ui",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            3
          ],
          "destination": [
            "msg_bind",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            3
          ],
          "destination": [
            "msg_cam",
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
            "s_frame",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            6
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
            "r_fx",
            0
          ],
          "destination": [
            "msg_fx",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msg_fx",
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
            "unp",
            0
          ],
          "destination": [
            "mn",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unp",
            1
          ],
          "destination": [
            "mn",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mn",
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
            "mn",
            1
          ],
          "destination": [
            "velo",
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
            "velo",
            0
          ],
          "destination": [
            "packe",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "packe",
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
            "cycle",
            0
          ],
          "destination": [
            "mul",
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
            "mul",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mul",
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
            "gain",
            0
          ],
          "destination": [
            "dac",
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
            "dac",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "click",
            0
          ],
          "destination": [
            "clickg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "clickg",
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
            "clickg",
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
            "clickg",
            0
          ],
          "destination": [
            "dac",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "clickg",
            0
          ],
          "destination": [
            "dac",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mn",
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
            "mn",
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
            "bootjs",
            2
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
            "d1",
            0
          ],
          "destination": [
            "msg_port1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d1",
            0
          ],
          "destination": [
            "msg_port2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msg_port1",
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
            "msg_port2",
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
            "d1",
            0
          ],
          "destination": [
            "msg_dsp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d1",
            0
          ],
          "destination": [
            "msg_as",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d1",
            0
          ],
          "destination": [
            "midiinfo",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "midiinfo",
            0
          ],
          "destination": [
            "print_midi",
            0
          ]
        }
      }
    ]
  }
}