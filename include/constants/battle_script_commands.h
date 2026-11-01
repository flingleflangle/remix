#ifndef GUARD_CONSTANTS_BATTLE_SCRIPT_COMMANDS_H
#define GUARD_CONSTANTS_BATTLE_SCRIPT_COMMANDS_H

// The following correspond to the struct members of BattleScripting by adding their offset
#define sPAINSPLIT_HP                (gBattleScripting + 0x00) // painSplitHp
#define sBIDE_DMG                    (gBattleScripting + 0x04) // bideDmg
#define sMULTIHIT_STRING             (gBattleScripting + 0x08) // multihitString
#define sDMG_MULTIPLIER              (gBattleScripting + 0x0E) // dmgMultiplier
#define sTWOTURN_STRINGID            (gBattleScripting + 0x0F) // twoTurnsMoveStringId
#define sB_ANIM_ARG1                 (gBattleScripting + 0x10) // animArg1
#define sB_ANIM_ARG2                 (gBattleScripting + 0x11) // animArg2
#define sTRIPLE_KICK_POWER           (gBattleScripting + 0x12) // tripleKickPower
#define sMOVEEND_STATE               (gBattleScripting + 0x14) // moveendState
#define sBATTLER_WITH_ABILITY        (gBattleScripting + 0x15) // battlerWithAbility
#define sMULTIHIT_EFFECT             (gBattleScripting + 0x16) // multihitMoveEffect
#define sBATTLER                     (gBattleScripting + 0x17) // battler
#define sB_ANIM_TURN                 (gBattleScripting + 0x18) // animTurn
#define sB_ANIM_TARGETS_HIT          (gBattleScripting + 0x19) // animTargetsHit
#define sSTATCHANGER                 (gBattleScripting + 0x1A) // statChanger
#define sSTAT_ANIM_PLAYED            (gBattleScripting + 0x1B) // statAnimPlayed
#define sGIVEEXP_STATE               (gBattleScripting + 0x1C) // getexpState
#define sBATTLE_STYLE                (gBattleScripting + 0x1D) // battleStyle
#define sLVLBOX_STATE                (gBattleScripting + 0x1E) // drawlvlupboxState
#define sLEARNMOVE_STATE             (gBattleScripting + 0x1F) // learnMoveState
#define sPURSUIT_DOUBLES_ATTACKER    (gBattleScripting + 0x20) // pursuitDoublesAttacker
#define sRESHOW_MAIN_STATE           (gBattleScripting + 0x21) // reshowMainState
#define sRESHOW_HELPER_STATE         (gBattleScripting + 0x22) // reshowHelperState
#define sLVLUP_HP                    (gBattleScripting + 0x23) // levelUpHP
#define sWINDOWS_TYPE                (gBattleScripting + 0x24) // windowsType
#define sMULTIPLAYER_ID              (gBattleScripting + 0x25) // multiplayerId
#define sSPECIAL_TRAINER_BATTLE_TYPE (gBattleScripting + 0x26) // specialTrainerBattleType
#define sSPREAD_STAT_AFFECTED        (gBattleScripting + 0x27) // spreadStatAffected

// Array entries for battle communication
#define MULTIUSE_STATE          0
#define CURSOR_POSITION         1
#define TASK_ID                 1 // task Id and cursor position share the same field
#define SPRITES_INIT_STATE1     1 // shares the Id as well
#define SPRITES_INIT_STATE2     2
#define MOVE_EFFECT_BYTE        3
#define ACTIONS_CONFIRMED_COUNT 4
#define MULTISTRING_CHOOSER     5
#define MISS_TYPE               6
#define MSG_DISPLAY             7
#define BATTLE_COMMUNICATION_ENTRIES_COUNT  8

#define cEFFECT_CHOOSER      (gBattleCommunication + MOVE_EFFECT_BYTE)
#define cMULTISTRING_CHOOSER (gBattleCommunication + MULTISTRING_CHOOSER)
#define cMISS_TYPE           (gBattleCommunication + MISS_TYPE)

// Battle Script defines for getting the wanted battler
#define BS_TARGET                   0
#define BS_ATTACKER                 1
#define BS_EFFECT_BATTLER           2
#define BS_FAINTED                  3
#define BS_ATTACKER_WITH_PARTNER    4 // for Cmd_updatestatusicon
#define BS_FAINTED_LINK_MULTIPLE_1  5 // for openpartyscreen
#define BS_FAINTED_LINK_MULTIPLE_2  6 // for openpartyscreen
#define BS_BATTLER_0                7
#define BS_ATTACKER_SIDE            8 // for Cmd_jumpifability
#define BS_NOT_ATTACKER_SIDE        9 // for Cmd_jumpifability
#define BS_SCRIPTING                10
#define BS_PLAYER1                  11
#define BS_OPPONENT1                12
#define BS_PLAYER2                  13 // for Cmd_updatestatusicon
#define BS_OPPONENT2                14

// Cmd_accuracycheck
#define NO_ACC_CALC 0xFFFE
#define NO_ACC_CALC_CHECK_LOCK_ON 0xFFFF
#define ACC_CURR_MOVE 0

// compare operands
#define CMP_EQUAL               0
#define CMP_NOT_EQUAL           1
#define CMP_GREATER_THAN        2
#define CMP_LESS_THAN           3
#define CMP_COMMON_BITS         4
#define CMP_NO_COMMON_BITS      5

// Cmd_various
#define VARIOUS_CANCEL_MULTI_TURN_MOVES         0
#define VARIOUS_SET_MAGIC_COAT_TARGET           1
#define VARIOUS_IS_RUNNING_IMPOSSIBLE           2
#define VARIOUS_GET_MOVE_TARGET                 3
#define VARIOUS_GET_BATTLER_FAINTED             4
#define VARIOUS_RESET_INTIMIDATE_TRACE_BITS     5
#define VARIOUS_UPDATE_CHOICE_MOVE_ON_LVL_UP    6
#define VARIOUS_RESET_PLAYER_FAINTED            7
#define VARIOUS_PALACE_FLAVOR_TEXT              8
#define VARIOUS_ARENA_JUDGMENT_WINDOW           9
#define VARIOUS_ARENA_OPPONENT_MON_LOST         10
#define VARIOUS_ARENA_PLAYER_MON_LOST           11
#define VARIOUS_ARENA_BOTH_MONS_LOST            12
#define VARIOUS_EMIT_YESNOBOX                   13
#define VARIOUS_DRAW_ARENA_REF_TEXT_BOX         14
#define VARIOUS_ERASE_ARENA_REF_TEXT_BOX        15
#define VARIOUS_ARENA_JUDGMENT_STRING           16
#define VARIOUS_ARENA_WAIT_STRING               17
#define VARIOUS_WAIT_CRY                        18
#define VARIOUS_RETURN_OPPONENT_MON1            19
#define VARIOUS_RETURN_OPPONENT_MON2            20
#define VARIOUS_VOLUME_DOWN                     21
#define VARIOUS_VOLUME_UP                       22
#define VARIOUS_SET_ALREADY_STATUS_MOVE_ATTEMPT 23
#define VARIOUS_PALACE_TRY_ESCAPE_STATUS        24
#define VARIOUS_SET_TELEPORT_OUTCOME            25
#define VARIOUS_PLAY_TRAINER_DEFEATED_MUSIC     26
#define VARIOUS_SET_HEARTBROKEN                 27
#define VARIOUS_TRY_FIRST_SIGHT                 28
#define VARIOUS_TRY_BLOCK_SWITCH                29
#define VARIOUS_SET_TARGET_TO_PARTNER           30
#define VARIOUS_CANCEL_SWITCH                   31
#define VARIOUS_EX_BONUS_END                    32
#define VARIOUS_EX_RESET_LOWERED_STATS          33
#define VARIOUS_EX_BOOST_CRITS                  34
#define VARIOUS_EX_FOLLOW_ME                    35
#define VARIOUS_EX_SET_HEAL                     36
#define VARIOUS_EX_HEAL_REPLACEMENT             37
#define VARIOUS_EX_STATS_UP_ANIM                38
#define VARIOUS_EX_NEXT_BONUS_STAT              39
#define VARIOUS_SET_SURE_CRIT                   40
#define VARIOUS_EX_TRAINING_ANIM                41
#define VARIOUS_EX_TRAINING_UPDATE_FORM         42
#define VARIOUS_WAIT_FANFARE                    43
#define VARIOUS_EX_TRAINING_MUSIC               44
#define VARIOUS_WAIT_EX_LOGO                    45
#define VARIOUS_EX_TRAINING_JINGLE              46
#define VARIOUS_EX_TRAINING_LOGO                47
#define VARIOUS_EX_USE_USUAL_VERSION            48
#define VARIOUS_EX_SET_WEATHER                  49
#define VARIOUS_EX_TRY_BONUS                    50
#define VARIOUS_EX_RESET_SLEEP                  51
#define VARIOUS_EX_PROTECT                      52
#define VARIOUS_EX_TRANSFER_STATUS              53
#define VARIOUS_EX_SWAP_STATS                   54
#define VARIOUS_PIERCE_SUBSTITUTE               55
#define VARIOUS_CHAKRA_SURGE                    56
#define VARIOUS_BLACK_HOLE_ACTIVE               57
#define VARIOUS_ODOR_SLEUTH_NEXT_MON            58
#define VARIOUS_EX_NO_SWITCH_THIS_TURN          59
#define VARIOUS_EX_IS_NO_SWITCH_THIS_TURN       60
#define VARIOUS_EVOLVED_MID_BATTLE              61
#define VARIOUS_CAPTIVATE_CHECK                 62
#define VARIOUS_TRY_SPREAD_ABSORB               63
#define VARIOUS_NATURAL_GIFT                    64
#define VARIOUS_FEINT_BREAK_PROTECT             65
#define VARIOUS_STAT_BATCH_RESET                66
#define VARIOUS_STAT_BATCH_ADD                  67 // Use the statbatchadd macro, it takes a string
#define VARIOUS_STAT_BATCH_ANIM                 68
#define VARIOUS_STAT_BATCH_NEXT                 69
#define VARIOUS_CAN_BATCH_SPREAD_STAT           70
#define VARIOUS_SPREAD_STAT_NEXT_TARGET         71
#define VARIOUS_FRUIT_FEAST_NEXT_STAT           72

// EX move flags, for what an EX move does on top of its regular script (see exmove in data/ex_battle_scripts.s).
// They last for the move that set them (gExMoveFlags)
#define EX_FLAG_IGNORE_RESISTANCES  (1 << 0) // Resisted hits do neutral damage
#define EX_FLAG_NO_HP_COST          (1 << 1) // Substitute and Explosion cost the user no HP
#define EX_FLAG_SURE_HIT            (1 << 2) // Can't miss, like after Lock-On
#define EX_FLAG_IGNORE_PROTECT      (1 << 3) // Hits through Protect, but not Detect
#define EX_FLAG_SURE_EFFECT         (1 << 4) // Its secondary effect always happens
#define EX_FLAG_POISON_ANY_TYPE     (1 << 5) // Can poison Poison and Steel types, and badly poison them
#define EX_FLAG_CALM_RAMPAGE        (1 << 6) // Its rampage doesn't confuse the user when it ends (see gExCalmRampageBattlers)
#define EX_FLAG_LOCK_ON             (1 << 7) // After it hits, the user's next move against the target can't miss
#define EX_FLAG_IGNORE_IMMUNITY     (1 << 8) // Hits Pokémon immune to its type, for neutral damage, like Normal against Ghost or Electric against Ground
#define EX_FLAG_SPIKES              (1 << 9) // Scatters a layer of Spikes on the foe's side after it hits
#define EX_FLAG_FOUR_HITS           (1 << 10) // A move that hits 2-5 times always hits 4 times, like EX Bullet Seed
#define EX_FLAG_LEECH_SEED          (1 << 11) // Seeds the target like Leech Seed after it hits
#define EX_FLAG_GROWING_SEED        (1 << 12) // Its Leech Seed drains more each turn, like Toxic, then wears off (see gExLeechSeedTurns)
#define EX_FLAG_SET_WEATHER         (1 << 13) // After it hits, sets the weather of its type: Fire sun, Water rain, Ground sandstorm, Ice hail
#define EX_FLAG_TRAP_LOCK_ON        (1 << 14) // While its trap lasts, the user's moves can't miss the trapped Pokémon (see gExLockOnTrapBattlers)
#define EX_FLAG_FORCE_SWITCH        (1 << 15) // After it hits, the target is forced out, like Roar
#define EX_FLAG_SCREEN_BLOCK        (1 << 16) // Reflect and Light Screen also block physical or special moves on the user's side this turn, like Protect (gExScreenBlockSides)
#define EX_FLAG_COUNTER_SHIELD      (1 << 17) // Counter or Mirror Coat: the user takes no damage it'll counter this turn, before it moves (IsShieldedByExCounter)
#define EX_FLAG_NO_STAB             (1 << 18) // Doesn't get STAB, even if the user shares its type
#define EX_FLAG_EFFECT_EACH_HIT     (1 << 19) // A multi-hit move rolls its chance effect after every hit, not once after them all
#define EX_FLAG_TRANSFER_STATUS     (1 << 20) // After it hits, passes the user's burn, poison or paralysis to the target, and cures the user
#define EX_FLAG_SWITCH_OUT_USER     (1 << 21) // Afterwards, the user switches out, like Baton Pass without passing anything on
#define EX_FLAG_BIG_HEAL            (1 << 22) // Its half-HP heal (tryhealhalfhealth) restores 3/4 of the user's max HP instead
#define EX_FLAG_WEAKEN_REPLACEMENT  (1 << 23) // When it forces the target out in a trainer battle, the Pokémon dragged in has its Attack lowered by 1
#define EX_FLAG_FORCE_OUT_DAMAGE    (1 << 24) // When it forces the target out, the target takes a fixed 30 damage first
#define EX_FLAG_LASTING_TAUNT       (1 << 25) // Its Taunt lasts until the user switches out or faints (gExLastingTauntBy)
#define EX_FLAG_CHARGE_USER         (1 << 26) // After it hits, the user is charged like after Charge (BattleScript_EffectThunderCrash)
#define EX_FLAG_NO_SWITCH_THIS_TURN (1 << 27) // After it hits, the target can't switch out for the rest of the turn, even mid-switch when Pursuit catches it (gExNoSwitchBattlers)
#define EX_FLAG_WEAKNESS_CALL       (1 << 28) // Metronome calls one of gExMetronomeMoves that a foe is weak to, instead of any move (see Cmd_metronome)

// EX move bonuses, which status moves get before their effect when used as EX moves (see gExMoveBonuses in data/ex_battle_scripts.s)
#define EX_BONUS_STAT_UP          0 // Raises one of the user's stats
#define EX_BONUS_ALL_STATS_UP     1 // Raises all of the user's stats by 1
#define EX_BONUS_RESET_STATS      2 // Returns the user's lowered stats to normal
#define EX_BONUS_BOOST_CRITS      3 // Raises the user's critical hit ratio, like Focus Energy
#define EX_BONUS_FOLLOW_ME        4 // Makes the user the center of attention, like Follow Me
#define EX_BONUS_CURSE            5 // Ghost types recover their HP. Others raise their Attack by 1
#define EX_BONUS_RECOVER_HP       6 // Restores some of the user's HP: 1/stages of its max HP (half if 0)
#define EX_BONUS_HEAL_REPLACEMENT 7 // Fully restores the HP of the next Pokemon to switch in on the user's side
#define EX_BONUS_STATS_UP         8 // Raises several of the user's stats (stat is a mask of BIT_*), each by stages
#define EX_BONUS_FLINCH           9 // Makes the target flinch, if it hasn't moved yet this turn
#define EX_BONUS_CURE_STATUS      10 // Cures the user's burn, poison or paralysis, like Refresh
#define EX_BONUS_DEEPER_SLEEP     11 // Rerolls a sleeping target's sleep, like it was just put to sleep
#define EX_BONUS_TAUNT            12 // Taunts the target, like Taunt
#define EX_BONUS_COPY_STATS       13 // Copies the target's stat changes, like Psych Up
#define EX_BONUS_PROTECT          14 // Protects the user for the rest of the turn, like Protect
#define EX_BONUS_SWAP_STATS       15 // Swaps the user's and the target's stat changes

// Cmd_manipulatedmg
#define DMG_CHANGE_SIGN            0
#define DMG_RECOIL_FROM_MISS       1
#define DMG_DOUBLED                2
#define DMG_HEAL_ATTACKER_FULLY    3

// Cmd_jumpifcantswitch
#define SWITCH_IGNORE_ESCAPE_PREVENTION   (1 << 7)

// Cmd_statbuffchange
#define STAT_CHANGE_ALLOW_PTR               (1 << 0)   // If set, allow use of jumpptr. Set in every use of statbuffchange
#define STAT_CHANGE_NOT_PROTECT_AFFECTED    (1 << 5)

// stat change flags for Cmd_playstatchangeanimation
#define STAT_CHANGE_NEGATIVE             (1 << 0)
#define STAT_CHANGE_BY_TWO               (1 << 1)
#define STAT_CHANGE_MULTIPLE_STATS       (1 << 2)
#define STAT_CHANGE_CANT_PREVENT         (1 << 3)

// stat flags for Cmd_playstatchangeanimation
#define BIT_HP                      (1 << 0)
#define BIT_ATK                     (1 << 1)
#define BIT_DEF                     (1 << 2)
#define BIT_SPEED                   (1 << 3)
#define BIT_SPATK                   (1 << 4)
#define BIT_SPDEF                   (1 << 5)
#define BIT_ACC                     (1 << 6)
#define BIT_EVASION                 (1 << 7)

#define PARTY_SCREEN_OPTIONAL (1 << 7) // Flag for first argument to openpartyscreen

// cases for Cmd_moveend
#define MOVEEND_RAGE                              0
#define MOVEEND_DEFROST                           1
#define MOVEEND_SYNCHRONIZE_TARGET                2
#define MOVEEND_ON_DAMAGE_ABILITIES               3
#define MOVEEND_ATTACKER_CONTACT_ABILITIES        4
#define MOVEEND_IMMUNITY_ABILITIES                5
#define MOVEEND_SYNCHRONIZE_ATTACKER              6
#define MOVEEND_CHOICE_MOVE                       7
#define MOVEEND_CHANGED_ITEMS                     8
#define MOVEEND_ATTACKER_INVISIBLE                9
#define MOVEEND_ATTACKER_VISIBLE                  10
#define MOVEEND_TARGET_VISIBLE                    11
#define MOVEEND_ITEM_EFFECTS_ALL                  12
#define MOVEEND_KINGSROCK_SHELLBELL               13
#define MOVEEND_SUBSTITUTE                        14
#define MOVEEND_UPDATE_LAST_MOVES                 15
#define MOVEEND_MIRROR_MOVE                       16
#define MOVEEND_NEXT_TARGET                       17
#define MOVEEND_COUNT                             18

#endif // GUARD_CONSTANTS_BATTLE_SCRIPT_COMMANDS_H
