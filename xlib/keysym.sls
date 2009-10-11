
(library (psilab xlib keysym)

  (export XK_VoidSymbol
          XK_BackSpace
          XK_Tab
          XK_Linefeed
          XK_Clear
          XK_Return
          XK_Pause
          XK_Scroll_Lock
          XK_Sys_Req
          XK_Escape
          XK_Delete
          XK_Multi_key
          XK_Codeinput
          XK_SingleCandidate
          XK_MultipleCandidate
          XK_PreviousCandidate
          XK_Kanji
          XK_Muhenkan
          XK_Henkan_Mode
          XK_Henkan
          XK_Romaji
          XK_Hiragana
          XK_Katakana
          XK_Hiragana_Katakana
          XK_Zenkaku
          XK_Hankaku
          XK_Zenkaku_Hankaku
          XK_Touroku
          XK_Massyo
          XK_Kana_Lock
          XK_Kana_Shift
          XK_Eisu_Shift
          XK_Eisu_toggle
          XK_Kanji_Bangou
          XK_Zen_Koho
          XK_Mae_Koho
          XK_Home
          XK_Left
          XK_Up
          XK_Right
          XK_Down
          XK_Prior
          XK_Page_Up
          XK_Next
          XK_Page_Down
          XK_End
          XK_Begin
          XK_Select
          XK_Print
          XK_Execute
          XK_Insert
          XK_Undo
          XK_Redo
          XK_Menu
          XK_Find
          XK_Cancel
          XK_Help
          XK_Break
          XK_Mode_switch
          XK_script_switch
          XK_Num_Lock
          XK_KP_Space
          XK_KP_Tab
          XK_KP_Enter
          XK_KP_F1
          XK_KP_F2
          XK_KP_F3
          XK_KP_F4
          XK_KP_Home
          XK_KP_Left
          XK_KP_Up
          XK_KP_Right
          XK_KP_Down
          XK_KP_Prior
          XK_KP_Page_Up
          XK_KP_Next
          XK_KP_Page_Down
          XK_KP_End
          XK_KP_Begin
          XK_KP_Insert
          XK_KP_Delete
          XK_KP_Equal
          XK_KP_Multiply
          XK_KP_Add
          XK_KP_Separator
          XK_KP_Subtract
          XK_KP_Decimal
          XK_KP_Divide
          XK_KP_0
          XK_KP_1
          XK_KP_2
          XK_KP_3
          XK_KP_4
          XK_KP_5
          XK_KP_6
          XK_KP_7
          XK_KP_8
          XK_KP_9
          XK_F1
          XK_F2
          XK_F3
          XK_F4
          XK_F5
          XK_F6
          XK_F7
          XK_F8
          XK_F9
          XK_F10
          XK_F11
          XK_L1
          XK_F12
          XK_L2
          XK_F13
          XK_L3
          XK_F14
          XK_L4
          XK_F15
          XK_L5
          XK_F16
          XK_L6
          XK_F17
          XK_L7
          XK_F18
          XK_L8
          XK_F19
          XK_L9
          XK_F20
          XK_L10
          XK_F21
          XK_R1
          XK_F22
          XK_R2
          XK_F23
          XK_R3
          XK_F24
          XK_R4
          XK_F25
          XK_R5
          XK_F26
          XK_R6
          XK_F27
          XK_R7
          XK_F28
          XK_R8
          XK_F29
          XK_R9
          XK_F30
          XK_R10
          XK_F31
          XK_R11
          XK_F32
          XK_R12
          XK_F33
          XK_R13
          XK_F34
          XK_R14
          XK_F35
          XK_R15



          XK_Shift_L
          XK_Shift_R
          XK_Control_L
          XK_Control_R
          XK_Caps_Lock
          XK_Shift_Lock

          XK_Meta_L
          XK_Meta_R
          XK_Alt_L
          XK_Alt_R
          XK_Super_L
          XK_Super_R
          XK_Hyper_L
          XK_Hyper_R




          XK_ISO_Lock
          XK_ISO_Level2_Latch
          XK_ISO_Level3_Shift
          XK_ISO_Level3_Latch
          XK_ISO_Level3_Lock
          XK_ISO_Level5_Shift
          XK_ISO_Level5_Latch
          XK_ISO_Level5_Lock
          XK_ISO_Group_Shift
          XK_ISO_Group_Latch
          XK_ISO_Group_Lock
          XK_ISO_Next_Group
          XK_ISO_Next_Group_Lock
          XK_ISO_Prev_Group
          XK_ISO_Prev_Group_Lock
          XK_ISO_First_Group
          XK_ISO_First_Group_Lock
          XK_ISO_Last_Group
          XK_ISO_Last_Group_Lock

          XK_ISO_Left_Tab
          XK_ISO_Move_Line_Up
          XK_ISO_Move_Line_Down
          XK_ISO_Partial_Line_Up
          XK_ISO_Partial_Line_Down
          XK_ISO_Partial_Space_Left
          XK_ISO_Partial_Space_Right
          XK_ISO_Set_Margin_Left
          XK_ISO_Set_Margin_Right
          XK_ISO_Release_Margin_Left
          XK_ISO_Release_Margin_Right
          XK_ISO_Release_Both_Margins
          XK_ISO_Fast_Cursor_Left
          XK_ISO_Fast_Cursor_Right
          XK_ISO_Fast_Cursor_Up
          XK_ISO_Fast_Cursor_Down
          XK_ISO_Continuous_Underline
          XK_ISO_Discontinuous_Underline
          XK_ISO_Emphasize
          XK_ISO_Center_Object
          XK_ISO_Enter

          XK_dead_grave
          XK_dead_acute
          XK_dead_circumflex
          XK_dead_tilde
          XK_dead_macron
          XK_dead_breve
          XK_dead_abovedot
          XK_dead_diaeresis
          XK_dead_abovering
          XK_dead_doubleacute
          XK_dead_caron
          XK_dead_cedilla
          XK_dead_ogonek
          XK_dead_iota
          XK_dead_voiced_sound
          XK_dead_semivoiced_sound
          XK_dead_belowdot
          XK_dead_hook
          XK_dead_horn
          XK_dead_stroke
          XK_dead_abovecomma
          XK_dead_psili
          XK_dead_abovereversedcomma
          XK_dead_dasia

          XK_First_Virtual_Screen
          XK_Prev_Virtual_Screen
          XK_Next_Virtual_Screen
          XK_Last_Virtual_Screen
          XK_Terminate_Server

          XK_AccessX_Enable
          XK_AccessX_Feedback_Enable
          XK_RepeatKeys_Enable
          XK_SlowKeys_Enable
          XK_BounceKeys_Enable
          XK_StickyKeys_Enable
          XK_MouseKeys_Enable
          XK_MouseKeys_Accel_Enable
          XK_Overlay1_Enable
          XK_Overlay2_Enable
          XK_AudibleBell_Enable

          XK_Pointer_Left
          XK_Pointer_Right
          XK_Pointer_Up
          XK_Pointer_Down
          XK_Pointer_UpLeft
          XK_Pointer_UpRight
          XK_Pointer_DownLeft
          XK_Pointer_DownRight
          XK_Pointer_Button_Dflt
          XK_Pointer_Button1
          XK_Pointer_Button2
          XK_Pointer_Button3
          XK_Pointer_Button4
          XK_Pointer_Button5
          XK_Pointer_DblClick_Dflt
          XK_Pointer_DblClick1
          XK_Pointer_DblClick2
          XK_Pointer_DblClick3
          XK_Pointer_DblClick4
          XK_Pointer_DblClick5
          XK_Pointer_Drag_Dflt
          XK_Pointer_Drag1
          XK_Pointer_Drag2
          XK_Pointer_Drag3
          XK_Pointer_Drag4
          XK_Pointer_Drag5

          XK_Pointer_EnableKeys
          XK_Pointer_Accelerate
          XK_Pointer_DfltBtnNext
          XK_Pointer_DfltBtnPrev



          XK_3270_Duplicate
          XK_3270_FieldMark
          XK_3270_Right2
          XK_3270_Left2
          XK_3270_BackTab
          XK_3270_EraseEOF
          XK_3270_EraseInput
          XK_3270_Reset
          XK_3270_Quit
          XK_3270_PA1
          XK_3270_PA2
          XK_3270_PA3
          XK_3270_Test
          XK_3270_Attn
          XK_3270_CursorBlink
          XK_3270_AltCursor
          XK_3270_KeyClick
          XK_3270_Jump
          XK_3270_Ident
          XK_3270_Rule
          XK_3270_Copy
          XK_3270_Play
          XK_3270_Setup
          XK_3270_Record
          XK_3270_ChangeScreen
          XK_3270_DeleteWord
          XK_3270_ExSelect
          XK_3270_CursorSelect
          XK_3270_PrintScreen
          XK_3270_Enter


          XK_space
          XK_exclam
          XK_quotedbl
          XK_numbersign
          XK_dollar
          XK_percent
          XK_ampersand
          XK_apostrophe
          XK_quoteright
          XK_parenleft
          XK_parenright
          XK_asterisk
          XK_plus
          XK_comma
          XK_minus
          XK_period
          XK_slash
          XK_0
          XK_1
          XK_2
          XK_3
          XK_4
          XK_5
          XK_6
          XK_7
          XK_8
          XK_9
          XK_colon
          XK_semicolon
          XK_less
          XK_equal
          XK_greater
          XK_question
          XK_at
          XK_A
          XK_B
          XK_C
          XK_D
          XK_E
          XK_F
          XK_G
          XK_H
          XK_I
          XK_J
          XK_K
          XK_L
          XK_M
          XK_N
          XK_O
          XK_P
          XK_Q
          XK_R
          XK_S
          XK_T
          XK_U
          XK_V
          XK_W
          XK_X
          XK_Y
          XK_Z
          XK_bracketleft
          XK_backslash
          XK_bracketright
          XK_asciicircum
          XK_underscore
          XK_grave
          XK_quoteleft
          XK_a
          XK_b
          XK_c
          XK_d
          XK_e
          XK_f
          XK_g
          XK_h
          XK_i
          XK_j
          XK_k
          XK_l
          XK_m
          XK_n
          XK_o
          XK_p
          XK_q
          XK_r
          XK_s
          XK_t
          XK_u
          XK_v
          XK_w
          XK_x
          XK_y
          XK_z
          XK_braceleft
          XK_bar
          XK_braceright
          XK_asciitilde

          XK_nobreakspace
          XK_exclamdown
          XK_cent
          XK_sterling
          XK_currency
          XK_yen
          XK_brokenbar
          XK_section
          XK_diaeresis
          XK_copyright
          XK_ordfeminine
          XK_guillemotleft
          XK_notsign
          XK_hyphen
          XK_registered
          XK_macron
          XK_degree
          XK_plusminus
          XK_twosuperior
          XK_threesuperior
          XK_acute
          XK_mu
          XK_paragraph
          XK_periodcentered
          XK_cedilla
          XK_onesuperior
          XK_masculine
          XK_guillemotright
          XK_onequarter
          XK_onehalf
          XK_threequarters
          XK_questiondown
          XK_Agrave
          XK_Aacute
          XK_Acircumflex
          XK_Atilde
          XK_Adiaeresis
          XK_Aring
          XK_AE
          XK_Ccedilla
          XK_Egrave
          XK_Eacute
          XK_Ecircumflex
          XK_Ediaeresis
          XK_Igrave
          XK_Iacute
          XK_Icircumflex
          XK_Idiaeresis
          XK_ETH
          XK_Eth
          XK_Ntilde
          XK_Ograve
          XK_Oacute
          XK_Ocircumflex
          XK_Otilde
          XK_Odiaeresis
          XK_multiply
          XK_Oslash
          XK_Ooblique
          XK_Ugrave
          XK_Uacute
          XK_Ucircumflex
          XK_Udiaeresis
          XK_Yacute
          XK_THORN
          XK_Thorn
          XK_ssharp
          XK_agrave
          XK_aacute
          XK_acircumflex
          XK_atilde
          XK_adiaeresis
          XK_aring
          XK_ae
          XK_ccedilla
          XK_egrave
          XK_eacute
          XK_ecircumflex
          XK_ediaeresis
          XK_igrave
          XK_iacute
          XK_icircumflex
          XK_idiaeresis
          XK_eth
          XK_ntilde
          XK_ograve
          XK_oacute
          XK_ocircumflex
          XK_otilde
          XK_odiaeresis
          XK_division
          XK_oslash
          XK_ooblique
          XK_ugrave
          XK_uacute
          XK_ucircumflex
          XK_udiaeresis
          XK_yacute
          XK_thorn
          XK_ydiaeresis)

  (import (rnrs))

  (define XK_VoidSymbol                  #xffffff)  
  (define XK_BackSpace                     #xff08)  
  (define XK_Tab                           #xff09)
  (define XK_Linefeed                      #xff0a)  
  (define XK_Clear                         #xff0b)
  (define XK_Return                        #xff0d)  
  (define XK_Pause                         #xff13)  
  (define XK_Scroll_Lock                   #xff14)
  (define XK_Sys_Req                       #xff15)
  (define XK_Escape                        #xff1b)
  (define XK_Delete                        #xffff)  
  (define XK_Multi_key                     #xff20)  
  (define XK_Codeinput                     #xff37)
  (define XK_SingleCandidate               #xff3c)
  (define XK_MultipleCandidate             #xff3d)
  (define XK_PreviousCandidate             #xff3e)
  (define XK_Kanji                         #xff21)  
  (define XK_Muhenkan                      #xff22)  
  (define XK_Henkan_Mode                   #xff23)  
  (define XK_Henkan                        #xff23)  
  (define XK_Romaji                        #xff24)  
  (define XK_Hiragana                      #xff25)  
  (define XK_Katakana                      #xff26)  
  (define XK_Hiragana_Katakana             #xff27)  
  (define XK_Zenkaku                       #xff28)  
  (define XK_Hankaku                       #xff29)  
  (define XK_Zenkaku_Hankaku               #xff2a)  
  (define XK_Touroku                       #xff2b)  
  (define XK_Massyo                        #xff2c)  
  (define XK_Kana_Lock                     #xff2d)  
  (define XK_Kana_Shift                    #xff2e)  
  (define XK_Eisu_Shift                    #xff2f)  
  (define XK_Eisu_toggle                   #xff30)  
  (define XK_Kanji_Bangou                  #xff37)  
  (define XK_Zen_Koho                      #xff3d)  
  (define XK_Mae_Koho                      #xff3e)  
  (define XK_Home                          #xff50)
  (define XK_Left                          #xff51)  
  (define XK_Up                            #xff52)  
  (define XK_Right                         #xff53)  
  (define XK_Down                          #xff54)  
  (define XK_Prior                         #xff55)  
  (define XK_Page_Up                       #xff55)
  (define XK_Next                          #xff56)  
  (define XK_Page_Down                     #xff56)
  (define XK_End                           #xff57)  
  (define XK_Begin                         #xff58)  
  (define XK_Select                        #xff60)  
  (define XK_Print                         #xff61)
  (define XK_Execute                       #xff62)  
  (define XK_Insert                        #xff63)  
  (define XK_Undo                          #xff65)
  (define XK_Redo                          #xff66)  
  (define XK_Menu                          #xff67)
  (define XK_Find                          #xff68)  
  (define XK_Cancel                        #xff69)  
  (define XK_Help                          #xff6a)  
  (define XK_Break                         #xff6b)
  (define XK_Mode_switch                   #xff7e)  
  (define XK_script_switch                 #xff7e)  
  (define XK_Num_Lock                      #xff7f)
  (define XK_KP_Space                      #xff80)  
  (define XK_KP_Tab                        #xff89)
  (define XK_KP_Enter                      #xff8d)  
  (define XK_KP_F1                         #xff91)  
  (define XK_KP_F2                         #xff92)
  (define XK_KP_F3                         #xff93)
  (define XK_KP_F4                         #xff94)
  (define XK_KP_Home                       #xff95)
  (define XK_KP_Left                       #xff96)
  (define XK_KP_Up                         #xff97)
  (define XK_KP_Right                      #xff98)
  (define XK_KP_Down                       #xff99)
  (define XK_KP_Prior                      #xff9a)
  (define XK_KP_Page_Up                    #xff9a)
  (define XK_KP_Next                       #xff9b)
  (define XK_KP_Page_Down                  #xff9b)
  (define XK_KP_End                        #xff9c)
  (define XK_KP_Begin                      #xff9d)
  (define XK_KP_Insert                     #xff9e)
  (define XK_KP_Delete                     #xff9f)
  (define XK_KP_Equal                      #xffbd)  
  (define XK_KP_Multiply                   #xffaa)
  (define XK_KP_Add                        #xffab)
  (define XK_KP_Separator                  #xffac)  
  (define XK_KP_Subtract                   #xffad)
  (define XK_KP_Decimal                    #xffae)
  (define XK_KP_Divide                     #xffaf)
  (define XK_KP_0                          #xffb0)
  (define XK_KP_1                          #xffb1)
  (define XK_KP_2                          #xffb2)
  (define XK_KP_3                          #xffb3)
  (define XK_KP_4                          #xffb4)
  (define XK_KP_5                          #xffb5)
  (define XK_KP_6                          #xffb6)
  (define XK_KP_7                          #xffb7)
  (define XK_KP_8                          #xffb8)
  (define XK_KP_9                          #xffb9)
  (define XK_F1                            #xffbe)
  (define XK_F2                            #xffbf)
  (define XK_F3                            #xffc0)
  (define XK_F4                            #xffc1)
  (define XK_F5                            #xffc2)
  (define XK_F6                            #xffc3)
  (define XK_F7                            #xffc4)
  (define XK_F8                            #xffc5)
  (define XK_F9                            #xffc6)
  (define XK_F10                           #xffc7)
  (define XK_F11                           #xffc8)
  (define XK_L1                            #xffc8)
  (define XK_F12                           #xffc9)
  (define XK_L2                            #xffc9)
  (define XK_F13                           #xffca)
  (define XK_L3                            #xffca)
  (define XK_F14                           #xffcb)
  (define XK_L4                            #xffcb)
  (define XK_F15                           #xffcc)
  (define XK_L5                            #xffcc)
  (define XK_F16                           #xffcd)
  (define XK_L6                            #xffcd)
  (define XK_F17                           #xffce)
  (define XK_L7                            #xffce)
  (define XK_F18                           #xffcf)
  (define XK_L8                            #xffcf)
  (define XK_F19                           #xffd0)
  (define XK_L9                            #xffd0)
  (define XK_F20                           #xffd1)
  (define XK_L10                           #xffd1)
  (define XK_F21                           #xffd2)
  (define XK_R1                            #xffd2)
  (define XK_F22                           #xffd3)
  (define XK_R2                            #xffd3)
  (define XK_F23                           #xffd4)
  (define XK_R3                            #xffd4)
  (define XK_F24                           #xffd5)
  (define XK_R4                            #xffd5)
  (define XK_F25                           #xffd6)
  (define XK_R5                            #xffd6)
  (define XK_F26                           #xffd7)
  (define XK_R6                            #xffd7)
  (define XK_F27                           #xffd8)
  (define XK_R7                            #xffd8)
  (define XK_F28                           #xffd9)
  (define XK_R8                            #xffd9)
  (define XK_F29                           #xffda)
  (define XK_R9                            #xffda)
  (define XK_F30                           #xffdb)
  (define XK_R10                           #xffdb)
  (define XK_F31                           #xffdc)
  (define XK_R11                           #xffdc)
  (define XK_F32                           #xffdd)
  (define XK_R12                           #xffdd)
  (define XK_F33                           #xffde)
  (define XK_R13                           #xffde)
  (define XK_F34                           #xffdf)
  (define XK_R14                           #xffdf)
  (define XK_F35                           #xffe0)
  (define XK_R15                           #xffe0)



  (define XK_Shift_L                       #xffe1)  
  (define XK_Shift_R                       #xffe2)  
  (define XK_Control_L                     #xffe3)  
  (define XK_Control_R                     #xffe4)  
  (define XK_Caps_Lock                     #xffe5)  
  (define XK_Shift_Lock                    #xffe6)  

  (define XK_Meta_L                        #xffe7)  
  (define XK_Meta_R                        #xffe8)  
  (define XK_Alt_L                         #xffe9)  
  (define XK_Alt_R                         #xffea)  
  (define XK_Super_L                       #xffeb)  
  (define XK_Super_R                       #xffec)  
  (define XK_Hyper_L                       #xffed)  
  (define XK_Hyper_R                       #xffee)  




  (define XK_ISO_Lock                      #xfe01)
  (define XK_ISO_Level2_Latch              #xfe02)
  (define XK_ISO_Level3_Shift              #xfe03)
  (define XK_ISO_Level3_Latch              #xfe04)
  (define XK_ISO_Level3_Lock               #xfe05)
  (define XK_ISO_Level5_Shift              #xfe11)
  (define XK_ISO_Level5_Latch              #xfe12)
  (define XK_ISO_Level5_Lock               #xfe13)
  (define XK_ISO_Group_Shift               #xff7e)  
  (define XK_ISO_Group_Latch               #xfe06)
  (define XK_ISO_Group_Lock                #xfe07)
  (define XK_ISO_Next_Group                #xfe08)
  (define XK_ISO_Next_Group_Lock           #xfe09)
  (define XK_ISO_Prev_Group                #xfe0a)
  (define XK_ISO_Prev_Group_Lock           #xfe0b)
  (define XK_ISO_First_Group               #xfe0c)
  (define XK_ISO_First_Group_Lock          #xfe0d)
  (define XK_ISO_Last_Group                #xfe0e)
  (define XK_ISO_Last_Group_Lock           #xfe0f)

  (define XK_ISO_Left_Tab                  #xfe20)
  (define XK_ISO_Move_Line_Up              #xfe21)
  (define XK_ISO_Move_Line_Down            #xfe22)
  (define XK_ISO_Partial_Line_Up           #xfe23)
  (define XK_ISO_Partial_Line_Down         #xfe24)
  (define XK_ISO_Partial_Space_Left        #xfe25)
  (define XK_ISO_Partial_Space_Right       #xfe26)
  (define XK_ISO_Set_Margin_Left           #xfe27)
  (define XK_ISO_Set_Margin_Right          #xfe28)
  (define XK_ISO_Release_Margin_Left       #xfe29)
  (define XK_ISO_Release_Margin_Right      #xfe2a)
  (define XK_ISO_Release_Both_Margins      #xfe2b)
  (define XK_ISO_Fast_Cursor_Left          #xfe2c)
  (define XK_ISO_Fast_Cursor_Right         #xfe2d)
  (define XK_ISO_Fast_Cursor_Up            #xfe2e)
  (define XK_ISO_Fast_Cursor_Down          #xfe2f)
  (define XK_ISO_Continuous_Underline      #xfe30)
  (define XK_ISO_Discontinuous_Underline   #xfe31)
  (define XK_ISO_Emphasize                 #xfe32)
  (define XK_ISO_Center_Object             #xfe33)
  (define XK_ISO_Enter                     #xfe34)

  (define XK_dead_grave                    #xfe50)
  (define XK_dead_acute                    #xfe51)
  (define XK_dead_circumflex               #xfe52)
  (define XK_dead_tilde                    #xfe53)
  (define XK_dead_macron                   #xfe54)
  (define XK_dead_breve                    #xfe55)
  (define XK_dead_abovedot                 #xfe56)
  (define XK_dead_diaeresis                #xfe57)
  (define XK_dead_abovering                #xfe58)
  (define XK_dead_doubleacute              #xfe59)
  (define XK_dead_caron                    #xfe5a)
  (define XK_dead_cedilla                  #xfe5b)
  (define XK_dead_ogonek                   #xfe5c)
  (define XK_dead_iota                     #xfe5d)
  (define XK_dead_voiced_sound             #xfe5e)
  (define XK_dead_semivoiced_sound         #xfe5f)
  (define XK_dead_belowdot                 #xfe60)
  (define XK_dead_hook                     #xfe61)
  (define XK_dead_horn                     #xfe62)
  (define XK_dead_stroke                   #xfe63)
  (define XK_dead_abovecomma               #xfe64)
  (define XK_dead_psili                    #xfe64)  
  (define XK_dead_abovereversedcomma       #xfe65)
  (define XK_dead_dasia                    #xfe66)  

  (define XK_First_Virtual_Screen          #xfed0)
  (define XK_Prev_Virtual_Screen           #xfed1)
  (define XK_Next_Virtual_Screen           #xfed2)
  (define XK_Last_Virtual_Screen           #xfed4)
  (define XK_Terminate_Server              #xfed5)

  (define XK_AccessX_Enable                #xfe70)
  (define XK_AccessX_Feedback_Enable       #xfe71)
  (define XK_RepeatKeys_Enable             #xfe72)
  (define XK_SlowKeys_Enable               #xfe73)
  (define XK_BounceKeys_Enable             #xfe74)
  (define XK_StickyKeys_Enable             #xfe75)
  (define XK_MouseKeys_Enable              #xfe76)
  (define XK_MouseKeys_Accel_Enable        #xfe77)
  (define XK_Overlay1_Enable               #xfe78)
  (define XK_Overlay2_Enable               #xfe79)
  (define XK_AudibleBell_Enable            #xfe7a)

  (define XK_Pointer_Left                  #xfee0)
  (define XK_Pointer_Right                 #xfee1)
  (define XK_Pointer_Up                    #xfee2)
  (define XK_Pointer_Down                  #xfee3)
  (define XK_Pointer_UpLeft                #xfee4)
  (define XK_Pointer_UpRight               #xfee5)
  (define XK_Pointer_DownLeft              #xfee6)
  (define XK_Pointer_DownRight             #xfee7)
  (define XK_Pointer_Button_Dflt           #xfee8)
  (define XK_Pointer_Button1               #xfee9)
  (define XK_Pointer_Button2               #xfeea)
  (define XK_Pointer_Button3               #xfeeb)
  (define XK_Pointer_Button4               #xfeec)
  (define XK_Pointer_Button5               #xfeed)
  (define XK_Pointer_DblClick_Dflt         #xfeee)
  (define XK_Pointer_DblClick1             #xfeef)
  (define XK_Pointer_DblClick2             #xfef0)
  (define XK_Pointer_DblClick3             #xfef1)
  (define XK_Pointer_DblClick4             #xfef2)
  (define XK_Pointer_DblClick5             #xfef3)
  (define XK_Pointer_Drag_Dflt             #xfef4)
  (define XK_Pointer_Drag1                 #xfef5)
  (define XK_Pointer_Drag2                 #xfef6)
  (define XK_Pointer_Drag3                 #xfef7)
  (define XK_Pointer_Drag4                 #xfef8)
  (define XK_Pointer_Drag5                 #xfefd)

  (define XK_Pointer_EnableKeys            #xfef9)
  (define XK_Pointer_Accelerate            #xfefa)
  (define XK_Pointer_DfltBtnNext           #xfefb)
  (define XK_Pointer_DfltBtnPrev           #xfefc)



  (define XK_3270_Duplicate                #xfd01)
  (define XK_3270_FieldMark                #xfd02)
  (define XK_3270_Right2                   #xfd03)
  (define XK_3270_Left2                    #xfd04)
  (define XK_3270_BackTab                  #xfd05)
  (define XK_3270_EraseEOF                 #xfd06)
  (define XK_3270_EraseInput               #xfd07)
  (define XK_3270_Reset                    #xfd08)
  (define XK_3270_Quit                     #xfd09)
  (define XK_3270_PA1                      #xfd0a)
  (define XK_3270_PA2                      #xfd0b)
  (define XK_3270_PA3                      #xfd0c)
  (define XK_3270_Test                     #xfd0d)
  (define XK_3270_Attn                     #xfd0e)
  (define XK_3270_CursorBlink              #xfd0f)
  (define XK_3270_AltCursor                #xfd10)
  (define XK_3270_KeyClick                 #xfd11)
  (define XK_3270_Jump                     #xfd12)
  (define XK_3270_Ident                    #xfd13)
  (define XK_3270_Rule                     #xfd14)
  (define XK_3270_Copy                     #xfd15)
  (define XK_3270_Play                     #xfd16)
  (define XK_3270_Setup                    #xfd17)
  (define XK_3270_Record                   #xfd18)
  (define XK_3270_ChangeScreen             #xfd19)
  (define XK_3270_DeleteWord               #xfd1a)
  (define XK_3270_ExSelect                 #xfd1b)
  (define XK_3270_CursorSelect             #xfd1c)
  (define XK_3270_PrintScreen              #xfd1d)
  (define XK_3270_Enter                    #xfd1e)


  (define XK_space                         #x0020)  
  (define XK_exclam                        #x0021)  
  (define XK_quotedbl                      #x0022)  
  (define XK_numbersign                    #x0023)  
  (define XK_dollar                        #x0024)  
  (define XK_percent                       #x0025)  
  (define XK_ampersand                     #x0026)  
  (define XK_apostrophe                    #x0027)  
  (define XK_quoteright                    #x0027)  
  (define XK_parenleft                     #x0028)  
  (define XK_parenright                    #x0029)  
  (define XK_asterisk                      #x002a)  
  (define XK_plus                          #x002b)  
  (define XK_comma                         #x002c)  
  (define XK_minus                         #x002d)  
  (define XK_period                        #x002e)  
  (define XK_slash                         #x002f)  
  (define XK_0                             #x0030)  
  (define XK_1                             #x0031)  
  (define XK_2                             #x0032)  
  (define XK_3                             #x0033)  
  (define XK_4                             #x0034)  
  (define XK_5                             #x0035)  
  (define XK_6                             #x0036)  
  (define XK_7                             #x0037)  
  (define XK_8                             #x0038)  
  (define XK_9                             #x0039)  
  (define XK_colon                         #x003a)  
  (define XK_semicolon                     #x003b)  
  (define XK_less                          #x003c)  
  (define XK_equal                         #x003d)  
  (define XK_greater                       #x003e)  
  (define XK_question                      #x003f)  
  (define XK_at                            #x0040)  
  (define XK_A                             #x0041)  
  (define XK_B                             #x0042)  
  (define XK_C                             #x0043)  
  (define XK_D                             #x0044)  
  (define XK_E                             #x0045)  
  (define XK_F                             #x0046)  
  (define XK_G                             #x0047)  
  (define XK_H                             #x0048)  
  (define XK_I                             #x0049)  
  (define XK_J                             #x004a)  
  (define XK_K                             #x004b)  
  (define XK_L                             #x004c)  
  (define XK_M                             #x004d)  
  (define XK_N                             #x004e)  
  (define XK_O                             #x004f)  
  (define XK_P                             #x0050)  
  (define XK_Q                             #x0051)  
  (define XK_R                             #x0052)  
  (define XK_S                             #x0053)  
  (define XK_T                             #x0054)  
  (define XK_U                             #x0055)  
  (define XK_V                             #x0056)  
  (define XK_W                             #x0057)  
  (define XK_X                             #x0058)  
  (define XK_Y                             #x0059)  
  (define XK_Z                             #x005a)  
  (define XK_bracketleft                   #x005b)  
  (define XK_backslash                     #x005c)  
  (define XK_bracketright                  #x005d)  
  (define XK_asciicircum                   #x005e)  
  (define XK_underscore                    #x005f)  
  (define XK_grave                         #x0060)  
  (define XK_quoteleft                     #x0060)  
  (define XK_a                             #x0061)  
  (define XK_b                             #x0062)  
  (define XK_c                             #x0063)  
  (define XK_d                             #x0064)  
  (define XK_e                             #x0065)  
  (define XK_f                             #x0066)  
  (define XK_g                             #x0067)  
  (define XK_h                             #x0068)  
  (define XK_i                             #x0069)  
  (define XK_j                             #x006a)  
  (define XK_k                             #x006b)  
  (define XK_l                             #x006c)  
  (define XK_m                             #x006d)  
  (define XK_n                             #x006e)  
  (define XK_o                             #x006f)  
  (define XK_p                             #x0070)  
  (define XK_q                             #x0071)  
  (define XK_r                             #x0072)  
  (define XK_s                             #x0073)  
  (define XK_t                             #x0074)  
  (define XK_u                             #x0075)  
  (define XK_v                             #x0076)  
  (define XK_w                             #x0077)  
  (define XK_x                             #x0078)  
  (define XK_y                             #x0079)  
  (define XK_z                             #x007a)  
  (define XK_braceleft                     #x007b)  
  (define XK_bar                           #x007c)  
  (define XK_braceright                    #x007d)  
  (define XK_asciitilde                    #x007e)  

  (define XK_nobreakspace                  #x00a0)  
  (define XK_exclamdown                    #x00a1)  
  (define XK_cent                          #x00a2)  
  (define XK_sterling                      #x00a3)  
  (define XK_currency                      #x00a4)  
  (define XK_yen                           #x00a5)  
  (define XK_brokenbar                     #x00a6)  
  (define XK_section                       #x00a7)  
  (define XK_diaeresis                     #x00a8)  
  (define XK_copyright                     #x00a9)  
  (define XK_ordfeminine                   #x00aa)  
  (define XK_guillemotleft                 #x00ab)  
  (define XK_notsign                       #x00ac)  
  (define XK_hyphen                        #x00ad)  
  (define XK_registered                    #x00ae)  
  (define XK_macron                        #x00af)  
  (define XK_degree                        #x00b0)  
  (define XK_plusminus                     #x00b1)  
  (define XK_twosuperior                   #x00b2)  
  (define XK_threesuperior                 #x00b3)  
  (define XK_acute                         #x00b4)  
  (define XK_mu                            #x00b5)  
  (define XK_paragraph                     #x00b6)  
  (define XK_periodcentered                #x00b7)  
  (define XK_cedilla                       #x00b8)  
  (define XK_onesuperior                   #x00b9)  
  (define XK_masculine                     #x00ba)  
  (define XK_guillemotright                #x00bb)  
  (define XK_onequarter                    #x00bc)  
  (define XK_onehalf                       #x00bd)  
  (define XK_threequarters                 #x00be)  
  (define XK_questiondown                  #x00bf)  
  (define XK_Agrave                        #x00c0)  
  (define XK_Aacute                        #x00c1)  
  (define XK_Acircumflex                   #x00c2)  
  (define XK_Atilde                        #x00c3)  
  (define XK_Adiaeresis                    #x00c4)  
  (define XK_Aring                         #x00c5)  
  (define XK_AE                            #x00c6)  
  (define XK_Ccedilla                      #x00c7)  
  (define XK_Egrave                        #x00c8)  
  (define XK_Eacute                        #x00c9)  
  (define XK_Ecircumflex                   #x00ca)  
  (define XK_Ediaeresis                    #x00cb)  
  (define XK_Igrave                        #x00cc)  
  (define XK_Iacute                        #x00cd)  
  (define XK_Icircumflex                   #x00ce)  
  (define XK_Idiaeresis                    #x00cf)  
  (define XK_ETH                           #x00d0)  
  (define XK_Eth                           #x00d0)  
  (define XK_Ntilde                        #x00d1)  
  (define XK_Ograve                        #x00d2)  
  (define XK_Oacute                        #x00d3)  
  (define XK_Ocircumflex                   #x00d4)  
  (define XK_Otilde                        #x00d5)  
  (define XK_Odiaeresis                    #x00d6)  
  (define XK_multiply                      #x00d7)  
  (define XK_Oslash                        #x00d8)  
  (define XK_Ooblique                      #x00d8)  
  (define XK_Ugrave                        #x00d9)  
  (define XK_Uacute                        #x00da)  
  (define XK_Ucircumflex                   #x00db)  
  (define XK_Udiaeresis                    #x00dc)  
  (define XK_Yacute                        #x00dd)  
  (define XK_THORN                         #x00de)  
  (define XK_Thorn                         #x00de)  
  (define XK_ssharp                        #x00df)  
  (define XK_agrave                        #x00e0)  
  (define XK_aacute                        #x00e1)  
  (define XK_acircumflex                   #x00e2)  
  (define XK_atilde                        #x00e3)  
  (define XK_adiaeresis                    #x00e4)  
  (define XK_aring                         #x00e5)  
  (define XK_ae                            #x00e6)  
  (define XK_ccedilla                      #x00e7)  
  (define XK_egrave                        #x00e8)  
  (define XK_eacute                        #x00e9)  
  (define XK_ecircumflex                   #x00ea)  
  (define XK_ediaeresis                    #x00eb)  
  (define XK_igrave                        #x00ec)  
  (define XK_iacute                        #x00ed)  
  (define XK_icircumflex                   #x00ee)  
  (define XK_idiaeresis                    #x00ef)  
  (define XK_eth                           #x00f0)  
  (define XK_ntilde                        #x00f1)  
  (define XK_ograve                        #x00f2)  
  (define XK_oacute                        #x00f3)  
  (define XK_ocircumflex                   #x00f4)  
  (define XK_otilde                        #x00f5)  
  (define XK_odiaeresis                    #x00f6)  
  (define XK_division                      #x00f7)  
  (define XK_oslash                        #x00f8)  
  (define XK_ooblique                      #x00f8)  
  (define XK_ugrave                        #x00f9)  
  (define XK_uacute                        #x00fa)  
  (define XK_ucircumflex                   #x00fb)  
  (define XK_udiaeresis                    #x00fc)  
  (define XK_yacute                        #x00fd)  
  (define XK_thorn                         #x00fe)  
  (define XK_ydiaeresis                    #x00ff)  

  )