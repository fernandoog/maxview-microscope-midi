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
      100,
      80,
      520,
      280
    ],
    "bglocked": 0,
    "openinpresentation": 1,
    "title": "MaxView Preview Controls",
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "fontsize": 16.0,
          "fontname": "Arial Bold",
          "text": "MAX-VIEW Preview",
          "patching_rect": [
            20.0,
            10.0,
            300.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            12.0,
            300.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "id": "hint",
          "maxclass": "comment",
          "fontsize": 11.0,
          "text": "Video en ventana flotante. FX = bandas MIDI. ESC sale de fullscreen.",
          "patching_rect": [
            20.0,
            36.0,
            460.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            40.0,
            460.0,
            20.0
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
            80.0,
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
            20.0,
            110.0,
            110.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "metro",
          "maxclass": "newobj",
          "text": "metro 70",
          "patching_rect": [
            200.0,
            80.0,
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
            280.0,
            80.0,
            24.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_read",
          "maxclass": "message",
          "text": "read D:/Dv/Repo/Android/MaxView/MaxViewInstrument/preview.jpg",
          "patching_rect": [
            200.0,
            110.0,
            280.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "movie",
          "maxclass": "newobj",
          "text": "jit.movie @adapt 1 @unique 1 @autostart 0",
          "patching_rect": [
            20.0,
            150.0,
            240.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "win",
          "maxclass": "newobj",
          "text": "jit.window maxview @size 1280 720 @floating 1 @fsmenubar 1 @depthbuffer 0",
          "patching_rect": [
            20.0,
            190.0,
            420.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "fx_label",
          "maxclass": "comment",
          "text": "Efecto MIDI (bandas)",
          "patching_rect": [
            20.0,
            240.0,
            140.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            80.0,
            140.0,
            20.0
          ]
        }
      },
      {
        "box": {
          "id": "tgl_fx",
          "maxclass": "toggle",
          "patching_rect": [
            160.0,
            238.0,
            28.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            170.0,
            76.0,
            32.0,
            32.0
          ]
        }
      },
      {
        "box": {
          "id": "s_fxvis",
          "maxclass": "newobj",
          "text": "s maxview_fxvis",
          "patching_rect": [
            200.0,
            240.0,
            100.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "fs_label",
          "maxclass": "comment",
          "text": "Pantalla completa",
          "patching_rect": [
            20.0,
            280.0,
            120.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            220.0,
            80.0,
            120.0,
            20.0
          ]
        }
      },
      {
        "box": {
          "id": "tgl_fs",
          "maxclass": "toggle",
          "patching_rect": [
            150.0,
            278.0,
            28.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            350.0,
            76.0,
            32.0,
            32.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_fs",
          "maxclass": "message",
          "text": "fullscreen ",
          "patching_rect": [
            190.0,
            280.0,
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
            320.0,
            40.0,
            70.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "init_on",
          "maxclass": "message",
          "text": "1",
          "patching_rect": [
            320.0,
            70.0,
            30.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "note",
          "maxclass": "comment",
          "fontsize": 11.0,
          "text": "Cian=agudos  Verde=medios  Naranja=graves",
          "patching_rect": [
            20.0,
            320.0,
            400.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            130.0,
            400.0,
            20.0
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
            "movie",
            0
          ]
        }
      },
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
            "movie",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "movie",
            0
          ],
          "destination": [
            "win",
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
            "s_fxvis",
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
            "win",
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
            "init_on",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "init_on",
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
            "init_on",
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