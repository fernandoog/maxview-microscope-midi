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
      80,
      60,
      1300,
      820
    ],
    "bglocked": 0,
    "openinpresentation": 1,
    "boxes": [
      {
        "box": {
          "id": "pic",
          "maxclass": "fpic",
          "pic": "D:\\Dv\\Repo\\Android\\MaxView\\MaxViewInstrument\\preview.jpg",
          "patching_rect": [
            20.0,
            120.0,
            640.0,
            360.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            0.0,
            1280.0,
            720.0
          ]
        }
      },
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "fontsize": 14.0,
          "fontname": "Arial Bold",
          "text": "MAX-VIEW Video  |  FX / Fullscreen",
          "patching_rect": [
            20.0,
            8.0,
            400.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            12.0,
            8.0,
            400.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "tgl_fx",
          "maxclass": "toggle",
          "patching_rect": [
            20.0,
            40.0,
            28.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            12.0,
            740.0,
            28.0,
            28.0
          ]
        }
      },
      {
        "box": {
          "id": "fx_lab",
          "maxclass": "comment",
          "text": "FX MIDI",
          "patching_rect": [
            55.0,
            44.0,
            60.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            48.0,
            744.0,
            60.0,
            20.0
          ]
        }
      },
      {
        "box": {
          "id": "tgl_fs",
          "maxclass": "toggle",
          "patching_rect": [
            140.0,
            40.0,
            28.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            130.0,
            740.0,
            28.0,
            28.0
          ]
        }
      },
      {
        "box": {
          "id": "fs_lab",
          "maxclass": "comment",
          "text": "Fullscreen",
          "patching_rect": [
            175.0,
            44.0,
            80.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            166.0,
            744.0,
            80.0,
            20.0
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
            90.0,
            70.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "tgl_metro",
          "maxclass": "toggle",
          "patching_rect": [
            100.0,
            88.0,
            24.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_read",
          "maxclass": "message",
          "text": "read D:\\Dv\\Repo\\Android\\MaxView\\MaxViewInstrument\\preview.jpg",
          "patching_rect": [
            140.0,
            90.0,
            360.0,
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
            520.0,
            90.0,
            110.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "sprintf_read",
          "maxclass": "newobj",
          "text": "sprintf read %s",
          "patching_rect": [
            520.0,
            120.0,
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
            280.0,
            40.0,
            70.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "s_fx",
          "maxclass": "newobj",
          "text": "s maxview_fxvis",
          "patching_rect": [
            360.0,
            40.0,
            110.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "thispatcher",
          "maxclass": "newobj",
          "text": "thispatcher",
          "patching_rect": [
            280.0,
            70.0,
            80.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_fs",
          "maxclass": "message",
          "text": "fullscreen $1",
          "patching_rect": [
            380.0,
            70.0,
            100.0,
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
            520.0,
            40.0,
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
            600.0,
            40.0,
            30.0,
            22.0
          ]
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "tgl_metro",
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
            "r_frame",
            0
          ],
          "destination": [
            "sprintf_read",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sprintf_read",
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
            "tgl_fx",
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
            "s_fx",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tgl_fs",
            0
          ],
          "destination": [
            "msg_fs",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msg_fs",
            0
          ],
          "destination": [
            "thispatcher",
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
            "tgl_metro",
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
            "tgl_fx",
            0
          ]
        }
      }
    ]
  }
}