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
      40,
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
          "pic": "D:/Dv/Repo/Android/MaxView/MaxViewInstrument/preview_a.jpg",
          "patching_rect": [
            0.0,
            0.0,
            1280.0,
            720.0
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
          "id": "r_frame",
          "maxclass": "newobj",
          "text": "r maxview_frame",
          "patching_rect": [
            20.0,
            740.0,
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
            740.0,
            110.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "metro",
          "maxclass": "newobj",
          "text": "metro 100",
          "patching_rect": [
            20.0,
            780.0,
            80.0,
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
            110.0,
            780.0,
            80.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_r",
          "maxclass": "message",
          "text": "read D:/Dv/Repo/Android/MaxView/MaxViewInstrument/preview_a.jpg",
          "patching_rect": [
            200.0,
            780.0,
            280.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "tgl_fx",
          "maxclass": "toggle",
          "patching_rect": [
            500.0,
            740.0,
            28.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            12.0,
            730.0,
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
            540.0,
            744.0,
            60.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            48.0,
            734.0,
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
            620.0,
            740.0,
            28.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            120.0,
            730.0,
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
            660.0,
            744.0,
            80.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            156.0,
            734.0,
            80.0,
            20.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_fx",
          "maxclass": "message",
          "text": "fxvis $1",
          "patching_rect": [
            500.0,
            780.0,
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
            580.0,
            780.0,
            110.0,
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
            700.0,
            780.0,
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
            790.0,
            780.0,
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
            900.0,
            740.0,
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
            900.0,
            770.0,
            30.0,
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
            20.0,
            820.0,
            110.0,
            22.0
          ]
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "r_frame",
            0
          ],
          "destination": [
            "spr",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "spr",
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
            "lm",
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
            "msg_r",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msg_r",
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
            "tp",
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
            "tgl_fx",
            0
          ]
        }
      }
    ]
  }
}