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
      60,
      780,
      560
    ],
    "bglocked": 0,
    "openinpresentation": 1,
    "default_fontsize": 12.0,
    "default_fontname": "Arial",
    "gridsize": [
      8.0,
      8.0
    ],
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "text": "MAX-VIEW Microscope MIDI",
          "fontsize": 18.0,
          "fontname": "Arial Bold",
          "presentation": 1,
          "presentation_rect": [
            20.0,
            12.0,
            500.0,
            26.0
          ],
          "patching_rect": [
            20.0,
            12.0,
            320.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "id": "help",
          "maxclass": "comment",
          "text": "Preview = video en otra ventana. FX MIDI on/off + fullscreen en Preview.",
          "presentation": 1,
          "presentation_rect": [
            20.0,
            42.0,
            700.0,
            20.0
          ],
          "patching_rect": [
            20.0,
            36.0,
            520.0,
            20.0
          ]
        }
      },
      {
        "box": {
          "id": "node",
          "maxclass": "newobj",
          "text": "node.script maxview_microscope.js @autostart 1",
          "patching_rect": [
            40.0,
            200.0,
            520.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            480.0,
            500.0,
            22.0
          ],
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
          }
        }
      },
      {
        "box": {
          "id": "btn_start",
          "maxclass": "textbutton",
          "text": "Start",
          "texton": "Start",
          "presentation": 1,
          "presentation_rect": [
            20.0,
            80.0,
            90.0,
            36.0
          ],
          "patching_rect": [
            40.0,
            80.0,
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
          "presentation": 1,
          "presentation_rect": [
            120.0,
            80.0,
            90.0,
            36.0
          ],
          "patching_rect": [
            120.0,
            80.0,
            70.0,
            28.0
          ]
        }
      },
      {
        "box": {
          "id": "btn_freeze",
          "maxclass": "textbutton",
          "text": "Freeze",
          "presentation": 1,
          "presentation_rect": [
            220.0,
            80.0,
            90.0,
            36.0
          ],
          "patching_rect": [
            200.0,
            80.0,
            70.0,
            28.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_start",
          "maxclass": "message",
          "text": "start",
          "patching_rect": [
            40.0,
            120.0,
            50.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "msg_stop",
          "maxclass": "message",
          "text": "stop",
          "patching_rect": [
            120.0,
            120.0,
            50.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "msg_freeze",
          "maxclass": "message",
          "text": "freeze",
          "patching_rect": [
            200.0,
            120.0,
            50.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "cam_label",
          "maxclass": "comment",
          "text": "Camera IP",
          "presentation": 1,
          "presentation_rect": [
            20.0,
            140.0,
            80.0,
            18.0
          ],
          "patching_rect": [
            320.0,
            80.0,
            80.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "cam_text",
          "maxclass": "textedit",
          "text": "192.168.29.1",
          "presentation": 1,
          "presentation_rect": [
            100.0,
            138.0,
            140.0,
            24.0
          ],
          "patching_rect": [
            400.0,
            80.0,
            140.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "bind_label",
          "maxclass": "comment",
          "text": "Bind IP",
          "presentation": 1,
          "presentation_rect": [
            260.0,
            140.0,
            60.0,
            18.0
          ],
          "patching_rect": [
            320.0,
            110.0,
            60.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "bind_text",
          "maxclass": "textedit",
          "text": "192.168.29.2",
          "presentation": 1,
          "presentation_rect": [
            320.0,
            138.0,
            140.0,
            24.0
          ],
          "patching_rect": [
            400.0,
            110.0,
            140.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_cam",
          "maxclass": "message",
          "text": "cam $1",
          "patching_rect": [
            560.0,
            80.0,
            70.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "msg_bind",
          "maxclass": "message",
          "text": "bind $1",
          "patching_rect": [
            560.0,
            110.0,
            70.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "sens_label",
          "maxclass": "comment",
          "text": "Sensitivity",
          "presentation": 1,
          "presentation_rect": [
            20.0,
            150.0,
            80.0,
            18.0
          ],
          "patching_rect": [
            40.0,
            280.0,
            80.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "sens",
          "maxclass": "live.dial",
          "unit": "Float",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Sensitivity",
              "parameter_shortname": "Sens",
              "parameter_type": 0,
              "parameter_mmin": 0.0,
              "parameter_mmax": 1.0,
              "parameter_initial": [
                0.55
              ]
            }
          },
          "presentation": 1,
          "presentation_rect": [
            20.0,
            170.0,
            48.0,
            48.0
          ],
          "patching_rect": [
            40.0,
            300.0,
            48.0,
            48.0
          ]
        }
      },
      {
        "box": {
          "id": "gate_label",
          "maxclass": "comment",
          "text": "Gate",
          "presentation": 1,
          "presentation_rect": [
            90.0,
            150.0,
            50.0,
            18.0
          ],
          "patching_rect": [
            110.0,
            280.0,
            50.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "gate",
          "maxclass": "live.dial",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Gate",
              "parameter_shortname": "Gate",
              "parameter_type": 0,
              "parameter_mmin": 0.0,
              "parameter_mmax": 1.0,
              "parameter_initial": [
                0.08
              ]
            }
          },
          "presentation": 1,
          "presentation_rect": [
            90.0,
            170.0,
            48.0,
            48.0
          ],
          "patching_rect": [
            110.0,
            300.0,
            48.0,
            48.0
          ]
        }
      },
      {
        "box": {
          "id": "vel_label",
          "maxclass": "comment",
          "text": "Velocity",
          "presentation": 1,
          "presentation_rect": [
            160.0,
            150.0,
            60.0,
            18.0
          ],
          "patching_rect": [
            180.0,
            280.0,
            60.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "vel",
          "maxclass": "live.dial",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Velocity",
              "parameter_shortname": "Vel",
              "parameter_type": 0,
              "parameter_mmin": 1.0,
              "parameter_mmax": 127.0,
              "parameter_initial": [
                110.0
              ]
            }
          },
          "presentation": 1,
          "presentation_rect": [
            160.0,
            170.0,
            48.0,
            48.0
          ],
          "patching_rect": [
            180.0,
            300.0,
            48.0,
            48.0
          ]
        }
      },
      {
        "box": {
          "id": "hold_label",
          "maxclass": "comment",
          "text": "Hold ms",
          "presentation": 1,
          "presentation_rect": [
            230.0,
            150.0,
            60.0,
            18.0
          ],
          "patching_rect": [
            250.0,
            280.0,
            60.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "hold",
          "maxclass": "live.dial",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Hold Ms",
              "parameter_shortname": "Hold",
              "parameter_type": 0,
              "parameter_mmin": 30.0,
              "parameter_mmax": 800.0,
              "parameter_initial": [
                180.0
              ]
            }
          },
          "presentation": 1,
          "presentation_rect": [
            230.0,
            170.0,
            48.0,
            48.0
          ],
          "patching_rect": [
            250.0,
            300.0,
            48.0,
            48.0
          ]
        }
      },
      {
        "box": {
          "id": "scale_label",
          "maxclass": "comment",
          "text": "Scale",
          "presentation": 1,
          "presentation_rect": [
            300.0,
            150.0,
            50.0,
            18.0
          ],
          "patching_rect": [
            320.0,
            280.0,
            50.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "scale_menu",
          "maxclass": "live.menu",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Scale",
              "parameter_shortname": "Scale",
              "parameter_type": 2,
              "parameter_enum": [
                "pentatonic",
                "major",
                "minor",
                "chromatic"
              ],
              "parameter_initial": [
                0
              ]
            }
          },
          "presentation": 1,
          "presentation_rect": [
            300.0,
            178.0,
            120.0,
            22.0
          ],
          "patching_rect": [
            320.0,
            310.0,
            120.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_sens",
          "maxclass": "message",
          "text": "sensitivity $1",
          "patching_rect": [
            40.0,
            360.0,
            100.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_gate",
          "maxclass": "message",
          "text": "gate $1",
          "patching_rect": [
            150.0,
            360.0,
            70.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "msg_vel",
          "maxclass": "message",
          "text": "velocity $1",
          "patching_rect": [
            230.0,
            360.0,
            80.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "msg_hold",
          "maxclass": "message",
          "text": "hold_ms $1",
          "patching_rect": [
            320.0,
            360.0,
            80.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "msg_scale",
          "maxclass": "message",
          "text": "scale $1",
          "patching_rect": [
            410.0,
            360.0,
            70.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "bands_label",
          "maxclass": "comment",
          "text": "Change  TOP=agudos   MID=medios   BOTTOM=graves",
          "presentation": 1,
          "presentation_rect": [
            20.0,
            240.0,
            360.0,
            18.0
          ],
          "patching_rect": [
            40.0,
            400.0,
            360.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "unpack_levels",
          "maxclass": "newobj",
          "text": "unpack f f f",
          "patching_rect": [
            400.0,
            240.0,
            90.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "meter_bass",
          "maxclass": "live.meter~",
          "presentation": 0,
          "patching_rect": [
            400.0,
            280.0,
            20.0,
            60.0
          ]
        }
      },
      {
        "box": {
          "id": "lvl_bass",
          "maxclass": "live.numbox",
          "parameter_enable": 0,
          "presentation": 1,
          "presentation_rect": [
            20.0,
            270.0,
            60.0,
            18.0
          ],
          "patching_rect": [
            500.0,
            240.0,
            60.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "lvl_mid",
          "maxclass": "live.numbox",
          "parameter_enable": 0,
          "presentation": 1,
          "presentation_rect": [
            90.0,
            270.0,
            60.0,
            18.0
          ],
          "patching_rect": [
            570.0,
            240.0,
            60.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "lvl_treble",
          "maxclass": "live.numbox",
          "parameter_enable": 0,
          "presentation": 1,
          "presentation_rect": [
            160.0,
            270.0,
            60.0,
            18.0
          ],
          "patching_rect": [
            640.0,
            240.0,
            60.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "lbl_b",
          "maxclass": "comment",
          "text": "Bass",
          "presentation": 1,
          "presentation_rect": [
            20.0,
            290.0,
            60.0,
            16.0
          ],
          "patching_rect": [
            500.0,
            260.0,
            60.0,
            16.0
          ]
        }
      },
      {
        "box": {
          "id": "lbl_m",
          "maxclass": "comment",
          "text": "Mid",
          "presentation": 1,
          "presentation_rect": [
            90.0,
            290.0,
            60.0,
            16.0
          ],
          "patching_rect": [
            570.0,
            260.0,
            60.0,
            16.0
          ]
        }
      },
      {
        "box": {
          "id": "lbl_t",
          "maxclass": "comment",
          "text": "Treble",
          "presentation": 1,
          "presentation_rect": [
            160.0,
            290.0,
            60.0,
            16.0
          ],
          "patching_rect": [
            640.0,
            260.0,
            60.0,
            16.0
          ]
        }
      },
      {
        "box": {
          "id": "status",
          "maxclass": "textedit",
          "text": "status",
          "presentation": 1,
          "presentation_rect": [
            20.0,
            320.0,
            700.0,
            80.0
          ],
          "patching_rect": [
            40.0,
            440.0,
            440.0,
            40.0
          ]
        }
      },
      {
        "box": {
          "id": "prepend_note",
          "maxclass": "newobj",
          "text": "prepend note",
          "patching_rect": [
            400.0,
            200.0,
            90.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "midiformat",
          "maxclass": "newobj",
          "text": "midiformat",
          "patching_rect": [
            510.0,
            200.0,
            70.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "midiout",
          "maxclass": "newobj",
          "text": "midiout",
          "patching_rect": [
            600.0,
            200.0,
            55.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "note_print",
          "maxclass": "newobj",
          "text": "print maxview-midi",
          "patching_rect": [
            400.0,
            170.0,
            120.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "loadbang",
          "maxclass": "newobj",
          "text": "loadbang",
          "patching_rect": [
            560.0,
            40.0,
            60.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "init_cam",
          "maxclass": "message",
          "text": "cam 192.168.29.1",
          "patching_rect": [
            560.0,
            70.0,
            180.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "route",
          "maxclass": "newobj",
          "text": "route midi status levels ready frame fx",
          "patching_rect": [
            400.0,
            140.0,
            150.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "delay_init",
          "maxclass": "newobj",
          "text": "delay 1500",
          "patching_rect": [
            560.0,
            55.0,
            70.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "force_lb",
          "maxclass": "newobj",
          "text": "loadbang",
          "patching_rect": [
            600.0,
            200.0,
            70.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "force_del",
          "maxclass": "newobj",
          "text": "delay 2500",
          "patching_rect": [
            600.0,
            230.0,
            80.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "force_start",
          "maxclass": "message",
          "text": "script start",
          "patching_rect": [
            600.0,
            260.0,
            90.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "auto_start_msg",
          "maxclass": "message",
          "text": "start",
          "patching_rect": [
            700.0,
            300.0,
            50.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "unpack_midi",
          "maxclass": "newobj",
          "text": "unpack",
          "patching_rect": [
            400.0,
            230.0,
            55.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "mtof_audio",
          "maxclass": "newobj",
          "text": "mtof",
          "patching_rect": [
            700.0,
            230.0,
            40.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "cycle_audio",
          "maxclass": "newobj",
          "text": "cycle~",
          "patching_rect": [
            700.0,
            260.0,
            50.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "velo_sc",
          "maxclass": "newobj",
          "text": "* 0.004",
          "patching_rect": [
            760.0,
            230.0,
            60.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "pack_e",
          "maxclass": "newobj",
          "text": "pack 0 10",
          "patching_rect": [
            760.0,
            260.0,
            70.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "line_a",
          "maxclass": "newobj",
          "text": "line~",
          "patching_rect": [
            760.0,
            290.0,
            45.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "mul_a",
          "maxclass": "newobj",
          "text": "*~",
          "patching_rect": [
            700.0,
            320.0,
            35.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "gain_a",
          "maxclass": "newobj",
          "text": "*~ 0.35",
          "patching_rect": [
            700.0,
            350.0,
            60.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "ezdac_a",
          "maxclass": "ezdac~",
          "patching_rect": [
            700.0,
            390.0,
            45.0,
            45.0
          ],
          "presentation": 1,
          "presentation_rect": [
            340.0,
            76.0,
            48.0,
            48.0
          ]
        }
      },
      {
        "box": {
          "id": "s_frame",
          "maxclass": "newobj",
          "text": "s maxview_frame",
          "patching_rect": [
            780.0,
            140.0,
            110.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "r_fxvis",
          "maxclass": "newobj",
          "text": "r maxview_fxvis",
          "patching_rect": [
            780.0,
            170.0,
            110.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "msg_fxvis",
          "maxclass": "message",
          "text": "fxvis $1",
          "patching_rect": [
            900.0,
            170.0,
            70.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "btn_preview",
          "maxclass": "textbutton",
          "text": "Preview",
          "texton": "Preview",
          "patching_rect": [
            280.0,
            80.0,
            80.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            430.0,
            80.0,
            90.0,
            36.0
          ]
        }
      },
      {
        "box": {
          "id": "sel_prev",
          "maxclass": "newobj",
          "text": "sel 1",
          "patching_rect": [
            280.0,
            120.0,
            40.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "open_prev",
          "maxclass": "message",
          "text": "; max openfile D:/Dv/Repo/Android/MaxView/MaxViewInstrument/MaxView_Preview.maxpat",
          "patching_rect": [
            280.0,
            150.0,
            260.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "max_obj",
          "maxclass": "newobj",
          "text": "max",
          "patching_rect": [
            280.0,
            180.0,
            40.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "auto_prev_lb",
          "maxclass": "newobj",
          "text": "loadbang",
          "patching_rect": [
            900.0,
            40.0,
            70.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "auto_prev_del",
          "maxclass": "newobj",
          "text": "delay 3500",
          "patching_rect": [
            900.0,
            70.0,
            80.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "auto_prev_msg",
          "maxclass": "message",
          "text": "; max openfile D:/Dv/Repo/Android/MaxView/MaxViewInstrument/MaxView_Preview.maxpat",
          "patching_rect": [
            900.0,
            100.0,
            260.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "embed_metro",
          "maxclass": "newobj",
          "text": "metro 70",
          "patching_rect": [
            20.0,
            620.0,
            70.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "embed_tgl",
          "maxclass": "toggle",
          "patching_rect": [
            100.0,
            620.0,
            24.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            20.0,
            380.0,
            28.0,
            28.0
          ]
        }
      },
      {
        "box": {
          "id": "embed_vid_label",
          "maxclass": "comment",
          "text": "Video window",
          "patching_rect": [
            130.0,
            622.0,
            100.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            54.0,
            384.0,
            100.0,
            20.0
          ]
        }
      },
      {
        "box": {
          "id": "embed_read",
          "maxclass": "message",
          "text": "read D:\\Dv\\Repo\\Android\\MaxView\\MaxViewInstrument\\preview.jpg",
          "patching_rect": [
            20.0,
            660.0,
            320.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "embed_movie",
          "maxclass": "newobj",
          "text": "jit.movie @adapt 1 @unique 1 @autostart 0",
          "patching_rect": [
            20.0,
            700.0,
            240.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "embed_win",
          "maxclass": "newobj",
          "text": "jit.window maxview @size 1280 720 @floating 1 @fsmenubar 1",
          "patching_rect": [
            20.0,
            740.0,
            400.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "embed_fs_tgl",
          "maxclass": "toggle",
          "patching_rect": [
            240.0,
            620.0,
            24.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            170.0,
            380.0,
            28.0,
            28.0
          ]
        }
      },
      {
        "box": {
          "id": "embed_fs_label",
          "maxclass": "comment",
          "text": "Fullscreen",
          "patching_rect": [
            270.0,
            622.0,
            80.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            204.0,
            384.0,
            80.0,
            20.0
          ]
        }
      },
      {
        "box": {
          "id": "embed_fs_msg",
          "maxclass": "message",
          "text": "fullscreen $1",
          "patching_rect": [
            240.0,
            660.0,
            100.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "embed_fx_tgl",
          "maxclass": "toggle",
          "patching_rect": [
            380.0,
            620.0,
            24.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            300.0,
            380.0,
            28.0,
            28.0
          ]
        }
      },
      {
        "box": {
          "id": "embed_fx_label",
          "maxclass": "comment",
          "text": "FX MIDI",
          "patching_rect": [
            410.0,
            622.0,
            60.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            334.0,
            384.0,
            60.0,
            20.0
          ]
        }
      },
      {
        "box": {
          "id": "embed_fx_msg",
          "maxclass": "message",
          "text": "fxvis $1",
          "patching_rect": [
            380.0,
            660.0,
            70.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "embed_lb",
          "maxclass": "newobj",
          "text": "loadbang",
          "patching_rect": [
            500.0,
            620.0,
            70.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "embed_one",
          "maxclass": "message",
          "text": "1",
          "patching_rect": [
            500.0,
            650.0,
            30.0,
            22.0
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "embed_sprintf",
          "maxclass": "newobj",
          "text": "sprintf read %s",
          "patching_rect": [
            280.0,
            700.0,
            110.0,
            22.0
          ],
          "presentation": 0
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
            "msg_start",
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
            "msg_stop",
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
            "cam_text",
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
            "bind_text",
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
            "sens",
            0
          ],
          "destination": [
            "msg_sens",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gate",
            0
          ],
          "destination": [
            "msg_gate",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vel",
            0
          ],
          "destination": [
            "msg_vel",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "hold",
            0
          ],
          "destination": [
            "msg_hold",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "scale_menu",
            1
          ],
          "destination": [
            "msg_scale",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msg_sens",
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
            "msg_gate",
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
            "msg_vel",
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
            "msg_hold",
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
            "msg_scale",
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
            "prepend_note",
            0
          ],
          "destination": [
            "midiformat",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "midiformat",
            0
          ],
          "destination": [
            "midiout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack_levels",
            0
          ],
          "destination": [
            "lvl_bass",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack_levels",
            1
          ],
          "destination": [
            "lvl_mid",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack_levels",
            2
          ],
          "destination": [
            "lvl_treble",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "init_cam",
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
            "prepend_note",
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
            "note_print",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            2
          ],
          "destination": [
            "unpack_levels",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "force_lb",
            0
          ],
          "destination": [
            "force_del",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "force_del",
            0
          ],
          "destination": [
            "force_start",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "force_start",
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
            3
          ],
          "destination": [
            "auto_start_msg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "auto_start_msg",
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
            "unpack_midi",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack_midi",
            0
          ],
          "destination": [
            "mtof_audio",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack_midi",
            1
          ],
          "destination": [
            "velo_sc",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "velo_sc",
            0
          ],
          "destination": [
            "pack_e",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pack_e",
            0
          ],
          "destination": [
            "line_a",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mtof_audio",
            0
          ],
          "destination": [
            "cycle_audio",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cycle_audio",
            0
          ],
          "destination": [
            "mul_a",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "line_a",
            0
          ],
          "destination": [
            "mul_a",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mul_a",
            0
          ],
          "destination": [
            "gain_a",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gain_a",
            0
          ],
          "destination": [
            "ezdac_a",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gain_a",
            0
          ],
          "destination": [
            "ezdac_a",
            1
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
            "r_fxvis",
            0
          ],
          "destination": [
            "msg_fxvis",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "msg_fxvis",
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
            "btn_preview",
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
            "sel_prev",
            0
          ],
          "destination": [
            "open_prev",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "open_prev",
            0
          ],
          "destination": [
            "max_obj",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "auto_prev_lb",
            0
          ],
          "destination": [
            "auto_prev_del",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "auto_prev_del",
            0
          ],
          "destination": [
            "auto_prev_msg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "auto_prev_msg",
            0
          ],
          "destination": [
            "max_obj",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "embed_tgl",
            0
          ],
          "destination": [
            "embed_metro",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "embed_metro",
            0
          ],
          "destination": [
            "embed_read",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "embed_read",
            0
          ],
          "destination": [
            "embed_movie",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "embed_movie",
            0
          ],
          "destination": [
            "embed_win",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "embed_fs_tgl",
            0
          ],
          "destination": [
            "embed_fs_msg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "embed_fs_msg",
            0
          ],
          "destination": [
            "embed_win",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "embed_fx_tgl",
            0
          ],
          "destination": [
            "embed_fx_msg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "embed_fx_msg",
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
            "embed_lb",
            0
          ],
          "destination": [
            "embed_one",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "embed_one",
            0
          ],
          "destination": [
            "embed_tgl",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "embed_one",
            0
          ],
          "destination": [
            "embed_fx_tgl",
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
            "embed_sprintf",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "embed_sprintf",
            0
          ],
          "destination": [
            "embed_movie",
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
            "status",
            0
          ]
        }
      }
    ],
    "parameters": {},
    "dependency_cache": [
      {
        "name": "maxview_microscope.js",
        "bootpath": "~/code",
        "type": "TEXT"
      }
    ],
    "autosave": 0
  }
}