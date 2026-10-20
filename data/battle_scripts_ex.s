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
@ ability's list, or every EX move with .allExMoves (Wishmaker). Any Pokémon can also use the EX
@ moves matching its held crystal's types (sExMoveCrystals). These all stack.
@ They can highlight one of these moves in battle and press L to use its EX version.
@ The move's name turns yellow, and using it costs 2 PP instead of 1.
@
@ An EX move runs its script below instead of its regular move effect script. These scripts can
@ goto back into the regular scripts in battle_scripts_1.s for anything that stays the same.
@ Scripts that aren't in this file can check for an EX move themselves with jumpifexmove.
@
@ Its animation plays the EXMove flash first, then the move's regular animation. A move with a
@ stronger EX animation starts its animation with chooseEXanimation instead, which goes to the
@ EX version (which should call EXMove itself). See battle_anim_scripts.s.

	.macro exmove move:req, script:req
	.2byte \move
	.2byte 0
	.4byte \script
	.endm

	.align 2
gExMoves::
	exmove MOVE_CRUNCH, BattleScript_ExCrunch
	exmove MOVE_FAKE_TEARS, BattleScript_ExFakeTears
	exmove MOVE_LEAF_BLADE, BattleScript_ExLeafBlade
	exmove MOVE_AGILITY, BattleScript_ExAgility
	exmove MOVE_BULLET_SEED, BattleScript_ExBulletSeed
	exmove MOVE_FURY_CUTTER, BattleScript_ExFuryCutter
	exmove MOVE_OLD_FURY_CUTTER, BattleScript_ExFuryCutter
	exmove MOVE_NONE, 0 @ End of list, keep this last

@ EX upgrades. Instead of an EX script, these moves become a stronger, closely related move when
@ used as an EX move: they use that move's power, type, accuracy, and effect, and its animation after
@ the EXMove flash. The battle messages still name the move that was chosen.
@ A move in both lists uses its EX script.

	.macro exupgrade move:req, upgrade:req
	.2byte \move
	.2byte \upgrade
	.endm

	.align 2
gExMoveUpgrades::
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
	exupgrade MOVE_WATER_GUN, MOVE_WATER_PULSE
	exupgrade MOVE_WATER_PULSE, MOVE_HYDRO_PUMP
	exupgrade MOVE_BUBBLE, MOVE_BUBBLE_BEAM
	exupgrade MOVE_THUNDER_SHOCK, MOVE_SHOCK_WAVE
	exupgrade MOVE_SHOCK_WAVE, MOVE_THUNDERBOLT
	exupgrade MOVE_THUNDERBOLT, MOVE_THUNDER
	exupgrade MOVE_POWDER_SNOW, MOVE_ICY_WIND
	exupgrade MOVE_AURORA_BEAM, MOVE_ICE_BEAM
	exupgrade MOVE_JUMP_KICK, MOVE_HI_JUMP_KICK
	exupgrade MOVE_ROLLING_KICK, MOVE_SCISSOR_KICK
	exupgrade MOVE_SMOG, MOVE_SLUDGE
	exupgrade MOVE_SLUDGE, MOVE_SLUDGE_BOMB
	exupgrade MOVE_SAND_ATTACK, MOVE_MUD_SLAP
	exupgrade MOVE_MAGNITUDE, MOVE_EARTHQUAKE
	exupgrade MOVE_KARATE_CHOP, MOVE_CROSS_CHOP
	exupgrade MOVE_PECK, MOVE_DRILL_PECK
	exupgrade MOVE_ROCK_THROW, MOVE_ROCK_SLIDE
	exupgrade MOVE_DIZZY_PUNCH, MOVE_DYNAMIC_PUNCH
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
	exstatup MOVE_MIMIC, STAT_ACC, 1
	exstatup MOVE_BULK_UP, STAT_ATK, 1
	exstatup MOVE_HOWL, STAT_ATK, 1
	exstatup MOVE_LEER, STAT_ATK, 1
	exstatup MOVE_MEDITATE, STAT_ATK, 1
	exstatup MOVE_ODOR_SLEUTH, STAT_ATK, 1
	exstatup MOVE_SCREECH, STAT_ATK, 1
	exstatup MOVE_SHARPEN, STAT_ATK, 1
	exstatup MOVE_TAIL_WHIP, STAT_ATK, 1
	exstatup MOVE_TAUNT, STAT_ATK, 1
	exstatup MOVE_WILL_O_WISP, STAT_ATK, 1
	exstatup MOVE_MIRROR_MOVE, STAT_ATK, 2
	exstatsup MOVE_SPLASH, BIT_ATK | BIT_SPATK | BIT_SPEED, 1 @ Attack +3 in expansion, spread out as Splash has 40 PP
	exstatup MOVE_BLOCK, STAT_DEF, 1
	exstatup MOVE_CHARM, STAT_DEF, 1
	exstatup MOVE_FEATHER_DANCE, STAT_DEF, 1
	exstatup MOVE_GROWL, STAT_DEF, 1
	exstatup MOVE_HARDEN, STAT_DEF, 1
	exstatup MOVE_PAIN_SPLIT, STAT_DEF, 1
	exstatup MOVE_POISON_GAS, STAT_DEF, 1
	exstatup MOVE_POISON_POWDER, STAT_DEF, 1
	exstatup MOVE_REFLECT, STAT_DEF, 1
	exstatup MOVE_ROAR, STAT_DEF, 1
	exstatup MOVE_SPIDER_WEB, STAT_DEF, 1
	exstatup MOVE_SPIKES, STAT_DEF, 1
	exstatup MOVE_TICKLE, STAT_DEF, 1
	exstatup MOVE_TORMENT, STAT_DEF, 1
	exstatup MOVE_TOXIC, STAT_DEF, 1
	exstatup MOVE_TOXIC_SPIKES, STAT_DEF, 1
	exstatup MOVE_WITHDRAW, STAT_DEF, 1
	exstatup MOVE_CAMOUFLAGE, STAT_EVASION, 1
	exstatup MOVE_DETECT, STAT_EVASION, 1
	exstatup MOVE_FLASH, STAT_EVASION, 1
	exstatup MOVE_KINESIS, STAT_EVASION, 1
	exstatup MOVE_SAND_ATTACK, STAT_EVASION, 1
	exstatup MOVE_SMOKESCREEN, STAT_EVASION, 1
	exstatup MOVE_CONFUSE_RAY, STAT_SPATK, 1
	exstatup MOVE_GROWTH, STAT_SPATK, 1
	exstatup MOVE_METAL_SOUND, STAT_SPATK, 1
	exstatup MOVE_MIND_READER, STAT_SPATK, 1
	exstatup MOVE_NIGHTMARE, STAT_SPATK, 1
	exstatup MOVE_SWEET_KISS, STAT_SPATK, 1
	exstatup MOVE_TEETER_DANCE, STAT_SPATK, 1
	exstatup MOVE_COSMIC_POWER, STAT_SPDEF, 1
	exstatup MOVE_FLATTER, STAT_SPDEF, 1
	exstatup MOVE_GLARE, STAT_SPDEF, 1
	exstatup MOVE_INGRAIN, STAT_SPDEF, 1
	exstatup MOVE_LIGHT_SCREEN, STAT_SPDEF, 1
	exstatup MOVE_MEAN_LOOK, STAT_SPDEF, 1
	exstatup MOVE_MUD_SPORT, STAT_SPDEF, 1
	exstatup MOVE_STUN_SPORE, STAT_SPDEF, 1
	exstatup MOVE_THUNDER_WAVE, STAT_SPDEF, 1
	exstatup MOVE_WATER_SPORT, STAT_SPDEF, 1
	exstatup MOVE_WHIRLWIND, STAT_SPDEF, 1
	exstatup MOVE_WISH, STAT_SPDEF, 1
	exstatup MOVE_IMPRISON, STAT_SPDEF, 2
	exstatup MOVE_MAGIC_COAT, STAT_SPDEF, 2
	exstatup MOVE_ENCORE, STAT_SPEED, 1
	exstatup MOVE_GRASS_WHISTLE, STAT_SPEED, 1
	exstatup MOVE_HAIL, STAT_SPEED, 1
	exstatup MOVE_HYPNOSIS, STAT_SPEED, 1
	exstatup MOVE_LOCK_ON, STAT_SPEED, 1
	exstatup MOVE_LOVELY_KISS, STAT_SPEED, 1
	exstatup MOVE_RAIN_DANCE, STAT_SPEED, 1
	exstatup MOVE_ROLE_PLAY, STAT_SPEED, 1
	exstatup MOVE_SAFEGUARD, STAT_SPEED, 1
	exstatup MOVE_SANDSTORM, STAT_SPEED, 1
	exstatup MOVE_SCARY_FACE, STAT_SPEED, 1
	exstatup MOVE_SING, STAT_SPEED, 1
	exstatup MOVE_SKILL_SWAP, STAT_SPEED, 1
	exstatup MOVE_SLEEP_POWDER, STAT_SPEED, 1
	exstatup MOVE_STRING_SHOT, STAT_SPEED, 1
	exstatup MOVE_SUNNY_DAY, STAT_SPEED, 1
	exstatup MOVE_SUPERSONIC, STAT_SPEED, 1
	exstatup MOVE_YAWN, STAT_SPEED, 1
	exstatup MOVE_RECYCLE, STAT_SPEED, 2
	exstatup MOVE_SNATCH, STAT_SPEED, 2
	exstatup MOVE_TRICK, STAT_SPEED, 2
	exbonus MOVE_CONVERSION, EX_BONUS_ALL_STATS_UP
	exbonus MOVE_SKETCH, EX_BONUS_ALL_STATS_UP
	exbonus MOVE_SLEEP_TALK, EX_BONUS_BOOST_CRITS
	exbonus MOVE_DESTINY_BOND, EX_BONUS_FOLLOW_ME
	exbonus MOVE_GRUDGE, EX_BONUS_FOLLOW_ME
	exbonus MOVE_MEMENTO, EX_BONUS_HEAL_REPLACEMENT
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
	exbonus MOVE_AMNESIA, EX_BONUS_RESET_STATS
	exbonus MOVE_ATTRACT, EX_BONUS_RESET_STATS
	exbonus MOVE_BARRIER, EX_BONUS_RESET_STATS
	exbonus MOVE_BATON_PASS, EX_BONUS_RESET_STATS
	exbonus MOVE_CALM_MIND, EX_BONUS_RESET_STATS
	exbonus MOVE_COTTON_SPORE, EX_BONUS_RESET_STATS
	exbonus MOVE_DISABLE, EX_BONUS_RESET_STATS
	exbonus MOVE_DOUBLE_TEAM, EX_BONUS_RESET_STATS
	exbonus MOVE_DRAGON_DANCE, EX_BONUS_RESET_STATS
	exbonus MOVE_ENDURE, EX_BONUS_RESET_STATS
	exbonus MOVE_FOLLOW_ME, EX_BONUS_RESET_STATS
	exbonus MOVE_HELPING_HAND, EX_BONUS_RESET_STATS
	exbonus MOVE_IRON_DEFENSE, EX_BONUS_RESET_STATS
	exbonus MOVE_LEECH_SEED, EX_BONUS_RESET_STATS
	exbonus MOVE_MILK_DRINK, EX_BONUS_RESET_STATS
	exbonus MOVE_MINIMIZE, EX_BONUS_RESET_STATS
	exbonus MOVE_MOONLIGHT, EX_BONUS_RESET_STATS
	exbonus MOVE_MORNING_SUN, EX_BONUS_RESET_STATS
	exbonus MOVE_NASTY_PLOT, EX_BONUS_RESET_STATS
	exbonus MOVE_PERISH_SONG, EX_BONUS_RESET_STATS
	exbonus MOVE_PROTECT, EX_BONUS_RESET_STATS
	exbonus MOVE_RECOVER, EX_BONUS_RESET_STATS
	exbonus MOVE_REST, EX_BONUS_RESET_STATS
	exbonus MOVE_SLACK_OFF, EX_BONUS_RESET_STATS
	exbonus MOVE_SOFT_BOILED, EX_BONUS_RESET_STATS
	exbonus MOVE_SPORE, EX_BONUS_RESET_STATS
	exbonus MOVE_SUBSTITUTE, EX_BONUS_RESET_STATS
	exbonus MOVE_SWAGGER, EX_BONUS_RESET_STATS
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

@ Hits like normal, but targets that resist it take neutral damage
BattleScript_ExLeafBlade::
	various BS_ATTACKER, VARIOUS_IGNORE_RESISTANCES
	goto BattleScript_EffectHit

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

@ Always hits 4 times for double damage each, then seeds the target like Leech Seed
BattleScript_ExBulletSeed::
	attackcanceler
	accuracycheck BattleScript_PrintMoveMissed, ACC_CURR_MOVE
	attackstring
	ppreduce
	setmultihitcounter 4
	initmultihitstring
	setbyte sMULTIHIT_EFFECT, 0
BattleScript_ExBulletSeedLoop:
	jumpifhasnohp BS_ATTACKER, BattleScript_ExBulletSeedEnd
	jumpifhasnohp BS_TARGET, BattleScript_ExBulletSeedPrintStrings
	jumpifhalfword CMP_EQUAL, gChosenMove, MOVE_SLEEP_TALK, BattleScript_ExBulletSeedDoHit
	jumpifstatus BS_ATTACKER, STATUS1_SLEEP, BattleScript_ExBulletSeedPrintStrings
BattleScript_ExBulletSeedDoHit:
	movevaluescleanup
	setbyte sDMG_MULTIPLIER, 2 @ After movevaluescleanup, which resets it every hit
	copybyte cEFFECT_CHOOSER, sMULTIHIT_EFFECT
	critcalc
	damagecalc
	typecalc
	jumpifmovehadnoeffect BattleScript_ExBulletSeedNoMoreHits
	adjustnormaldamage
	attackanimation
	waitanimation
	effectivenesssound
	hitanimation BS_TARGET
	waitstate
	healthbarupdate BS_TARGET
	datahpupdate BS_TARGET
	critmessage
	waitmessage B_WAIT_TIME_LONG
	printstring STRINGID_EMPTYSTRING3
	waitmessage 1
	addbyte sMULTIHIT_STRING + 4, 1
	moveendto MOVEEND_NEXT_TARGET
	jumpifbyte CMP_COMMON_BITS, gMoveResultFlags, MOVE_RESULT_FOE_ENDURED, BattleScript_ExBulletSeedPrintStrings
	setbyte sB_ANIM_TURN, 0
	decrementmultihit BattleScript_ExBulletSeedLoop
	goto BattleScript_ExBulletSeedPrintStrings
BattleScript_ExBulletSeedNoMoreHits:
	pause B_WAIT_TIME_SHORT
BattleScript_ExBulletSeedPrintStrings:
	resultmessage
	waitmessage B_WAIT_TIME_LONG
	jumpifmovehadnoeffect BattleScript_ExBulletSeedEnd
	copyarray gBattleTextBuff1, sMULTIHIT_STRING, 6
	printstring STRINGID_HITXTIMES
	waitmessage B_WAIT_TIME_LONG
BattleScript_ExBulletSeedEnd:
	seteffectwithchance
	tryfaintmon BS_TARGET
	tryfaintmon BS_ATTACKER
	jumpifmovehadnoeffect BattleScript_ExBulletSeedMoveEnd
	jumpifhasnohp BS_TARGET, BattleScript_ExBulletSeedMoveEnd
	setseeded
	printfromtable gLeechSeedStringIds
	waitmessage B_WAIT_TIME_LONG
BattleScript_ExBulletSeedMoveEnd:
	moveendcase MOVEEND_SYNCHRONIZE_TARGET
	moveendfrom MOVEEND_IMMUNITY_ABILITIES
	end


BattleScript_ExFuryCutter::
	setmoveeffect MOVE_EFFECT_DEF_MINUS_1
	goto BattleScript_EffectHit

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
