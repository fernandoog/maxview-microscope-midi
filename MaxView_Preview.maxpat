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
      100.0,
      60.0,
      1300.0,
      820.0
    ],
    "openinpresentation": 1,
    "toolbarvisible": 0,
    "bgcolor": [
      0.9,
      0.9,
      0.9,
      1.0
    ],
    "boxes": [
      {
        "box": {
          "id": "pic",
          "maxclass": "fpic",
          "pic": "D:/Dv/Repo/Android/MaxView/MaxViewInstrument/preview_a.jpg",
          "patching_rect": [
            0.0,
            40.0,
            1280.0,
            720.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            40.0,
            1280.0,
            720.0
          ]
        }
      },
      {
        "box": {
          "id": "bar",
          "maxclass": "comment",
          "text": "MAX-VIEW  \u00b7  Full / Win / Mon1-3",
          "fontsize": 12.0,
          "fontname": "Arial Bold",
          "textcolor": [
            0.1,
            0.1,
            0.1,
            1.0
          ],
          "patching_rect": [
            10.0,
            10.0,
            280.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            10.0,
            10.0,
            280.0,
            20.0
          ]
        }
      },
      {
        "box": {
          "id": "btn_fs",
          "maxclass": "textbutton",
          "text": "Full",
          "texton": "Full",
          "patching_rect": [
            300.0,
            6.0,
            50.0,
            26.0
          ],
          "presentation": 1,
          "presentation_rect": [
            300.0,
            6.0,
            50.0,
            26.0
          ]
        }
      },
      {
        "box": {
          "id": "btn_win",
          "maxclass": "textbutton",
          "text": "Win",
          "texton": "Win",
          "patching_rect": [
            356.0,
            6.0,
            50.0,
            26.0
          ],
          "presentation": 1,
          "presentation_rect": [
            356.0,
            6.0,
            50.0,
            26.0
          ]
        }
      },
      {
        "box": {
          "id": "btn_m1",
          "maxclass": "textbutton",
          "text": "Mon1",
          "texton": "Mon1",
          "patching_rect": [
            420.0,
            6.0,
            54.0,
            26.0
          ],
          "presentation": 1,
          "presentation_rect": [
            420.0,
            6.0,
            54.0,
            26.0
          ]
        }
      },
      {
        "box": {
          "id": "btn_m2",
          "maxclass": "textbutton",
          "text": "Mon2",
          "texton": "Mon2",
          "patching_rect": [
            480.0,
            6.0,
            54.0,
            26.0
          ],
          "presentation": 1,
          "presentation_rect": [
            480.0,
            6.0,
            54.0,
            26.0
          ]
        }
      },
      {
        "box": {
          "id": "btn_m3",
          "maxclass": "textbutton",
          "text": "Mon3",
          "texton": "Mon3",
          "patching_rect": [
            540.0,
            6.0,
            54.0,
            26.0
          ],
          "presentation": 1,
          "presentation_rect": [
            540.0,
            6.0,
            54.0,
            26.0
          ]
        }
      },
      {
        "box": {
          "id": "fx_lab",
          "maxclass": "comment",
          "text": "FX",
          "textcolor": [
            0.1,
            0.1,
            0.1,
            1.0
          ],
          "patching_rect": [
            610.0,
            10.0,
            28.0,
            18.0
          ],
          "presentation": 1,
          "presentation_rect": [
            610.0,
            10.0,
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
            638.0,
            8.0,
            22.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            638.0,
            8.0,
            22.0,
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
            20.0,
            780.0,
            80.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "s1",
          "maxclass": "newobj",
          "text": "sel 1",
          "patching_rect": [
            110.0,
            780.0,
            40.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "s2",
          "maxclass": "newobj",
          "text": "sel 1",
          "patching_rect": [
            166.0,
            780.0,
            40.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "s3",
          "maxclass": "newobj",
          "text": "sel 1",
          "patching_rect": [
            230.0,
            780.0,
            40.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "s4",
          "maxclass": "newobj",
          "text": "sel 1",
          "patching_rect": [
            290.0,
            780.0,
            40.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "s5",
          "maxclass": "newobj",
          "text": "sel 1",
          "patching_rect": [
            350.0,
            780.0,
            40.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "m_fs",
          "maxclass": "message",
          "text": "fullscreen 1",
          "patching_rect": [
            110.0,
            810.0,
            90.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "m_win",
          "maxclass": "message",
          "text": "fullscreen 0, size 1280 760, offset 80 40",
          "patching_rect": [
            200.0,
            810.0,
            280.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "m_m1",
          "maxclass": "message",
          "text": "fullscreen 0, size 1280 760, offset 40 40",
          "patching_rect": [
            200.0,
            840.0,
            280.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "m_m2",
          "maxclass": "message",
          "text": "fullscreen 0, size 1280 760, offset 1920 40",
          "patching_rect": [
            200.0,
            870.0,
            280.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "m_m3",
          "maxclass": "message",
          "text": "fullscreen 0, size 1280 760, offset 3840 40",
          "patching_rect": [
            200.0,
            900.0,
            280.0,
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
            940.0,
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
            940.0,
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
            970.0,
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
            970.0,
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
            970.0,
            300.0,
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
            500.0,
            780.0,
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
            580.0,
            780.0,
            110.0,
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
            500.0,
            810.0,
            70.0,
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
            500.0,
            840.0,
            30.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "boot",
          "maxclass": "message",
          "text": "size 1280 760, offset 100 60",
          "patching_rect": [
            500.0,
            870.0,
            200.0,
            22.0
          ]
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "btn_fs",
            0
          ],
          "destination": [
            "s1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "btn_win",
            0
          ],
          "destination": [
            "s2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "btn_m1",
            0
          ],
          "destination": [
            "s3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "btn_m2",
            0
          ],
          "destination": [
            "s4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "btn_m3",
            0
          ],
          "destination": [
            "s5",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "s1",
            0
          ],
          "destination": [
            "m_fs",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "s2",
            0
          ],
          "destination": [
            "m_win",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "s3",
            0
          ],
          "destination": [
            "m_m1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "s4",
            0
          ],
          "destination": [
            "m_m2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "s5",
            0
          ],
          "destination": [
            "m_m3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_fs",
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
            "m_win",
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
            "m_m1",
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
            "m_m2",
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
            "m_m3",
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
            "mread",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mread",
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
            "mfx",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mfx",
            0
          ],
          "destination": [
            "sfx",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vlb",
            0
          ],
          "destination": [
            "vone",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vone",
            0
          ],
          "destination": [
            "tgl_fx",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vlb",
            0
          ],
          "destination": [
            "boot",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "boot",
            0
          ],
          "destination": [
            "tp",
            0
          ]
        }
      }
    ]
  }
}