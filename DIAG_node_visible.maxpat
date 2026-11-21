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
      40,
      40,
      780,
      620
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
            500.0,
            26.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            12.0,
            500.0,
            26.0
          ]
        }
      },
      {
        "box": {
          "id": "hint",
          "maxclass": "comment",
          "fontsize": 12.0,
          "text": "Audio=ezdac~ | Preview abre video (fpic) | FX/Fullscreen en ventana Preview",
          "patching_rect": [
            20.0,
            36.0,
            700.0,
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
            430.0,
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
            80.0,
            32.0
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
            110.0,
            80.0,
            80.0,
            32.0
          ]
        }
      },
      {
        "box": {
          "id": "btn_prev",
          "maxclass": "textbutton",
          "text": "Preview",
          "texton": "Preview",
          "patching_rect": [
            200.0,
            110.0,
            90.0,
            32.0
          ],
          "presentation": 1,
          "presentation_rect": [
            200.0,
            80.0,
            90.0,
            32.0
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
          ]
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
          ]
        }
      },
      {
        "box": {
          "id": "sel_prev",
          "maxclass": "newobj",
          "text": "sel 1",
          "patching_rect": [
            200.0,
            150.0,
            40.0,
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
            20.0,
            180.0,
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
            110.0,
            180.0,
            50.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_open",
          "maxclass": "message",
          "text": "; max openfile D:/Dv/Repo/Android/MaxView/MaxViewInstrument/MaxView_Preview.maxpat",
          "patching_rect": [
            200.0,
            180.0,
            400.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "ezdac",
          "maxclass": "ezdac~",
          "patching_rect": [
            320.0,
            110.0,
            48.0,
            48.0
          ],
          "presentation": 1,
          "presentation_rect": [
            320.0,
            72.0,
            48.0,
            48.0
          ]
        }
      },
      {
        "box": {
          "id": "dac_lab",
          "maxclass": "comment",
          "text": "Audio",
          "patching_rect": [
            380.0,
            120.0,
            50.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            380.0,
            88.0,
            50.0,
            20.0
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
            260.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "unpack",
          "maxclass": "newobj",
          "text": "unpack",
          "patching_rect": [
            20.0,
            260.0,
            55.0,
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
            20.0,
            290.0,
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
            20.0,
            320.0,
            50.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "velo",
          "maxclass": "newobj",
          "text": "* 0.004",
          "patching_rect": [
            100.0,
            260.0,
            60.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "packe",
          "maxclass": "newobj",
          "text": "pack 0 30",
          "patching_rect": [
            100.0,
            290.0,
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
            100.0,
            320.0,
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
            20.0,
            360.0,
            35.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "gain",
          "maxclass": "newobj",
          "text": "*~ 0.3",
          "patching_rect": [
            20.0,
            390.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "status_ui",
          "maxclass": "textedit",
          "fontsize": 13.0,
          "text": "(esperando\u2026)",
          "bgcolor": [
            1.0,
            0.92,
            0.5,
            1.0
          ],
          "patching_rect": [
            20.0,
            430.0,
            700.0,
            70.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            140.0,
            700.0,
            90.0
          ]
        }
      },
      {
        "box": {
          "id": "note_fmt",
          "maxclass": "newobj",
          "text": "sprintf MIDI %d vel %d",
          "patching_rect": [
            420.0,
            260.0,
            140.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "note_set",
          "maxclass": "newobj",
          "text": "prepend set",
          "patching_rect": [
            420.0,
            290.0,
            90.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "note_ui",
          "maxclass": "textedit",
          "fontsize": 16.0,
          "text": "MIDI: \u2014",
          "bgcolor": [
            0.75,
            1.0,
            0.8,
            1.0
          ],
          "patching_rect": [
            20.0,
            510.0,
            700.0,
            36.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            240.0,
            700.0,
            40.0
          ]
        }
      },
      {
        "box": {
          "id": "pic",
          "maxclass": "fpic",
          "pic": "D:\\Dv\\Repo\\Android\\MaxView\\MaxViewInstrument\\preview.jpg",
          "patching_rect": [
            20.0,
            560.0,
            320.0,
            180.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            300.0,
            480.0,
            270.0
          ]
        }
      },
      {
        "box": {
          "id": "metro",
          "maxclass": "newobj",
          "text": "metro 80",
          "patching_rect": [
            360.0,
            560.0,
            70.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "tgl_vid",
          "maxclass": "toggle",
          "patching_rect": [
            440.0,
            558.0,
            24.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            520.0,
            300.0,
            28.0,
            28.0
          ]
        }
      },
      {
        "box": {
          "id": "vid_lab",
          "maxclass": "comment",
          "text": "Refresh",
          "patching_rect": [
            470.0,
            560.0,
            60.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            556.0,
            304.0,
            60.0,
            20.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_read",
          "maxclass": "message",
          "text": "read D:\\Dv\\Repo\\Android\\MaxView\\MaxViewInstrument\\preview.jpg",
          "patching_rect": [
            360.0,
            600.0,
            320.0,
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
            360.0,
            640.0,
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
            360.0,
            670.0,
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
            480.0,
            670.0,
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
            520.0,
            110.0,
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
            520.0,
            140.0,
            130.0,
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
            660.0,
            70.0,
            70.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "del",
          "maxclass": "newobj",
          "text": "delay 2500",
          "patching_rect": [
            660.0,
            100.0,
            80.0,
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
            660.0,
            130.0,
            90.0,
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
            660.0,
            160.0,
            30.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "del_open",
          "maxclass": "newobj",
          "text": "delay 4000",
          "patching_rect": [
            660.0,
            200.0,
            80.0,
            22.0
          ]
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
            "btn_prev",
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
            "sel_prev",
            0
          ],
          "destination": [
            "msg_open",
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
            "unpack",
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
            "unpack",
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
            "unpack",
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
            4
          ],
          "destination": [
            "msg_read",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tgl_vid",
            0
          ],
          "destination": [
            "metro",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "metro",
            0
          ],
          "destination": [
            "msg_read",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msg_read",
            0
          ],
          "destination": [
            "pic",
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
            "del",
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
            "tgl_vid",
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
            "msg_bind",
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
            "msg_cam",
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
      }
    ]
  }
}