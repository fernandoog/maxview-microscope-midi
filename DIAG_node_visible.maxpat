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
      700,
      520
    ],
    "bglocked": 0,
    "openinpresentation": 1,
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "fontsize": 16.0,
          "fontname": "Arial Bold",
          "text": "MAX-VIEW Controles  |  Video = ventana aparte",
          "patching_rect": [
            20.0,
            8.0,
            600.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            8.0,
            600.0,
            24.0
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
            40.0,
            70.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            420.0,
            70.0,
            28.0
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
            100.0,
            40.0,
            70.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            100.0,
            420.0,
            70.0,
            28.0
          ]
        }
      },
      {
        "box": {
          "id": "ezdac",
          "maxclass": "ezdac~",
          "patching_rect": [
            190.0,
            40.0,
            40.0,
            40.0
          ],
          "presentation": 1,
          "presentation_rect": [
            190.0,
            412.0,
            40.0,
            40.0
          ]
        }
      },
      {
        "box": {
          "id": "dac_lab",
          "maxclass": "comment",
          "text": "AUDIO ON",
          "fontsize": 14.0,
          "fontname": "Arial Bold",
          "patching_rect": [
            240.0,
            50.0,
            60.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            240.0,
            422.0,
            60.0,
            20.0
          ]
        }
      },
      {
        "box": {
          "id": "status_ui",
          "maxclass": "textedit",
          "fontsize": 12.0,
          "text": "(esperando\u2026)",
          "bgcolor": [
            1.0,
            0.95,
            0.6,
            1.0
          ],
          "patching_rect": [
            20.0,
            580.0,
            640.0,
            50.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            140.0,
            640.0,
            80.0
          ]
        }
      },
      {
        "box": {
          "id": "note_ui",
          "maxclass": "textedit",
          "fontsize": 14.0,
          "text": "MIDI: \u2014",
          "bgcolor": [
            0.8,
            1.0,
            0.85,
            1.0
          ],
          "patching_rect": [
            20.0,
            640.0,
            640.0,
            30.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            230.0,
            640.0,
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
            20.0,
            90.0,
            400.0,
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
            20.0,
            120.0,
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
            120.0,
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
            150.0,
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
            100.0,
            150.0,
            50.0,
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
            450.0,
            90.0,
            260.0,
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
            700.0,
            90.0,
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
            700.0,
            120.0,
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
            700.0,
            160.0,
            70.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "del",
          "maxclass": "newobj",
          "text": "delay 1500",
          "patching_rect": [
            700.0,
            190.0,
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
            700.0,
            220.0,
            90.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_dac1",
          "maxclass": "message",
          "text": "1",
          "patching_rect": [
            700.0,
            250.0,
            30.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "loadmess_dac",
          "maxclass": "newobj",
          "text": "loadmess 1",
          "patching_rect": [
            280.0,
            40.0,
            80.0,
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
            450.0,
            450.0,
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
            570.0,
            450.0,
            110.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_fxn",
          "maxclass": "message",
          "text": "fxvis $1",
          "patching_rect": [
            690.0,
            450.0,
            70.0,
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
            450.0,
            120.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "makenote",
          "maxclass": "newobj",
          "text": "makenote 100 400",
          "patching_rect": [
            450.0,
            150.0,
            120.0,
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
            450.0,
            180.0,
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
            600.0,
            150.0,
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
            600.0,
            180.0,
            50.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "velo_div",
          "maxclass": "newobj",
          "text": "* 0.006",
          "patching_rect": [
            680.0,
            150.0,
            60.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "pack_env",
          "maxclass": "newobj",
          "text": "pack 0 20",
          "patching_rect": [
            680.0,
            180.0,
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
            680.0,
            210.0,
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
            600.0,
            240.0,
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
            600.0,
            270.0,
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
            600.0,
            300.0,
            40.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "note_fmt",
          "maxclass": "newobj",
          "text": "sprintf MIDI %d vel %d",
          "patching_rect": [
            750.0,
            120.0,
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
            750.0,
            150.0,
            90.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "btn_video",
          "maxclass": "textbutton",
          "text": "Abrir Video",
          "texton": "Abrir Video",
          "patching_rect": [
            280.0,
            40.0,
            100.0,
            32.0
          ],
          "presentation": 1,
          "presentation_rect": [
            280.0,
            420.0,
            110.0,
            32.0
          ]
        }
      },
      {
        "box": {
          "id": "sel_video",
          "maxclass": "newobj",
          "text": "sel 1",
          "patching_rect": [
            280.0,
            80.0,
            40.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_open_video",
          "maxclass": "message",
          "text": "; max openfile D:/Dv/Repo/Android/MaxView/MaxViewInstrument/MaxView_Preview.maxpat",
          "patching_rect": [
            280.0,
            110.0,
            420.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "del_open_video",
          "maxclass": "newobj",
          "text": "delay 3000",
          "patching_rect": [
            700.0,
            280.0,
            80.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_open_auto",
          "maxclass": "message",
          "text": "; max openfile D:/Dv/Repo/Android/MaxView/MaxViewInstrument/MaxView_Preview.maxpat",
          "patching_rect": [
            700.0,
            310.0,
            420.0,
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
            "loadmess_dac",
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
            "msg_dac1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msg_dac1",
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
            "r_fx",
            0
          ],
          "destination": [
            "msg_fxn",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msg_fxn",
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
            "velo_div",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "velo_div",
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
            "sel_video",
            0
          ],
          "destination": [
            "msg_open_video",
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
            "del_open_video",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "del_open_video",
            0
          ],
          "destination": [
            "msg_open_auto",
            0
          ]
        }
      }
    ]
  }
}