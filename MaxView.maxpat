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
      380.0,
      390.0
    ],
    "openinpresentation": 1,
    "toolbarvisible": 0,
    "bgcolor": [
      0.18,
      0.18,
      0.2,
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
          "text": "microscopio \u2192 MIDI",
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
            200.0,
            18.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            46.0,
            200.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "btn_start",
          "maxclass": "textbutton",
          "text": "Start",
          "texton": "Start",
          "fontsize": 14.0,
          "patching_rect": [
            24.0,
            80.0,
            100.0,
            40.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            80.0,
            100.0,
            40.0
          ]
        }
      },
      {
        "box": {
          "id": "btn_stop",
          "maxclass": "textbutton",
          "text": "Stop",
          "texton": "Stop",
          "fontsize": 14.0,
          "patching_rect": [
            136.0,
            80.0,
            100.0,
            40.0
          ],
          "presentation": 1,
          "presentation_rect": [
            136.0,
            80.0,
            100.0,
            40.0
          ]
        }
      },
      {
        "box": {
          "id": "ezdac",
          "maxclass": "ezdac~",
          "patching_rect": [
            256.0,
            80.0,
            44.0,
            44.0
          ],
          "presentation": 1,
          "presentation_rect": [
            256.0,
            78.0,
            44.0,
            44.0
          ]
        }
      },
      {
        "box": {
          "id": "btn_video",
          "maxclass": "textbutton",
          "text": "Video",
          "texton": "Video",
          "fontsize": 14.0,
          "patching_rect": [
            24.0,
            140.0,
            216.0,
            40.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            140.0,
            216.0,
            40.0
          ]
        }
      },
      {
        "box": {
          "id": "btn_freeze",
          "maxclass": "textbutton",
          "text": "Freeze",
          "texton": "Freeze",
          "patching_rect": [
            256.0,
            140.0,
            80.0,
            40.0
          ],
          "presentation": 1,
          "presentation_rect": [
            256.0,
            140.0,
            80.0,
            40.0
          ]
        }
      },
      {
        "box": {
          "id": "status_ui",
          "maxclass": "textedit",
          "text": "listo",
          "fontsize": 12.0,
          "fontname": "Arial",
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
            0.35,
            0.35,
            0.38,
            1.0
          ],
          "rounded": 4.0,
          "patching_rect": [
            24.0,
            200.0,
            312.0,
            64.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            200.0,
            312.0,
            64.0
          ]
        }
      },
      {
        "box": {
          "id": "note_ui",
          "maxclass": "textedit",
          "text": "MIDI \u2014",
          "fontsize": 13.0,
          "fontname": "Arial",
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
            0.35,
            0.35,
            0.38,
            1.0
          ],
          "rounded": 4.0,
          "patching_rect": [
            24.0,
            276.0,
            312.0,
            36.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            276.0,
            312.0,
            36.0
          ]
        }
      },
      {
        "box": {
          "id": "foot",
          "maxclass": "comment",
          "text": "ezdac rojo = audio \u00b7 Video abre otra ventana",
          "fontsize": 10.0,
          "textcolor": [
            0.6,
            0.6,
            0.62,
            1.0
          ],
          "patching_rect": [
            24.0,
            324.0,
            320.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            324.0,
            320.0,
            20.0
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
            380.0,
            380.0,
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
            420.0,
            260.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "sel_start",
          "maxclass": "newobj",
          "text": "sel 1",
          "patching_rect": [
            24.0,
            460.0,
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
            136.0,
            460.0,
            40.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "sel_video",
          "maxclass": "newobj",
          "text": "sel 1",
          "patching_rect": [
            24.0,
            500.0,
            40.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "sel_freeze",
          "maxclass": "newobj",
          "text": "sel 1",
          "patching_rect": [
            256.0,
            460.0,
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
            70.0,
            460.0,
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
            180.0,
            460.0,
            50.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_freeze",
          "maxclass": "message",
          "text": "freeze",
          "patching_rect": [
            300.0,
            460.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_open",
          "maxclass": "message",
          "text": "open D:/Dv/Repo/Android/MaxView/MaxViewInstrument/MaxView_Preview.maxpat",
          "patching_rect": [
            70.0,
            500.0,
            400.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "pcontrol",
          "maxclass": "newobj",
          "text": "pcontrol",
          "patching_rect": [
            70.0,
            530.0,
            70.0,
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
            300.0,
            420.0,
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
            420.0,
            420.0,
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
            420.0,
            450.0,
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
            500.0,
            380.0,
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
            500.0,
            410.0,
            130.0,
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
            500.0,
            460.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "makenote",
          "maxclass": "newobj",
          "text": "makenote 110 450",
          "patching_rect": [
            500.0,
            490.0,
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
            640.0,
            490.0,
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
            640.0,
            520.0,
            50.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "velo",
          "maxclass": "newobj",
          "text": "* 0.006",
          "patching_rect": [
            700.0,
            490.0,
            60.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "packe",
          "maxclass": "newobj",
          "text": "pack 0 15",
          "patching_rect": [
            700.0,
            520.0,
            70.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "line~",
          "maxclass": "newobj",
          "text": "line~",
          "patching_rect": [
            700.0,
            550.0,
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
            640.0,
            580.0,
            35.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "gain",
          "maxclass": "newobj",
          "text": "*~ 0.55",
          "patching_rect": [
            640.0,
            610.0,
            60.0,
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
            640.0,
            640.0,
            40.0,
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
            780.0,
            380.0,
            70.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "del",
          "maxclass": "newobj",
          "text": "delay 1200",
          "patching_rect": [
            780.0,
            410.0,
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
            780.0,
            440.0,
            90.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "lm_dac",
          "maxclass": "newobj",
          "text": "loadmess 1",
          "patching_rect": [
            310.0,
            80.0,
            80.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "del_vid",
          "maxclass": "newobj",
          "text": "delay 2500",
          "patching_rect": [
            780.0,
            480.0,
            80.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_open_auto",
          "maxclass": "message",
          "text": "open D:/Dv/Repo/Android/MaxView/MaxViewInstrument/MaxView_Preview.maxpat",
          "patching_rect": [
            780.0,
            510.0,
            400.0,
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
            "btn_video",
            0
          ],
          "destination": [
            "sel_video",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "btn_freeze",
            0
          ],
          "destination": [
            "sel_freeze",
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
            "sel_video",
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
            "sel_freeze",
            0
          ],
          "destination": [
            "msg_freeze",
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
            "msg_freeze",
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
            "msg_open",
            0
          ],
          "destination": [
            "pcontrol",
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
            "makenote",
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
            "mtof",
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
            "line~",
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
            "line~",
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
            "lm_dac",
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
            "lb",
            0
          ],
          "destination": [
            "del_vid",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "del_vid",
            0
          ],
          "destination": [
            "msg_open_auto",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msg_open_auto",
            0
          ],
          "destination": [
            "pcontrol",
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
      }
    ]
  }
}