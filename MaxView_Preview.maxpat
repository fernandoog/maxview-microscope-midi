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
      40.0,
      1280.0,
      760.0
    ],
    "openinpresentation": 1,
    "toolbarvisible": 0,
    "bgcolor": [
      0.12,
      0.12,
      0.12,
      1.0
    ],
    "boxes": [
      {
        "box": {
          "id": "pic",
          "maxclass": "fpic",
          "varname": "pic",
          "pic": "D:/Dv/Repo/Android/MaxView/MaxViewInstrument/preview_a.jpg",
          "autofit": 1,
          "patching_rect": [
            0.0,
            40.0,
            1280.0,
            720.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            36.0,
            1280.0,
            724.0
          ]
        }
      },
      {
        "box": {
          "id": "bar",
          "maxclass": "comment",
          "varname": "bar",
          "text": "MAX-VIEW",
          "fontsize": 12.0,
          "fontname": "Arial Bold",
          "textcolor": [
            0.9,
            0.9,
            0.9,
            1.0
          ],
          "patching_rect": [
            10.0,
            10.0,
            90.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            10.0,
            8.0,
            90.0,
            20.0
          ]
        }
      },
      {
        "box": {
          "id": "btn_fs",
          "maxclass": "message",
          "text": "Full",
          "fontsize": 12.0,
          "patching_rect": [
            110.0,
            6.0,
            45.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            110.0,
            6.0,
            45.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "id": "btn_win",
          "maxclass": "message",
          "text": "Win",
          "fontsize": 12.0,
          "patching_rect": [
            160.0,
            6.0,
            40.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            160.0,
            6.0,
            40.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "id": "btn_m1",
          "maxclass": "message",
          "text": "Mon1",
          "fontsize": 12.0,
          "patching_rect": [
            210.0,
            6.0,
            50.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            210.0,
            6.0,
            50.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "id": "btn_m2",
          "maxclass": "message",
          "text": "Mon2",
          "fontsize": 12.0,
          "patching_rect": [
            265.0,
            6.0,
            50.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            265.0,
            6.0,
            50.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "id": "fx_lab",
          "maxclass": "comment",
          "text": "FX",
          "fontsize": 12.0,
          "fontname": "Arial Bold",
          "textcolor": [
            0.85,
            0.85,
            0.85,
            1.0
          ],
          "patching_rect": [
            330.0,
            10.0,
            28.0,
            18.0
          ],
          "presentation": 1,
          "presentation_rect": [
            330.0,
            8.0,
            28.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "tgl_fx",
          "maxclass": "toggle",
          "patching_rect": [
            360.0,
            8.0,
            22.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            360.0,
            8.0,
            22.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "sel_fs",
          "maxclass": "newobj",
          "text": "sel Full",
          "patching_rect": [
            20.0,
            800.0,
            60.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "sel_win",
          "maxclass": "newobj",
          "text": "sel Win",
          "patching_rect": [
            90.0,
            800.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "sel_m1",
          "maxclass": "newobj",
          "text": "sel Mon1",
          "patching_rect": [
            155.0,
            800.0,
            70.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "sel_m2",
          "maxclass": "newobj",
          "text": "sel Mon2",
          "patching_rect": [
            235.0,
            800.0,
            70.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_full",
          "maxclass": "message",
          "text": "full",
          "patching_rect": [
            20.0,
            830.0,
            40.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_win",
          "maxclass": "message",
          "text": "win",
          "patching_rect": [
            70.0,
            830.0,
            35.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_m1",
          "maxclass": "message",
          "text": "mon1",
          "patching_rect": [
            115.0,
            830.0,
            45.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_m2",
          "maxclass": "message",
          "text": "mon2",
          "patching_rect": [
            170.0,
            830.0,
            45.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "winjs",
          "maxclass": "newobj",
          "text": "js maxview_window.js",
          "patching_rect": [
            20.0,
            860.0,
            140.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "tp",
          "maxclass": "newobj",
          "text": "thispatcher",
          "patching_rect": [
            180.0,
            860.0,
            80.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "r_frame",
          "maxclass": "newobj",
          "text": "r maxview_frame",
          "patching_rect": [
            20.0,
            900.0,
            110.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "spr",
          "maxclass": "newobj",
          "text": "sprintf read %s",
          "patching_rect": [
            140.0,
            900.0,
            110.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "metro",
          "maxclass": "newobj",
          "text": "metro 80",
          "patching_rect": [
            20.0,
            930.0,
            70.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "lm",
          "maxclass": "newobj",
          "text": "loadmess 1",
          "patching_rect": [
            100.0,
            930.0,
            80.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "mread",
          "maxclass": "message",
          "text": "read D:/Dv/Repo/Android/MaxView/MaxViewInstrument/preview_a.jpg",
          "patching_rect": [
            200.0,
            930.0,
            320.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "mfx",
          "maxclass": "message",
          "text": "fxvis $1",
          "patching_rect": [
            400.0,
            800.0,
            70.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "sfx",
          "maxclass": "newobj",
          "text": "s maxview_fxvis",
          "patching_rect": [
            480.0,
            800.0,
            100.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "vlb",
          "maxclass": "newobj",
          "text": "loadbang",
          "patching_rect": [
            400.0,
            830.0,
            60.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "vone",
          "maxclass": "message",
          "text": "1",
          "patching_rect": [
            400.0,
            860.0,
            30.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "boot",
          "maxclass": "message",
          "text": "win",
          "patching_rect": [
            440.0,
            860.0,
            40.0,
            22.0
          ]
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": ["btn_fs", 0],
          "destination": ["sel_fs", 0]
        }
      },
      {
        "patchline": {
          "source": ["btn_win", 0],
          "destination": ["sel_win", 0]
        }
      },
      {
        "patchline": {
          "source": ["btn_m1", 0],
          "destination": ["sel_m1", 0]
        }
      },
      {
        "patchline": {
          "source": ["btn_m2", 0],
          "destination": ["sel_m2", 0]
        }
      },
      {
        "patchline": {
          "source": ["sel_fs", 0],
          "destination": ["msg_full", 0]
        }
      },
      {
        "patchline": {
          "source": ["sel_win", 0],
          "destination": ["msg_win", 0]
        }
      },
      {
        "patchline": {
          "source": ["sel_m1", 0],
          "destination": ["msg_m1", 0]
        }
      },
      {
        "patchline": {
          "source": ["sel_m2", 0],
          "destination": ["msg_m2", 0]
        }
      },
      {
        "patchline": {
          "source": ["msg_full", 0],
          "destination": ["winjs", 0]
        }
      },
      {
        "patchline": {
          "source": ["msg_win", 0],
          "destination": ["winjs", 0]
        }
      },
      {
        "patchline": {
          "source": ["msg_m1", 0],
          "destination": ["winjs", 0]
        }
      },
      {
        "patchline": {
          "source": ["msg_m2", 0],
          "destination": ["winjs", 0]
        }
      },
      {
        "patchline": {
          "source": ["winjs", 0],
          "destination": ["tp", 0]
        }
      },
      {
        "patchline": {
          "source": ["boot", 0],
          "destination": ["winjs", 0]
        }
      },
      {
        "patchline": {
          "source": ["vlb", 0],
          "destination": ["vone", 0]
        }
      },
      {
        "patchline": {
          "source": ["vlb", 0],
          "destination": ["boot", 0]
        }
      },
      {
        "patchline": {
          "source": ["vone", 0],
          "destination": ["tgl_fx", 0]
        }
      },
      {
        "patchline": {
          "source": ["tgl_fx", 0],
          "destination": ["mfx", 0]
        }
      },
      {
        "patchline": {
          "source": ["mfx", 0],
          "destination": ["sfx", 0]
        }
      },
      {
        "patchline": {
          "source": ["lm", 0],
          "destination": ["metro", 0]
        }
      },
      {
        "patchline": {
          "source": ["metro", 0],
          "destination": ["mread", 0]
        }
      },
      {
        "patchline": {
          "source": ["mread", 0],
          "destination": ["pic", 0]
        }
      },
      {
        "patchline": {
          "source": ["r_frame", 0],
          "destination": ["spr", 0]
        }
      },
      {
        "patchline": {
          "source": ["spr", 0],
          "destination": ["pic", 0]
        }
      }
    ]
  }
}
