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
      60.0,
      60.0,
      440.0,
      320.0
    ],
    "openinpresentation": 1,
    "toolbarvisible": 0,
    "bgcolor": [
      0.14,
      0.14,
      0.16,
      1.0
    ],
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "message",
          "text": "MAX-VIEW",
          "fontsize": 20.0,
          "fontname": "Arial Bold",
          "bgcolor": [
            0.14,
            0.14,
            0.16,
            1.0
          ],
          "textcolor": [
            1.0,
            1.0,
            1.0,
            1.0
          ],
          "patching_rect": [
            20.0,
            400.0,
            160.0,
            30.0
          ],
          "presentation": 1,
          "presentation_rect": [
            16.0,
            12.0,
            160.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "id": "sub",
          "maxclass": "message",
          "text": "MIDI · altavoces · auto-start",
          "fontsize": 11.0,
          "bgcolor": [
            0.14,
            0.14,
            0.16,
            1.0
          ],
          "textcolor": [
            0.75,
            0.75,
            0.78,
            1.0
          ],
          "patching_rect": [
            20.0,
            435.0,
            220.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            16.0,
            44.0,
            240.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "ezdac",
          "maxclass": "ezdac~",
          "local": 1,
          "patching_rect": [
            20.0,
            470.0,
            45.0,
            45.0
          ],
          "presentation": 1,
          "presentation_rect": [
            16.0,
            78.0,
            45.0,
            45.0
          ]
        }
      },
      {
        "box": {
          "id": "btn_start",
          "maxclass": "message",
          "text": "start",
          "fontsize": 14.0,
          "bgcolor": [
            0.15,
            0.6,
            0.35,
            1.0
          ],
          "textcolor": [
            1.0,
            1.0,
            1.0,
            1.0
          ],
          "patching_rect": [
            80.0,
            480.0,
            70.0,
            32.0
          ],
          "presentation": 1,
          "presentation_rect": [
            78.0,
            84.0,
            70.0,
            32.0
          ]
        }
      },
      {
        "box": {
          "id": "btn_stop",
          "maxclass": "message",
          "text": "stop",
          "fontsize": 14.0,
          "bgcolor": [
            0.7,
            0.25,
            0.22,
            1.0
          ],
          "textcolor": [
            1.0,
            1.0,
            1.0,
            1.0
          ],
          "patching_rect": [
            160.0,
            480.0,
            65.0,
            32.0
          ],
          "presentation": 1,
          "presentation_rect": [
            158.0,
            84.0,
            65.0,
            32.0
          ]
        }
      },
      {
        "box": {
          "id": "btn_video",
          "maxclass": "message",
          "text": "Video",
          "fontsize": 14.0,
          "bgcolor": [
            0.25,
            0.45,
            0.75,
            1.0
          ],
          "textcolor": [
            1.0,
            1.0,
            1.0,
            1.0
          ],
          "patching_rect": [
            235.0,
            480.0,
            70.0,
            32.0
          ],
          "presentation": 1,
          "presentation_rect": [
            233.0,
            84.0,
            70.0,
            32.0
          ]
        }
      },
      {
        "box": {
          "id": "lab_st",
          "maxclass": "message",
          "text": "Estado",
          "fontsize": 11.0,
          "bgcolor": [
            0.22,
            0.22,
            0.25,
            1.0
          ],
          "textcolor": [
            1.0,
            1.0,
            1.0,
            1.0
          ],
          "patching_rect": [
            20.0,
            530.0,
            60.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            16.0,
            138.0,
            60.0,
            20.0
          ]
        }
      },
      {
        "box": {
          "id": "status_ui",
          "maxclass": "message",
          "text": "arrancando…",
          "fontsize": 13.0,
          "bgcolor": [
            0.92,
            0.92,
            0.9,
            1.0
          ],
          "textcolor": [
            0.05,
            0.05,
            0.08,
            1.0
          ],
          "patching_rect": [
            20.0,
            555.0,
            380.0,
            48.0
          ],
          "presentation": 1,
          "presentation_rect": [
            16.0,
            160.0,
            400.0,
            48.0
          ]
        }
      },
      {
        "box": {
          "id": "lab_midi",
          "maxclass": "message",
          "text": "MIDI",
          "fontsize": 11.0,
          "bgcolor": [
            0.22,
            0.22,
            0.25,
            1.0
          ],
          "textcolor": [
            1.0,
            1.0,
            1.0,
            1.0
          ],
          "patching_rect": [
            20.0,
            615.0,
            50.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            16.0,
            218.0,
            50.0,
            20.0
          ]
        }
      },
      {
        "box": {
          "id": "note_ui",
          "maxclass": "message",
          "text": "MIDI —",
          "fontsize": 15.0,
          "bgcolor": [
            0.92,
            0.95,
            0.9,
            1.0
          ],
          "textcolor": [
            0.0,
            0.35,
            0.12,
            1.0
          ],
          "patching_rect": [
            20.0,
            640.0,
            380.0,
            32.0
          ],
          "presentation": 1,
          "presentation_rect": [
            16.0,
            240.0,
            400.0,
            34.0
          ]
        }
      },
      {
        "box": {
          "id": "foot",
          "maxclass": "message",
          "text": "Video → Full / Win / Mon1-2",
          "fontsize": 11.0,
          "bgcolor": [
            0.14,
            0.14,
            0.16,
            1.0
          ],
          "textcolor": [
            0.7,
            0.7,
            0.72,
            1.0
          ],
          "patching_rect": [
            20.0,
            685.0,
            280.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            16.0,
            284.0,
            280.0,
            22.0
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
            20.0,
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
            20.0,
            50.0,
            130.0,
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
            20.0,
            80.0,
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
            110.0,
            100.0,
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
            140.0,
            100.0,
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
            360.0,
            170.0,
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
            20.0,
            140.0,
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
            140.0,
            120.0,
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
            170.0,
            45.0,
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
            75.0,
            170.0,
            80.0,
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
            165.0,
            170.0,
            70.0,
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
            245.0,
            170.0,
            32.0,
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
            285.0,
            170.0,
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
            20.0,
            200.0,
            60.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_pc",
          "maxclass": "message",
          "text": "open MaxView_Preview.maxpat",
          "patching_rect": [
            90.0,
            200.0,
            180.0,
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
            20.0,
            240.0,
            60.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "d1",
          "maxclass": "newobj",
          "text": "delay 500",
          "patching_rect": [
            90.0,
            240.0,
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
            170.0,
            240.0,
            75.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "d3",
          "maxclass": "newobj",
          "text": "delay 2800",
          "patching_rect": [
            255.0,
            240.0,
            75.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "d4",
          "maxclass": "newobj",
          "text": "delay 3800",
          "patching_rect": [
            340.0,
            240.0,
            75.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "sel_video",
          "maxclass": "newobj",
          "text": "sel Video",
          "patching_rect": [
            280.0,
            50.0,
            70.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "discard_title",
          "maxclass": "newobj",
          "text": "t",
          "patching_rect": [
            320.0,
            400.0,
            30.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "discard_sub",
          "maxclass": "newobj",
          "text": "t",
          "patching_rect": [
            320.0,
            435.0,
            30.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "discard_lab_st",
          "maxclass": "newobj",
          "text": "t",
          "patching_rect": [
            320.0,
            530.0,
            30.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "discard_lab_midi",
          "maxclass": "newobj",
          "text": "t",
          "patching_rect": [
            320.0,
            615.0,
            30.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "discard_foot",
          "maxclass": "newobj",
          "text": "t",
          "patching_rect": [
            320.0,
            685.0,
            30.0,
            22.0
          ]
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": ["node", 0],
          "destination": ["route", 0]
        }
      },
      {
        "patchline": {
          "source": ["route", 1],
          "destination": ["status_ui", 0]
        }
      },
      {
        "patchline": {
          "source": ["route", 4],
          "destination": ["s_frame", 0]
        }
      },
      {
        "patchline": {
          "source": ["route", 6],
          "destination": ["note_ui", 0]
        }
      },
      {
        "patchline": {
          "source": ["bootjs", 0],
          "destination": ["status_ui", 0]
        }
      },
      {
        "patchline": {
          "source": ["bootjs", 1],
          "destination": ["ezdac", 0]
        }
      },
      {
        "patchline": {
          "source": ["btn_start", 0],
          "destination": ["node", 0]
        }
      },
      {
        "patchline": {
          "source": ["btn_stop", 0],
          "destination": ["node", 0]
        }
      },
      {
        "patchline": {
          "source": ["btn_video", 0],
          "destination": ["sel_video", 0]
        }
      },
      {
        "patchline": {
          "source": ["sel_video", 0],
          "destination": ["msg_openvid", 0]
        }
      },
      {
        "patchline": {
          "source": ["sel_video", 0],
          "destination": ["msg_pc", 0]
        }
      },
      {
        "patchline": {
          "source": ["msg_openvid", 0],
          "destination": ["bootjs", 0]
        }
      },
      {
        "patchline": {
          "source": ["msg_pc", 0],
          "destination": ["pc", 0]
        }
      },
      {
        "patchline": {
          "source": ["r_fx", 0],
          "destination": ["msg_fx", 0]
        }
      },
      {
        "patchline": {
          "source": ["msg_fx", 0],
          "destination": ["node", 0]
        }
      },
      {
        "patchline": {
          "source": ["msg_bind", 0],
          "destination": ["node", 0]
        }
      },
      {
        "patchline": {
          "source": ["msg_cam", 0],
          "destination": ["node", 0]
        }
      },
      {
        "patchline": {
          "source": ["msg_start", 0],
          "destination": ["node", 0]
        }
      },
      {
        "patchline": {
          "source": ["msg_ss", 0],
          "destination": ["node", 0]
        }
      },
      {
        "patchline": {
          "source": ["one", 0],
          "destination": ["ezdac", 0]
        }
      },
      {
        "patchline": {
          "source": ["msg_bangboot", 0],
          "destination": ["bootjs", 0]
        }
      },
      {
        "patchline": {
          "source": ["lb", 0],
          "destination": ["d1", 0]
        }
      },
      {
        "patchline": {
          "source": ["lb", 0],
          "destination": ["d2", 0]
        }
      },
      {
        "patchline": {
          "source": ["lb", 0],
          "destination": ["d3", 0]
        }
      },
      {
        "patchline": {
          "source": ["lb", 0],
          "destination": ["d4", 0]
        }
      },
      {
        "patchline": {
          "source": ["d1", 0],
          "destination": ["one", 0]
        }
      },
      {
        "patchline": {
          "source": ["d1", 0],
          "destination": ["msg_bangboot", 0]
        }
      },
      {
        "patchline": {
          "source": ["d2", 0],
          "destination": ["msg_ss", 0]
        }
      },
      {
        "patchline": {
          "source": ["d2", 0],
          "destination": ["msg_bind", 0]
        }
      },
      {
        "patchline": {
          "source": ["d2", 0],
          "destination": ["msg_cam", 0]
        }
      },
      {
        "patchline": {
          "source": ["d3", 0],
          "destination": ["msg_openvid", 0]
        }
      },
      {
        "patchline": {
          "source": ["d3", 0],
          "destination": ["msg_pc", 0]
        }
      },
      {
        "patchline": {
          "source": ["d3", 0],
          "destination": ["one", 0]
        }
      },
      {
        "patchline": {
          "source": ["d4", 0],
          "destination": ["msg_start", 0]
        }
      },
      {
        "patchline": {
          "source": ["title", 0],
          "destination": ["discard_title", 0]
        }
      },
      {
        "patchline": {
          "source": ["sub", 0],
          "destination": ["discard_sub", 0]
        }
      },
      {
        "patchline": {
          "source": ["lab_st", 0],
          "destination": ["discard_lab_st", 0]
        }
      },
      {
        "patchline": {
          "source": ["lab_midi", 0],
          "destination": ["discard_lab_midi", 0]
        }
      },
      {
        "patchline": {
          "source": ["foot", 0],
          "destination": ["discard_foot", 0]
        }
      }
    ]
  }
}
