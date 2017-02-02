MAX_LEVEL EQU 100
MIN_LEVEL EQU 2
EGG_LEVEL EQU 1
NUM_MOVES EQU 4

REST_TURNS EQU 2
MAX_STAT_LEVEL EQU 13
BASE_STAT_LEVEL EQU 7

; matchups, baseline is $10 for better doubling/halving
SUPER_EFFECTIVE    EQU $20
NOT_VERY_EFFECTIVE EQU $08
NO_EFFECT          EQU 00

	const_def
	const ATTACK
	const DEFENSE
	const SPEED
	const SP_ATTACK
	const SP_DEFENSE
	const ACCURACY
	const EVASION
	const MULTIPLE_STATS ; used by Curse
NUM_LEVEL_STATS EQU const_value

; move struct
	const_def
	const MOVE_ANIM
	const MOVE_EFFECT
	const MOVE_POWER
	const MOVE_TYPE
	const MOVE_ACC
	const MOVE_PP
	const MOVE_CHANCE
	const MOVE_CATEGORY
	const MOVE_LENGTH

; stat constants
const_value SET 1
	const STAT_HP
	const STAT_ATK
	const STAT_DEF
	const STAT_SPD
	const STAT_SATK
	const STAT_SDEF
NUM_STATS EQU const_value

STAT_MIN_NORMAL EQU 5
STAT_MIN_HP EQU 10

; $00 is used instead of $ff for DVs because $ff is the end-of-trainer marker
; ReadTrainerParty converts $00 to $ff when reading DVs

PERFECT_DVS      EQUS "$ff, $ff, $ff"
FAKE_PERFECT_DVS EQUS "$00, $00, $00"

; hidden power dvs
DVS_HP_FIGHTING EQUS "$fc, $cf, $00"
DVS_HP_FLYING   EQUS "$fc, $df, $00"
DVS_HP_POISON   EQUS "$fc, $ef, $00"
DVS_HP_GROUND   EQUS "$fc, $00, $00"
DVS_HP_ROCK     EQUS "$fd, $cf, $00"
DVS_HP_BUG      EQUS "$fd, $df, $00"
DVS_HP_GHOST    EQUS "$fd, $ef, $00"
DVS_HP_STEEL    EQUS "$fd, $00, $00"
DVS_HP_FIRE     EQUS "$fe, $cf, $00"
DVS_HP_WATER    EQUS "$fe, $df, $00"
DVS_HP_GRASS    EQUS "$fe, $ef, $00"
DVS_HP_ELECTRIC EQUS "$fe, $00, $00"
DVS_HP_PSYCHIC  EQUS "$00, $cf, $00"
DVS_HP_ICE      EQUS "$00, $df, $00"
DVS_HP_DRAGON   EQUS "$00, $ef, $00"
DVS_HP_DARK     EQUS "$00, $00, $00"

; nature constants
	const_def
	const HARDY
	const LONELY
	const BRAVE
	const ADAMANT
	const NAUGHTY
	const BOLD
	const DOCILE
	const RELAXED
	const IMPISH
	const LAX
	const TIMID
	const HASTY
	const SERIOUS
	const JOLLY
	const NAIVE
	const MODEST
	const MILD
	const QUIET
	const BASHFUL
	const RASH
	const CALM
	const GENTLE
	const SASSY
	const CAREFUL
	const QUIRKY
NUM_NATURES EQU const_value
NO_NATURE   EQU const_value

; ability constants
	const_def
	const NO_ABILITY
	const STENCH
	const DRIZZLE
	const SPEED_BOOST
	const BATTLE_ARMOR
	const STURDY
	const DAMP
	const LIMBER
	const SAND_VEIL
	const STATIC
	const VOLT_ABSORB
	const WATER_ABSORB
	const OBLIVIOUS
	const CLOUD_NINE
	const COMPOUND_EYES
	const INSOMNIA
	const IMMUNITY
	const FLASH_FIRE
	const SHIELD_DUST
	const OWN_TEMPO
	const SUCTION_CUPS
	const INTIMIDATE
	const SHADOW_TAG
	const LEVITATE
	const EFFECT_SPORE
	const SYNCHRONIZE
	const CLEAR_BODY
	const NATURAL_CURE
	const LIGHTNING_ROD
	const SERENE_GRACE
	const SWIFT_SWIM
	const CHLOROPHYLL
	const ILLUMINATE
	const TRACE
	const HUGE_POWER
	const POISON_POINT
	const INNER_FOCUS
	const MAGMA_ARMOR
	const WATER_VEIL
	const MAGNET_PULL
	const SOUNDPROOF
	const RAIN_DISH
	const SAND_STREAM
	const PRESSURE
	const THICK_FAT
	const EARLY_BIRD
	const FLAME_BODY
	const RUN_AWAY
	const KEEN_EYE
	const HYPER_CUTTER
	const PICKUP
	const HUSTLE
	const CUTE_CHARM
	const STICKY_HOLD
	const SHED_SKIN
	const GUTS
	const MARVEL_SCALE
	const LIQUID_OOZE
	const OVERGROW
	const BLAZE
	const TORRENT
	const SWARM
	const ROCK_HEAD
	const DROUGHT
	const ARENA_TRAP
	const VITAL_SPIRIT
	const SHELL_ARMOR
	const TANGLED_FEET
	const MOTOR_DRIVE
	const RIVALRY
	const STEADFAST
	const SNOW_CLOAK
	const ANGER_POINT
	const UNBURDEN
	const DRY_SKIN
	const DOWNLOAD
	const IRON_FIST
	const POISON_HEAL
	const ADAPTABILITY
	const SKILL_LINK
	const HYDRATION
	const SOLAR_POWER
	const QUICK_FEET
	const SNIPER
	const MAGIC_GUARD
	const NO_GUARD
	const TECHNICIAN
	const LEAF_GUARD
	const MOLD_BREAKER
	const SUPER_LUCK
	const AFTERMATH
	const ANTICIPATION
	const FOREWARN
	const UNAWARE
	const TINTED_LENS
	const FILTER
	const SCRAPPY
	const ICE_BODY
	const SOLID_ROCK
	const SNOW_WARNING
	const FRISK
	const RECKLESS
	const PICKPOCKET
	const SHEER_FORCE
	const UNNERVE
	const DEFIANT
	const CURSED_BODY
	const WEAK_ARMOR
	const MULTISCALE
	const HARVEST
	const MOODY
	const OVERCOAT
	const POISON_TOUCH
	const REGENERATOR
	const BIG_PECKS
	const SAND_RUSH
	const WONDER_SKIN
	const ANALYTIC
	const IMPOSTER
	const INFILTRATOR
	const MOXIE
	const JUSTIFIED
	const RATTLED
	const MAGIC_BOUNCE
	const SAP_SIPPER
	const PRANKSTER
	const SAND_FORCE
	const FUR_COAT
	const COMPETITIVE
	const PIXILATE
	const TANGLING_HAIR
NUM_ABILITIES EQU const_value

ABILITY_1      EQU %00100000
ABILITY_2      EQU %01000000
HIDDEN_ABILITY EQU %01100000

; battle classes
const_value SET 1
	const WILD_BATTLE
	const TRAINER_BATTLE

; battle types
	const_def
	const BATTLETYPE_NORMAL
	const BATTLETYPE_CANLOSE
	const BATTLETYPE_TUTORIAL
	const BATTLETYPE_FISH
	const BATTLETYPE_TREE
	const BATTLETYPE_ROAMING
	const BATTLETYPE_CONTEST
	const BATTLETYPE_GHOST
	const BATTLETYPE_SHINY
	const BATTLETYPE_FORCEITEM
	const BATTLETYPE_TRAP
	const BATTLETYPE_CELEBI
	const BATTLETYPE_SUICUNE
	const BATTLETYPE_HO_OH
	const BATTLETYPE_LUGIA
	const BATTLETYPE_KANTO_LEGEND

; battle variables
	const_def
	const BATTLE_VARS_SUBSTATUS1
	const BATTLE_VARS_SUBSTATUS2
	const BATTLE_VARS_SUBSTATUS3
	const BATTLE_VARS_SUBSTATUS4
	const BATTLE_VARS_SUBSTATUS1_OPP
	const BATTLE_VARS_SUBSTATUS2_OPP
	const BATTLE_VARS_SUBSTATUS3_OPP
	const BATTLE_VARS_SUBSTATUS4_OPP
	const BATTLE_VARS_ABILITY
	const BATTLE_VARS_ABILITY_OPP
	const BATTLE_VARS_STATUS
	const BATTLE_VARS_STATUS_OPP
	const BATTLE_VARS_MOVE_ANIM
	const BATTLE_VARS_MOVE_EFFECT
	const BATTLE_VARS_MOVE_POWER
	const BATTLE_VARS_MOVE_ACCURACY
	const BATTLE_VARS_MOVE_TYPE
	const BATTLE_VARS_MOVE_CATEGORY
	const BATTLE_VARS_MOVE
	const BATTLE_VARS_LAST_COUNTER_MOVE
	const BATTLE_VARS_LAST_COUNTER_MOVE_OPP
	const BATTLE_VARS_LAST_MOVE
	const BATTLE_VARS_LAST_MOVE_OPP

; status
const_value SET 3
	const PSN
	const BRN
	const FRZ
	const PAR
	const SLP ; 7 turns

ALL_STATUS EQU (1 << PSN) + (1 << BRN) + (1 << FRZ) + (1 << PAR) + SLP

; substatus
	enum_start 7, -1
	enum SUBSTATUS_IN_LOVE
	enum SUBSTATUS_ROLLOUT
	enum SUBSTATUS_ENDURE
	enum SUBSTATUS_PERISH
	enum SUBSTATUS_IDENTIFIED
	enum SUBSTATUS_PROTECT
	enum SUBSTATUS_CURSE
	enum SUBSTATUS_NIGHTMARE

	enum_start 7, -1
	enum SUBSTATUS_CONFUSED
	enum SUBSTATUS_FLYING
	enum SUBSTATUS_UNDERGROUND
	enum SUBSTATUS_CHARGED
	enum SUBSTATUS_FLINCHED
	enum SUBSTATUS_IN_LOOP
	enum SUBSTATUS_RAMPAGE
	enum SUBSTATUS_FLASH_FIRE

	enum_start 7, -1
	enum SUBSTATUS_LEECH_SEED
	enum SUBSTATUS_RAGE
	enum SUBSTATUS_RECHARGE
	enum SUBSTATUS_SUBSTITUTE
	enum SUBSTATUS_UNKNOWN_1
	enum SUBSTATUS_FOCUS_ENERGY
	enum SUBSTATUS_MIST
	enum SUBSTATUS_CURLED ; formely in its own substatus

	enum_start 7, -1
	enum SUBSTATUS_CANT_RUN
	enum SUBSTATUS_DESTINY_BOND
	enum SUBSTATUS_LOCK_ON
	enum SUBSTATUS_ENCORED
	enum SUBSTATUS_TRANSFORMED
	enum SUBSTATUS_UNKNOWN_2
	enum SUBSTATUS_UNKNOWN_3
	enum SUBSTATUS_TOXIC

; environmental
	enum_start 4, -1
	enum SCREENS_REFLECT
	enum SCREENS_LIGHT_SCREEN
	enum SCREENS_SAFEGUARD
	enum SCREENS_SPIKES

; weather
	const_def
	const WEATHER_NONE
	const WEATHER_RAIN
	const WEATHER_SUN
	const WEATHER_SANDSTORM
	const WEATHER_HAIL
	const WEATHER_RAIN_END
	const WEATHER_SUN_END
	const WEATHER_SANDSTORM_END
	const WEATHER_HAIL_END


; move effects
	const_def
	const EFFECT_NORMAL_HIT
	const EFFECT_PRIORITY_HIT
	const EFFECT_ALWAYS_HIT
	const EFFECT_LEECH_HIT
	const EFFECT_DOUBLE_HIT
	const EFFECT_MULTI_HIT
	const EFFECT_RECOIL_HIT
	const EFFECT_FLINCH_HIT
	const EFFECT_POISON_HIT
	const EFFECT_BURN_HIT
	const EFFECT_PARALYZE_HIT
	const EFFECT_SLEEP_HIT
	const EFFECT_FREEZE_HIT
	const EFFECT_CONFUSE_HIT
	const EFFECT_ATTACK_UP_HIT
	const EFFECT_DEFENSE_UP_HIT
	const EFFECT_ALL_UP_HIT
	const EFFECT_ATTACK_DOWN_HIT
	const EFFECT_DEFENSE_DOWN_HIT
	const EFFECT_SPEED_DOWN_HIT
	const EFFECT_SP_ATK_DOWN_HIT
	const EFFECT_SP_DEF_DOWN_HIT
	const EFFECT_ACCURACY_DOWN_HIT
	const EFFECT_EVASION_DOWN_HIT
	const EFFECT_STATIC_DAMAGE
	const EFFECT_LEVEL_DAMAGE
	const EFFECT_POISON
	const EFFECT_BURN
	const EFFECT_PARALYZE
	const EFFECT_SLEEP
	const EFFECT_FREEZE
	const EFFECT_CONFUSE
	const EFFECT_TOXIC
	const EFFECT_ATTACK_UP
	const EFFECT_DEFENSE_UP
	const EFFECT_SPEED_UP
	const EFFECT_SP_ATK_UP
	const EFFECT_SP_DEF_UP
	const EFFECT_ACCURACY_UP
	const EFFECT_EVASION_UP
	const EFFECT_FOCUS_ENERGY
	const EFFECT_ATTACK_UP_2
	const EFFECT_DEFENSE_UP_2
	const EFFECT_SPEED_UP_2
	const EFFECT_SP_ATK_UP_2
	const EFFECT_SP_DEF_UP_2
	const EFFECT_ACCURACY_UP_2
	const EFFECT_EVASION_UP_2
	const EFFECT_BULK_UP
	const EFFECT_CALM_MIND
	const EFFECT_GROWTH
	const EFFECT_DRAGON_DANCE
	const EFFECT_HONE_CLAWS
	const EFFECT_ATTACK_DOWN
	const EFFECT_DEFENSE_DOWN
	const EFFECT_SPEED_DOWN
	const EFFECT_SP_ATK_DOWN
	const EFFECT_SP_DEF_DOWN
	const EFFECT_ACCURACY_DOWN
	const EFFECT_EVASION_DOWN
	const EFFECT_ATTACK_DOWN_2
	const EFFECT_DEFENSE_DOWN_2
	const EFFECT_SPEED_DOWN_2
	const EFFECT_SP_ATK_DOWN_2
	const EFFECT_SP_DEF_DOWN_2
	const EFFECT_ACCURACY_DOWN_2
	const EFFECT_EVASION_DOWN_2
	const EFFECT_HAZE
	const EFFECT_MIST
	const EFFECT_SAFEGUARD
	const EFFECT_REFLECT
	const EFFECT_LIGHT_SCREEN
	const EFFECT_HEAL
	const EFFECT_RAMPAGE
	const EFFECT_TRAP
	const EFFECT_EXPLOSION
	const EFFECT_DREAM_EATER
	const EFFECT_ROAR
	const EFFECT_CONVERSION
	const EFFECT_PAY_DAY
	const EFFECT_TRI_ATTACK
	const EFFECT_SUPER_FANG
	const EFFECT_TRANSFORM
	const EFFECT_SKY_ATTACK
	const EFFECT_SUBSTITUTE
	const EFFECT_HYPER_BEAM
	const EFFECT_RAGE
	const EFFECT_METRONOME
	const EFFECT_LEECH_SEED
	const EFFECT_SPLASH
	const EFFECT_DISABLE
	const EFFECT_COUNTER
	const EFFECT_ENCORE
	const EFFECT_PAIN_SPLIT
	const EFFECT_LOCK_ON
	const EFFECT_SKETCH
	const EFFECT_SLEEP_TALK
	const EFFECT_DESTINY_BOND
	const EFFECT_REVERSAL
	const EFFECT_FALSE_SWIPE
	const EFFECT_HEAL_BELL
	const EFFECT_TRIPLE_KICK
	const EFFECT_THIEF
	const EFFECT_MEAN_LOOK
	const EFFECT_NIGHTMARE
	const EFFECT_FLAME_WHEEL
	const EFFECT_CURSE
	const EFFECT_PROTECT
	const EFFECT_SPIKES
	const EFFECT_FORESIGHT
	const EFFECT_PERISH_SONG
	const EFFECT_SANDSTORM
	const EFFECT_HAIL
	const EFFECT_ENDURE
	const EFFECT_ROLLOUT
	const EFFECT_SWAGGER
	const EFFECT_FURY_CUTTER
	const EFFECT_ATTRACT
	const EFFECT_RETURN
	const EFFECT_SACRED_FIRE
	const EFFECT_MAGNITUDE
	const EFFECT_BATON_PASS
	const EFFECT_PURSUIT
	const EFFECT_RAPID_SPIN
	const EFFECT_MORNING_SUN
	const EFFECT_MOONLIGHT
	const EFFECT_HIDDEN_POWER
	const EFFECT_RAIN_DANCE
	const EFFECT_SUNNY_DAY
	const EFFECT_BELLY_DRUM
	const EFFECT_MIRROR_COAT
	const EFFECT_TWISTER
	const EFFECT_EARTHQUAKE
	const EFFECT_FUTURE_SIGHT
	const EFFECT_GUST
	const EFFECT_STOMP
	const EFFECT_SOLAR_BEAM
	const EFFECT_THUNDER
	const EFFECT_TELEPORT
	const EFFECT_FLY
	const EFFECT_DEFENSE_CURL
	const EFFECT_FLARE_BLITZ
	const EFFECT_AVALANCHE
	const EFFECT_HEX
	const EFFECT_PSYSTRIKE
	const EFFECT_OHKO
	const EFFECT_JUMP_KICK
	const EFFECT_BIDE
	const EFFECT_RAZOR_WIND
	const EFFECT_MIMIC
	const EFFECT_PSYWAVE
	const EFFECT_SNORE
	const EFFECT_DEFROST_OPPONENT
	const EFFECT_SPITE
	const EFFECT_PRESENT
	const EFFECT_FRUSTRATION
	const EFFECT_PSYCH_UP
	const EFFECT_CONVERSION2
	const EFFECT_MIRROR_MOVE
	const EFFECT_SKULL_BASH
	const EFFECT_BEAT_UP

; Battle vars used in home/battle.asm
	const_def
	const PLAYER_SUBSTATUS_1
	const ENEMY_SUBSTATUS_1
	const PLAYER_SUBSTATUS_2
	const ENEMY_SUBSTATUS_2
	const PLAYER_SUBSTATUS_3
	const ENEMY_SUBSTATUS_3
	const PLAYER_SUBSTATUS_4
	const ENEMY_SUBSTATUS_4
	const PLAYER_ABILITY
	const ENEMY_ABILITY
	const PLAYER_STATUS
	const ENEMY_STATUS
	const PLAYER_MOVE_ANIMATION
	const ENEMY_MOVE_ANIMATION
	const PLAYER_MOVE_EFFECT
	const ENEMY_MOVE_EFFECT
	const PLAYER_MOVE_POWER
	const ENEMY_MOVE_POWER
	const PLAYER_MOVE_ACCURACY
	const ENEMY_MOVE_ACCURACY
	const PLAYER_MOVE_TYPE
	const ENEMY_MOVE_TYPE
	const PLAYER_MOVE_CATEGORY
	const ENEMY_MOVE_CATEGORY
	const PLAYER_CUR_MOVE
	const ENEMY_CUR_MOVE
	const PLAYER_COUNTER_MOVE
	const ENEMY_COUNTER_MOVE
	const PLAYER_LAST_MOVE
	const ENEMY_LAST_MOVE

; wBattleAction
	const_def
	const BATTLEACTION_MOVE1
	const BATTLEACTION_MOVE2
	const BATTLEACTION_MOVE3
	const BATTLEACTION_MOVE4
	const BATTLEACTION_SWITCH1
	const BATTLEACTION_SWITCH2
	const BATTLEACTION_SWITCH3
	const BATTLEACTION_SWITCH4
	const BATTLEACTION_SWITCH5
	const BATTLEACTION_SWITCH6
	const BATTLEACTION_A
	const BATTLEACTION_B
	const BATTLEACTION_C
	const BATTLEACTION_STRUGGLE
	const BATTLEACTION_FORFEIT

	const_def
	const WIN
	const LOSE
	const DRAW
