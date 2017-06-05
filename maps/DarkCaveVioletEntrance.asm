const_value set 2
	const DARKCAVEVIOLETENTRANCE_POKE_BALL1
	const DARKCAVEVIOLETENTRANCE_ROCK1
	const DARKCAVEVIOLETENTRANCE_ROCK2
	const DARKCAVEVIOLETENTRANCE_ROCK3
	const DARKCAVEVIOLETENTRANCE_ROCK4
	const DARKCAVEVIOLETENTRANCE_POKE_BALL2
	const DARKCAVEVIOLETENTRANCE_POKE_BALL3
	const DARKCAVEVIOLETENTRANCE_POKE_BALL4
	const DARKCAVEVIOLETENTRANCE_URSARING
	const DARKCAVEVIOLETENTRANCE_PIDGEOTTO
	const DARKCAVEVIOLETENTRANCE_FALKNER

DarkCaveVioletEntrance_MapScriptHeader:
.MapTriggers:
	db 2
	dw .Trigger0
	dw .Trigger1

.MapCallbacks:
	db 0

.Trigger0:
	end

.Trigger1:
	end

DarkCaveVioletEntranceFalknerTrigger:
	waitsfx
	checkdarkness
	iftrue .Darkness
	special SaveMusic
	playmusic MUSIC_JOHTO_TRAINER_BATTLE
	pause 40
	opentext
	writetext DarkCaveVioletEntranceFalknerAttackText
	pause 30
	closetext
	playsound SFX_TACKLE
	applymovement DARKCAVEVIOLETENTRANCE_PIDGEOTTO, DarkCaveVioletEntranceMovementData_PidgeottoAttack
	waitsfx
	pause 30
	cry URSARING
	pause 30
	disappear DARKCAVEVIOLETENTRANCE_URSARING
	pause 15
	special RestoreMusic
	opentext
	writetext DarkCaveVioletEntranceFalknerReturnText
	pause 30
	closetext
	disappear DARKCAVEVIOLETENTRANCE_PIDGEOTTO
	pause 20
	applymovement DARKCAVEVIOLETENTRANCE_FALKNER, DarkCaveVioletEntranceMovementData_FalknerHeadBack
	showemote EMOTE_SHOCK, DARKCAVEVIOLETENTRANCE_FALKNER, 15
	opentext
	writetext DarkCaveVioletEntranceFalknerIntroText
	waitbutton
	closetext
	follow PLAYER, DARKCAVEVIOLETENTRANCE_FALKNER
	applymovement PLAYER, DarkCaveVioletEntranceMovementData_PlayerStepAside
	stopfollow
	spriteface PLAYER, DOWN
	applymovement DARKCAVEVIOLETENTRANCE_FALKNER, DarkCaveVioletEntranceMovementData_FalknerLeave
	disappear DARKCAVEVIOLETENTRANCE_FALKNER
	pause 15
	clearevent EVENT_VIOLET_GYM_FALKNER
	domaptrigger VIOLET_GYM, $1
	dotrigger $1
	end

.Darkness:
	opentext
	writetext DarkCaveVioletEntranceFalknerDarknessText
	waitbutton
	closetext
	applymovement PLAYER, DarkCaveVioletEntranceMovementData_PlayerStepAway
	end

DarkCaveVioletEntrancePotion:
	itemball POTION

DarkCaveVioletEntranceDuskStone:
	itemball DUSK_STONE

DarkCaveVioletEntranceHyperPotion:
	itemball HYPER_POTION

DarkCaveVioletEntranceDireHit:
	itemball DIRE_HIT

DarkCaveVioletEntranceRock:
	jumpstd smashrock

DarkCaveVioletEntranceHiddenElixer:
	dwb EVENT_DARK_CAVE_VIOLET_ENTRANCE_HIDDEN_ELIXER, ELIXER

DarkCaveVioletEntranceMovementData_PidgeottoAttack:
	fix_facing
	big_step_right
	big_step_left
	remove_fixed_facing
	step_end

DarkCaveVioletEntranceMovementData_FalknerHeadBack:
DarkCaveVioletEntranceMovementData_PlayerStepAside:
	step_left
DarkCaveVioletEntranceMovementData_PlayerStepAway:
	step_left
	step_end

DarkCaveVioletEntranceMovementData_FalknerLeave:
	step_down
	step_left
	step_down
	step_down
	step_down
	step_down
	step_end

DarkCaveVioletEntranceFalknerAttackText:
	text "Falkner: Use Wing"
	line "Attack, Pidgeotto!"
	done

DarkCaveVioletEntranceFalknerReturnText:
	text "Good job,"
	line "Pidgeotto."
	done

DarkCaveVioletEntranceFalknerIntroText:
	text "Oh! You must be"
	line "a trainer."

	para "I'm Falkner, the"
	line "Violet #mon"
	cont "Gym Leader."

	para "I don't explore"
	line "caves for fun,"

	para "but that Ursaring"
	line "was attacking"

	para "trainers too weak"
	line "to defend them-"
	cont "selves."

	para "As a Gym Leader,"
	line "it's my job to"

	para "handle this sort"
	line "of situation."

	para "So you're here to"
	line "earn a badge?"

	para "Then meet me at"
	line "the Violet Gym."
	done

DarkCaveVioletEntranceFalknerDarknessText:
	text "Falkner: Is"
	line "someone there?"

	para "Don't come any"
	line "closer!"

	para "It's too dark, you"
	line "could get hurt."
	done

DarkCaveVioletEntrance_MapEventHeader:
.Warps:
	db 3
	warp_def $f, $3, 3, ROUTE_31
	warp_def $1, $11, 2, DARK_CAVE_BLACKTHORN_ENTRANCE
	warp_def $21, $23, 3, ROUTE_46

.XYTriggers:
	db 1
	xy_trigger 0, $2, $5, DarkCaveVioletEntranceFalknerTrigger

.Signposts:
	db 1
	signpost 3, 26, SIGNPOST_ITEM, DarkCaveVioletEntranceHiddenElixer

.PersonEvents:
	db 11
	person_event SPRITE_BALL_CUT_FRUIT, 8, 6, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_ITEMBALL, 0, DarkCaveVioletEntrancePotion, EVENT_DARK_CAVE_VIOLET_ENTRANCE_POTION
	person_event SPRITE_ROCK_BOULDER_FOSSIL, 14, 16, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	person_event SPRITE_ROCK_BOULDER_FOSSIL, 6, 27, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	person_event SPRITE_ROCK_BOULDER_FOSSIL, 14, 7, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	person_event SPRITE_ROCK_BOULDER_FOSSIL, 31, 36, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	person_event SPRITE_BALL_CUT_FRUIT, 22, 36, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_ITEMBALL, 0, DarkCaveVioletEntranceDuskStone, EVENT_DARK_CAVE_VIOLET_ENTRANCE_DUSK_STONE
	person_event SPRITE_BALL_CUT_FRUIT, 9, 35, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_ITEMBALL, 0, DarkCaveVioletEntranceHyperPotion, EVENT_DARK_CAVE_VIOLET_ENTRANCE_HYPER_POTION
	person_event SPRITE_BALL_CUT_FRUIT, 28, 30, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_ITEMBALL, 0, DarkCaveVioletEntranceDireHit, EVENT_DARK_CAVE_VIOLET_ENTRANCE_DIRE_HIT
	person_event SPRITE_URSARING, 2, 10, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_DARK_CAVE_URSARING
	person_event SPRITE_PIDGEOTTO, 2, 9, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_DARK_CAVE_PIDGEOTTO
	person_event SPRITE_FALKNER, 2, 8, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_DARK_CAVE_FALKNER
