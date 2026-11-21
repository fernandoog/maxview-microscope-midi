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
      420.0,
      400.0
    ],
    "bglocked": 0,
    "openinpresentation": 1,
    "toolbarvisible": 0,
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "text": "MAX-VIEW",
          "fontsize": 22.0,
          "fontname": "Arial Bold",
          "patching_rect": [
            24.0,
            16.0,
            200.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            20.0,
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
          "patching_rect": [
            24.0,
            44.0,
            200.0,
            18.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            48.0,
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
            84.0,
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
            84.0,
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
            82.0,
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
            144.0,
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
            144.0,
            80.0,
            40.0
          ]
        }
      },
      {
        "box": {
          "id": "status_ui",
          "maxclass": "textedit",
          "text": "\u2026",
          "fontsize": 12.0,
          "bgcolor": [
            0.96,
            0.96,
            0.96,
            1.0
          ],
          "bordercolor": [
            0.85,
            0.85,
            0.85,
            1.0
          ],
          "patching_rect": [
            24.0,
            200.0,
            312.0,
            56.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            204.0,
            312.0,
            56.0
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
            0.94,
            0.97,
            0.94,
            1.0
          ],
          "patching_rect": [
            24.0,
            268.0,
            312.0,
            32.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            272.0,
            312.0,
            32.0
          ]
        }
      },
      {
        "box": {
          "id": "foot",
          "maxclass": "comment",
          "text": "Audio: ezdac en rojo. Video: ventana aparte (Mon1/2/3).",
          "fontsize": 10.0,
          "patching_rect": [
            24.0,
            312.0,
            320.0,
            32.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            316.0,
            320.0,
            32.0
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
          "text": "route midi status levels ready frame fx",
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
            490.0,
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
          "text": "open",
          "patching_rect": [
            70.0,
            490.0,
            45.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "p_video",
          "maxclass": "newobj",
          "text": "p video",
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
            "boxes": [
              {
                "box": {
                  "id": "pic",
                  "maxclass": "fpic",
                  "pic": "D:/Dv/Repo/Android/MaxView/MaxViewInstrument/preview_a.jpg",
                  "patching_rect": [
                    0.0,
                    36.0,
                    1280.0,
                    720.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    0.0,
                    36.0,
                    1280.0,
                    720.0
                  ]
                }
              },
              {
                "box": {
                  "id": "bar",
                  "maxclass": "comment",
                  "text": "MAX-VIEW",
                  "fontsize": 12.0,
                  "fontname": "Arial Bold",
                  "patching_rect": [
                    8.0,
                    8.0,
                    90.0,
                    20.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    8.0,
                    8.0,
                    90.0,
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
                    110.0,
                    4.0,
                    50.0,
                    26.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    110.0,
                    4.0,
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
                    166.0,
                    4.0,
                    50.0,
                    26.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    166.0,
                    4.0,
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
                    230.0,
                    4.0,
                    54.0,
                    26.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    230.0,
                    4.0,
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
                    290.0,
                    4.0,
                    54.0,
                    26.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    290.0,
                    4.0,
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
                    350.0,
                    4.0,
                    54.0,
                    26.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    350.0,
                    4.0,
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
                  "patching_rect": [
                    420.0,
                    8.0,
                    28.0,
                    18.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    420.0,
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
                    448.0,
                    6.0,
                    22.0,
                    22.0
                  ],
                  "presentation": 1,
                  "presentation_rect": [
                    448.0,
                    6.0,
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
                    166.0,
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
                    230.0,
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
                    230.0,
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
                    230.0,
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
                    280.0,
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
              }
            ]
          },
          "patching_rect": [
            24.0,
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
            200.0,
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
            320.0,
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
            320.0,
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
            420.0,
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
            420.0,
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
            420.0,
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
            420.0,
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
            560.0,
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
            560.0,
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
            620.0,
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
            620.0,
            520.0,
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
            620.0,
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
            560.0,
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
            560.0,
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
            560.0,
            640.0,
            40.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "note_fmt",
          "maxclass": "newobj",
          "text": "sprintf MIDI %d  vel %d",
          "patching_rect": [
            420.0,
            650.0,
            150.0,
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
            680.0,
            90.0,
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
            700.0,
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
            700.0,
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
            256.0,
            130.0,
            80.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "del_vid",
          "maxclass": "newobj",
          "text": "delay 2000",
          "patching_rect": [
            700.0,
            480.0,
            80.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_open2",
          "maxclass": "message",
          "text": "open",
          "patching_rect": [
            700.0,
            510.0,
            45.0,
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
            "p_video",
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
            "msg_open2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msg_open2",
            0
          ],
          "destination": [
            "p_video",
            0
          ]
        }
      }
    ]
  }
}