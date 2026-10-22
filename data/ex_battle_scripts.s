#include "constants/global.h"
#include "constants/battle.h"
#include "constants/pokemon.h"
#include "constants/battle_script_commands.h"
#include "constants/battle_anim.h"
#include "constants/battle_string_ids.h"
#include "constants/abilities.h"
#include "constants/moves.h"
#include "constants/songs.h"
	.include "asm/macros.inc"
	.include "asm/macros/battle_script.inc"
	.include "constants/constants.inc"

	.section script_data, "aw", %progbits

@ EX moves.
@
@ A Pokémon in its EX form can use the EX moves in its .exMoves list (data/pokemon/ex_forms.h).
@ A Pokémon with an ability in sExMoveAbilities in battle_util.c can use the EX moves in that
@ ability's list, or every EX move with .allExMoves (Wishmaker). A Pokémon can use the EX moves its
@ species lists in src/data/pokemon/ex_species_moves.h, whatever its ability or form. Any Pokémon
@ can also use the EX moves matching its held crystal's types (sExMoveCrystals). These all stack.
@ They can highlight one of these moves in battle and press L to use its EX version.
@ The move's name turns yellow, and using it costs 2 PP instead of 1.
@ EX moves do 1.2x damage, unless they're an EX upgrade (see Cmd_damagecalc). A damaging move that
@ isn't in any list below can still be used as an EX move, for just that boost (see CanMoveGetDefaultExBoost),
@ and 1.5x the chance of its secondary effect (see Cmd_seteffectwithchance).
@
@ An EX move runs its script below instead of its regular move effect script. These scripts can
@ goto back into the regular scripts in battle_scripts_1.s for anything that stays the same.
@ Scripts that aren't in this file can check for an EX move themselves with jumpifexmove.
@
@ Its animation plays the EXMove flash first, then the move's regular animation. A move with a
@ stronger EX animation starts its animation with chooseEXanimation instead, which goes to the
@ EX version (which should call EXMove itself). See battle_anim_scripts.s.

@ Each EX move has a script, EX_FLAG_* flags (battle_script_commands.h), or both. A move with only
@ flags runs its regular script, with the flags changing how it works:
@   exmove MOVE, BattleScript_ExSomething
@   exmove MOVE, flags=EX_FLAG_SURE_HIT | EX_FLAG_IGNORE_PROTECT
@ extraEffect is a MOVE_EFFECT_* that always happens after it hits, on top of its own effect
@ (see BattleScript_HitFromAtkAnimation). Unlike a script, it works on both targets of a spread move:
@   exmove MOVE, flags=EX_FLAG_SURE_EFFECT, extraEffect=MOVE_EFFECT_SPD_MINUS_1

	.macro exmove move:req, script=0, flags=0, extraEffect=0
	.2byte \move
	.2byte \extraEffect
	.4byte \flags
	.4byte \script
	.endm @ 12 bytes, the size of struct ExMove

	.align 2
gExMoves::
	exmove MOVE_CRUNCH, BattleScript_ExCrunch
	exmove MOVE_FAKE_TEARS, BattleScript_ExFakeTears
	exmove MOVE_LEAF_BLADE, flags=EX_FLAG_IGNORE_RESISTANCES
	exmove MOVE_AGILITY, BattleScript_ExAgility
	exmove MOVE_BULLET_SEED, flags=EX_FLAG_FOUR_HITS | EX_FLAG_LEECH_SEED @ See BattleScript_MultiHitEnd
	exmove MOVE_FURY_CUTTER, BattleScript_ExFuryCutter
	exmove MOVE_OLD_FURY_CUTTER, BattleScript_ExFuryCutter
	exmove MOVE_LEECH_LIFE, BattleScript_ExLeechLife
	exmove MOVE_HYPER_FANG, flags=EX_FLAG_IGNORE_RESISTANCES | EX_FLAG_IGNORE_IMMUNITY
	exmove MOVE_PETAL_DANCE, flags=EX_FLAG_CALM_RAMPAGE
	exmove MOVE_OUTRAGE, flags=EX_FLAG_CALM_RAMPAGE
	exmove MOVE_THRASH, flags=EX_FLAG_CALM_RAMPAGE
	exmove MOVE_SING, flags=EX_FLAG_SURE_HIT
	exmove MOVE_DIZZY_PUNCH, flags=EX_FLAG_SURE_EFFECT
	exmove MOVE_EXTREME_SPEED, BattleScript_ExExtremeSpeed
	exmove MOVE_CRABHAMMER, BattleScript_ExCrabhammer
	exmove MOVE_FIRE_PUNCH, flags=EX_FLAG_LOCK_ON
	exmove MOVE_THUNDER_PUNCH, flags=EX_FLAG_LOCK_ON
	exmove MOVE_ICE_PUNCH, flags=EX_FLAG_LOCK_ON
	exmove MOVE_METEOR_MASH, flags=EX_FLAG_IGNORE_PROTECT
	exmove MOVE_CROSS_CHOP, flags=EX_FLAG_IGNORE_PROTECT
	exmove MOVE_DRILL_PECK, flags=EX_FLAG_IGNORE_PROTECT
	exmove MOVE_IRON_TAIL, flags=EX_FLAG_IGNORE_PROTECT
	exmove MOVE_DRAGON_LASH, flags=EX_FLAG_IGNORE_PROTECT
	exmove MOVE_DRAGON_FIST, flags=EX_FLAG_IGNORE_PROTECT @ On its attacking turn (see HandleAction_UseMove)
	exmove MOVE_THUNDERBOLT, flags=EX_FLAG_IGNORE_IMMUNITY
	exmove MOVE_HYPER_VOICE, flags=EX_FLAG_IGNORE_IMMUNITY
	exmove MOVE_SHOCK_WAVE, extraEffect=MOVE_EFFECT_PARALYSIS
	exmove MOVE_FIRE_CRASH, extraEffect=MOVE_EFFECT_IGNITE | MOVE_EFFECT_AFFECTS_USER @ See BattleScript_EffectFireCrash
	exmove MOVE_THUNDER_CRASH, flags=EX_FLAG_CHARGE_USER @ See BattleScript_EffectThunderCrash
	exmove MOVE_METAL_CLAW, BattleScript_ExMetalClaw, flags=EX_FLAG_EFFECT_EACH_HIT
	exmove MOVE_STEEL_WING, flags=EX_FLAG_IGNORE_RESISTANCES
	exmove MOVE_PIN_MISSILE, flags=EX_FLAG_SPIKES | EX_FLAG_FOUR_HITS @ See BattleScript_MultiHitEnd
	exmove MOVE_SPIKE_CANNON, flags=EX_FLAG_SPIKES | EX_FLAG_FOUR_HITS @ See BattleScript_MultiHitEnd
	exmove MOVE_ICICLE_SPEAR, flags=EX_FLAG_SPIKES | EX_FLAG_FOUR_HITS @ See BattleScript_MultiHitEnd
	exmove MOVE_MEGAHORN, flags=EX_FLAG_IGNORE_RESISTANCES
	exmove MOVE_ROLLOUT, BattleScript_ExRollout
	exmove MOVE_ICE_BALL, BattleScript_ExRollout
	exmove MOVE_NEEDLE_ARM, flags=EX_FLAG_SPIKES @ See BattleScript_EffectBoulderDash
	exmove MOVE_CRUSH_CLAW, BattleScript_ExCrushClaw, flags=EX_FLAG_NO_STAB | EX_FLAG_EFFECT_EACH_HIT
	exmove MOVE_POISON_TAIL, flags=EX_FLAG_SURE_EFFECT | EX_FLAG_POISON_ANY_TYPE
	exmove MOVE_FINAL_STING, flags=EX_FLAG_POISON_ANY_TYPE
	exmove MOVE_TWINEEDLE, flags=EX_FLAG_POISON_ANY_TYPE
	exmove MOVE_TOXIC, flags=EX_FLAG_POISON_ANY_TYPE @ See BattleScript_EffectToxic
	exmove MOVE_LEECH_SEED, flags=EX_FLAG_GROWING_SEED
	exmove MOVE_FIRE_SPIN, flags=EX_FLAG_SET_WEATHER
	exmove MOVE_WHIRLPOOL, flags=EX_FLAG_SET_WEATHER
	exmove MOVE_SAND_TOMB, flags=EX_FLAG_SET_WEATHER
	exmove MOVE_WRAP, flags=EX_FLAG_TRAP_LOCK_ON
	exmove MOVE_CLAMP, flags=EX_FLAG_TRAP_LOCK_ON
	exmove MOVE_MUD_SHOT, flags=EX_FLAG_SURE_EFFECT, extraEffect=MOVE_EFFECT_ACC_MINUS_1
	exmove MOVE_MUDDY_WATER, flags=EX_FLAG_SURE_EFFECT, extraEffect=MOVE_EFFECT_SPD_MINUS_1
	exmove MOVE_BLAZE_KICK, BattleScript_ExBlazeKick, flags=EX_FLAG_NO_STAB | EX_FLAG_EFFECT_EACH_HIT
	exmove MOVE_FACADE, flags=EX_FLAG_TRANSFER_STATUS
	exmove MOVE_PERISH_SONG, flags=EX_FLAG_SWITCH_OUT_USER @ See BattleScript_PerishSongLoopIncrement
	exmove MOVE_SOFT_BOILED, flags=EX_FLAG_BIG_HEAL
	exmove MOVE_MILK_DRINK, flags=EX_FLAG_BIG_HEAL
	exmove MOVE_ROAR, flags=EX_FLAG_WEAKEN_REPLACEMENT @ See BattleScript_TrainerBattleForceOut
	exmove MOVE_WHIRLWIND, flags=EX_FLAG_FORCE_OUT_DAMAGE @ See BattleScript_SuccessForceOut
	exmove MOVE_TAUNT, flags=EX_FLAG_LASTING_TAUNT
	exmove MOVE_VITAL_THROW, flags=EX_FLAG_FORCE_SWITCH
	exmove MOVE_DYNAMIC_PUNCH, flags=EX_FLAG_SURE_HIT
	exmove MOVE_REFLECT, flags=EX_FLAG_SCREEN_BLOCK
	exmove MOVE_LIGHT_SCREEN, flags=EX_FLAG_SCREEN_BLOCK
	exmove MOVE_COUNTER, flags=EX_FLAG_COUNTER_SHIELD @ See IsShieldedByExCounter
	exmove MOVE_MIRROR_COAT, flags=EX_FLAG_COUNTER_SHIELD
	exmove MOVE_NONE @ End of list, keep this last

@ EX upgrades. Instead of an EX script, these moves become a stronger, closely related move when
@ used as an EX move: they use that move's power, type, accuracy, and effect, and its animation after
@ the EXMove flash. The battle messages still name the move that was chosen.
@ A move in both lists uses its EX script.
@ An upgrade runs as the regular version of the move it becomes, not that move's EX version.

	.macro exupgrade move:req, upgrade:req
	.2byte \move
	.2byte \upgrade
	.endm

	.align 2
gExMoveUpgrades::
	exupgrade MOVE_BIND, MOVE_WRAP
	exupgrade MOVE_ABSORB, MOVE_MEGA_DRAIN
	exupgrade MOVE_MEGA_DRAIN, MOVE_GIGA_DRAIN
	exupgrade MOVE_RAZOR_LEAF, MOVE_LEAF_BLADE
	exupgrade MOVE_BITE, MOVE_CRUNCH
	exupgrade MOVE_TACKLE, MOVE_BODY_SLAM
	exupgrade MOVE_TAKE_DOWN, MOVE_DOUBLE_EDGE
	exupgrade MOVE_POUND, MOVE_SLAM
	exupgrade MOVE_SCRATCH, MOVE_CRUSH_CLAW
	exupgrade MOVE_CUT, MOVE_SLASH
	exupgrade MOVE_QUICK_ATTACK, MOVE_EXTREME_SPEED
	exupgrade MOVE_CONFUSION, MOVE_EXTRASENSORY
	exupgrade MOVE_EMBER, MOVE_FIRE_SPIN
	exupgrade MOVE_FLAMETHROWER, MOVE_FIRE_BLAST
	exupgrade MOVE_FLAME_WHEEL, MOVE_FIRE_CRASH
	exupgrade MOVE_SPARK, MOVE_THUNDER_CRASH
	exupgrade MOVE_WATER_GUN, MOVE_WHIRLPOOL
	exupgrade MOVE_WATER_PULSE, MOVE_HYDRO_PUMP
	exupgrade MOVE_BUBBLE, MOVE_BUBBLE_BEAM
	exupgrade MOVE_THUNDER_SHOCK, MOVE_SHOCK_WAVE
	exupgrade MOVE_POWDER_SNOW, MOVE_ICY_WIND
	exupgrade MOVE_AURORA_BEAM, MOVE_ICE_BEAM
	exupgrade MOVE_JUMP_KICK, MOVE_HI_JUMP_KICK
	exupgrade MOVE_ROLLING_KICK, MOVE_SCISSOR_KICK
	exupgrade MOVE_SMOG, MOVE_SLUDGE
	exupgrade MOVE_SLUDGE, MOVE_SLUDGE_BOMB
	exupgrade MOVE_SAND_ATTACK, MOVE_SAND_TOMB
	exupgrade MOVE_MUD_SLAP, MOVE_MUD_SHOT
	exupgrade MOVE_MAGNITUDE, MOVE_EARTHQUAKE
	exupgrade MOVE_KARATE_CHOP, MOVE_CROSS_CHOP
	exupgrade MOVE_PECK, MOVE_DRILL_PECK
	exupgrade MOVE_ROCK_THROW, MOVE_ROCK_SLIDE
	exupgrade MOVE_COMET_PUNCH, MOVE_METEOR_MASH
	exupgrade MOVE_ROCK_TOMB, MOVE_TOMBSTONER
	exupgrade MOVE_SELF_DESTRUCT, MOVE_EXPLOSION
	exupgrade MOVE_NONE, MOVE_NONE @ End of list, keep this last

@ EX bonuses, mostly for status moves, ported from pokeemerald-expansion's Z-Move effects.
@ When used as an EX move, these moves first get a bonus for the user, then their regular effect.
@ The bonus comes right after "X used Y!", along with the EXMove flash. See TryStartExMoveBonus.
@ A move with an EX script or an EX upgrade uses that instead.
@ High PP moves get weaker bonuses than in expansion, as they can be used as EX moves more often.
@   exstatup MOVE, STAT_*, stages             Raises one of the user's stats
@   exstatsup MOVE, BIT_* | BIT_*, stages     Raises several of the user's stats, with one animation
@   exheal MOVE, divisor                      Restores 1/divisor of the user's max HP, like Recover (2 = 50%)
@   exbonus MOVE, EX_BONUS_*                  Another bonus, see EX_BONUS_* in battle_script_commands.h

	.macro exbonus move:req, bonus:req, stat=0, stages=0
	.2byte \move
	.byte \bonus, \stat, \stages, 0, 0, 0 @ 8 bytes, the size of struct ExMoveBonus
	.endm

	.macro exstatup move:req, stat:req, stages:req
	exbonus \move, EX_BONUS_STAT_UP, \stat, \stages
	.endm

	.macro exstatsup move:req, stats:req, stages:req
	exbonus \move, EX_BONUS_STATS_UP, \stats, \stages
	.endm

	.macro exheal move:req, divisor:req
	exbonus \move, EX_BONUS_RECOVER_HP, 0, \divisor
	.endm

	.align 2
gExMoveBonuses::
	exstatup MOVE_DEFENSE_CURL, STAT_ACC, 1
	exstatup MOVE_FOCUS_ENERGY, STAT_ACC, 1
	exbonus MOVE_MIMIC, EX_BONUS_COPY_STATS
	exstatup MOVE_BULK_UP, STAT_ATK, 1
	exstatup MOVE_HOWL, STAT_ATK, 1
	exbonus MOVE_LEER, EX_BONUS_FLINCH
	exstatup MOVE_MEDITATE, STAT_ATK, 1
	exstatup MOVE_ODOR_SLEUTH, STAT_ATK, 1
	exstatup MOVE_SCREECH, STAT_ATK, 1
	exstatup MOVE_SHARPEN, STAT_ATK, 1
	exstatup MOVE_TAIL_WHIP, STAT_ATK, 1
	exstatup MOVE_WILL_O_WISP, STAT_ATK, 1
	exbonus MOVE_MIRROR_MOVE, EX_BONUS_COPY_STATS
	exstatsup MOVE_SPLASH, BIT_ATK | BIT_SPATK | BIT_SPEED, 1 @ Attack +3 in expansion, spread out as Splash has 40 PP
	exstatup MOVE_BLOCK, STAT_DEF, 1
	exstatup MOVE_CHARM, STAT_DEF, 1
	exstatup MOVE_FEATHER_DANCE, STAT_DEF, 1
	exbonus MOVE_GROWL, EX_BONUS_FLINCH
	exstatup MOVE_HARDEN, STAT_DEF, 1
	exstatup MOVE_PAIN_SPLIT, STAT_DEF, 1
	exstatup MOVE_POISON_GAS, STAT_DEF, 1
	exstatup MOVE_POISON_POWDER, STAT_DEF, 1
	exstatup MOVE_SPIDER_WEB, STAT_DEF, 1
	exstatup MOVE_SPIKES, STAT_DEF, 1
	exstatup MOVE_TICKLE, STAT_DEF, 1
	exstatup MOVE_TORMENT, STAT_DEF, 1
	exstatup MOVE_TOXIC_SPIKES, STAT_DEF, 1
	exstatup MOVE_WITHDRAW, STAT_DEF, 1
	exstatup MOVE_CAMOUFLAGE, STAT_EVASION, 1
	exstatup MOVE_DETECT, STAT_EVASION, 1
	exbonus MOVE_FLASH, EX_BONUS_FLINCH
	exstatup MOVE_KINESIS, STAT_EVASION, 1
	exstatup MOVE_SMOKESCREEN, STAT_EVASION, 1
	exstatup MOVE_CONFUSE_RAY, STAT_SPATK, 1
	exstatup MOVE_GROWTH, STAT_SPATK, 1
	exstatup MOVE_METAL_SOUND, STAT_SPATK, 1
	exstatup MOVE_MIND_READER, STAT_SPATK, 1
	exbonus MOVE_NIGHTMARE, EX_BONUS_DEEPER_SLEEP
	exbonus MOVE_DREAM_EATER, EX_BONUS_DEEPER_SLEEP
	exstatup MOVE_SWEET_KISS, STAT_SPATK, 1
	exstatup MOVE_TEETER_DANCE, STAT_SPATK, 1
	exstatup MOVE_COSMIC_POWER, STAT_SPDEF, 1
	exbonus MOVE_FLATTER, EX_BONUS_TAUNT
	exstatup MOVE_GLARE, STAT_SPDEF, 1
	exstatup MOVE_INGRAIN, STAT_SPDEF, 1
	exstatup MOVE_MEAN_LOOK, STAT_SPDEF, 1
	exstatup MOVE_MUD_SPORT, STAT_SPDEF, 1
	exstatup MOVE_STUN_SPORE, STAT_SPDEF, 1
	exstatup MOVE_THUNDER_WAVE, STAT_SPDEF, 1
	exstatup MOVE_WATER_SPORT, STAT_SPDEF, 1
	exstatup MOVE_WISH, STAT_SPDEF, 1
	exstatup MOVE_IMPRISON, STAT_SPDEF, 2
	exstatup MOVE_MAGIC_COAT, STAT_SPDEF, 2
	exstatup MOVE_ENCORE, STAT_SPEED, 1
	exstatup MOVE_GRASS_WHISTLE, STAT_SPEED, 1
	exheal MOVE_HAIL, 4
	exstatup MOVE_HYPNOSIS, STAT_SPEED, 1
	exstatup MOVE_LOCK_ON, STAT_SPEED, 1
	exstatup MOVE_LOVELY_KISS, STAT_SPEED, 1
	exheal MOVE_RAIN_DANCE, 4
	exbonus MOVE_ROLE_PLAY, EX_BONUS_COPY_STATS
	exstatup MOVE_SAFEGUARD, STAT_SPEED, 1
	exheal MOVE_SANDSTORM, 4
	exstatup MOVE_SCARY_FACE, STAT_SPEED, 1
	exbonus MOVE_SKILL_SWAP, EX_BONUS_SWAP_STATS
	exstatup MOVE_SLEEP_POWDER, STAT_SPEED, 1
	exbonus MOVE_STRING_SHOT, EX_BONUS_FLINCH
	exheal MOVE_SUNNY_DAY, 4
	exstatup MOVE_SUPERSONIC, STAT_SPEED, 1
	exstatup MOVE_YAWN, STAT_SPEED, 1
	exstatup MOVE_RECYCLE, STAT_SPEED, 2
	exstatup MOVE_SNATCH, STAT_SPEED, 2
	exbonus MOVE_TRICK, EX_BONUS_SWAP_STATS
	exbonus MOVE_CONVERSION, EX_BONUS_ALL_STATS_UP
	exbonus MOVE_SKETCH, EX_BONUS_ALL_STATS_UP
	exbonus MOVE_SLEEP_TALK, EX_BONUS_BOOST_CRITS
	exbonus MOVE_DESTINY_BOND, EX_BONUS_FOLLOW_ME
	exbonus MOVE_GRUDGE, EX_BONUS_FOLLOW_ME
	exbonus MOVE_MEMENTO, EX_BONUS_HEAL_REPLACEMENT
	exheal MOVE_FLY, 4 @ On their charging turn, as they go out of reach (see BattleScriptFirstChargingTurn)
	exheal MOVE_DIG, 4
	exheal MOVE_DIVE, 4
	exheal MOVE_BOUNCE, 4
	exstatup MOVE_RAZOR_WIND, STAT_ATK, 1 @ On their charging turn
	exstatup MOVE_SKY_ATTACK, STAT_ATK, 1
	exstatup MOVE_SOLAR_BEAM, STAT_SPATK, 1 @ On its charging turn, or right before it fires in sunlight
	exheal MOVE_AROMATHERAPY, 2
	exheal MOVE_CONVERSION_2, 4 @ 25%, as it has 30 PP
	exheal MOVE_HAZE, 4 @ 25%, as it has 30 PP
	exheal MOVE_HEAL_BELL, 2
	exheal MOVE_MIST, 4 @ 25%, as it has 30 PP
	exheal MOVE_PSYCH_UP, 2
	exheal MOVE_REFRESH, 2
	exheal MOVE_SPITE, 2
	exheal MOVE_STOCKPILE, 4
	exheal MOVE_TELEPORT, 2
	exheal MOVE_TRANSFORM, 2
	exbonus MOVE_ACID_ARMOR, EX_BONUS_RESET_STATS
	exstatup MOVE_AMNESIA, STAT_SPATK, 2
	exbonus MOVE_ATTRACT, EX_BONUS_RESET_STATS
	exbonus MOVE_BARRIER, EX_BONUS_PROTECT
	exbonus MOVE_BATON_PASS, EX_BONUS_RESET_STATS
	exbonus MOVE_CALM_MIND, EX_BONUS_RESET_STATS
	exbonus MOVE_COTTON_SPORE, EX_BONUS_RESET_STATS
	exbonus MOVE_DISABLE, EX_BONUS_FLINCH
	exbonus MOVE_DOUBLE_TEAM, EX_BONUS_RESET_STATS
	exbonus MOVE_DRAGON_DANCE, EX_BONUS_RESET_STATS
	exbonus MOVE_ENDURE, EX_BONUS_RESET_STATS
	exbonus MOVE_FOLLOW_ME, EX_BONUS_RESET_STATS
	exbonus MOVE_HELPING_HAND, EX_BONUS_RESET_STATS
	exbonus MOVE_IRON_DEFENSE, EX_BONUS_RESET_STATS
	exbonus MOVE_MINIMIZE, EX_BONUS_RESET_STATS
	exbonus MOVE_MOONLIGHT, EX_BONUS_RESET_STATS
	exbonus MOVE_MORNING_SUN, EX_BONUS_RESET_STATS
	exbonus MOVE_NASTY_PLOT, EX_BONUS_RESET_STATS
	exbonus MOVE_PROTECT, EX_BONUS_RESET_STATS
	exbonus MOVE_RECOVER, EX_BONUS_CURE_STATUS
	exbonus MOVE_REST, EX_BONUS_RESET_STATS
	exbonus MOVE_SLACK_OFF, EX_BONUS_RESET_STATS
	exbonus MOVE_SPORE, EX_BONUS_RESET_STATS
	exbonus MOVE_SUBSTITUTE, EX_BONUS_RESET_STATS
	exbonus MOVE_SWAGGER, EX_BONUS_TAUNT
	exbonus MOVE_SWALLOW, EX_BONUS_RESET_STATS
	exbonus MOVE_SWORDS_DANCE, EX_BONUS_RESET_STATS
	exbonus MOVE_SYNTHESIS, EX_BONUS_RESET_STATS
	exbonus MOVE_TAIL_GLOW, EX_BONUS_RESET_STATS
	exbonus MOVE_NONE, 0 @ End of list, keep this last

@ EX bonus scripts. They're called from the move's attackstring with the attacker as the user, and
@ must end with BattleScript_ExBonusEnd, which restores what the move's own script was using.

@ Waits for "X used Y!", then plays the EXMove flash
BattleScript_ExBonusIntro:
	waitmessage B_WAIT_TIME_SHORT
	playanimation BS_ATTACKER, B_ANIM_EX_FLASH, NULL
	waitanimation
	return

BattleScript_ExBonusStatUp:: @ The stat change is set by TryStartExMoveBonus
	call BattleScript_ExBonusIntro
BattleScript_ExBonusDoStatUp:
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_CHANGE_ALLOW_PTR, BattleScript_ExBonusEnd
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_ExBonusEnd
	setgraphicalstatchangevalues
	playanimation BS_ATTACKER, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_ExBonusEnd

@ The stats are set by TryStartExMoveBonus. One animation for all of them, then each stat's own message
BattleScript_ExBonusStatsUp::
	call BattleScript_ExBonusIntro
	various BS_ATTACKER, VARIOUS_EX_STATS_UP_ANIM
	jumpifbyte CMP_EQUAL, gBattleCommunication, FALSE, BattleScript_ExBonusEnd
	playanimation BS_ATTACKER, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
BattleScript_ExBonusStatsUpLoop:
	various BS_ATTACKER, VARIOUS_EX_NEXT_BONUS_STAT
	jumpifbyte CMP_EQUAL, gBattleCommunication, FALSE, BattleScript_ExBonusEnd
	call BattleScript_ExBonusRaiseStatQuietly
	goto BattleScript_ExBonusStatsUpLoop

BattleScript_ExBonusAllStatsUp::
	call BattleScript_ExBonusIntro
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_ATTACKER, BIT_ATK | BIT_DEF | BIT_SPEED | BIT_SPATK | BIT_SPDEF, 0
	setstatchanger STAT_ATK, 1, FALSE
	call BattleScript_ExBonusRaiseStatQuietly
	setstatchanger STAT_DEF, 1, FALSE
	call BattleScript_ExBonusRaiseStatQuietly
	setstatchanger STAT_SPEED, 1, FALSE
	call BattleScript_ExBonusRaiseStatQuietly
	setstatchanger STAT_SPATK, 1, FALSE
	call BattleScript_ExBonusRaiseStatQuietly
	setstatchanger STAT_SPDEF, 1, FALSE
	call BattleScript_ExBonusRaiseStatQuietly
	goto BattleScript_ExBonusEnd

@ Raises a stat with its message, but no animation, after playstatchangeanimation already played one
BattleScript_ExBonusRaiseStatQuietly:
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_CHANGE_ALLOW_PTR, BattleScript_ExBonusRaiseStatQuietlyRet
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_ExBonusRaiseStatQuietlyRet
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_ExBonusRaiseStatQuietlyRet:
	return

BattleScript_ExBonusResetStats::
	call BattleScript_ExBonusIntro
	various BS_ATTACKER, VARIOUS_EX_RESET_LOWERED_STATS
	jumpifbyte CMP_EQUAL, gBattleCommunication, FALSE, BattleScript_ExBonusEnd
	printstring STRINGID_EXSTATSRESTORED
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_ExBonusEnd

BattleScript_ExBonusBoostCrits::
	call BattleScript_ExBonusIntro
	various BS_ATTACKER, VARIOUS_EX_BOOST_CRITS
	jumpifbyte CMP_EQUAL, gBattleCommunication, FALSE, BattleScript_ExBonusEnd
	printstring STRINGID_PKMNGETTINGPUMPED
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_ExBonusEnd

BattleScript_ExBonusFollowMe::
	call BattleScript_ExBonusIntro
	jumpifnotbattletype BATTLE_TYPE_DOUBLE, BattleScript_ExBonusEnd
	various BS_ATTACKER, VARIOUS_EX_FOLLOW_ME
	printstring STRINGID_PKMNCENTERATTENTION
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_ExBonusEnd

BattleScript_ExBonusCurse::
	call BattleScript_ExBonusIntro
	jumpiftype BS_ATTACKER, TYPE_GHOST, BattleScript_ExBonusDoRecoverHp
	setstatchanger STAT_ATK, 1, FALSE
	goto BattleScript_ExBonusDoStatUp

BattleScript_ExBonusRecoverHp::
	call BattleScript_ExBonusIntro
BattleScript_ExBonusDoRecoverHp:
	various BS_ATTACKER, VARIOUS_EX_SET_HEAL
	jumpifbyte CMP_EQUAL, gBattleCommunication, FALSE, BattleScript_ExBonusEnd
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE
	healthbarupdate BS_ATTACKER
	datahpupdate BS_ATTACKER
	printstring STRINGID_PKMNREGAINEDHEALTH
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_ExBonusEnd

BattleScript_ExBonusFlinch::
	call BattleScript_ExBonusIntro
	setmoveeffect MOVE_EFFECT_FLINCH | MOVE_EFFECT_CERTAIN
	seteffectprimary
	goto BattleScript_ExBonusEnd

BattleScript_ExBonusCureStatus::
	call BattleScript_ExBonusIntro
	cureifburnedparalysedorpoisoned BattleScript_ExBonusEnd
	printstring STRINGID_PKMNSTATUSNORMAL
	waitmessage B_WAIT_TIME_LONG
	updatestatusicon BS_ATTACKER
	goto BattleScript_ExBonusEnd

BattleScript_ExBonusDeeperSleep::
	call BattleScript_ExBonusIntro
	various BS_TARGET, VARIOUS_EX_RESET_SLEEP
	jumpifbyte CMP_EQUAL, gBattleCommunication, FALSE, BattleScript_ExBonusEnd
	printstring STRINGID_EXDEEPERSLEEP
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_ExBonusEnd

BattleScript_ExBonusTaunt::
	call BattleScript_ExBonusIntro
	settaunt BattleScript_ExBonusEnd
	printstring STRINGID_PKMNFELLFORTAUNT
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_ExBonusEnd

BattleScript_ExBonusCopyStats::
	call BattleScript_ExBonusIntro
	copyfoestats BattleScript_ExBonusEnd
	printstring STRINGID_PKMNCOPIEDSTATCHANGES
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_ExBonusEnd

BattleScript_ExBonusProtect::
	call BattleScript_ExBonusIntro
	various BS_ATTACKER, VARIOUS_EX_PROTECT
	printstring STRINGID_PKMNPROTECTEDITSELF2
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_ExBonusEnd

BattleScript_ExBonusSwapStats::
	call BattleScript_ExBonusIntro
	various BS_ATTACKER, VARIOUS_EX_SWAP_STATS
	printstring STRINGID_EXSWAPPEDSTATS
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_ExBonusEnd

BattleScript_ExBonusHealReplacement::
	call BattleScript_ExBonusIntro
	various BS_ATTACKER, VARIOUS_EX_HEAL_REPLACEMENT
BattleScript_ExBonusEnd::
	various BS_ATTACKER, VARIOUS_EX_BONUS_END
	return

@ From switchineffects, for EX_BONUS_HEAL_REPLACEMENT. The Pokémon switching in is the scripting battler
BattleScript_ExHealReplacement::
	orword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE
	healthbarupdate BS_SCRIPTING
	datahpupdate BS_SCRIPTING
	printstring STRINGID_EXREPLACEMENTHEALED
	waitmessage B_WAIT_TIME_LONG
	bicword gHitMarker, HITMARKER_IGNORE_SUBSTITUTE
	return

@ Always lowers the target's Sp. Def, and does double damage on the user's first turn out
BattleScript_ExCrunch::
	setmoveeffect MOVE_EFFECT_SP_DEF_MINUS_1 | MOVE_EFFECT_CERTAIN
	jumpifnotfirstturn BattleScript_EffectHit
	setbyte sDMG_MULTIPLIER, 2
	goto BattleScript_EffectHit

@ Sharply lowers the target's Sp. Def, then raises the user's Sp. Atk
BattleScript_ExFakeTears::
	setstatchanger STAT_SPDEF, 2, TRUE
	attackcanceler
	jumpifstatus2 BS_TARGET, STATUS2_SUBSTITUTE, BattleScript_FailedFromAtkString
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	statbuffchange STAT_CHANGE_ALLOW_PTR, BattleScript_ExFakeTearsUp
	jumpifbyte CMP_LESS_THAN, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_DECREASE, BattleScript_ExFakeTearsDoAnim
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_FELL_EMPTY, BattleScript_ExFakeTearsUp
	pause B_WAIT_TIME_SHORT
	goto BattleScript_ExFakeTearsPrintString
BattleScript_ExFakeTearsDoAnim:
	attackanimation
	waitanimation
	setgraphicalstatchangevalues
	playanimation BS_TARGET, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
BattleScript_ExFakeTearsPrintString:
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_ExFakeTearsUp:
	setstatchanger STAT_SPATK, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_CHANGE_ALLOW_PTR, BattleScript_ExFakeTearsEnd
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_ExFakeTearsEnd
	setgraphicalstatchangevalues
	playanimation BS_ATTACKER, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_ExFakeTearsEnd:
	goto BattleScript_MoveEnd

@ Sharply raises the user's Speed and raises its accuracy
BattleScript_ExAgility::
	attackcanceler
	attackstring
	ppreduce
	jumpifstat BS_ATTACKER, CMP_LESS_THAN, STAT_SPEED, MAX_STAT_STAGE, BattleScript_ExAgilityDoMoveAnim
	jumpifstat BS_ATTACKER, CMP_EQUAL, STAT_ACC, MAX_STAT_STAGE, BattleScript_CantRaiseMultipleStats
BattleScript_ExAgilityDoMoveAnim:
	attackanimation
	waitanimation
	setbyte sSTAT_ANIM_PLAYED, FALSE
	playstatchangeanimation BS_ATTACKER, BIT_SPEED | BIT_ACC, 0
	setstatchanger STAT_SPEED, 2, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_CHANGE_ALLOW_PTR, BattleScript_ExAgilityTryAcc
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_ExAgilityTryAcc
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_ExAgilityTryAcc:
	setstatchanger STAT_ACC, 1, FALSE
	statbuffchange MOVE_EFFECT_AFFECTS_USER | STAT_CHANGE_ALLOW_PTR, BattleScript_ExAgilityEnd
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_INCREASE, BattleScript_ExAgilityEnd
	printfromtable gStatUpStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_ExAgilityEnd:
	goto BattleScript_MoveEnd

BattleScript_ExFuryCutter::
	setmoveeffect MOVE_EFFECT_DEF_MINUS_1
	goto BattleScript_EffectHit

@ 4x damage. Leech Life's power is low to make up for it
BattleScript_ExLeechLife::
	setbyte sDMG_MULTIPLIER, 4
	goto BattleScript_EffectAbsorb

@ Always lowers the target's Sp. Def
BattleScript_ExCrabhammer::
	setmoveeffect MOVE_EFFECT_SP_DEF_MINUS_1 | MOVE_EFFECT_CERTAIN
	goto BattleScript_EffectHit

@ 50% chance to burn the target
BattleScript_ExExtremeSpeed::
	setmoveeffect MOVE_EFFECT_BURN
	setbyte gExEffectChance, 50
	goto BattleScript_EffectHit

@ Metal Claw, Blaze Kick, and Crush Claw hit twice, like Double Kick, with their chance effect on each hit
@ (EX_FLAG_EFFECT_EACH_HIT). Blaze Kick and Crush Claw lose their STAB too (EX_FLAG_NO_STAB)
BattleScript_ExMetalClaw::
	setbyte sMULTIHIT_EFFECT, MOVE_EFFECT_ATK_PLUS_1 | MOVE_EFFECT_AFFECTS_USER
	goto BattleScript_ExHitTwice

BattleScript_ExBlazeKick::
	setbyte sMULTIHIT_EFFECT, MOVE_EFFECT_BURN
	goto BattleScript_ExHitTwice

BattleScript_ExCrushClaw::
	setbyte sMULTIHIT_EFFECT, MOVE_EFFECT_DEF_MINUS_1
@ Hits twice, with the move effect in sMULTIHIT_EFFECT
BattleScript_ExHitTwice:
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	setmultihitcounter 2
	initmultihitstring
	goto BattleScript_MultiHitLoop

@ Curls up first, so the whole Rollout does Defense Curl's double damage. It stays curled up, like after Defense Curl
BattleScript_ExRollout::
	attackcanceler
	setdefensecurlbit
	attackstring
	jumpifstatus2 BS_ATTACKER, STATUS2_MULTIPLETURNS, BattleScript_RolloutCheckAccuracy
	ppreduce
	goto BattleScript_RolloutCheckAccuracy

@ After an EX_FLAG_LOCK_ON move hits (from BattleScript_HitFromAtkAnimation), the user takes aim at the
@ target like Lock-On, so its next move against it can't miss
BattleScript_ExLockOnAfterHit::
	jumpifmovehadnoeffect BattleScript_HitTryForceSwitch
	jumpifhasnohp BS_TARGET, BattleScript_HitTryForceSwitch
	setalwayshitflag
	printstring STRINGID_PKMNTOOKAIM
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_HitTryForceSwitch

@ After an EX_FLAG_FORCE_SWITCH move hits (from BattleScript_HitFromAtkAnimation), the target is forced out like Roar:
@ another of its party comes in, or a wild battle ends. Suction Cups and Ingrain stop it, like they stop Roar
BattleScript_ExForceSwitchAfterHit::
	jumpifmovehadnoeffect BattleScript_MoveEnd
	jumpifhasnohp BS_TARGET, BattleScript_MoveEnd
	jumpifability BS_TARGET, ABILITY_SUCTION_CUPS, BattleScript_AbilityPreventsPhasingOut
	jumpifstatus3 BS_TARGET, STATUS3_ROOTED, BattleScript_PrintMonIsRooted
	jumpifbattletype BATTLE_TYPE_ARENA, BattleScript_MoveEnd
	forcerandomswitch BattleScript_MoveEnd

@ An EX move's extra effect (struct ExMove), after its own: called after a hit by BattleScript_HitFromAtkAnimation,
@ and by scripts with their own hit (like Fire Crash). Nothing if it has none
BattleScript_TryExExtraEffect::
	jumpifbyte CMP_EQUAL, gExExtraMoveEffect, 0, BattleScript_TryExExtraEffectRet
	copybyte cEFFECT_CHOOSER, gExExtraMoveEffect
	seteffectwithchance
BattleScript_TryExExtraEffectRet:
	return

@ An EX_FLAG_CHARGE_USER move charges its user after it hits, like Charge (called by Thunder Crash)
BattleScript_TryExChargeUser::
	jumpifword CMP_NO_COMMON_BITS, gExMoveFlags, EX_FLAG_CHARGE_USER, BattleScript_TryExChargeUserRet
	jumpifmovehadnoeffect BattleScript_TryExChargeUserRet
	jumpifhasnohp BS_ATTACKER, BattleScript_TryExChargeUserRet
	setcharge
	printstring STRINGID_PKMNCHARGINGPOWER
	waitmessage B_WAIT_TIME_LONG
BattleScript_TryExChargeUserRet:
	return

@ An EX_FLAG_FORCE_OUT_DAMAGE move deals a fixed 30 damage to its target before forcing it out (from
@ BattleScript_SuccessForceOut). If that KOs it, it faints instead of switching out
BattleScript_ExForceOutDamage::
	setword gBattleMoveDamage, 30
	hitanimation BS_TARGET
	waitstate
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	tryfaintmon BS_TARGET
	jumpifhasnohp BS_TARGET, BattleScript_MoveEnd
	goto BattleScript_SuccessForceOutNoAnim

@ After an EX_FLAG_WEAKEN_REPLACEMENT move forces its target out in a trainer battle, the Pokémon dragged in
@ has its Attack lowered by 1 (from BattleScript_TrainerBattleForceOut)
BattleScript_ExWeakenReplacement::
	jumpifhasnohp BS_TARGET, BattleScript_MoveEnd
	setstatchanger STAT_ATK, 1, TRUE
	statbuffchange STAT_CHANGE_ALLOW_PTR, BattleScript_MoveEnd
	jumpifbyte CMP_LESS_THAN, cMULTISTRING_CHOOSER, B_MSG_STAT_WONT_DECREASE, BattleScript_ExWeakenReplacementAnim
	jumpifbyte CMP_EQUAL, cMULTISTRING_CHOOSER, B_MSG_STAT_FELL_EMPTY, BattleScript_MoveEnd
	pause B_WAIT_TIME_SHORT
	goto BattleScript_ExWeakenReplacementString
BattleScript_ExWeakenReplacementAnim:
	setgraphicalstatchangevalues
	playanimation BS_TARGET, B_ANIM_STATS_CHANGE, sB_ANIM_ARG1
BattleScript_ExWeakenReplacementString:
	printfromtable gStatDownStringIds
	waitmessage B_WAIT_TIME_LONG
	goto BattleScript_MoveEnd

@ An EX_FLAG_SWITCH_OUT_USER move's user switches out afterwards, like Baton Pass but without passing its stat
@ changes on. It ignores trapping, like Baton Pass, and does nothing if there's no Pokémon to switch to
BattleScript_ExSwitchOutUser::
	jumpifhasnohp BS_ATTACKER, BattleScript_MoveEnd
	jumpifbattletype BATTLE_TYPE_ARENA, BattleScript_MoveEnd
	jumpifcantswitch SWITCH_IGNORE_ESCAPE_PREVENTION | BS_ATTACKER, BattleScript_MoveEnd
	openpartyscreen BS_ATTACKER, BattleScript_MoveEnd
	switchoutabilities BS_ATTACKER
	waitstate
	switchhandleorder BS_ATTACKER, 2
	returntoball BS_ATTACKER
	getswitchedmondata BS_ATTACKER
	switchindataupdate BS_ATTACKER
	hpthresholds BS_ATTACKER
	printstring STRINGID_SWITCHINMON
	switchinanim BS_ATTACKER, TRUE
	waitstate
	switchineffects BS_ATTACKER
	goto BattleScript_MoveEnd

@ After an EX_FLAG_TRANSFER_STATUS move hits (from BattleScript_HitFromAtkAnimation), the user's burn, poison or
@ paralysis passes to the target, like Psycho Shift, as long as the target can get it. Either way, the user is
@ then cured, like Refresh
BattleScript_ExTransferStatusAfterHit::
	jumpifmovehadnoeffect BattleScript_HitTrySetWeather
	jumpifhasnohp BS_ATTACKER, BattleScript_HitTrySetWeather
	jumpifhasnohp BS_TARGET, BattleScript_ExTransferStatusCure
	various BS_ATTACKER, VARIOUS_EX_TRANSFER_STATUS
	seteffectwithchance @ The user's status, as a certain move effect on the target (nothing if it has none)
BattleScript_ExTransferStatusCure:
	cureifburnedparalysedorpoisoned BattleScript_HitTrySetWeather
	printstring STRINGID_PKMNSTATUSNORMAL
	waitmessage B_WAIT_TIME_LONG
	updatestatusicon BS_ATTACKER
	goto BattleScript_HitTrySetWeather

@ After an EX_FLAG_SET_WEATHER move hits (from BattleScript_HitFromAtkAnimation), it sets the weather of its type,
@ like the move that does (see VARIOUS_EX_SET_WEATHER). Nothing happens if it's already that weather
BattleScript_ExWeatherAfterHit::
	jumpifmovehadnoeffect BattleScript_HitTryLockOn
	various BS_ATTACKER, VARIOUS_EX_SET_WEATHER
	jumpifbyte CMP_EQUAL, gBattleCommunication, FALSE, BattleScript_HitTryLockOn
	playanimation_var BS_ATTACKER, sB_ANIM_ARG1
	printfromtable gMoveWeatherChangeStringIds
	waitmessage B_WAIT_TIME_LONG
	call BattleScript_WeatherFormChanges
	goto BattleScript_HitTryLockOn

@ Species EX scripts. These are only for the species that list them in src/data/pokemon/ex_species_moves.h,
@ and replace whatever EX version the move has for everyone else.

@ Banette: while it's Normal type, it survives its Self-Destruct, but loses its Normal type to become pure Ghost.
@ Once it isn't Normal type, its EX Self-Destruct is the usual one, which upgrades to Explosion
BattleScript_ExSelfDestructBanette::
	jumpiftype BS_ATTACKER, TYPE_NORMAL, BattleScript_ExSelfDestructBanetteNoCost
	various BS_ATTACKER, VARIOUS_EX_USE_USUAL_VERSION
BattleScript_ExSelfDestructBanetteNoCost:
	orword gExMoveFlags, EX_FLAG_NO_HP_COST
	attackcanceler
	attackstring
	ppreduce
	tryexplosion
	waitstate
	jumpifbyte CMP_NO_COMMON_BITS, gMoveResultFlags, MOVE_RESULT_MISSED, BattleScript_ExSelfDestructBanetteDoAnim
	call BattleScript_PreserveMissedBitDoMoveAnim
	goto BattleScript_ExSelfDestructBanetteLoop
BattleScript_ExSelfDestructBanetteDoAnim:
	attackanimation
	waitanimation
BattleScript_ExSelfDestructBanetteLoop:
	movevaluescleanup
	critcalc
	damagecalc
	typecalc
	adjustnormaldamage
	accuracycheck BattleScript_ExSelfDestructBanetteMissed, ACC_CURR_MOVE
	effectivenesssound
	hitanimation BS_TARGET
	waitstate
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	critmessage
	waitmessage B_WAIT_TIME_LONG
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	tryfaintmon BS_TARGET
	moveendto MOVEEND_NEXT_TARGET
	jumpifnexttargetvalid BattleScript_ExSelfDestructBanetteLoop
	goto BattleScript_ExSelfDestructBanetteBecomeGhost
BattleScript_ExSelfDestructBanetteMissed:
	effectivenesssound
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	moveendto MOVEEND_NEXT_TARGET
	jumpifnexttargetvalid BattleScript_ExSelfDestructBanetteLoop
BattleScript_ExSelfDestructBanetteBecomeGhost:
	settypewithmove BattleScript_ExSelfDestructBanetteEnd @ Like Attunement
	printstring STRINGID_PKMNCHANGEDTYPE
	waitmessage B_WAIT_TIME_LONG
BattleScript_ExSelfDestructBanetteEnd:
	end

@ Glalie: a regular Explosion that always freezes everything it hits, including its ally
BattleScript_ExExplosionGlalie::
	setbyte sMULTIHIT_EFFECT, MOVE_EFFECT_FREEZE | MOVE_EFFECT_CERTAIN
	goto BattleScript_ExExplosionWithEffect

@ Voltorb and Electrode: a regular Explosion that always paralyzes everything it hits, including its ally
BattleScript_ExExplosionVoltorb::
	setbyte sMULTIHIT_EFFECT, MOVE_EFFECT_PARALYSIS | MOVE_EFFECT_CERTAIN
@ A regular Explosion, with the move effect in sMULTIHIT_EFFECT on everything it hits
BattleScript_ExExplosionWithEffect:
	attackcanceler
	attackstring
	ppreduce
	tryexplosion
	setatkhptozero
	waitstate
	jumpifbyte CMP_NO_COMMON_BITS, gMoveResultFlags, MOVE_RESULT_MISSED, BattleScript_ExExplosionWithEffectDoAnim
	call BattleScript_PreserveMissedBitDoMoveAnim
	goto BattleScript_ExExplosionWithEffectLoop
BattleScript_ExExplosionWithEffectDoAnim:
	attackanimation
	waitanimation
BattleScript_ExExplosionWithEffectLoop:
	movevaluescleanup
	critcalc
	damagecalc
	typecalc
	adjustnormaldamage
	accuracycheck BattleScript_ExExplosionWithEffectMissed, ACC_CURR_MOVE
	effectivenesssound
	hitanimation BS_TARGET
	waitstate
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	critmessage
	waitmessage B_WAIT_TIME_LONG
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	copybyte cEFFECT_CHOOSER, sMULTIHIT_EFFECT
	seteffectwithchance
	tryfaintmon BS_TARGET
	moveendto MOVEEND_NEXT_TARGET
	jumpifnexttargetvalid BattleScript_ExExplosionWithEffectLoop
	tryfaintmon BS_ATTACKER
	end
BattleScript_ExExplosionWithEffectMissed:
	effectivenesssound
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	moveendto MOVEEND_NEXT_TARGET
	jumpifnexttargetvalid BattleScript_ExExplosionWithEffectLoop
	tryfaintmon BS_ATTACKER
	end

@ A Pokémon unlocked its EX form through training, after gaining EXP (see Cmd_getexp).
@ If it's on the field it glows and turns into its EX form (B_ANIM_EX_MASTERY), then its message shows.
@ Then the jingle plays, and in the silence after it the EX logo slams into its healthbox. Then the
@ music comes back, or if the battle goes on, the title theme takes over, like after an evolution mid-battle.
BattleScript_ExTrainingUnlock::
	various BS_ATTACKER, VARIOUS_EX_TRAINING_ANIM
	waitanimation
	various BS_ATTACKER, VARIOUS_EX_TRAINING_UPDATE_FORM
	printfromtable gExUnlockStringIds
	waitmessage B_WAIT_TIME_SHORT
	various BS_ATTACKER, VARIOUS_EX_TRAINING_JINGLE
	various BS_ATTACKER, VARIOUS_WAIT_FANFARE
	various BS_ATTACKER, VARIOUS_EX_TRAINING_LOGO
	various BS_ATTACKER, VARIOUS_WAIT_EX_LOGO
	various BS_ATTACKER, VARIOUS_EX_TRAINING_MUSIC
	return
