SpriteAnimFrameData: ; 8d6e6
	dw .Frameset_00 ; SPRITE_ANIM_FRAMESET_NULL
	dw .Frameset_01 ; SPRITE_ANIM_FRAMESET_PARTY_MON
	dw .Frameset_02 ; SPRITE_ANIM_FRAMESET_PARTY_MON_WITH_MAIL
	dw .Frameset_03 ; SPRITE_ANIM_FRAMESET_PARTY_MON_WITH_ITEM
	dw .Frameset_04 ; SPRITE_ANIM_FRAMESET_PARTY_MON_FAST
	dw .Frameset_05 ; SPRITE_ANIM_FRAMESET_PARTY_MON_WITH_MAIL_FAST
	dw .Frameset_06 ; SPRITE_ANIM_FRAMESET_PARTY_MON_WITH_ITEM_FAST
	dw .Frameset_08 ; SPRITE_ANIM_FRAMESET_TEXT_ENTRY_CURSOR
	dw .Frameset_09 ; SPRITE_ANIM_FRAMESET_TEXT_ENTRY_CURSOR_BIG
	dw .Frameset_0a ; SPRITE_ANIM_FRAMESET_GAMEFREAK_LOGO
	dw .Frameset_0d ; SPRITE_ANIM_FRAMESET_SLOTS_GOLEM
	dw .Frameset_0e ; SPRITE_ANIM_FRAMESET_SLOTS_CHANSEY
	dw .Frameset_0f ; SPRITE_ANIM_FRAMESET_SLOTS_CHANSEY_2
	dw .Frameset_10 ; SPRITE_ANIM_FRAMESET_SLOTS_EGG
	dw .Frameset_11 ; SPRITE_ANIM_FRAMESET_RED_WALK
	dw .Frameset_12 ; SPRITE_ANIM_FRAMESET_STILL_CURSOR
	dw .Frameset_13 ; SPRITE_ANIM_FRAMESET_TRADE_POKE_BALL
	dw .Frameset_14 ; SPRITE_ANIM_FRAMESET_TRADE_POKE_BALL_0
	dw .Frameset_15 ; SPRITE_ANIM_FRAMESET_TRADE_POOF
	dw .Frameset_16 ; SPRITE_ANIM_FRAMESET_TRADE_TUBE_BULGE
	dw .Frameset_17 ; SPRITE_ANIM_FRAMESET_TRADEMON_ICON
	dw .Frameset_18 ; SPRITE_ANIM_FRAMESET_TRADEMON_BUBBLE
	dw .Frameset_19 ; SPRITE_ANIM_FRAMESET_EVOLUTION_BALL_OF_LIGHT
	dw .Frameset_1a ; SPRITE_ANIM_FRAMESET_RADIO_TUNING_KNOB
	dw .Frameset_1b ; SPRITE_ANIM_FRAMESET_MAGNET_TRAIN_RED
	dw .Frameset_1d ; SPRITE_ANIM_FRAMESET_LEAF
	dw .Frameset_1e ; SPRITE_ANIM_FRAMESET_CUT_TREE
	dw .Frameset_1f ; SPRITE_ANIM_FRAMESET_EGG_CRACK
	dw .Frameset_20 ; SPRITE_ANIM_FRAMESET_EGG_HATCH
	dw .Frameset_21 ; SPRITE_ANIM_FRAMESET_EGG_HATCH_2
	dw .Frameset_22 ; SPRITE_ANIM_FRAMESET_EGG_HATCH_3
	dw .Frameset_23 ; SPRITE_ANIM_FRAMESET_EGG_HATCH_4
	dw .Frameset_25 ; SPRITE_ANIM_FRAMESET_HEADBUTT
	dw .Frameset_2d ; SPRITE_ANIM_FRAMESET_BLUE_WALK
	dw .Frameset_2e ; SPRITE_ANIM_FRAMESET_MAGNET_TRAIN_BLUE
	dw .Frameset_35 ; SPRITE_ANIM_FRAMESET_INTRO_SUICUNE
	dw .Frameset_36 ; SPRITE_ANIM_FRAMESET_INTRO_SUICUNE_2
	dw .Frameset_37 ; SPRITE_ANIM_FRAMESET_INTRO_PICHU
	dw .Frameset_38 ; SPRITE_ANIM_FRAMESET_INTRO_WOOPER
	dw .Frameset_39 ; SPRITE_ANIM_FRAMESET_INTRO_UNOWN_1
	dw .Frameset_3a ; SPRITE_ANIM_FRAMESET_INTRO_UNOWN_2
	dw .Frameset_3b ; SPRITE_ANIM_FRAMESET_INTRO_UNOWN_3
	dw .Frameset_3c ; SPRITE_ANIM_FRAMESET_INTRO_UNOWN_4
	dw .Frameset_3d ; SPRITE_ANIM_FRAMESET_INTRO_UNOWN_F_2
	dw .Frameset_3e ; SPRITE_ANIM_FRAMESET_INTRO_SUICUNE_AWAY
	dw .Frameset_3f ; SPRITE_ANIM_FRAMESET_INTRO_UNOWN_F
	dw .Frameset_40 ; SPRITE_ANIM_FRAMESET_CELEBI_LEFT
	dw .Frameset_41 ; SPRITE_ANIM_FRAMESET_CELEBI_RIGHT
	dw .Frameset_42 ; SPRITE_ANIM_FRAMESET_FLY_MON
; 8d76a

; OAM idx (see SpriteAnimOAMData), flip flags/duration
.Frameset_00:
	frame SPRITE_ANIM_FRAME_IDX_00, 32
	endanim

.Frameset_01:
	frame SPRITE_ANIM_FRAME_IDX_00,  8
	frame SPRITE_ANIM_FRAME_IDX_01,  8
	dorestart

.Frameset_02:
	frame SPRITE_ANIM_FRAME_IDX_3D,  8
	frame SPRITE_ANIM_FRAME_IDX_3E,  8
	dorestart

.Frameset_03:
	frame SPRITE_ANIM_FRAME_IDX_3F,  8
	frame SPRITE_ANIM_FRAME_IDX_40,  8
	dorestart

.Frameset_04:
	frame SPRITE_ANIM_FRAME_IDX_00,  4
	frame SPRITE_ANIM_FRAME_IDX_01,  4
	dorestart

.Frameset_05:
	frame SPRITE_ANIM_FRAME_IDX_3D,  4
	frame SPRITE_ANIM_FRAME_IDX_3E,  4
	dorestart

.Frameset_06:
	frame SPRITE_ANIM_FRAME_IDX_3F,  4
	frame SPRITE_ANIM_FRAME_IDX_40,  4
	dorestart

.Frameset_11:
	frame SPRITE_ANIM_FRAME_IDX_37,  8
	frame SPRITE_ANIM_FRAME_IDX_38,  8
	frame SPRITE_ANIM_FRAME_IDX_37,  8
	frame SPRITE_ANIM_FRAME_IDX_38,  8, OAM_X_FLIP
	dorestart

.Frameset_2d:
	frame SPRITE_ANIM_FRAME_IDX_63,  8
	frame SPRITE_ANIM_FRAME_IDX_64,  8
	frame SPRITE_ANIM_FRAME_IDX_63,  8
	frame SPRITE_ANIM_FRAME_IDX_64,  8, OAM_X_FLIP
	dorestart

.Frameset_2e:
	frame SPRITE_ANIM_FRAME_IDX_65,  8
	frame SPRITE_ANIM_FRAME_IDX_66,  8
	frame SPRITE_ANIM_FRAME_IDX_65,  8
	frame SPRITE_ANIM_FRAME_IDX_66,  8, OAM_X_FLIP
	dorestart

.Frameset_08:
	frame SPRITE_ANIM_FRAME_IDX_20,  1
	dorepeat  1
	dorestart

.Frameset_09:
	frame SPRITE_ANIM_FRAME_IDX_21,  1
	dorepeat  1
	dorestart

.Frameset_0a:
	frame SPRITE_ANIM_FRAME_IDX_81, 12
	frame SPRITE_ANIM_FRAME_IDX_82,  1
	frame SPRITE_ANIM_FRAME_IDX_83,  1
	frame SPRITE_ANIM_FRAME_IDX_82,  4
	frame SPRITE_ANIM_FRAME_IDX_81, 12
	frame SPRITE_ANIM_FRAME_IDX_82, 12
	frame SPRITE_ANIM_FRAME_IDX_83,  4
	frame SPRITE_ANIM_FRAME_IDX_84, 32
	frame SPRITE_ANIM_FRAME_IDX_85,  3
	frame SPRITE_ANIM_FRAME_IDX_86,  3
	frame SPRITE_ANIM_FRAME_IDX_87,  4
	frame SPRITE_ANIM_FRAME_IDX_88,  4
	frame SPRITE_ANIM_FRAME_IDX_89,  4
	frame SPRITE_ANIM_FRAME_IDX_8A, 10
	frame SPRITE_ANIM_FRAME_IDX_8B,  7
	endanim

.Frameset_0d:
	frame SPRITE_ANIM_FRAME_IDX_27,  7
	frame SPRITE_ANIM_FRAME_IDX_28,  7
	frame SPRITE_ANIM_FRAME_IDX_27,  7, OAM_Y_FLIP
	frame SPRITE_ANIM_FRAME_IDX_28,  7, OAM_X_FLIP
	dorestart

.Frameset_0e:
	frame SPRITE_ANIM_FRAME_IDX_29,  7
	frame SPRITE_ANIM_FRAME_IDX_2A,  7
	frame SPRITE_ANIM_FRAME_IDX_29,  7
	frame SPRITE_ANIM_FRAME_IDX_2B,  7
	dorestart

.Frameset_0f:
	frame SPRITE_ANIM_FRAME_IDX_29,  7
	frame SPRITE_ANIM_FRAME_IDX_2C,  7
	frame SPRITE_ANIM_FRAME_IDX_2D,  7
	frame SPRITE_ANIM_FRAME_IDX_2C,  7
	frame SPRITE_ANIM_FRAME_IDX_29,  7
	endanim

.Frameset_10:
	frame SPRITE_ANIM_FRAME_IDX_2E, 20
	endanim

.Frameset_12:
	frame SPRITE_ANIM_FRAME_IDX_2F, 32
	endanim

.Frameset_13:
	frame SPRITE_ANIM_FRAME_IDX_30, 32
	endanim

.Frameset_14:
	frame SPRITE_ANIM_FRAME_IDX_30,  3
	frame SPRITE_ANIM_FRAME_IDX_31,  3
	frame SPRITE_ANIM_FRAME_IDX_30,  3
	frame SPRITE_ANIM_FRAME_IDX_31,  3, OAM_X_FLIP
	dorestart

.Frameset_15:
	frame SPRITE_ANIM_FRAME_IDX_32,  4
	frame SPRITE_ANIM_FRAME_IDX_33,  4
	frame SPRITE_ANIM_FRAME_IDX_34,  4
	delanim

.Frameset_16:
	frame SPRITE_ANIM_FRAME_IDX_35,  3
	frame SPRITE_ANIM_FRAME_IDX_36,  3
	dorestart

.Frameset_17:
	frame SPRITE_ANIM_FRAME_IDX_37,  7
	frame SPRITE_ANIM_FRAME_IDX_38,  7
	dorestart

.Frameset_18:
	frame SPRITE_ANIM_FRAME_IDX_39, 32
	endanim

.Frameset_19:
	frame SPRITE_ANIM_FRAME_IDX_3B,  2
	frame SPRITE_ANIM_FRAME_IDX_3A,  2
	frame SPRITE_ANIM_FRAME_IDX_3B,  2
	endanim

.Frameset_1a:
	frame SPRITE_ANIM_FRAME_IDX_3C, 32
	endanim

.Frameset_1b:
	frame SPRITE_ANIM_FRAME_IDX_41,  8
	frame SPRITE_ANIM_FRAME_IDX_42,  8
	frame SPRITE_ANIM_FRAME_IDX_41,  8
	frame SPRITE_ANIM_FRAME_IDX_42,  8, OAM_X_FLIP
	dorestart

.Frameset_1d:
	frame SPRITE_ANIM_FRAME_IDX_4F, 32
	endanim

.Frameset_1e:
	frame SPRITE_ANIM_FRAME_IDX_50,  2
	frame SPRITE_ANIM_FRAME_IDX_51, 16
	dorepeat  1
	frame SPRITE_ANIM_FRAME_IDX_52,  1
	dorepeat  1
	frame SPRITE_ANIM_FRAME_IDX_53,  1
	delanim

.Frameset_1f:
	frame SPRITE_ANIM_FRAME_IDX_54, 32
	endanim

.Frameset_20:
	frame SPRITE_ANIM_FRAME_IDX_55, 32
	endanim

.Frameset_21:
	frame SPRITE_ANIM_FRAME_IDX_55, 32, OAM_X_FLIP
	endanim

.Frameset_22:
	frame SPRITE_ANIM_FRAME_IDX_55, 32, OAM_Y_FLIP
	endanim

.Frameset_23:
	frame SPRITE_ANIM_FRAME_IDX_55, 32, OAM_X_FLIP, OAM_Y_FLIP
	endanim

.Frameset_25:
	frame SPRITE_ANIM_FRAME_IDX_50,  2
	frame SPRITE_ANIM_FRAME_IDX_5B,  2
	frame SPRITE_ANIM_FRAME_IDX_50,  2
	frame SPRITE_ANIM_FRAME_IDX_5B,  2, OAM_X_FLIP
	dorestart

.Frameset_35:
	frame SPRITE_ANIM_FRAME_IDX_6E,  3
	frame SPRITE_ANIM_FRAME_IDX_6F,  3
	frame SPRITE_ANIM_FRAME_IDX_70,  3
	frame SPRITE_ANIM_FRAME_IDX_71,  3
	dorestart

.Frameset_36:
	frame SPRITE_ANIM_FRAME_IDX_71,  3
	frame SPRITE_ANIM_FRAME_IDX_6E,  7
	endanim

.Frameset_37:
	frame SPRITE_ANIM_FRAME_IDX_72, 32
	frame SPRITE_ANIM_FRAME_IDX_73,  7
	frame SPRITE_ANIM_FRAME_IDX_74,  7
	endanim

.Frameset_38:
	frame SPRITE_ANIM_FRAME_IDX_75,  3
	endanim

.Frameset_39:
	frame SPRITE_ANIM_FRAME_IDX_76,  3
	frame SPRITE_ANIM_FRAME_IDX_77,  3
	frame SPRITE_ANIM_FRAME_IDX_78,  7
	delanim

.Frameset_3a:
	frame SPRITE_ANIM_FRAME_IDX_76,  3, OAM_X_FLIP
	frame SPRITE_ANIM_FRAME_IDX_77,  3, OAM_X_FLIP
	frame SPRITE_ANIM_FRAME_IDX_78,  7, OAM_X_FLIP
	delanim

.Frameset_3b:
	frame SPRITE_ANIM_FRAME_IDX_76,  3, OAM_Y_FLIP
	frame SPRITE_ANIM_FRAME_IDX_77,  3, OAM_Y_FLIP
	frame SPRITE_ANIM_FRAME_IDX_78,  7, OAM_Y_FLIP
	delanim

.Frameset_3c:
	frame SPRITE_ANIM_FRAME_IDX_76,  3, OAM_X_FLIP, OAM_Y_FLIP
	frame SPRITE_ANIM_FRAME_IDX_77,  3, OAM_X_FLIP, OAM_Y_FLIP
	frame SPRITE_ANIM_FRAME_IDX_78,  7, OAM_X_FLIP, OAM_Y_FLIP
	delanim

.Frameset_3d:
	frame SPRITE_ANIM_FRAME_IDX_79,  3
	frame SPRITE_ANIM_FRAME_IDX_7A,  3
	frame SPRITE_ANIM_FRAME_IDX_7B,  3
	frame SPRITE_ANIM_FRAME_IDX_7C,  7
	frame SPRITE_ANIM_FRAME_IDX_7D,  7
	endanim

.Frameset_3e:
	frame SPRITE_ANIM_FRAME_IDX_7E,  3
	endanim

.Frameset_3f:
	dorepeat 0
	endanim

.Frameset_40:
	frame SPRITE_ANIM_FRAME_IDX_7F,  8
	frame SPRITE_ANIM_FRAME_IDX_80,  8
	endanim

.Frameset_41:
	frame SPRITE_ANIM_FRAME_IDX_7F,  8, OAM_X_FLIP
	frame SPRITE_ANIM_FRAME_IDX_80,  8, OAM_X_FLIP
	endanim

.Frameset_42:
	frame SPRITE_ANIM_FRAME_IDX_8C,  8
	frame SPRITE_ANIM_FRAME_IDX_8D,  8
	dorestart
; 8d94d
