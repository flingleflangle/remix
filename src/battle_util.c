#include "global.h"
#include "follower_parties.h"
#include "battle.h"
#include "battle_anim.h"
#include "battle_arena.h"
#include "battle_pyramid.h"
#include "battle_util.h"
#include "battle_script_commands.h"
#include "pokemon.h"
#include "international_string_util.h"
#include "berry.h"
#include "item.h"
#include "util.h"
#include "battle_scripts.h"
#include "random.h"
#include "text.h"
#include "safari_zone.h"
#include "sound.h"
#include "sprite.h"
#include "string_util.h"
#include "task.h"
#include "trig.h"
#include "window.h"
#include "battle_message.h"
#include "battle_ai_script_commands.h"
#include "battle_controllers.h"
#include "event_data.h"
#include "link.h"
#include "field_weather.h"
#include "constants/abilities.h"
#include "constants/battle_anim.h"
#include "constants/battle_move_effects.h"
#include "constants/battle_script_commands.h"
#include "constants/battle_string_ids.h"
#include "constants/hold_effects.h"
#include "constants/items.h"
#include "constants/item_effects.h"
#include "constants/moves.h"
#include "constants/songs.h"
#include "constants/species.h"
#include "constants/weather.h"

/*
NOTE: The data and functions in this file up until (but not including) sSoundMovesTable
are actually part of battle_main.c. They needed to be moved to this file in order to
match the ROM; this is also why sSoundMovesTable's declaration is in the middle of
functions instead of at the top of the file with the other declarations.
*/

extern const u8 *const gBattleScriptsForMoveEffects[];
extern const u8 *const gBattlescriptsForBallThrow[];
extern const u8 *const gBattlescriptsForRunningByItem[];
extern const u8 *const gBattlescriptsForUsingItem[];
extern const u8 *const gBattlescriptsForSafariActions[];

static const u8 sPkblToEscapeFactor[][3] = {
    {
        [B_MSG_MON_CURIOUS]    = 0,
        [B_MSG_MON_ENTHRALLED] = 0,
        [B_MSG_MON_IGNORED]    = 0
    },{
        [B_MSG_MON_CURIOUS]    = 3,
        [B_MSG_MON_ENTHRALLED] = 5,
        [B_MSG_MON_IGNORED]    = 0
    },{
        [B_MSG_MON_CURIOUS]    = 2,
        [B_MSG_MON_ENTHRALLED] = 3,
        [B_MSG_MON_IGNORED]    = 0
    },{
        [B_MSG_MON_CURIOUS]    = 1,
        [B_MSG_MON_ENTHRALLED] = 2,
        [B_MSG_MON_IGNORED]    = 0
    },{
        [B_MSG_MON_CURIOUS]    = 1,
        [B_MSG_MON_ENTHRALLED] = 1,
        [B_MSG_MON_IGNORED]    = 0
    }
};
static const u8 sGoNearCounterToCatchFactor[] = {4, 3, 2, 1};
static const u8 sGoNearCounterToEscapeFactor[] = {4, 4, 4, 4};

// Only the charging turn of a two-turn move is chosen, so only it's an EX move. Its EX flags and extra effect are
// kept here for its attacking turn, so they still work then (like EX Dragon Fist getting past Protect)
static EWRAM_DATA u16 sExChargingMove[MAX_BATTLERS_COUNT] = {0};
static EWRAM_DATA u32 sExChargingFlags[MAX_BATTLERS_COUNT] = {0};
static EWRAM_DATA u8 sExChargingExtraEffect[MAX_BATTLERS_COUNT] = {0};

// Runs the current move as this EX version: its EX script, or its regular one with just the EX flags (EX_FLAG_*)
static void StartExMoveVersion(const struct ExMove *exMove)
{
    gExMoveFlags = exMove->flags;
    gExExtraMoveEffect = exMove->extraEffect != 0 ? (exMove->extraEffect | MOVE_EFFECT_CERTAIN) : 0;
    gBattleExAnimPending = EX_ANIM_EX_MOVE;
    if (exMove->script != NULL)
        gBattlescriptCurrInstr = exMove->script;
    else
        gBattlescriptCurrInstr = gBattleScriptsForMoveEffects[gBattleMoves[gCurrentMove].effect];
}

// For a battler's chosen move used outside its turn, when Pursuit hits a Pokémon switching out: makes it an EX move
// if the battler chose to use it as one and can, as in HandleAction_UseMove. Only its EX flags and the EX damage boost
// apply, not an EX script, upgrade or bonus. gCurrentMove and gCurrMovePos must be the chosen move's
void TrySetUpChosenExMoveOutOfTurn(u8 battler)
{
    const struct ExMove *exMove;

    gBattleMoveIsEx = FALSE;
    gBattleExAnimPending = EX_ANIM_NONE;
    gExMoveFlags = 0;
    gExExtraMoveEffect = 0;
    if (!(gExMoveChosenBits & gBitTable[battler])
     || gCurrentMove != gBattleMons[battler].moves[gCurrMovePos]
     || gBattleMons[battler].pp[gCurrMovePos] < 2
     || (gExMoveUsedSlots[battler] & gBitTable[gCurrMovePos])
     || !CanBattlerUseExMove(battler, gCurrentMove))
        return;

    exMove = GetSpeciesExMove(battler, gCurrentMove);
    if (exMove == NULL)
        exMove = GetExMove(gCurrentMove);
    gBattleMoveIsEx = TRUE;
    if (exMove != NULL)
    {
        gExMoveFlags = exMove->flags;
        gBattleExAnimPending = EX_ANIM_EX_MOVE;
    }
    else
    {
        gBattleExAnimPending = EX_ANIM_FLASH_ONLY;
    }
}

// Runs the current move as its EX version for everyone: its own (gExMoves), an upgrade, a bonus, or just the
// EX damage boost. A species' own EX version can fall back to this with VARIOUS_EX_USE_USUAL_VERSION
void StartUsualExMoveVersion(void)
{
    const struct ExMove *exMove = GetExMove(gCurrentMove);
    u16 upgrade = GetExMoveUpgrade(gCurrentMove);

    if (exMove != NULL)
    {
        StartExMoveVersion(exMove);
    }
    else if (upgrade != MOVE_NONE)
    {
        // Becomes a stronger move, but its messages still name the chosen move. gChosenMove stays the chosen move too
        gBattleExUpgradedFrom = gCurrentMove;
        gCurrentMove = upgrade;
        gBattleExAnimPending = EX_ANIM_FLASH_ONLY;
        gBattlescriptCurrInstr = gBattleScriptsForMoveEffects[gBattleMoves[gCurrentMove].effect];
    }
    else
    {
        // An EX bonus runs from the move's attackstring, along with the EX flash (see TryStartExMoveBonus).
        // Without one, the move just gets the EX damage boost (see Cmd_damagecalc), and the flash before its animation
        if (HasExMoveBonus(gCurrentMove))
            gBattleExBonusPending = TRUE;
        else
            gBattleExAnimPending = EX_ANIM_FLASH_ONLY;
        gBattlescriptCurrInstr = gBattleScriptsForMoveEffects[gBattleMoves[gCurrentMove].effect];
    }
}

// Whether the battler's current move will be used as an EX move: the player chose it as one, and it still can be
static bool32 IsUsingChosenExMove(u8 battler)
{
    return (gExMoveChosenBits & gBitTable[battler])
        && gCurrentMove == gChosenMoveByBattler[battler]
        && gCurrentMove == gBattleMons[battler].moves[gCurrMovePos]
        && gBattleMons[battler].pp[gCurrMovePos] >= 2
        && !(gExMoveUsedSlots[battler] & gBitTable[gCurrMovePos])
        && CanBattlerUseExMove(battler, gCurrentMove);
}

// Lightning Rod draws in Electric moves, Storm Drain draws in Water moves
static u8 GetRedirectAbility(u8 moveType)
{
    if (moveType == TYPE_ELECTRIC)
        return ABILITY_LIGHTNING_ROD;
    if (moveType == TYPE_WATER)
        return ABILITY_STORM_DRAIN;
    return ABILITY_NONE;
}

void HandleAction_UseMove(void)
{
    u8 side;
    u8 var = 4;
    u16 targetingMove;
    u8 redirectAbility;

    gBattlerAttacker = gBattlerByTurnOrder[gCurrentTurnActionNumber];

    if (*(&gBattleStruct->absentBattlerFlags) & gBitTable[gBattlerAttacker])
    {
        gCurrentActionFuncId = B_ACTION_FINISHED;
        return;
    }

    gCritMultiplier = 1;
    gBattleScripting.dmgMultiplier = 1;
    gBattleStruct->atkCancellerTracker = 0;
    gMoveResultFlags = 0;
    gMultiHitCounter = 0;
    gBattleCommunication[MISS_TYPE] = 0;
    gBattleMoveIsEx = FALSE;
    gBattleExAnimPending = FALSE;
    gExMoveFlags = 0;
    gExExtraMoveEffect = 0;
    gExEffectChance = 0;
    gBattleExUpgradedFrom = MOVE_NONE;
    gThisMoveSureCrit = FALSE;
    gBattleExBonusPending = FALSE;
    gCurrMovePos = gChosenMovePos = *(gBattleStruct->chosenMovePositions + gBattlerAttacker);

    // choose move
    if (gProtectStructs[gBattlerAttacker].noValidMoves)
    {
        gProtectStructs[gBattlerAttacker].noValidMoves = FALSE;
        gCurrentMove = gChosenMove = MOVE_STRUGGLE;
        gHitMarker |= HITMARKER_NO_PPDEDUCT;
        *(gBattleStruct->moveTarget + gBattlerAttacker) = GetMoveTarget(MOVE_STRUGGLE, NO_TARGET_OVERRIDE);
    }
    else if (gBattleMons[gBattlerAttacker].status2 & STATUS2_MULTIPLETURNS || gBattleMons[gBattlerAttacker].status2 & STATUS2_RECHARGE)
    {
        gCurrentMove = gChosenMove = gLockedMoves[gBattlerAttacker];
    }
    // encore forces you to use the same move
    else if (gDisableStructs[gBattlerAttacker].encoredMove != MOVE_NONE
             && gDisableStructs[gBattlerAttacker].encoredMove == gBattleMons[gBattlerAttacker].moves[gDisableStructs[gBattlerAttacker].encoredMovePos])
    {
        gCurrentMove = gChosenMove = gDisableStructs[gBattlerAttacker].encoredMove;
        gCurrMovePos = gChosenMovePos = gDisableStructs[gBattlerAttacker].encoredMovePos;
        *(gBattleStruct->moveTarget + gBattlerAttacker) = GetMoveTarget(gCurrentMove, NO_TARGET_OVERRIDE);
    }
    // check if the encored move wasn't overwritten
    else if (gDisableStructs[gBattlerAttacker].encoredMove != MOVE_NONE
             && gDisableStructs[gBattlerAttacker].encoredMove != gBattleMons[gBattlerAttacker].moves[gDisableStructs[gBattlerAttacker].encoredMovePos])
    {
        gCurrMovePos = gChosenMovePos = gDisableStructs[gBattlerAttacker].encoredMovePos;
        gCurrentMove = gChosenMove = gBattleMons[gBattlerAttacker].moves[gCurrMovePos];
        gDisableStructs[gBattlerAttacker].encoredMove = MOVE_NONE;
        gDisableStructs[gBattlerAttacker].encoredMovePos = 0;
        gDisableStructs[gBattlerAttacker].encoreTimer = 0;
        *(gBattleStruct->moveTarget + gBattlerAttacker) = GetMoveTarget(gCurrentMove, NO_TARGET_OVERRIDE);
    }
    else if (gBattleMons[gBattlerAttacker].moves[gCurrMovePos] != gChosenMoveByBattler[gBattlerAttacker])
    {
        gCurrentMove = gChosenMove = gBattleMons[gBattlerAttacker].moves[gCurrMovePos];
        *(gBattleStruct->moveTarget + gBattlerAttacker) = GetMoveTarget(gCurrentMove, NO_TARGET_OVERRIDE);
    }
    else
    {
        gCurrentMove = gChosenMove = gBattleMons[gBattlerAttacker].moves[gCurrMovePos];
    }

    if (gBattleMons[gBattlerAttacker].hp != 0)
    {
        if (GetBattlerSide(gBattlerAttacker) == B_SIDE_PLAYER)
            gBattleResults.lastUsedMovePlayer = gCurrentMove;
        else
            gBattleResults.lastUsedMoveOpponent = gCurrentMove;
    }

    // choose target. A move used as an EX move that's upgraded targets like the move it becomes (e.g. EX Razor Leaf,
    // which hits both foes, becomes Leaf Blade, which only hits the one the player picked)
    targetingMove = IsUsingChosenExMove(gBattlerAttacker) ? GetExMoveTargetingMove(gBattlerAttacker, gCurrentMove) : gChosenMove;
    side = BATTLE_OPPOSITE(GetBattlerSide(gBattlerAttacker));
    if (gSideTimers[side].followmeTimer != 0
        && gBattleMoves[targetingMove].target == MOVE_TARGET_SELECTED
        && GetBattlerSide(gBattlerAttacker) != GetBattlerSide(gSideTimers[side].followmeTarget)
        && gBattleMons[gSideTimers[side].followmeTarget].hp != 0)
    {
        gBattlerTarget = gSideTimers[side].followmeTarget;
    }
    else if ((gBattleTypeFlags & BATTLE_TYPE_DOUBLE)
             && gSideTimers[side].followmeTimer == 0
             && (gBattleMoves[gCurrentMove].power != 0
                 || gBattleMoves[gCurrentMove].target != MOVE_TARGET_USER)
             && (redirectAbility = GetRedirectAbility(gBattleMoves[gCurrentMove].type)) != ABILITY_NONE
             && gBattleMons[*(gBattleStruct->moveTarget + gBattlerAttacker)].ability != redirectAbility
             && !(gBattleMoves[gCurrentMove].target & (MOVE_TARGET_BOTH | MOVE_TARGET_FOES_AND_ALLY)))
    {
        side = GetBattlerSide(gBattlerAttacker);
        for (gActiveBattler = 0; gActiveBattler < gBattlersCount; gActiveBattler++)
        {
            if (side != GetBattlerSide(gActiveBattler)
                && *(gBattleStruct->moveTarget + gBattlerAttacker) != gActiveBattler
                && gBattleMons[gActiveBattler].ability == redirectAbility
                && GetBattlerTurnOrderNum(gActiveBattler) < var)
            {
                var = GetBattlerTurnOrderNum(gActiveBattler);
            }
        }
        if (var == 4)
        {
            if (gBattleMoves[targetingMove].target & MOVE_TARGET_RANDOM)
            {
                if (GetBattlerSide(gBattlerAttacker) == B_SIDE_PLAYER)
                {
                    if (Random() & 1)
                        gBattlerTarget = GetBattlerAtPosition(B_POSITION_OPPONENT_LEFT);
                    else
                        gBattlerTarget = GetBattlerAtPosition(B_POSITION_OPPONENT_RIGHT);
                }
                else
                {
                    if (Random() & 1)
                        gBattlerTarget = GetBattlerAtPosition(B_POSITION_PLAYER_LEFT);
                    else
                        gBattlerTarget = GetBattlerAtPosition(B_POSITION_PLAYER_RIGHT);
                }
            }
            else
            {
                gBattlerTarget = *(gBattleStruct->moveTarget + gBattlerAttacker);
            }

            if (gAbsentBattlerFlags & gBitTable[gBattlerTarget])
            {
                if (GetBattlerSide(gBattlerAttacker) != GetBattlerSide(gBattlerTarget))
                {
                    gBattlerTarget = GetBattlerAtPosition(BATTLE_PARTNER(GetBattlerPosition(gBattlerTarget)));
                }
                else
                {
                    gBattlerTarget = GetBattlerAtPosition(BATTLE_OPPOSITE(GetBattlerPosition(gBattlerAttacker)));
                    if (gAbsentBattlerFlags & gBitTable[gBattlerTarget])
                        gBattlerTarget = GetBattlerAtPosition(BATTLE_PARTNER(GetBattlerPosition(gBattlerTarget)));
                }
            }
        }
        else
        {
            gActiveBattler = gBattlerByTurnOrder[var];
            RecordAbilityBattle(gActiveBattler, gBattleMons[gActiveBattler].ability);
            gSpecialStatuses[gActiveBattler].lightningRodRedirected = 1;
            gBattlerTarget = gActiveBattler;
        }
    }
    else if (gBattleTypeFlags & BATTLE_TYPE_DOUBLE
             && gBattleMoves[targetingMove].target & MOVE_TARGET_RANDOM)
    {
        if (GetBattlerSide(gBattlerAttacker) == B_SIDE_PLAYER)
        {
            if (Random() & 1)
                gBattlerTarget = GetBattlerAtPosition(B_POSITION_OPPONENT_LEFT);
            else
                gBattlerTarget = GetBattlerAtPosition(B_POSITION_OPPONENT_RIGHT);
        }
        else
        {
            if (Random() & 1)
                gBattlerTarget = GetBattlerAtPosition(B_POSITION_PLAYER_LEFT);
            else
                gBattlerTarget = GetBattlerAtPosition(B_POSITION_PLAYER_RIGHT);
        }

        if (gAbsentBattlerFlags & gBitTable[gBattlerTarget]
            && GetBattlerSide(gBattlerAttacker) != GetBattlerSide(gBattlerTarget))
        {
            gBattlerTarget = GetBattlerAtPosition(BATTLE_PARTNER(GetBattlerPosition(gBattlerTarget)));
        }
    }
    else
    {
        gBattlerTarget = *(gBattleStruct->moveTarget + gBattlerAttacker);
        if (gAbsentBattlerFlags & gBitTable[gBattlerTarget])
        {
            if (GetBattlerSide(gBattlerAttacker) != GetBattlerSide(gBattlerTarget))
            {
                gBattlerTarget = GetBattlerAtPosition(BATTLE_PARTNER(GetBattlerPosition(gBattlerTarget)));
            }
            else
            {
                gBattlerTarget = GetBattlerAtPosition(BATTLE_OPPOSITE(GetBattlerPosition(gBattlerAttacker)));
                if (gAbsentBattlerFlags & gBitTable[gBattlerTarget])
                    gBattlerTarget = GetBattlerAtPosition(BATTLE_PARTNER(GetBattlerPosition(gBattlerTarget)));
            }
        }
    }

    if (gBattleTypeFlags & BATTLE_TYPE_PALACE && gProtectStructs[gBattlerAttacker].palaceUnableToUseMove)
    {
        // Battle Palace, select battle script for failure to use move
        if (gBattleMons[gBattlerAttacker].hp == 0)
        {
            gCurrentActionFuncId = B_ACTION_FINISHED;
            return;
        }
        else if (gPalaceSelectionBattleScripts[gBattlerAttacker] != NULL)
        {
            gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_INCAPABLE_OF_POWER;
            gBattlescriptCurrInstr = gPalaceSelectionBattleScripts[gBattlerAttacker];
            gPalaceSelectionBattleScripts[gBattlerAttacker] = NULL;
        }
        else
        {
            gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_INCAPABLE_OF_POWER;
            gBattlescriptCurrInstr = BattleScript_MoveUsedLoafingAround;
        }
    }
    else
    {
        // A move the player chose to use as an EX move runs its EX script instead (see data/ex_battle_scripts.s)
        if (IsUsingChosenExMove(gBattlerAttacker))
        {
            // The species' own EX version comes first (see data/pokemon/ex_species_moves.h)
            const struct ExMove *speciesExMove = GetSpeciesExMove(gBattlerAttacker, gCurrentMove);

            gBattleMoveIsEx = TRUE;
            if (speciesExMove != NULL)
                StartExMoveVersion(speciesExMove);
            else
                StartUsualExMoveVersion();
            sExChargingMove[gBattlerAttacker] = gCurrentMove;
            sExChargingFlags[gBattlerAttacker] = gExMoveFlags;
            sExChargingExtraEffect[gBattlerAttacker] = gExExtraMoveEffect;
        }
        else
        {
            // The attacking turn of a two-turn move used as an EX move keeps its EX flags (see sExChargingMove)
            if ((gBattleMons[gBattlerAttacker].status2 & STATUS2_MULTIPLETURNS)
             && IsTwoTurnsMove(gCurrentMove)
             && sExChargingMove[gBattlerAttacker] == gCurrentMove)
            {
                gExMoveFlags = sExChargingFlags[gBattlerAttacker];
                gExExtraMoveEffect = sExChargingExtraEffect[gBattlerAttacker];
            }
            sExChargingMove[gBattlerAttacker] = MOVE_NONE;
            gBattlescriptCurrInstr = gBattleScriptsForMoveEffects[gBattleMoves[gCurrentMove].effect];
        }
    }

    // After Foresight, the user's next damaging move is a guaranteed critical hit, even if it misses or fails
    if (gSureCritBattlers & gBitTable[gBattlerAttacker] && gBattleMoves[gCurrentMove].power != 0)
    {
        gSureCritBattlers &= ~gBitTable[gBattlerAttacker];
        gThisMoveSureCrit = TRUE;
    }

    if (gBattleTypeFlags & BATTLE_TYPE_ARENA)
        BattleArena_AddMindPoints(gBattlerAttacker);

    gCurrentActionFuncId = B_ACTION_EXEC_SCRIPT;
}

void HandleAction_Switch(void)
{
    gBattlerAttacker = gBattlerByTurnOrder[gCurrentTurnActionNumber];
    gBattle_BG0_X = 0;
    gBattle_BG0_Y = 0;
    gActionSelectionCursor[gBattlerAttacker] = 0;
    gMoveSelectionCursor[gBattlerAttacker] = 0;

    PREPARE_MON_NICK_BUFFER(gBattleTextBuff1, gBattlerAttacker, *(gBattleStruct->battlerPartyIndexes + gBattlerAttacker))

    gBattleScripting.battler = gBattlerAttacker;
    gBattlescriptCurrInstr = BattleScript_ActionSwitch;
    gCurrentActionFuncId = B_ACTION_EXEC_SCRIPT;

    if (gBattleResults.playerSwitchesCounter < 255)
        gBattleResults.playerSwitchesCounter++;
}

void HandleAction_UseItem(void)
{
    gBattlerAttacker = gBattlerTarget = gBattlerByTurnOrder[gCurrentTurnActionNumber];
    gBattle_BG0_X = 0;
    gBattle_BG0_Y = 0;
    ClearFuryCutterDestinyBondGrudge(gBattlerAttacker);
    gLastUsedItem = gBattleBufferB[gBattlerAttacker][1] | (gBattleBufferB[gBattlerAttacker][2] << 8);

    if (gLastUsedItem <= LAST_BALL) // is ball
    {
        gBattlescriptCurrInstr = gBattlescriptsForBallThrow[gLastUsedItem];
    }
    else if (gLastUsedItem == ITEM_POKE_DOLL)
    {
        // A Poké Doll stands in as a Substitute with fixed HP, costing the user none of its own
        gBattleMons[gBattlerAttacker].status2 |= STATUS2_SUBSTITUTE;
        gBattleMons[gBattlerAttacker].status2 &= ~STATUS2_WRAPPED;
        gDisableStructs[gBattlerAttacker].substituteHP = POKE_DOLL_SUBSTITUTE_HP;
        gDisableStructs[gBattlerAttacker].substituteWall = SUBSTITUTE_WALL_POKE_DOLL;
        gBattleScripting.battler = gBattlerAttacker;
        gBattlescriptCurrInstr = BattleScript_PokeDollSubstitute;
    }
    else if (gLastUsedItem == ITEM_FLUFFY_TAIL)
    {
        gBattlescriptCurrInstr = gBattlescriptsForRunningByItem[0]; // BattleScript_RunByUsingItem
    }
    else if (GetBattlerSide(gBattlerAttacker) == B_SIDE_PLAYER)
    {
        gBattlescriptCurrInstr = gBattlescriptsForUsingItem[0]; // BattleScript_PlayerUsesItem
    }
    else
    {
        gBattleScripting.battler = gBattlerAttacker;

        switch (*(gBattleStruct->AI_itemType + (gBattlerAttacker >> 1)))
        {
        case AI_ITEM_FULL_RESTORE:
        case AI_ITEM_HEAL_HP:
            break;
        case AI_ITEM_CURE_CONDITION:
            gBattleCommunication[MULTISTRING_CHOOSER] = AI_HEAL_CONFUSION;
            if (*(gBattleStruct->AI_itemFlags + gBattlerAttacker / 2) & (1 << AI_HEAL_CONFUSION))
            {
                if (*(gBattleStruct->AI_itemFlags + gBattlerAttacker / 2) & ((1 << AI_HEAL_PARALYSIS)
                                                                           | (1 << AI_HEAL_FREEZE)
                                                                           | (1 << AI_HEAL_BURN)
                                                                           | (1 << AI_HEAL_POISON)
                                                                           | (1 << AI_HEAL_SLEEP)))
                    gBattleCommunication[MULTISTRING_CHOOSER] = AI_HEAL_SLEEP;
            }
            else
            {
                // Check for other statuses, stopping at first (shouldn't be more than one)
                while (!(*(gBattleStruct->AI_itemFlags + gBattlerAttacker / 2) & 1))
                {
                    *(gBattleStruct->AI_itemFlags + gBattlerAttacker / 2) >>= 1;
                    gBattleCommunication[MULTISTRING_CHOOSER]++;
                    // MULTISTRING_CHOOSER will be either AI_HEAL_PARALYSIS, AI_HEAL_FREEZE,
                    // AI_HEAL_BURN, AI_HEAL_POISON, or AI_HEAL_SLEEP
                }
            }
            break;
        case AI_ITEM_X_STAT:
            gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_STAT_ROSE_ITEM;
            if (*(gBattleStruct->AI_itemFlags + (gBattlerAttacker >> 1)) & (1 << AI_DIRE_HIT))
            {
                gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_USED_DIRE_HIT;
            }
            else
            {
                PREPARE_STAT_BUFFER(gBattleTextBuff1, STAT_ATK)
                PREPARE_STRING_BUFFER(gBattleTextBuff2, CHAR_X)

                while (!((*(gBattleStruct->AI_itemFlags + (gBattlerAttacker >> 1))) & 1))
                {
                    *(gBattleStruct->AI_itemFlags + gBattlerAttacker / 2) >>= 1;
                    gBattleTextBuff1[2]++;
                }

                gBattleScripting.animArg1 = gBattleTextBuff1[2] + STAT_ANIM_PLUS1;
                gBattleScripting.animArg2 = 0;
            }
            break;
        case AI_ITEM_GUARD_SPEC:
            // It seems probable that at some point there was a special message for
            // an AI trainer using Guard Spec in a double battle.
            // There isn't now however, and the assignment to 2 below goes out of
            // bounds for gMistUsedStringIds and instead prints "{mon} is getting pumped"
            // from the next table, gFocusEnergyUsedStringIds.
            // In any case this isn't an issue in the retail version, as no trainers
            // are ever given any Guard Spec to use.
#ifndef UBFIX
            if (gBattleTypeFlags & BATTLE_TYPE_DOUBLE)
                gBattleCommunication[MULTISTRING_CHOOSER] = 2;
            else
#endif
                gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_SET_MIST;
            break;
        }

        gBattlescriptCurrInstr = gBattlescriptsForUsingItem[*(gBattleStruct->AI_itemType + gBattlerAttacker / 2)];
    }
    gCurrentActionFuncId = B_ACTION_EXEC_SCRIPT;
}

bool8 TryRunFromBattle(u8 battler)
{
    bool8 effect = FALSE;
    u8 holdEffect;
    u8 pyramidMultiplier;
    u8 speedVar;

    if (gBattleMons[battler].item == ITEM_ENIGMA_BERRY)
        holdEffect = gEnigmaBerries[battler].holdEffect;
    else
        holdEffect = GetItemHoldEffect(gBattleMons[battler].item);

    gPotentialItemEffectBattler = battler;

    if (holdEffect == HOLD_EFFECT_CAN_ALWAYS_RUN)
    {
        gLastUsedItem = gBattleMons[battler].item;
        gProtectStructs[battler].fleeType = FLEE_ITEM;
        effect++;
    }
    else if (gBattleMons[battler].ability == ABILITY_RUN_AWAY)
    {
        if (CurrentBattlePyramidLocation() != PYRAMID_LOCATION_NONE)
        {
            gBattleStruct->runTries++;
            pyramidMultiplier = GetPyramidRunMultiplier();
            speedVar = (gBattleMons[battler].speed * pyramidMultiplier) / (gBattleMons[BATTLE_OPPOSITE(battler)].speed) + (gBattleStruct->runTries * 30);
            if (speedVar > (Random() & 0xFF))
            {
                gLastUsedAbility = ABILITY_RUN_AWAY;
                gProtectStructs[battler].fleeType = FLEE_ABILITY;
                effect++;
            }
        }
        else
        {
            gLastUsedAbility = ABILITY_RUN_AWAY;
            gProtectStructs[battler].fleeType = FLEE_ABILITY;
            effect++;
        }
    }
    else if (gBattleTypeFlags & (BATTLE_TYPE_FRONTIER | BATTLE_TYPE_TRAINER_HILL) && gBattleTypeFlags & BATTLE_TYPE_TRAINER)
    {
        effect++;
    }
    else
    {
        // (a wild battle beside the player's follower is a double battle, but against one wild
        // Pokémon, so it's escaped like a single battle; BATTLE_OPPOSITE of the player is that Pokémon)
        if (!(gBattleTypeFlags & BATTLE_TYPE_DOUBLE) || IS_PARTNER_VS_ONE())
        {
            if (CurrentBattlePyramidLocation() != PYRAMID_LOCATION_NONE)
            {
                pyramidMultiplier = GetPyramidRunMultiplier();
                speedVar = (gBattleMons[battler].speed * pyramidMultiplier) / (gBattleMons[BATTLE_OPPOSITE(battler)].speed) + (gBattleStruct->runTries * 30);
                if (speedVar > (Random() & 0xFF))
                    effect++;
            }
            else if (gBattleMons[battler].speed < gBattleMons[BATTLE_OPPOSITE(battler)].speed)
            {
                speedVar = (gBattleMons[battler].speed * 128) / (gBattleMons[BATTLE_OPPOSITE(battler)].speed) + (gBattleStruct->runTries * 30);
                if (speedVar > (Random() & 0xFF))
                    effect++;
            }
            else // same speed or faster
            {
                effect++;
            }
        }

        gBattleStruct->runTries++;
    }

    if (effect != 0)
    {
        gCurrentTurnActionNumber = gBattlersCount;
        gBattleOutcome = B_OUTCOME_RAN;
    }

    return effect;
}

void HandleAction_Run(void)
{
    gBattlerAttacker = gBattlerByTurnOrder[gCurrentTurnActionNumber];

    if (gBattleTypeFlags & (BATTLE_TYPE_LINK | BATTLE_TYPE_RECORDED_LINK))
    {
        gCurrentTurnActionNumber = gBattlersCount;

        for (gActiveBattler = 0; gActiveBattler < gBattlersCount; gActiveBattler++)
        {
            if (GetBattlerSide(gActiveBattler) == B_SIDE_PLAYER)
            {
                if (gChosenActionByBattler[gActiveBattler] == B_ACTION_RUN)
                    gBattleOutcome |= B_OUTCOME_LOST;
            }
            else
            {
                if (gChosenActionByBattler[gActiveBattler] == B_ACTION_RUN)
                    gBattleOutcome |= B_OUTCOME_WON;
            }
        }

        gBattleOutcome |= B_OUTCOME_LINK_BATTLE_RAN;
        gSaveBlock2Ptr->frontier.disableRecordBattle = TRUE;
    }
    else
    {
        if (GetBattlerSide(gBattlerAttacker) == B_SIDE_PLAYER)
        {
            if (!TryRunFromBattle(gBattlerAttacker)) // failed to run away
            {
                ClearFuryCutterDestinyBondGrudge(gBattlerAttacker);
                gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_CANT_ESCAPE_2;
                gBattlescriptCurrInstr = BattleScript_PrintFailedToRunString;
                gCurrentActionFuncId = B_ACTION_EXEC_SCRIPT;
            }
        }
        else
        {
            if (gBattleMons[gBattlerAttacker].status2 & (STATUS2_WRAPPED | STATUS2_ESCAPE_PREVENTION))
            {
                gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_ATTACKER_CANT_ESCAPE;
                gBattlescriptCurrInstr = BattleScript_PrintFailedToRunString;
                gCurrentActionFuncId = B_ACTION_EXEC_SCRIPT;
            }
            else
            {
                gCurrentTurnActionNumber = gBattlersCount;
                gBattleOutcome = B_OUTCOME_MON_FLED;
            }
        }
    }
}

void HandleAction_WatchesCarefully(void)
{
    gBattlerAttacker = gBattlerByTurnOrder[gCurrentTurnActionNumber];
    gBattle_BG0_X = 0;
    gBattle_BG0_Y = 0;
    gBattlescriptCurrInstr = gBattlescriptsForSafariActions[0];
    gCurrentActionFuncId = B_ACTION_EXEC_SCRIPT;
}

void HandleAction_SafariZoneBallThrow(void)
{
    gBattlerAttacker = gBattlerByTurnOrder[gCurrentTurnActionNumber];
    gBattle_BG0_X = 0;
    gBattle_BG0_Y = 0;
    gNumSafariBalls--;
    gLastUsedItem = ITEM_SAFARI_BALL;
    gBattlescriptCurrInstr = gBattlescriptsForBallThrow[ITEM_SAFARI_BALL];
    gCurrentActionFuncId = B_ACTION_EXEC_SCRIPT;
}

void HandleAction_ThrowPokeblock(void)
{
    gBattlerAttacker = gBattlerByTurnOrder[gCurrentTurnActionNumber];
    gBattle_BG0_X = 0;
    gBattle_BG0_Y = 0;
    gBattleCommunication[MULTISTRING_CHOOSER] = gBattleBufferB[gBattlerAttacker][1] - 1;
    gLastUsedItem = gBattleBufferB[gBattlerAttacker][2];

    if (gBattleResults.pokeblockThrows < 255)
        gBattleResults.pokeblockThrows++;
    if (gBattleStruct->safariPkblThrowCounter < 3)
        gBattleStruct->safariPkblThrowCounter++;
    if (gBattleStruct->safariEscapeFactor > 1)
    {
        // BUG: safariEscapeFactor can become 0 below. This causes the pokeblock throw glitch.
        #ifdef BUGFIX
        if (gBattleStruct->safariEscapeFactor <= sPkblToEscapeFactor[gBattleStruct->safariPkblThrowCounter][gBattleCommunication[MULTISTRING_CHOOSER]])
        #else
        if (gBattleStruct->safariEscapeFactor < sPkblToEscapeFactor[gBattleStruct->safariPkblThrowCounter][gBattleCommunication[MULTISTRING_CHOOSER]])
        #endif
            gBattleStruct->safariEscapeFactor = 1;
        else
            gBattleStruct->safariEscapeFactor -= sPkblToEscapeFactor[gBattleStruct->safariPkblThrowCounter][gBattleCommunication[MULTISTRING_CHOOSER]];
    }

    gBattlescriptCurrInstr = gBattlescriptsForSafariActions[2];
    gCurrentActionFuncId = B_ACTION_EXEC_SCRIPT;
}

void HandleAction_GoNear(void)
{
    gBattlerAttacker = gBattlerByTurnOrder[gCurrentTurnActionNumber];
    gBattle_BG0_X = 0;
    gBattle_BG0_Y = 0;

    gBattleStruct->safariCatchFactor += sGoNearCounterToCatchFactor[gBattleStruct->safariGoNearCounter];
    if (gBattleStruct->safariCatchFactor > 20)
        gBattleStruct->safariCatchFactor = 20;

    gBattleStruct->safariEscapeFactor += sGoNearCounterToEscapeFactor[gBattleStruct->safariGoNearCounter];
    if (gBattleStruct->safariEscapeFactor > 20)
        gBattleStruct->safariEscapeFactor = 20;

    if (gBattleStruct->safariGoNearCounter < 3)
    {
        gBattleStruct->safariGoNearCounter++;
        gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_CREPT_CLOSER;
    }
    else
    {
        gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_CANT_GET_CLOSER;
    }
    gBattlescriptCurrInstr = gBattlescriptsForSafariActions[1];
    gCurrentActionFuncId = B_ACTION_EXEC_SCRIPT;
}

void HandleAction_SafariZoneRun(void)
{
    gBattlerAttacker = gBattlerByTurnOrder[gCurrentTurnActionNumber];
    PlaySE(SE_FLEE);
    gCurrentTurnActionNumber = gBattlersCount;
    gBattleOutcome = B_OUTCOME_RAN;
}

void HandleAction_WallyBallThrow(void)
{
    gBattlerAttacker = gBattlerByTurnOrder[gCurrentTurnActionNumber];
    gBattle_BG0_X = 0;
    gBattle_BG0_Y = 0;

    PREPARE_MON_NICK_BUFFER(gBattleTextBuff1, gBattlerAttacker, gBattlerPartyIndexes[gBattlerAttacker])

    gBattlescriptCurrInstr = gBattlescriptsForSafariActions[3];
    gCurrentActionFuncId = B_ACTION_EXEC_SCRIPT;
    gActionsByTurnOrder[1] = B_ACTION_FINISHED;
}

void HandleAction_TryFinish(void)
{
    if (!HandleFaintedMonActions())
    {
        gBattleStruct->faintedActionsState = 0;
        gCurrentActionFuncId = B_ACTION_FINISHED;
    }
}

void HandleAction_NothingIsFainted(void)
{
    gCurrentTurnActionNumber++;
    gCurrentActionFuncId = gActionsByTurnOrder[gCurrentTurnActionNumber];
    gHitMarker &= ~(HITMARKER_DESTINYBOND | HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_ATTACKSTRING_PRINTED
                    | HITMARKER_NO_PPDEDUCT | HITMARKER_STATUS_ABILITY_EFFECT | HITMARKER_IGNORE_ON_AIR
                    | HITMARKER_IGNORE_UNDERGROUND | HITMARKER_IGNORE_UNDERWATER | HITMARKER_PASSIVE_HP_UPDATE
                    | HITMARKER_OBEYS | HITMARKER_WAKE_UP_CLEAR | HITMARKER_SYNCHRONISE_EFFECT
                    | HITMARKER_CHARGING | HITMARKER_NEVER_SET);
}

void HandleAction_ActionFinished(void)
{
    *(gBattleStruct->monToSwitchIntoId + gBattlerByTurnOrder[gCurrentTurnActionNumber]) = PARTY_SIZE;
    gBattleMoveIsEx = FALSE;
    gBattleExAnimPending = FALSE;
    gExMoveFlags = 0;
    gExExtraMoveEffect = 0;
    gExEffectChance = 0;
    gBattleExUpgradedFrom = MOVE_NONE;
    gThisMoveSureCrit = FALSE;
    gBattleExBonusPending = FALSE;
    gCurrentTurnActionNumber++;
    gCurrentActionFuncId = gActionsByTurnOrder[gCurrentTurnActionNumber];
    SpecialStatusesClear();
    gHitMarker &= ~(HITMARKER_DESTINYBOND | HITMARKER_IGNORE_SUBSTITUTE | HITMARKER_ATTACKSTRING_PRINTED
                    | HITMARKER_NO_PPDEDUCT | HITMARKER_STATUS_ABILITY_EFFECT | HITMARKER_IGNORE_ON_AIR
                    | HITMARKER_IGNORE_UNDERGROUND | HITMARKER_IGNORE_UNDERWATER | HITMARKER_PASSIVE_HP_UPDATE
                    | HITMARKER_OBEYS | HITMARKER_WAKE_UP_CLEAR | HITMARKER_SYNCHRONISE_EFFECT
                    | HITMARKER_CHARGING | HITMARKER_NEVER_SET);

    gCurrentMove = 0;
    gBattleMoveDamage = 0;
    gMoveResultFlags = 0;
    gBattleScripting.animTurn = 0;
    gBattleScripting.animTargetsHit = 0;
    gLastLandedMoves[gBattlerAttacker] = 0;
    gLastHitByType[gBattlerAttacker] = 0;
    gBattleStruct->dynamicMoveType = 0;
    gDynamicBasePower = 0;
    gBattleScripting.moveendState = 0;
    gBattleCommunication[3] = 0;
    gBattleCommunication[4] = 0;
    gBattleScripting.multihitMoveEffect = 0;
    gBattleResources->battleScriptsStack->size = 0;
}

#define SOUND_MOVES_END 0xFFFF

static const u16 sSoundMovesTable[] =
{
    MOVE_GROWL, MOVE_ROAR, MOVE_SING, MOVE_SUPERSONIC, MOVE_SCREECH, MOVE_SNORE,
    MOVE_UPROAR, MOVE_METAL_SOUND, MOVE_GRASS_WHISTLE, MOVE_HYPER_VOICE, SOUND_MOVES_END
};

// Whether Soundproof blocks the move
bool8 IsSoundMove(u16 move)
{
    u32 i;

    for (i = 0; sSoundMovesTable[i] != SOUND_MOVES_END; i++)
    {
        if (sSoundMovesTable[i] == move)
            return TRUE;
    }
    return FALSE;
}

u8 GetBattlerForBattleScript(u8 caseId)
{
    u8 ret = 0;
    switch (caseId)
    {
    case BS_TARGET:
        ret = gBattlerTarget;
        break;
    case BS_ATTACKER:
        ret = gBattlerAttacker;
        break;
    case BS_EFFECT_BATTLER:
        ret = gEffectBattler;
        break;
    case BS_BATTLER_0:
        ret = 0;
        break;
    case BS_SCRIPTING:
        ret = gBattleScripting.battler;
        break;
    case BS_FAINTED:
        ret = gBattlerFainted;
        break;
    case BS_FAINTED_LINK_MULTIPLE_1:
        ret = gBattlerFainted;
        break;
    case BS_ATTACKER_WITH_PARTNER:
    case BS_FAINTED_LINK_MULTIPLE_2:
    case BS_ATTACKER_SIDE:
    case BS_NOT_ATTACKER_SIDE:
    case BS_PLAYER1:
        ret = GetBattlerAtPosition(B_POSITION_PLAYER_LEFT);
        break;
    case BS_OPPONENT1:
        ret = GetBattlerAtPosition(B_POSITION_OPPONENT_LEFT);
        break;
    case BS_PLAYER2:
        ret = GetBattlerAtPosition(B_POSITION_PLAYER_RIGHT);
        break;
    case BS_OPPONENT2:
        ret = GetBattlerAtPosition(B_POSITION_OPPONENT_RIGHT);
        break;
    }
    return ret;
}

void PressurePPLose(u8 target, u8 attacker, u16 move)
{
    int moveIndex;

    if (gBattleMons[target].ability != ABILITY_PRESSURE)
        return;

    for (moveIndex = 0; moveIndex < MAX_MON_MOVES; moveIndex++)
    {
        if (gBattleMons[attacker].moves[moveIndex] == move)
            break;
    }

    if (moveIndex == MAX_MON_MOVES)
        return;

    if (gBattleMons[attacker].pp[moveIndex] != 0)
        gBattleMons[attacker].pp[moveIndex]--;

    if (MOVE_IS_PERMANENT(attacker, moveIndex))
    {
        gActiveBattler = attacker;
        BtlController_EmitSetMonData(B_COMM_TO_CONTROLLER, REQUEST_PPMOVE1_BATTLE + moveIndex, 0, 1, &gBattleMons[gActiveBattler].pp[moveIndex]);
        MarkBattlerForControllerExec(gActiveBattler);
    }
}

void PressurePPLoseOnUsingImprison(u8 attacker)
{
    int i, j;
    int imprisonPos = MAX_MON_MOVES;
    u8 atkSide = GetBattlerSide(attacker);

    for (i = 0; i < gBattlersCount; i++)
    {
        if (atkSide != GetBattlerSide(i) && gBattleMons[i].ability == ABILITY_PRESSURE)
        {
            for (j = 0; j < MAX_MON_MOVES; j++)
            {
                if (gBattleMons[attacker].moves[j] == MOVE_IMPRISON)
                    break;
            }
            if (j != MAX_MON_MOVES)
            {
                imprisonPos = j;
                if (gBattleMons[attacker].pp[j] != 0)
                    gBattleMons[attacker].pp[j]--;
            }
        }
    }

    if (imprisonPos != MAX_MON_MOVES && MOVE_IS_PERMANENT(attacker, imprisonPos))
    {
        gActiveBattler = attacker;
        BtlController_EmitSetMonData(B_COMM_TO_CONTROLLER, REQUEST_PPMOVE1_BATTLE + imprisonPos, 0, 1, &gBattleMons[gActiveBattler].pp[imprisonPos]);
        MarkBattlerForControllerExec(gActiveBattler);
    }
}

void PressurePPLoseOnUsingPerishSong(u8 attacker)
{
    int i, j;
    int perishSongPos = MAX_MON_MOVES;

    for (i = 0; i < gBattlersCount; i++)
    {
        if (gBattleMons[i].ability == ABILITY_PRESSURE && i != attacker)
        {
            for (j = 0; j < MAX_MON_MOVES; j++)
            {
                if (gBattleMons[attacker].moves[j] == MOVE_PERISH_SONG)
                    break;
            }
            if (j != MAX_MON_MOVES)
            {
                perishSongPos = j;
                if (gBattleMons[attacker].pp[j] != 0)
                    gBattleMons[attacker].pp[j]--;
            }
        }
    }

    if (perishSongPos != MAX_MON_MOVES && MOVE_IS_PERMANENT(attacker, perishSongPos))
    {
        gActiveBattler = attacker;
        BtlController_EmitSetMonData(B_COMM_TO_CONTROLLER, REQUEST_PPMOVE1_BATTLE + perishSongPos, 0, 1, &gBattleMons[gActiveBattler].pp[perishSongPos]);
        MarkBattlerForControllerExec(gActiveBattler);
    }
}

// See comments for MarkBattlerForControllerExec.
static void UNUSED MarkAllBattlersForControllerExec(void)
{
    int i;

    if (gBattleTypeFlags & BATTLE_TYPE_LINK)
    {
        for (i = 0; i < gBattlersCount; i++)
            MARK_BATTLE_CONTROLLER_MESSAGE_OUTBOUND_OVER_LINK(i);
    }
    else
    {
        for (i = 0; i < gBattlersCount; i++)
            MARK_BATTLE_CONTROLLER_ACTIVE_ON_LOCAL(i);
    }
}

// Called when the battle engine dispatches a message to a battle controller.
//
// During a singleplayer battle, we just immediately mark the controller as
// active. During a multiplayer link, we do things a little differently. We
// set a bit indicating that we're sending a message over the link. That
// message will be received by all other players... *and* by us, the player
// sending it, at which point we'll invoke MarkBattlerReceivedLinkData,
// below, to clear the "we're sending a message" bit and set the "controller
// is now active" bit.
void MarkBattlerForControllerExec(u8 battler)
{
    if (gBattleTypeFlags & BATTLE_TYPE_LINK)
        MARK_BATTLE_CONTROLLER_MESSAGE_OUTBOUND_OVER_LINK(battler);
    else
        MARK_BATTLE_CONTROLLER_ACTIVE_ON_LOCAL(battler);
}

// Called when a message dispatched from the battle engine to a battle
// controller is received over link communications. All players assume
// that if they've received the message, everyone else has as well.
void MarkBattlerReceivedLinkData(u8 battler)
{
    s32 i;

    for (i = 0; i < GetLinkPlayerCount(); i++)
        MARK_BATTLE_CONTROLLER_ACTIVE_FOR_PLAYER(battler, i);

    MARK_BATTLE_CONTROLLER_MESSAGE_SYNCHRONIZED_OVER_LINK(battler);
}

void CancelMultiTurnMoves(u8 battler)
{
    gBattleMons[battler].status2 &= ~STATUS2_MULTIPLETURNS;
    gBattleMons[battler].status2 &= ~STATUS2_LOCK_CONFUSE;
    gExCalmRampageBattlers &= ~gBitTable[battler];
    gBattleMons[battler].status2 &= ~STATUS2_UPROAR;
    gBattleMons[battler].status2 &= ~STATUS2_BIDE;

    gStatuses3[battler] &= ~STATUS3_SEMI_INVULNERABLE;

    gDisableStructs[battler].rolloutTimer = 0;
    gDisableStructs[battler].furyCutterCounter = 0;
}

bool8 WasUnableToUseMove(u8 battler)
{
    if (gProtectStructs[battler].prlzImmobility
        || gProtectStructs[battler].targetNotAffected
        || gProtectStructs[battler].usedImprisonedMove
        || gProtectStructs[battler].loveImmobility
        || gProtectStructs[battler].usedDisabledMove
        || gProtectStructs[battler].usedTauntedMove
        || gProtectStructs[battler].flag2Unknown
        || gProtectStructs[battler].flinchImmobility
        || gProtectStructs[battler].confusionSelfDmg)
        return TRUE;
    else
        return FALSE;
}

void PrepareStringBattle(u16 stringId, u8 battler)
{
    gActiveBattler = battler;
    BtlController_EmitPrintString(B_COMM_TO_CONTROLLER, stringId);
    MarkBattlerForControllerExec(gActiveBattler);
}

void ResetSentPokesToOpponentValue(void)
{
    s32 i;
    u32 bits = 0;

    gSentPokesToOpponent[0] = 0;
    gSentPokesToOpponent[1] = 0;

    for (i = 0; i < gBattlersCount; i += 2)
        bits |= gBitTable[gBattlerPartyIndexes[i]];

    for (i = 1; i < gBattlersCount; i += 2)
        gSentPokesToOpponent[(i & BIT_FLANK) >> 1] = bits;
}

void OpponentSwitchInResetSentPokesToOpponentValue(u8 battler)
{
    s32 i = 0;
    u32 bits = 0;

    if (GetBattlerSide(battler) == B_SIDE_OPPONENT)
    {
        u8 flank = ((battler & BIT_FLANK) >> 1);
        gSentPokesToOpponent[flank] = 0;

        for (i = 0; i < gBattlersCount; i += 2)
        {
            if (!(gAbsentBattlerFlags & gBitTable[i]))
                bits |= gBitTable[gBattlerPartyIndexes[i]];
        }
        gSentPokesToOpponent[flank] = bits;
    }
}

void UpdateSentPokesToOpponentValue(u8 battler)
{
    if (GetBattlerSide(battler) == B_SIDE_OPPONENT)
    {
        OpponentSwitchInResetSentPokesToOpponentValue(battler);
    }
    else
    {
        s32 i;
        for (i = 1; i < gBattlersCount; i++)
            gSentPokesToOpponent[(i & BIT_FLANK) >> 1] |= gBitTable[gBattlerPartyIndexes[battler]];
    }
}

void BattleScriptPush(const u8 *bsPtr)
{
    gBattleResources->battleScriptsStack->ptr[gBattleResources->battleScriptsStack->size++] = bsPtr;
}

void BattleScriptPushCursor(void)
{
    gBattleResources->battleScriptsStack->ptr[gBattleResources->battleScriptsStack->size++] = gBattlescriptCurrInstr;
}

void BattleScriptPop(void)
{
    gBattlescriptCurrInstr = gBattleResources->battleScriptsStack->ptr[--gBattleResources->battleScriptsStack->size];
}

// Solid Rage raises these stats on switch-in, and its holder can't dodge or use status moves
#define SOLID_RAGE_STAGES 3
static const u8 sSolidRageStats[] = {STAT_ATK, STAT_SPATK, STAT_SPEED, STAT_ACC};

bool32 IsBattlerEnragedBySolidRage(u8 battler)
{
    return GetItemHoldEffect(gBattleMons[battler].item) == HOLD_EFFECT_SOLID_RAGE;
}

u8 TrySetCantSelectMoveBattleScript(void)
{
    u8 limitations = 0;
    u16 move = gBattleMons[gActiveBattler].moves[gBattleBufferB[gActiveBattler][2]];
    u8 holdEffect;
    u16 *choicedMove = &gBattleStruct->choicedMove[gActiveBattler];

    if (gDisableStructs[gActiveBattler].disabledMove == move && move != MOVE_NONE)
    {
        gBattleScripting.battler = gActiveBattler;
        gCurrentMove = move;
        if (gBattleTypeFlags & BATTLE_TYPE_PALACE)
        {
            gPalaceSelectionBattleScripts[gActiveBattler] = BattleScript_SelectingDisabledMoveInPalace;
            gProtectStructs[gActiveBattler].palaceUnableToUseMove = TRUE;
        }
        else
        {
            gSelectionBattleScripts[gActiveBattler] = BattleScript_SelectingDisabledMove;
            limitations = 1;
        }
    }

    if (move == gLastMoves[gActiveBattler] && move != MOVE_STRUGGLE && (gBattleMons[gActiveBattler].status2 & STATUS2_TORMENT))
    {
        CancelMultiTurnMoves(gActiveBattler);
        if (gBattleTypeFlags & BATTLE_TYPE_PALACE)
        {
            gPalaceSelectionBattleScripts[gActiveBattler] = BattleScript_SelectingTormentedMoveInPalace;
            gProtectStructs[gActiveBattler].palaceUnableToUseMove = TRUE;
        }
        else
        {
            gSelectionBattleScripts[gActiveBattler] = BattleScript_SelectingTormentedMove;
            limitations++;
        }
    }

    if (gDisableStructs[gActiveBattler].tauntTimer != 0 && gBattleMoves[move].power == 0)
    {
        gCurrentMove = move;
        if (gBattleTypeFlags & BATTLE_TYPE_PALACE)
        {
            gPalaceSelectionBattleScripts[gActiveBattler] = BattleScript_SelectingNotAllowedMoveTauntInPalace;
            gProtectStructs[gActiveBattler].palaceUnableToUseMove = TRUE;
        }
        else
        {
            gSelectionBattleScripts[gActiveBattler] = BattleScript_SelectingNotAllowedMoveTaunt;
            limitations++;
        }
    }
    else if (IsBattlerEnragedBySolidRage(gActiveBattler) && gBattleMoves[move].power == 0)
    {
        gCurrentMove = move;
        if (gBattleTypeFlags & BATTLE_TYPE_PALACE)
        {
            gPalaceSelectionBattleScripts[gActiveBattler] = BattleScript_SelectingNotAllowedMoveRageInPalace;
            gProtectStructs[gActiveBattler].palaceUnableToUseMove = TRUE;
        }
        else
        {
            gSelectionBattleScripts[gActiveBattler] = BattleScript_SelectingNotAllowedMoveRage;
            limitations++;
        }
    }
    else if (IsMoveBlockedByBlackHole(gActiveBattler, move))
    {
        gCurrentMove = move;
        if (gBattleTypeFlags & BATTLE_TYPE_PALACE)
        {
            gPalaceSelectionBattleScripts[gActiveBattler] = BattleScript_SelectingNotAllowedMoveBlackHoleInPalace;
            gProtectStructs[gActiveBattler].palaceUnableToUseMove = TRUE;
        }
        else
        {
            gSelectionBattleScripts[gActiveBattler] = BattleScript_SelectingNotAllowedMoveBlackHole;
            limitations++;
        }
    }

    if (GetImprisonedMovesCount(gActiveBattler, move))
    {
        gCurrentMove = move;
        if (gBattleTypeFlags & BATTLE_TYPE_PALACE)
        {
            gPalaceSelectionBattleScripts[gActiveBattler] = BattleScript_SelectingImprisonedMoveInPalace;
            gProtectStructs[gActiveBattler].palaceUnableToUseMove = TRUE;
        }
        else
        {
            gSelectionBattleScripts[gActiveBattler] = BattleScript_SelectingImprisonedMove;
            limitations++;
        }
    }

    if (gBattleMons[gActiveBattler].item == ITEM_ENIGMA_BERRY)
        holdEffect = gEnigmaBerries[gActiveBattler].holdEffect;
    else
        holdEffect = GetItemHoldEffect(gBattleMons[gActiveBattler].item);

    gPotentialItemEffectBattler = gActiveBattler;

    if ((holdEffect == HOLD_EFFECT_CHOICE_BAND || holdEffect == HOLD_EFFECT_CHOICE_SPECS || holdEffect == HOLD_EFFECT_CHOICE_SCARF) && *choicedMove != MOVE_NONE && *choicedMove != MOVE_UNAVAILABLE && *choicedMove != move)
	{
        gCurrentMove = *choicedMove;
        gLastUsedItem = gBattleMons[gActiveBattler].item;
        if (gBattleTypeFlags & BATTLE_TYPE_PALACE)
        {
            gProtectStructs[gActiveBattler].palaceUnableToUseMove = TRUE;
        }
        else
        {
            gSelectionBattleScripts[gActiveBattler] = BattleScript_SelectingNotAllowedMoveChoiceItem;
            limitations++;
        }
    }

    if (gBattleMons[gActiveBattler].pp[gBattleBufferB[gActiveBattler][2]] == 0)
    {
        if (gBattleTypeFlags & BATTLE_TYPE_PALACE)
        {
            gProtectStructs[gActiveBattler].palaceUnableToUseMove = TRUE;
        }
        else
        {
            gSelectionBattleScripts[gActiveBattler] = BattleScript_SelectingMoveWithNoPP;
            limitations++;
        }
    }

    return limitations;
}

// Whether a battler is caught in a Black Hole (trapped and drained by it)
bool32 IsBattlerInBlackHole(u8 battler)
{
    u16 wrappedMove = gBattleStruct->wrappedMove[battler * 2] | (gBattleStruct->wrappedMove[battler * 2 + 1] << 8);

    return (gBattleMons[battler].status2 & STATUS2_WRAPPED) && wrappedMove == MOVE_BLACK_HOLE;
}

// Caught in a Black Hole, a battler can't leave the field with Fly, Dig, Dive and the like, or use priority moves
bool32 IsMoveBlockedByBlackHole(u8 battler, u16 move)
{
    if (!IsBattlerInBlackHole(battler))
        return FALSE;
    return gBattleMoves[move].effect == EFFECT_SEMI_INVULNERABLE || GetBattlerMovePriority(battler, move) > 0;
}

// A bit for each battler the move will hit, for Ruthless. Spread moves hit every foe
// (plus the ally for Earthquake-style moves); other moves hit the chosen target.
static u8 GetMoveTargetBits(u8 battler, u16 move)
{
    u8 i, bits = 0;
    u8 target = gBattleMoves[move].target;

    if (!(target & (MOVE_TARGET_BOTH | MOVE_TARGET_FOES_AND_ALLY)))
        return gBitTable[gBattleStruct->moveTarget[battler]];

    for (i = 0; i < gBattlersCount; i++)
    {
        if (i == battler || (gAbsentBattlerFlags & gBitTable[i]))
            continue;
        if (GetBattlerSide(i) == GetBattlerSide(battler) && !(target & MOVE_TARGET_FOES_AND_ALLY))
            continue;
        bits |= gBitTable[i];
    }
    return bits;
}

// Ruthless: TRUE if any battler the move will hit is poisoned
static bool8 RuthlessTargetPoisoned(u8 battler, u16 move)
{
    u8 i, bits = GetMoveTargetBits(battler, move);

    for (i = 0; i < gBattlersCount; i++)
    {
        if ((bits & gBitTable[i]) && (gBattleMons[i].status1 & STATUS1_PSN_ANY))
            return TRUE;
    }
    return FALSE;
}

// Early Bird gives +1 priority to damaging moves of 60 power or less. Moves listed with 1 power
// (variable power or fixed damage, like Low Kick or Seismic Toss) don't count.
s8 GetBattlerMovePriority(u8 battler, u16 move)
{
    s8 priority = gBattleMoves[move].priority;

    if (gBattleMons[battler].ability == ABILITY_EARLY_BIRD
     && gBattleMoves[move].power > 1 && gBattleMoves[move].power <= 60)
        priority++;

    if (gBattleMons[battler].ability == ABILITY_RUTHLESS
     && RuthlessTargetPoisoned(battler, move))
        priority++;

    // Vendetta: +1 priority while statused
    if (gBattleMons[battler].ability == ABILITY_VENDETTA
     && (gBattleMons[battler].status1 & STATUS1_ANY))
        priority++;
    return priority;
}

u8 CheckMoveLimitations(u8 battler, u8 unusableMoves, u8 check)
{
    u8 holdEffect;
    u16 *choicedMove = &gBattleStruct->choicedMove[battler];
    s32 i;

    if (gBattleMons[battler].item == ITEM_ENIGMA_BERRY)
        holdEffect = gEnigmaBerries[battler].holdEffect;
    else
        holdEffect = GetItemHoldEffect(gBattleMons[battler].item);

    gPotentialItemEffectBattler = battler;

    for (i = 0; i < MAX_MON_MOVES; i++)
    {
        // No move
        if (gBattleMons[battler].moves[i] == MOVE_NONE && check & MOVE_LIMITATION_ZEROMOVE)
            unusableMoves |= gBitTable[i];
        // No PP
        if (gBattleMons[battler].pp[i] == 0 && check & MOVE_LIMITATION_PP)
            unusableMoves |= gBitTable[i];
        // Disable
        if (gBattleMons[battler].moves[i] == gDisableStructs[battler].disabledMove && check & MOVE_LIMITATION_DISABLED)
            unusableMoves |= gBitTable[i];
        // Torment
        if (gBattleMons[battler].moves[i] == gLastMoves[battler] && check & MOVE_LIMITATION_TORMENTED && gBattleMons[battler].status2 & STATUS2_TORMENT)
            unusableMoves |= gBitTable[i];
        // Taunt
        if ((gDisableStructs[battler].tauntTimer || IsBattlerEnragedBySolidRage(battler))
         && check & MOVE_LIMITATION_TAUNT && gBattleMoves[gBattleMons[battler].moves[i]].power == 0)
            unusableMoves |= gBitTable[i];
        // Imprison
        if (GetImprisonedMovesCount(battler, gBattleMons[battler].moves[i]) && check & MOVE_LIMITATION_IMPRISON)
            unusableMoves |= gBitTable[i];
        // Encore
        if (gDisableStructs[battler].encoreTimer && gDisableStructs[battler].encoredMove != gBattleMons[battler].moves[i])
            unusableMoves |= gBitTable[i];
        // Black Hole
        if (IsMoveBlockedByBlackHole(battler, gBattleMons[battler].moves[i]))
            unusableMoves |= gBitTable[i];
        // Choice Band
        if ((holdEffect == HOLD_EFFECT_CHOICE_BAND || holdEffect == HOLD_EFFECT_CHOICE_SPECS || holdEffect == HOLD_EFFECT_CHOICE_SCARF) && *choicedMove != MOVE_NONE && *choicedMove != MOVE_UNAVAILABLE && *choicedMove != gBattleMons[battler].moves[i])
            unusableMoves |= gBitTable[i];
    }
    return unusableMoves;
}

bool8 AreAllMovesUnusable(void)
{
    u8 unusable = CheckMoveLimitations(gActiveBattler, 0, MOVE_LIMITATIONS_ALL);

    if (unusable == ALL_MOVES_MASK) // All moves are unusable.
    {
        gProtectStructs[gActiveBattler].noValidMoves = TRUE;
        gSelectionBattleScripts[gActiveBattler] = BattleScript_NoMovesLeft;
    }
    else
    {
        gProtectStructs[gActiveBattler].noValidMoves = FALSE;
    }

    return (unusable == ALL_MOVES_MASK);
}

u8 GetImprisonedMovesCount(u8 battler, u16 move)
{
    s32 i;
    u8 imprisonedMoves = 0;
    u8 battlerSide = GetBattlerSide(battler);

    for (i = 0; i < gBattlersCount; i++)
    {
        if (battlerSide != GetBattlerSide(i) && gStatuses3[i] & STATUS3_IMPRISONED_OTHERS)
        {
            s32 j;
            for (j = 0; j < MAX_MON_MOVES; j++)
            {
                if (move == gBattleMons[i].moves[j])
                    break;
            }
            if (j < MAX_MON_MOVES)
                imprisonedMoves++;
        }
    }

    return imprisonedMoves;
}

enum
{
    ENDTURN_ORDER,
    ENDTURN_REFLECT,
    ENDTURN_LIGHT_SCREEN,
    ENDTURN_MIST,
    ENDTURN_SAFEGUARD,
    ENDTURN_WISH,
    ENDTURN_RAIN,
    ENDTURN_SANDSTORM,
    ENDTURN_SUN,
    ENDTURN_HAIL,
    ENDTURN_FOLLOWER_STEP_ASIDE,
    ENDTURN_FIELD_COUNT,
};

u8 DoFieldEndTurnEffects(void)
{
    u8 effect = 0;
    s32 i;

    for (gBattlerAttacker = 0; gBattlerAttacker < gBattlersCount && gAbsentBattlerFlags & gBitTable[gBattlerAttacker]; gBattlerAttacker++)
    {
    }
    for (gBattlerTarget = 0; gBattlerTarget < gBattlersCount && gAbsentBattlerFlags & gBitTable[gBattlerTarget]; gBattlerTarget++)
    {
    }

    do
    {
        u8 side;

        switch (gBattleStruct->turnCountersTracker)
        {
        case ENDTURN_ORDER:
            for (i = 0; i < gBattlersCount; i++)
            {
                gBattlerByTurnOrder[i] = i;
            }
            for (i = 0; i < gBattlersCount - 1; i++)
            {
                s32 j;
                for (j = i + 1; j < gBattlersCount; j++)
                {
                    if (GetWhoStrikesFirst(gBattlerByTurnOrder[i], gBattlerByTurnOrder[j], FALSE))
                        SwapTurnOrder(i, j);
                }
            }

            // It's stupid, but won't match without it
            {
                u8 *var = &gBattleStruct->turnCountersTracker;
                (*var)++;
                gBattleStruct->turnSideTracker = 0;
            }
            // fall through
        case ENDTURN_REFLECT:
            while (gBattleStruct->turnSideTracker < 2)
            {
                side = gBattleStruct->turnSideTracker;
                gActiveBattler = gBattlerAttacker = gSideTimers[side].reflectBattlerId;
                if (gSideStatuses[side] & SIDE_STATUS_REFLECT)
                {
                    if (--gSideTimers[side].reflectTimer == 0)
                    {
                        gSideStatuses[side] &= ~SIDE_STATUS_REFLECT;
                        BattleScriptExecute(BattleScript_SideStatusWoreOff);
                        PREPARE_MOVE_BUFFER(gBattleTextBuff1, MOVE_REFLECT);
                        effect++;
                    }
                }
                gBattleStruct->turnSideTracker++;
                if (effect != 0)
                    break;
            }
            if (effect == 0)
            {
                gBattleStruct->turnCountersTracker++;
                gBattleStruct->turnSideTracker = 0;
            }
            break;
        case ENDTURN_LIGHT_SCREEN:
            while (gBattleStruct->turnSideTracker < 2)
            {
                side = gBattleStruct->turnSideTracker;
                gActiveBattler = gBattlerAttacker = gSideTimers[side].lightscreenBattlerId;
                if (gSideStatuses[side] & SIDE_STATUS_LIGHTSCREEN)
                {
                    if (--gSideTimers[side].lightscreenTimer == 0)
                    {
                        gSideStatuses[side] &= ~SIDE_STATUS_LIGHTSCREEN;
                        BattleScriptExecute(BattleScript_SideStatusWoreOff);
                        gBattleCommunication[MULTISTRING_CHOOSER] = side;
                        PREPARE_MOVE_BUFFER(gBattleTextBuff1, MOVE_LIGHT_SCREEN);
                        effect++;
                    }
                }
                gBattleStruct->turnSideTracker++;
                if (effect != 0)
                    break;
            }
            if (effect == 0)
            {
                gBattleStruct->turnCountersTracker++;
                gBattleStruct->turnSideTracker = 0;
            }
            break;
        case ENDTURN_MIST:
            while (gBattleStruct->turnSideTracker < 2)
            {
                side = gBattleStruct->turnSideTracker;
                gActiveBattler = gBattlerAttacker = gSideTimers[side].mistBattlerId;
                if (gSideTimers[side].mistTimer != 0 && --gSideTimers[side].mistTimer == 0)
                {
                    gSideStatuses[side] &= ~SIDE_STATUS_MIST;
                    BattleScriptExecute(BattleScript_SideStatusWoreOff);
                    gBattleCommunication[MULTISTRING_CHOOSER] = side;
                    PREPARE_MOVE_BUFFER(gBattleTextBuff1, MOVE_MIST);
                    effect++;
                }
                gBattleStruct->turnSideTracker++;
                if (effect != 0)
                    break;
            }
            if (effect == 0)
            {
                gBattleStruct->turnCountersTracker++;
                gBattleStruct->turnSideTracker = 0;
            }
            break;
        case ENDTURN_SAFEGUARD:
            while (gBattleStruct->turnSideTracker < 2)
            {
                side = gBattleStruct->turnSideTracker;
                gActiveBattler = gBattlerAttacker = gSideTimers[side].safeguardBattlerId;
                if (gSideStatuses[side] & SIDE_STATUS_SAFEGUARD)
                {
                    if (--gSideTimers[side].safeguardTimer == 0)
                    {
                        gSideStatuses[side] &= ~SIDE_STATUS_SAFEGUARD;
                        BattleScriptExecute(BattleScript_SafeguardEnds);
                        effect++;
                    }
                }
                gBattleStruct->turnSideTracker++;
                if (effect != 0)
                    break;
            }
            if (effect == 0)
            {
                gBattleStruct->turnCountersTracker++;
                gBattleStruct->turnSideTracker = 0;
            }
            break;
        case ENDTURN_WISH:
            while (gBattleStruct->turnSideTracker < gBattlersCount)
            {
                gActiveBattler = gBattlerByTurnOrder[gBattleStruct->turnSideTracker];
                if (gWishFutureKnock.wishCounter[gActiveBattler] != 0
                 && --gWishFutureKnock.wishCounter[gActiveBattler] == 0
                 && gBattleMons[gActiveBattler].hp != 0)
                {
                    gBattlerTarget = gActiveBattler;
                    BattleScriptExecute(BattleScript_WishComesTrue);
                    effect++;
                }
                gBattleStruct->turnSideTracker++;
                if (effect != 0)
                    break;
            }
            if (effect == 0)
            {
                gBattleStruct->turnCountersTracker++;
            }
            break;
        case ENDTURN_RAIN:
            if (gBattleWeather & B_WEATHER_RAIN)
            {
                if (!(gBattleWeather & B_WEATHER_RAIN_PERMANENT))
                {
                    if (--gWishFutureKnock.weatherDuration == 0)
                    {
                        gBattleWeather &= ~B_WEATHER_RAIN_TEMPORARY;
                        gBattleWeather &= ~B_WEATHER_RAIN_DOWNPOUR;
                        gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_RAIN_STOPPED;
                    }
                    else if (gBattleWeather & B_WEATHER_RAIN_DOWNPOUR)
                    {
                        gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_DOWNPOUR_CONTINUES;
                    }
                    else
                    {
                        gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_RAIN_CONTINUES;
                    }
                }
                else if (gBattleWeather & B_WEATHER_RAIN_DOWNPOUR)
                {
                    gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_DOWNPOUR_CONTINUES;
                }
                else
                {
                    gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_RAIN_CONTINUES;
                }

                BattleScriptExecute(BattleScript_RainContinuesOrEnds);
                effect++;
            }
            gBattleStruct->turnCountersTracker++;
            break;
        case ENDTURN_SANDSTORM:
            if (gBattleWeather & B_WEATHER_SANDSTORM)
            {
                if (!(gBattleWeather & B_WEATHER_SANDSTORM_PERMANENT) && --gWishFutureKnock.weatherDuration == 0)
                {
                    gBattleWeather &= ~B_WEATHER_SANDSTORM_TEMPORARY;
                    gBattlescriptCurrInstr = BattleScript_SandStormHailEnds;
                }
                else
                {
                    gBattlescriptCurrInstr = BattleScript_DamagingWeatherContinues;
                }

                gBattleScripting.animArg1 = B_ANIM_SANDSTORM_CONTINUES;
                gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_SANDSTORM;
                BattleScriptExecute(gBattlescriptCurrInstr);
                effect++;
            }
            gBattleStruct->turnCountersTracker++;
            break;
        case ENDTURN_SUN:
            if (gBattleWeather & B_WEATHER_SUN)
            {
                if (!(gBattleWeather & B_WEATHER_SUN_PERMANENT) && --gWishFutureKnock.weatherDuration == 0)
                {
                    gBattleWeather &= ~B_WEATHER_SUN_TEMPORARY;
                    gBattlescriptCurrInstr = BattleScript_SunlightFaded;
                }
                else
                {
                    gBattlescriptCurrInstr = BattleScript_SunlightContinues;
                }

                BattleScriptExecute(gBattlescriptCurrInstr);
                effect++;
            }
            gBattleStruct->turnCountersTracker++;
            break;
        case ENDTURN_HAIL:
            if (gBattleWeather & B_WEATHER_HAIL)
            {
                if (!(gBattleWeather & B_WEATHER_HAIL_PERMANENT) && --gWishFutureKnock.weatherDuration == 0)
                {
                    gBattleWeather &= ~B_WEATHER_HAIL_TEMPORARY;
                    gBattlescriptCurrInstr = BattleScript_SandStormHailEnds;
                }
                else
                {
                    gBattlescriptCurrInstr = BattleScript_DamagingWeatherContinues;
                }

                gBattleScripting.animArg1 = B_ANIM_HAIL_CONTINUES;
                gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_HAIL;
                BattleScriptExecute(gBattlescriptCurrInstr);
                effect++;
            }
            gBattleStruct->turnCountersTracker++;
            break;
        case ENDTURN_FOLLOWER_STEP_ASIDE:
            // A follower helping catch the wild Pokémon recalls theirs once it's weak enough
            // (or, if they want it themselves, recalls both sides' and throws a ball)
            {
                const u8 *stepAsideScript = FollowerBattle_TryStepAside();

                if (stepAsideScript != NULL)
                {
                    BattleScriptExecute(stepAsideScript);
                    effect++;
                }
            }
            gBattleStruct->turnCountersTracker++;
            break;
        case ENDTURN_FIELD_COUNT:
            effect++;
            break;
        }
    } while (effect == 0);
    return (gBattleMainFunc != BattleTurnPassed);
}

enum
{
    ENDTURN_INGRAIN,
    ENDTURN_ABILITIES,
    ENDTURN_ITEMS1,
    ENDTURN_LEECH_SEED,
    ENDTURN_POISON,
    ENDTURN_BAD_POISON,
    ENDTURN_BURN,
    ENDTURN_NIGHTMARES,
    ENDTURN_CURSE,
    ENDTURN_WRAP,
    ENDTURN_UPROAR,
    ENDTURN_THRASH,
    ENDTURN_DISABLE,
    ENDTURN_ENCORE,
    ENDTURN_LOCK_ON,
    ENDTURN_CHARGE,
    ENDTURN_TAUNT,
    ENDTURN_YAWN,
    ENDTURN_ITEMS2,
    ENDTURN_IGNITE,
    ENDTURN_BATTLER_COUNT
};

// Poison Heal restores the HP poison would have taken instead: 1/8 for poison, and for Toxic 1/16 that grows each turn
static bool8 TryPoisonHeal(u8 battler, s32 amount)
{
    if (gBattleMons[battler].ability != ABILITY_POISON_HEAL
     || gBattleMons[battler].hp == gBattleMons[battler].maxHP)
        return FALSE;

    gBattleMoveDamage = amount;
    if (gBattleMoveDamage == 0)
        gBattleMoveDamage = 1;
    gBattleMoveDamage *= -1;
    BattleScriptExecute(BattleScript_PoisonHealActivates);
    return TRUE;
}

u8 DoBattlerEndTurnEffects(void)
{
    u8 effect = 0;

    gHitMarker |= (HITMARKER_GRUDGE | HITMARKER_IGNORE_BIDE);
    while (gBattleStruct->turnEffectsBattlerId < gBattlersCount && gBattleStruct->turnEffectsTracker <= ENDTURN_BATTLER_COUNT)
    {
        gActiveBattler = gBattlerAttacker = gBattlerByTurnOrder[gBattleStruct->turnEffectsBattlerId];
        if (gAbsentBattlerFlags & gBitTable[gActiveBattler])
        {
            gBattleStruct->turnEffectsBattlerId++;
        }
        else
        {
            switch (gBattleStruct->turnEffectsTracker)
            {
            case ENDTURN_INGRAIN:  // ingrain
                if ((gStatuses3[gActiveBattler] & STATUS3_ROOTED)
                 && gBattleMons[gActiveBattler].hp != gBattleMons[gActiveBattler].maxHP
                 && gBattleMons[gActiveBattler].hp != 0)
                {
                    gBattleMoveDamage = gBattleMons[gActiveBattler].maxHP / 16;
                    if (gBattleMoveDamage == 0)
                        gBattleMoveDamage = 1;
                    gBattleMoveDamage *= -1;
                    BattleScriptExecute(BattleScript_IngrainTurnHeal);
                    effect++;
                }
                gBattleStruct->turnEffectsTracker++;
                break;
            case ENDTURN_ABILITIES:  // end turn abilities
                if (AbilityBattleEffects(ABILITYEFFECT_ENDTURN, gActiveBattler, 0, 0, 0))
                    effect++;
                gBattleStruct->turnEffectsTracker++;
                break;
            case ENDTURN_ITEMS1:  // item effects
                if (ItemBattleEffects(ITEMEFFECT_NORMAL, gActiveBattler, FALSE))
                    effect++;
                gBattleStruct->turnEffectsTracker++;
                break;
            case ENDTURN_ITEMS2:  // item effects again
                if (ItemBattleEffects(ITEMEFFECT_NORMAL, gActiveBattler, TRUE))
                    effect++;
                gBattleStruct->turnEffectsTracker++;
                break;
            case ENDTURN_LEECH_SEED:  // leech seed
                if ((gStatuses3[gActiveBattler] & STATUS3_LEECHSEED)
                 && gBattleMons[gStatuses3[gActiveBattler] & STATUS3_LEECHSEED_BATTLER].hp != 0
                 && gBattleMons[gActiveBattler].hp != 0
                 && gBattleMons[gActiveBattler].ability != ABILITY_MAGIC_GUARD)
                {
                    gBattlerTarget = gStatuses3[gActiveBattler] & STATUS3_LEECHSEED_BATTLER; // Notice gBattlerTarget is actually the HP receiver.
                    if (gExLeechSeedTurns[gActiveBattler] != 0)
                    {
                        // EX Leech Seed drains 1/16 more each turn, like Toxic. After its 15/16 turn, it wears off
                        // (see BattleScript_LeechSeedTurnPrintAndUpdateHp)
                        gBattleMoveDamage = gBattleMons[gActiveBattler].maxHP / 16;
                        if (gBattleMoveDamage == 0)
                            gBattleMoveDamage = 1;
                        gBattleMoveDamage *= gExLeechSeedTurns[gActiveBattler];
                        if (gExLeechSeedTurns[gActiveBattler] == 15)
                        {
                            gExLeechSeedTurns[gActiveBattler] = 0;
                            gStatuses3[gActiveBattler] &= ~(STATUS3_LEECHSEED | STATUS3_LEECHSEED_BATTLER);
                        }
                        else
                        {
                            gExLeechSeedTurns[gActiveBattler]++;
                        }
                    }
                    else
                    {
                        gBattleMoveDamage = gBattleMons[gActiveBattler].maxHP / 8;
                        if (gBattleMoveDamage == 0)
                            gBattleMoveDamage = 1;
                    }
                    gBattleScripting.animArg1 = gBattlerTarget;
                    gBattleScripting.animArg2 = gBattlerAttacker;
                    BattleScriptExecute(BattleScript_LeechSeedTurnDrain);
                    effect++;
                }
                gBattleStruct->turnEffectsTracker++;
                break;
            case ENDTURN_POISON:  // poison
                if ((gBattleMons[gActiveBattler].status1 & STATUS1_POISON) && gBattleMons[gActiveBattler].hp != 0)
                {
                    if (TryPoisonHeal(gActiveBattler, gBattleMons[gActiveBattler].maxHP / 8))
                    {
                        effect++;
                    }
                    else if (gBattleMons[gActiveBattler].ability != ABILITY_MAGIC_GUARD
                          && gBattleMons[gActiveBattler].ability != ABILITY_POISON_HEAL)
                    {
                        gBattleMoveDamage = gBattleMons[gActiveBattler].maxHP / 8;
                        if (gBattleMoveDamage == 0)
                            gBattleMoveDamage = 1;
                        BattleScriptExecute(BattleScript_PoisonTurnDmg);
                        effect++;
                    }
                }
                gBattleStruct->turnEffectsTracker++;
                break;
            case ENDTURN_BAD_POISON:  // toxic poison
                if ((gBattleMons[gActiveBattler].status1 & STATUS1_TOXIC_POISON) && gBattleMons[gActiveBattler].hp != 0)
                {
                    gBattleMoveDamage = gBattleMons[gActiveBattler].maxHP / 16;
                    if (gBattleMoveDamage == 0)
                        gBattleMoveDamage = 1;
                    if ((gBattleMons[gActiveBattler].status1 & STATUS1_TOXIC_COUNTER) != STATUS1_TOXIC_TURN(15)) // not 16 turns
                        gBattleMons[gActiveBattler].status1 += STATUS1_TOXIC_TURN(1);
                    gBattleMoveDamage *= (gBattleMons[gActiveBattler].status1 & STATUS1_TOXIC_COUNTER) >> 8;
                    // The toxic counter still climbs under Poison Heal and Magic Guard
                    if (TryPoisonHeal(gActiveBattler, gBattleMoveDamage))
                    {
                        effect++;
                    }
                    else if (gBattleMons[gActiveBattler].ability != ABILITY_MAGIC_GUARD
                          && gBattleMons[gActiveBattler].ability != ABILITY_POISON_HEAL)
                    {
                        BattleScriptExecute(BattleScript_PoisonTurnDmg);
                        effect++;
                    }
                }
                gBattleStruct->turnEffectsTracker++;
                break;
            case ENDTURN_BURN:  // burn
                if ((gBattleMons[gActiveBattler].status1 & STATUS1_BURN) && gBattleMons[gActiveBattler].hp != 0
                 && gBattleMons[gActiveBattler].ability != ABILITY_MAGIC_GUARD)
                {
                    gBattleMoveDamage = gBattleMons[gActiveBattler].maxHP / 8;
                    if (gBattleMoveDamage == 0)
                        gBattleMoveDamage = 1;
                    BattleScriptExecute(BattleScript_BurnTurnDmg);
                    effect++;
                }
                gBattleStruct->turnEffectsTracker++;
                break;
            case ENDTURN_NIGHTMARES:  // spooky nightmares
                if ((gBattleMons[gActiveBattler].status2 & STATUS2_NIGHTMARE) && gBattleMons[gActiveBattler].hp != 0)
                {
                    // R/S does not perform this sleep check, which causes the nightmare effect to
                    // persist even after the affected Pokémon has been awakened by Shed Skin.
                    if (gBattleMons[gActiveBattler].status1 & STATUS1_SLEEP)
                    {
                        if (gBattleMons[gActiveBattler].ability == ABILITY_MAGIC_GUARD)
                        {
                            gBattleStruct->turnEffectsTracker++;
                            break;
                        }
                        gBattleMoveDamage = gBattleMons[gActiveBattler].maxHP / 4;
                        if (gBattleMoveDamage == 0)
                            gBattleMoveDamage = 1;
                        BattleScriptExecute(BattleScript_NightmareTurnDmg);
                        effect++;
                    }
                    else
                    {
                        gBattleMons[gActiveBattler].status2 &= ~STATUS2_NIGHTMARE;
                    }
                }
                gBattleStruct->turnEffectsTracker++;
                break;
            case ENDTURN_CURSE:  // curse
                if ((gBattleMons[gActiveBattler].status2 & STATUS2_CURSED) && gBattleMons[gActiveBattler].hp != 0
                 && gBattleMons[gActiveBattler].ability != ABILITY_MAGIC_GUARD)
                {
                    gBattleMoveDamage = gBattleMons[gActiveBattler].maxHP / 4;
                    if (gBattleMoveDamage == 0)
                        gBattleMoveDamage = 1;
                    BattleScriptExecute(BattleScript_CurseTurnDmg);
                    effect++;
                }
                gBattleStruct->turnEffectsTracker++;
                break;
            case ENDTURN_WRAP:  // wrap
                if ((gBattleMons[gActiveBattler].status2 & STATUS2_WRAPPED) && gBattleMons[gActiveBattler].hp != 0)
                {
                    gBattleMons[gActiveBattler].status2 -= STATUS2_WRAPPED_TURN(1);
                    if ((gBattleMons[gActiveBattler].status2 & STATUS2_WRAPPED)
                     && gBattleMons[gActiveBattler].ability == ABILITY_MAGIC_GUARD)
                    {
                        gBattleStruct->turnEffectsTracker++;
                        break;
                    }
                    if (gBattleMons[gActiveBattler].status2 & STATUS2_WRAPPED)  // damaged by wrap
                    {
                        // This is the only way I could get this array access to match.
                        gBattleScripting.animArg1 = *(gBattleStruct->wrappedMove + gActiveBattler * 2 + 0);
                        gBattleScripting.animArg2 = *(gBattleStruct->wrappedMove + gActiveBattler * 2 + 1);
                        gBattleTextBuff1[0] = B_BUFF_PLACEHOLDER_BEGIN;
                        gBattleTextBuff1[1] = B_BUFF_MOVE;
                        gBattleTextBuff1[2] = *(gBattleStruct->wrappedMove + gActiveBattler * 2 + 0);
                        gBattleTextBuff1[3] = *(gBattleStruct->wrappedMove + gActiveBattler * 2 + 1);
                        gBattleTextBuff1[4] = EOS;
                        gBattlescriptCurrInstr = BattleScript_WrapTurnDmg;
                        if (IsBattlerInBlackHole(gActiveBattler))
                            gBattleMoveDamage = gBattleMons[gActiveBattler].maxHP / 8; // Black Hole drains harder
                        else
                            gBattleMoveDamage = gBattleMons[gActiveBattler].maxHP / 16;
                        if (gBattleMoveDamage == 0)
                            gBattleMoveDamage = 1;
                    }
                    else  // broke free
                    {
                        gBattleTextBuff1[0] = B_BUFF_PLACEHOLDER_BEGIN;
                        gBattleTextBuff1[1] = B_BUFF_MOVE;
                        gBattleTextBuff1[2] = *(gBattleStruct->wrappedMove + gActiveBattler * 2 + 0);
                        gBattleTextBuff1[3] = *(gBattleStruct->wrappedMove + gActiveBattler * 2 + 1);
                        gBattleTextBuff1[4] = EOS;
                        gBattlescriptCurrInstr = BattleScript_WrapEnds;
                    }
                    BattleScriptExecute(gBattlescriptCurrInstr);
                    effect++;
                }
                gBattleStruct->turnEffectsTracker++;
                break;
            case ENDTURN_UPROAR:  // uproar
                if (gBattleMons[gActiveBattler].status2 & STATUS2_UPROAR)
                {
                    for (gBattlerAttacker = 0; gBattlerAttacker < gBattlersCount; gBattlerAttacker++)
                    {
                        if ((gBattleMons[gBattlerAttacker].status1 & STATUS1_SLEEP)
                         && gBattleMons[gBattlerAttacker].ability != ABILITY_SOUNDPROOF)
                        {
                            gBattleMons[gBattlerAttacker].status1 &= ~STATUS1_SLEEP;
                            gBattleMons[gBattlerAttacker].status2 &= ~STATUS2_NIGHTMARE;
                            gBattleCommunication[MULTISTRING_CHOOSER] = 1;
                            BattleScriptExecute(BattleScript_MonWokeUpInUproar);
                            gActiveBattler = gBattlerAttacker;
                            BtlController_EmitSetMonData(B_COMM_TO_CONTROLLER, REQUEST_STATUS_BATTLE, 0, 4, &gBattleMons[gActiveBattler].status1);
                            MarkBattlerForControllerExec(gActiveBattler);
                            break;
                        }
                    }
                    if (gBattlerAttacker != gBattlersCount)
                    {
                        effect = 2;  // a Pokémon was awaken
                        break;
                    }
                    else
                    {
                        gBattlerAttacker = gActiveBattler;
                        gBattleMons[gActiveBattler].status2 -= STATUS2_UPROAR_TURN(1);
                        if (WasUnableToUseMove(gActiveBattler))
                        {
                            CancelMultiTurnMoves(gActiveBattler);
                            gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_UPROAR_ENDS;
                        }
                        else if (gBattleMons[gActiveBattler].status2 & STATUS2_UPROAR)
                        {
                            gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_UPROAR_CONTINUES;
                            gBattleMons[gActiveBattler].status2 |= STATUS2_MULTIPLETURNS;
                        }
                        else
                        {
                            gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_UPROAR_ENDS;
                            CancelMultiTurnMoves(gActiveBattler);
                        }
                        BattleScriptExecute(BattleScript_PrintUproarOverTurns);
                        effect = 1;
                    }
                }
                if (effect != 2)
                    gBattleStruct->turnEffectsTracker++;
                break;
            case ENDTURN_THRASH:  // thrash
                if (gBattleMons[gActiveBattler].status2 & STATUS2_LOCK_CONFUSE)
                {
                    gBattleMons[gActiveBattler].status2 -= STATUS2_LOCK_CONFUSE_TURN(1);
                    if (WasUnableToUseMove(gActiveBattler))
                        CancelMultiTurnMoves(gActiveBattler);
                    else if (!(gBattleMons[gActiveBattler].status2 & STATUS2_LOCK_CONFUSE)
                     && (gBattleMons[gActiveBattler].status2 & STATUS2_MULTIPLETURNS))
                    {
                        gBattleMons[gActiveBattler].status2 &= ~STATUS2_MULTIPLETURNS;
                        if (gExCalmRampageBattlers & gBitTable[gActiveBattler])
                        {
                            // An EX rampage ends calmly (EX_FLAG_CALM_RAMPAGE)
                            gExCalmRampageBattlers &= ~gBitTable[gActiveBattler];
                        }
                        else if (!(gBattleMons[gActiveBattler].status2 & STATUS2_CONFUSION))
                        {
                            gBattleCommunication[MOVE_EFFECT_BYTE] = MOVE_EFFECT_CONFUSION | MOVE_EFFECT_AFFECTS_USER;
                            SetMoveEffect(TRUE, 0);
                            if (gBattleMons[gActiveBattler].status2 & STATUS2_CONFUSION)
                                BattleScriptExecute(BattleScript_ThrashConfuses);
                            effect++;
                        }
                    }
                }
                gBattleStruct->turnEffectsTracker++;
                break;
            case ENDTURN_DISABLE:  // disable
                if (gDisableStructs[gActiveBattler].disableTimer != 0)
                {
                    s32 i;
                    for (i = 0; i < MAX_MON_MOVES; i++)
                    {
                        if (gDisableStructs[gActiveBattler].disabledMove == gBattleMons[gActiveBattler].moves[i])
                            break;
                    }
                    if (i == MAX_MON_MOVES)  // Pokémon does not have the disabled move anymore
                    {
                        gDisableStructs[gActiveBattler].disabledMove = MOVE_NONE;
                        gDisableStructs[gActiveBattler].disableTimer = 0;
                    }
                    else if (--gDisableStructs[gActiveBattler].disableTimer == 0)  // disable ends
                    {
                        gDisableStructs[gActiveBattler].disabledMove = MOVE_NONE;
                        BattleScriptExecute(BattleScript_DisabledNoMore);
                        effect++;
                    }
                }
                gBattleStruct->turnEffectsTracker++;
                break;
            case ENDTURN_ENCORE:  // encore
                if (gDisableStructs[gActiveBattler].encoreTimer != 0)
                {
                    if (gBattleMons[gActiveBattler].moves[gDisableStructs[gActiveBattler].encoredMovePos] != gDisableStructs[gActiveBattler].encoredMove)  // Pokémon does not have the encored move anymore
                    {
                        gDisableStructs[gActiveBattler].encoredMove = MOVE_NONE;
                        gDisableStructs[gActiveBattler].encoreTimer = 0;
                    }
                    else if (--gDisableStructs[gActiveBattler].encoreTimer == 0
                     || gBattleMons[gActiveBattler].pp[gDisableStructs[gActiveBattler].encoredMovePos] == 0)
                    {
                        gDisableStructs[gActiveBattler].encoredMove = MOVE_NONE;
                        gDisableStructs[gActiveBattler].encoreTimer = 0;
                        BattleScriptExecute(BattleScript_EncoredNoMore);
                        effect++;
                    }
                }
                gBattleStruct->turnEffectsTracker++;
                break;
            case ENDTURN_LOCK_ON:  // lock-on decrement
                if (gStatuses3[gActiveBattler] & STATUS3_ALWAYS_HITS)
                    gStatuses3[gActiveBattler] -= STATUS3_ALWAYS_HITS_TURN(1);
                gBattleStruct->turnEffectsTracker++;
                break;
            case ENDTURN_CHARGE:  // charge
                if (gDisableStructs[gActiveBattler].chargeTimer && --gDisableStructs[gActiveBattler].chargeTimer == 0)
                    gStatuses3[gActiveBattler] &= ~STATUS3_CHARGED_UP;
                gBattleStruct->turnEffectsTracker++;
                break;
            case ENDTURN_TAUNT:  // taunt
                // An EX Taunt doesn't count down, it lasts while its user is out (see EndExLastingTaunts)
                if (gDisableStructs[gActiveBattler].tauntTimer && gExLastingTauntBy[gActiveBattler] == 0)
                    gDisableStructs[gActiveBattler].tauntTimer--;
                gBattleStruct->turnEffectsTracker++;
                break;
            case ENDTURN_YAWN:  // yawn
                if (gStatuses3[gActiveBattler] & STATUS3_YAWN)
                {
                    gStatuses3[gActiveBattler] -= STATUS3_YAWN_TURN(1);
                    if (!(gStatuses3[gActiveBattler] & STATUS3_YAWN) && !(gBattleMons[gActiveBattler].status1 & STATUS1_ANY)
                     && gBattleMons[gActiveBattler].ability != ABILITY_INSOMNIA && !UproarWakeUpCheck(gActiveBattler))
                    {
                        CancelMultiTurnMoves(gActiveBattler);
                        gBattleMons[gActiveBattler].status1 |= STATUS1_SLEEP_TURN((Random() & 3) + 2); // 2-5 turns of sleep
                        BtlController_EmitSetMonData(B_COMM_TO_CONTROLLER, REQUEST_STATUS_BATTLE, 0, 4, &gBattleMons[gActiveBattler].status1);
                        MarkBattlerForControllerExec(gActiveBattler);
                        gEffectBattler = gActiveBattler;
                        BattleScriptExecute(BattleScript_YawnMakesAsleep);
                        effect++;
                    }
                }
                gBattleStruct->turnEffectsTracker++;
                break;
            case ENDTURN_IGNITE:  // ignite damage
                if ((gBattleMons[gActiveBattler].status1 & STATUS1_IGNITE) && gBattleMons[gActiveBattler].hp != 0)
                {
                    gBattleMoveDamage = gBattleMons[gActiveBattler].maxHP / 6;
                    if (gBattleMoveDamage == 0)
                        gBattleMoveDamage = 1;
                    BattleScriptExecute(BattleScript_IgniteTurnDmg);
                    effect++;
                }
            case ENDTURN_BATTLER_COUNT:  // done
                gBattleStruct->turnEffectsTracker = 0;
                gBattleStruct->turnEffectsBattlerId++;
                break;
            }
            if (effect != 0)
                return effect;
        }
    }
    gHitMarker &= ~(HITMARKER_GRUDGE | HITMARKER_IGNORE_BIDE);
    return 0;
}

// Unlike Future Sight, Echo's rebound can be blocked by Protect and similar moves used that turn
static bool32 IsEchoReboundBlocked(u8 battler)
{
    u8 side = GetBattlerSide(battler);
    u8 moveType = gBattleMoves[MOVE_ECHO].type;

    if (gTurnEndShieldedBattlers & gBitTable[battler])
        return TRUE;
    if (gStatuses3[battler] & STATUS3_DODGING)
        return TRUE;
    if (IS_TYPE_PHYSICAL(moveType))
        return (gTurnEndExScreenSides & EX_SCREEN_BLOCK_PHYSICAL(side)) != 0;
    return (gTurnEndExScreenSides & EX_SCREEN_BLOCK_SPECIAL(side)) != 0;
}

bool8 HandleWishPerishSongOnTurnEnd(void)
{
    gHitMarker |= (HITMARKER_GRUDGE | HITMARKER_IGNORE_BIDE);

    switch (gBattleStruct->wishPerishSongState)
    {
    case 0:
        while (gBattleStruct->wishPerishSongBattlerId < gBattlersCount)
        {
            gActiveBattler = gBattleStruct->wishPerishSongBattlerId;
            if (gAbsentBattlerFlags & gBitTable[gActiveBattler])
            {
                gBattleStruct->wishPerishSongBattlerId++;
                continue;
            }

            gBattleStruct->wishPerishSongBattlerId++;
            if (gWishFutureKnock.futureSightCounter[gActiveBattler] != 0
             && --gWishFutureKnock.futureSightCounter[gActiveBattler] == 0
             && gBattleMons[gActiveBattler].hp != 0)
            {
                if (gWishFutureKnock.futureSightMove[gActiveBattler] == MOVE_FUTURE_SIGHT)
                    gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_FUTURE_SIGHT;
                else if (gWishFutureKnock.futureSightMove[gActiveBattler] == MOVE_ECHO)
                    gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_ECHO; // hits like Doom Desire, with its own animation
                else
                    gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_DOOM_DESIRE;

                PREPARE_MOVE_BUFFER(gBattleTextBuff1, gWishFutureKnock.futureSightMove[gActiveBattler]);

                gBattlerTarget = gActiveBattler;
                gBattlerAttacker = gWishFutureKnock.futureSightAttacker[gActiveBattler];
                gBattleMoveDamage = gWishFutureKnock.futureSightDmg[gActiveBattler];
                gSpecialStatuses[gBattlerTarget].shellBellDmg = IGNORE_SHELL_BELL;
                if (gWishFutureKnock.futureSightMove[gActiveBattler] == MOVE_ECHO && IsEchoReboundBlocked(gActiveBattler))
                    BattleScriptExecute(BattleScript_EchoReboundBlocked);
                else
                    BattleScriptExecute(BattleScript_MonTookFutureAttack);

                if (gWishFutureKnock.futureSightCounter[gActiveBattler] == 0
                 && gWishFutureKnock.futureSightCounter[BATTLE_PARTNER(gActiveBattler)] == 0)
                {
                    gSideStatuses[GET_BATTLER_SIDE(gBattlerTarget)] &= ~SIDE_STATUS_FUTUREATTACK;
                }
                return TRUE;
            }
        }
        // Why do I have to keep doing this to match?
        {
            u8 *state = &gBattleStruct->wishPerishSongState;
            *state = 1;
            gBattleStruct->wishPerishSongBattlerId = 0;
        }
        // fall through
    case 1:
        while (gBattleStruct->wishPerishSongBattlerId < gBattlersCount)
        {
            gActiveBattler = gBattlerAttacker = gBattlerByTurnOrder[gBattleStruct->wishPerishSongBattlerId];
            if (gAbsentBattlerFlags & gBitTable[gActiveBattler])
            {
                gBattleStruct->wishPerishSongBattlerId++;
                continue;
            }
            gBattleStruct->wishPerishSongBattlerId++;
            if (gStatuses3[gActiveBattler] & STATUS3_PERISH_SONG)
            {
                PREPARE_BYTE_NUMBER_BUFFER(gBattleTextBuff1, 1, gDisableStructs[gActiveBattler].perishSongTimer);
                if (gDisableStructs[gActiveBattler].perishSongTimer == 0)
                {
                    gStatuses3[gActiveBattler] &= ~STATUS3_PERISH_SONG;
                    gBattleMoveDamage = gBattleMons[gActiveBattler].hp;
                    gBattlescriptCurrInstr = BattleScript_PerishSongTakesLife;
                }
                else
                {
                    gDisableStructs[gActiveBattler].perishSongTimer--;
                    gBattlescriptCurrInstr = BattleScript_PerishSongCountGoesDown;
                }
                BattleScriptExecute(gBattlescriptCurrInstr);
                return TRUE;
            }
        }
        // Hm...
        {
            u8 *state = &gBattleStruct->wishPerishSongState;
            *state = 2;
            gBattleStruct->wishPerishSongBattlerId = 0;
        }
        // fall through
    case 2:
        if ((gBattleTypeFlags & BATTLE_TYPE_ARENA)
         && gBattleStruct->arenaTurnCounter == 2
         && gBattleMons[0].hp != 0 && gBattleMons[1].hp != 0)
        {
            s32 i;

            for (i = 0; i < 2; i++)
                CancelMultiTurnMoves(i);

            gBattlescriptCurrInstr = BattleScript_ArenaDoJudgment;
            BattleScriptExecute(BattleScript_ArenaDoJudgment);
            gBattleStruct->wishPerishSongState++;
            return TRUE;
        }
        break;
    }

    gHitMarker &= ~(HITMARKER_GRUDGE | HITMARKER_IGNORE_BIDE);

    return FALSE;
}

#define FAINTED_ACTIONS_MAX_CASE 7

bool8 HandleFaintedMonActions(void)
{
    if (gBattleTypeFlags & BATTLE_TYPE_SAFARI)
        return FALSE;
    do
    {
        s32 i;
        switch (gBattleStruct->faintedActionsState)
        {
        case 0:
            gBattleStruct->faintedActionsBattlerId = 0;
            gBattleStruct->faintedActionsState++;
            for (i = 0; i < gBattlersCount; i++)
            {
                if (gAbsentBattlerFlags & gBitTable[i] && !HasNoMonsToSwitch(i, PARTY_SIZE, PARTY_SIZE))
                    gAbsentBattlerFlags &= ~(gBitTable[i]);
            }
            // fall through
        case 1:
            do
            {
                gBattlerFainted = gBattlerTarget = gBattleStruct->faintedActionsBattlerId;
                if (gBattleMons[gBattleStruct->faintedActionsBattlerId].hp == 0
                 && !(gBattleStruct->givenExpMons & gBitTable[gBattlerPartyIndexes[gBattleStruct->faintedActionsBattlerId]])
                 && !(gAbsentBattlerFlags & gBitTable[gBattleStruct->faintedActionsBattlerId]))
                {
                    BattleScriptExecute(BattleScript_GiveExp);
                    gBattleStruct->faintedActionsState = 2;
                    return TRUE;
                }
            } while (++gBattleStruct->faintedActionsBattlerId != gBattlersCount);
            gBattleStruct->faintedActionsState = 3;
            break;
        case 2:
            OpponentSwitchInResetSentPokesToOpponentValue(gBattlerFainted);
            if (++gBattleStruct->faintedActionsBattlerId == gBattlersCount)
                gBattleStruct->faintedActionsState = 3;
            else
                gBattleStruct->faintedActionsState = 1;
            break;
        case 3:
            gBattleStruct->faintedActionsBattlerId = 0;
            gBattleStruct->faintedActionsState++;
            // fall through
        case 4:
            do
            {
                gBattlerFainted = gBattlerTarget = gBattleStruct->faintedActionsBattlerId;
                if (gBattleMons[gBattleStruct->faintedActionsBattlerId].hp == 0
                 && !(gAbsentBattlerFlags & gBitTable[gBattleStruct->faintedActionsBattlerId]))
                {
                    BattleScriptExecute(BattleScript_HandleFaintedMon);
                    gBattleStruct->faintedActionsState = 5;
                    return TRUE;
                }
            } while (++gBattleStruct->faintedActionsBattlerId != gBattlersCount);
            gBattleStruct->faintedActionsState = 6;
            break;
        case 5:
            if (++gBattleStruct->faintedActionsBattlerId == gBattlersCount)
                gBattleStruct->faintedActionsState = 6;
            else
                gBattleStruct->faintedActionsState = 4;
            break;
        case 6:
            if (AbilityBattleEffects(ABILITYEFFECT_INTIMIDATE1, 0, 0, 0, 0)
             || AbilityBattleEffects(ABILITYEFFECT_TRACE, 0, 0, 0, 0)
             || ItemBattleEffects(ITEMEFFECT_NORMAL, 0, TRUE)
             || AbilityBattleEffects(ABILITYEFFECT_FORECAST, 0, 0, 0, 0))
                return TRUE;
            gBattleStruct->faintedActionsState++;
            break;
        case FAINTED_ACTIONS_MAX_CASE:
            break;
        }
    } while (gBattleStruct->faintedActionsState != FAINTED_ACTIONS_MAX_CASE);
    return FALSE;
}

void TryClearRageStatuses(void)
{
    s32 i;
    for (i = 0; i < gBattlersCount; i++)
    {
        if ((gBattleMons[i].status2 & STATUS2_RAGE) && gChosenMoveByBattler[i] != MOVE_RAGE)
            gBattleMons[i].status2 &= ~STATUS2_RAGE;
    }
}

enum
{
    CANCELLER_FLAGS,
    CANCELLER_ASLEEP,
    CANCELLER_FROZEN,
    CANCELLER_TRUANT,
    CANCELLER_RECHARGE,
    CANCELLER_FLINCH,
    CANCELLER_DISABLED,
    CANCELLER_TAUNTED,
    CANCELLER_IMPRISONED,
    CANCELLER_CONFUSED,
    CANCELLER_PARALYSED,
    CANCELLER_IN_LOVE,
    CANCELLER_BIDE,
    CANCELLER_THAW,
    CANCELLER_END,
};

u8 AtkCanceller_UnableToUseMove(void)
{
    u8 effect = 0;
    s32 *bideDmg = &gBattleScripting.bideDmg;
    do
    {
        switch (gBattleStruct->atkCancellerTracker)
        {
        case CANCELLER_FLAGS: // flags clear
            gBattleMons[gBattlerAttacker].status2 &= ~STATUS2_DESTINY_BOND;
            gStatuses3[gBattlerAttacker] &= ~STATUS3_GRUDGE;
            gBattleStruct->atkCancellerTracker++;
            break;
        case CANCELLER_ASLEEP: // check being asleep
            if (gBattleMons[gBattlerAttacker].status1 & STATUS1_SLEEP)
            {
                if (UproarWakeUpCheck(gBattlerAttacker))
                {
                    gBattleMons[gBattlerAttacker].status1 &= ~STATUS1_SLEEP;
                    gBattleMons[gBattlerAttacker].status2 &= ~STATUS2_NIGHTMARE;
                    BattleScriptPushCursor();
                    gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_WOKE_UP_UPROAR;
                    gBattlescriptCurrInstr = BattleScript_MoveUsedWokeUp;
                    effect = 2;
                }
                else
                {
                    u8 toSub;
                    if (gBattleMons[gBattlerAttacker].ability == ABILITY_EARLY_BIRD)
                        toSub = 2;
                    else
                        toSub = 1;
                    if ((gBattleMons[gBattlerAttacker].status1 & STATUS1_SLEEP) < toSub)
                        gBattleMons[gBattlerAttacker].status1 &= ~STATUS1_SLEEP;
                    else
                        gBattleMons[gBattlerAttacker].status1 -= toSub;
                    if (gBattleMons[gBattlerAttacker].status1 & STATUS1_SLEEP)
                    {
                        if (gCurrentMove != MOVE_SNORE && gCurrentMove != MOVE_SLEEP_TALK)
                        {
                            gBattlescriptCurrInstr = BattleScript_MoveUsedIsAsleep;
                            gHitMarker |= HITMARKER_UNABLE_TO_USE_MOVE;
                            effect = 2;
                        }
                    }
                    else
                    {
                        gBattleMons[gBattlerAttacker].status2 &= ~STATUS2_NIGHTMARE;
                        BattleScriptPushCursor();
                        gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_WOKE_UP;
                        gBattlescriptCurrInstr = BattleScript_MoveUsedWokeUp;
                        effect = 2;
                    }
                }
            }
            gBattleStruct->atkCancellerTracker++;
            break;
        case CANCELLER_FROZEN: // check being frozen
            if (gBattleMons[gBattlerAttacker].status1 & STATUS1_FREEZE)
            {
                if (Random() % 5)
                {
                    if (gBattleMoves[gCurrentMove].effect != EFFECT_THAW_HIT) // unfreezing via a move effect happens in case 13
                    {
                        gBattlescriptCurrInstr = BattleScript_MoveUsedIsFrozen;
                        gHitMarker |= HITMARKER_NO_ATTACKSTRING;
                    }
                    else
                    {
                        gBattleStruct->atkCancellerTracker++;
                        break;
                    }
                }
                else // unfreeze
                {
                    gBattleMons[gBattlerAttacker].status1 &= ~STATUS1_FREEZE;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_MoveUsedUnfroze;
                    gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_DEFROSTED;
                }
                effect = 2;
            }
            gBattleStruct->atkCancellerTracker++;
            break;
        case CANCELLER_TRUANT: // truant
            if (gBattleMons[gBattlerAttacker].ability == ABILITY_TRUANT && gDisableStructs[gBattlerAttacker].truantCounter)
            {
                CancelMultiTurnMoves(gBattlerAttacker);
                gHitMarker |= HITMARKER_UNABLE_TO_USE_MOVE;
                gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_LOAFING;
                gBattlescriptCurrInstr = BattleScript_MoveUsedLoafingAround;
                gMoveResultFlags |= MOVE_RESULT_MISSED;
                effect = 1;
            }
            gBattleStruct->atkCancellerTracker++;
            break;
        case CANCELLER_RECHARGE: // recharge
            if (gBattleMons[gBattlerAttacker].status2 & STATUS2_RECHARGE)
            {
                gBattleMons[gBattlerAttacker].status2 &= ~STATUS2_RECHARGE;
                gDisableStructs[gBattlerAttacker].rechargeTimer = 0;
                CancelMultiTurnMoves(gBattlerAttacker);
                if (gBattleMoves[gLockedMoves[gBattlerAttacker]].effect == EFFECT_DETECT)
                    gBattlescriptCurrInstr = BattleScript_MoveUsedWideOpen;
                else
                    gBattlescriptCurrInstr = BattleScript_MoveUsedMustRecharge;
                gHitMarker |= HITMARKER_UNABLE_TO_USE_MOVE;
                effect = 1;
            }
            gBattleStruct->atkCancellerTracker++;
            break;
        case CANCELLER_FLINCH: // flinch
            if (gBattleMons[gBattlerAttacker].status2 & STATUS2_FLINCHED)
            {
                gBattleMons[gBattlerAttacker].status2 &= ~STATUS2_FLINCHED;
                gProtectStructs[gBattlerAttacker].flinchImmobility = 1;
                CancelMultiTurnMoves(gBattlerAttacker);
                gBattlescriptCurrInstr = BattleScript_MoveUsedFlinched;
                gHitMarker |= HITMARKER_UNABLE_TO_USE_MOVE;
                effect = 1;
            }
            gBattleStruct->atkCancellerTracker++;
            break;
        case CANCELLER_DISABLED: // disabled move
            if (gDisableStructs[gBattlerAttacker].disabledMove == gCurrentMove && gDisableStructs[gBattlerAttacker].disabledMove != MOVE_NONE)
            {
                gProtectStructs[gBattlerAttacker].usedDisabledMove = 1;
                gBattleScripting.battler = gBattlerAttacker;
                CancelMultiTurnMoves(gBattlerAttacker);
                gBattlescriptCurrInstr = BattleScript_MoveUsedIsDisabled;
                gHitMarker |= HITMARKER_UNABLE_TO_USE_MOVE;
                effect = 1;
            }
            gBattleStruct->atkCancellerTracker++;
            break;
        case CANCELLER_TAUNTED: // taunt
            if (gDisableStructs[gBattlerAttacker].tauntTimer && gBattleMoves[gCurrentMove].power == 0)
            {
                gProtectStructs[gBattlerAttacker].usedTauntedMove = 1;
                CancelMultiTurnMoves(gBattlerAttacker);
                gBattlescriptCurrInstr = BattleScript_MoveUsedIsTaunted;
                gHitMarker |= HITMARKER_UNABLE_TO_USE_MOVE;
                effect = 1;
            }
            else if (IsBattlerEnragedBySolidRage(gBattlerAttacker) && gBattleMoves[gCurrentMove].power == 0)
            {
                gProtectStructs[gBattlerAttacker].usedTauntedMove = 1;
                CancelMultiTurnMoves(gBattlerAttacker);
                gBattlescriptCurrInstr = BattleScript_MoveUsedIsEnraged;
                gHitMarker |= HITMARKER_UNABLE_TO_USE_MOVE;
                effect = 1;
            }
            // Pulled into a Black Hole after choosing this move. A Fly or Dig already under way still finishes
            else if (IsMoveBlockedByBlackHole(gBattlerAttacker, gCurrentMove)
                  && !(gBattleMons[gBattlerAttacker].status2 & STATUS2_MULTIPLETURNS))
            {
                gActiveBattler = gBattlerAttacker;
                gBattlescriptCurrInstr = BattleScript_MoveUsedBlackHolePrevents;
                gHitMarker |= HITMARKER_UNABLE_TO_USE_MOVE;
                effect = 1;
            }
            gBattleStruct->atkCancellerTracker++;
            break;
        case CANCELLER_IMPRISONED: // imprisoned
            if (GetImprisonedMovesCount(gBattlerAttacker, gCurrentMove))
            {
                gProtectStructs[gBattlerAttacker].usedImprisonedMove = 1;
                CancelMultiTurnMoves(gBattlerAttacker);
                gBattlescriptCurrInstr = BattleScript_MoveUsedIsImprisoned;
                gHitMarker |= HITMARKER_UNABLE_TO_USE_MOVE;
                effect = 1;
            }
            gBattleStruct->atkCancellerTracker++;
            break;
        case CANCELLER_CONFUSED: // confusion
            if (gBattleMons[gBattlerAttacker].status2 & STATUS2_CONFUSION)
            {
                gBattleMons[gBattlerAttacker].status2 -= STATUS2_CONFUSION_TURN(1);
                if (gBattleMons[gBattlerAttacker].status2 & STATUS2_CONFUSION)
                {
                    if (Random() & 1)
                    {
                        // The MULTISTRING_CHOOSER is used here as a bool to signal
                        // to BattleScript_MoveUsedIsConfused whether or not damage was taken
                        gBattleCommunication[MULTISTRING_CHOOSER] = FALSE;
                        BattleScriptPushCursor();
                    }
                    else // confusion dmg
                    {
                        gBattleCommunication[MULTISTRING_CHOOSER] = TRUE;
                        gBattlerTarget = gBattlerAttacker;
                        gBattleMoveDamage = CalculateBaseDamage(&gBattleMons[gBattlerAttacker], &gBattleMons[gBattlerAttacker], MOVE_POUND, 0, 40, 0, gBattlerAttacker, gBattlerAttacker);
                        gProtectStructs[gBattlerAttacker].confusionSelfDmg = 1;
                        gHitMarker |= HITMARKER_UNABLE_TO_USE_MOVE;
                    }
                    gBattlescriptCurrInstr = BattleScript_MoveUsedIsConfused;
                }
                else // snapped out of confusion
                {
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_MoveUsedIsConfusedNoMore;
                }
                effect = 1;
            }
            gBattleStruct->atkCancellerTracker++;
            break;
        case CANCELLER_PARALYSED: // paralysis
            if ((gBattleMons[gBattlerAttacker].status1 & STATUS1_PARALYSIS) && (Random() % 4) == 0)
            {
                gProtectStructs[gBattlerAttacker].prlzImmobility = 1;
                // This is removed in FRLG and Emerald for some reason
                //CancelMultiTurnMoves(gBattlerAttacker);
                gBattlescriptCurrInstr = BattleScript_MoveUsedIsParalyzed;
                gHitMarker |= HITMARKER_UNABLE_TO_USE_MOVE;
                effect = 1;
            }
            gBattleStruct->atkCancellerTracker++;
            break;
        case CANCELLER_IN_LOVE: // infatuation
            if (gBattleMons[gBattlerAttacker].status2 & STATUS2_INFATUATION)
            {
                gBattleScripting.battler = CountTrailingZeroBits((gBattleMons[gBattlerAttacker].status2 & STATUS2_INFATUATION) >> 0x10);
                if (Random() & 1)
                {
                    BattleScriptPushCursor();
                }
                else
                {
                    BattleScriptPush(BattleScript_MoveUsedIsInLoveCantAttack);
                    gHitMarker |= HITMARKER_UNABLE_TO_USE_MOVE;
                    gProtectStructs[gBattlerAttacker].loveImmobility = 1;
                    CancelMultiTurnMoves(gBattlerAttacker);
                }
                gBattlescriptCurrInstr = BattleScript_MoveUsedIsInLove;
                effect = 1;
            }
            gBattleStruct->atkCancellerTracker++;
            break;
        case CANCELLER_BIDE: // bide
            if (gBattleMons[gBattlerAttacker].status2 & STATUS2_BIDE)
            {
                gBattleMons[gBattlerAttacker].status2 -= STATUS2_BIDE_TURN(1);
                if (gBattleMons[gBattlerAttacker].status2 & STATUS2_BIDE)
                {
                    gBattlescriptCurrInstr = BattleScript_BideStoringEnergy;
                }
                else
                {
                    // This is removed in FRLG and Emerald for some reason
                    //gBattleMons[gBattlerAttacker].status2 &= ~STATUS2_MULTIPLETURNS;
                    if (gBideDmg[gBattlerAttacker])
                    {
                        gCurrentMove = MOVE_BIDE;
                        *bideDmg = gBideDmg[gBattlerAttacker] * 2;
                        gBattlerTarget = gBideTarget[gBattlerAttacker];
                        if (gAbsentBattlerFlags & gBitTable[gBattlerTarget])
                            gBattlerTarget = GetMoveTarget(MOVE_BIDE, MOVE_TARGET_SELECTED + 1);
                        gBattlescriptCurrInstr = BattleScript_BideAttack;
                    }
                    else
                    {
                        gBattlescriptCurrInstr = BattleScript_BideNoEnergyToAttack;
                    }
                }
                effect = 1;
            }
            gBattleStruct->atkCancellerTracker++;
            break;
        case CANCELLER_THAW: // move thawing
            if (gBattleMons[gBattlerAttacker].status1 & STATUS1_FREEZE)
            {
                if (gBattleMoves[gCurrentMove].effect == EFFECT_THAW_HIT)
                {
                    gBattleMons[gBattlerAttacker].status1 &= ~STATUS1_FREEZE;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_MoveUsedUnfroze;
                    gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_DEFROSTED_BY_MOVE;
                }
                effect = 2;
            }
            gBattleStruct->atkCancellerTracker++;
            break;
        case CANCELLER_END:
            break;
        }

    } while (gBattleStruct->atkCancellerTracker != CANCELLER_END && effect == 0);

    if (effect == 2)
    {
        gActiveBattler = gBattlerAttacker;
        BtlController_EmitSetMonData(B_COMM_TO_CONTROLLER, REQUEST_STATUS_BATTLE, 0, 4, &gBattleMons[gActiveBattler].status1);
        MarkBattlerForControllerExec(gActiveBattler);
    }
    return effect;
}

bool8 HasNoMonsToSwitch(u8 battler, u8 partyIdBattlerOn1, u8 partyIdBattlerOn2)
{
    u8 playerId, flankId;
    struct Pokemon *party;
    s32 i;

    if (!(gBattleTypeFlags & BATTLE_TYPE_DOUBLE))
        return FALSE;

    // A follower who recalled their Pokémon to let the player catch one stays out of the battle
    // (otherwise HandleFaintedMonActions brings them back, since their party still has Pokémon)
    if (FollowerBattle_HasSteppedAside() && GetBattlerPosition(battler) == B_POSITION_PLAYER_RIGHT)
        return TRUE;

    if (gBattleTypeFlags & BATTLE_TYPE_INGAME_PARTNER && !IS_PARTNER_VS_ONE_FOE(battler))
    {
        if (GetBattlerSide(battler) == B_SIDE_PLAYER)
            party = gPlayerParty;
        else
            party = gEnemyParty;

        playerId = ((battler & BIT_FLANK) / 2);
        for (i = playerId * MULTI_PARTY_SIZE; i < playerId * MULTI_PARTY_SIZE + MULTI_PARTY_SIZE; i++)
        {
            if (GetMonData(&party[i], MON_DATA_HP) != 0
             && GetMonData(&party[i], MON_DATA_SPECIES_OR_EGG) != SPECIES_NONE
             && GetMonData(&party[i], MON_DATA_SPECIES_OR_EGG) != SPECIES_EGG)
                break;
        }
        return (i == playerId * MULTI_PARTY_SIZE + MULTI_PARTY_SIZE);
    }
    else if (gBattleTypeFlags & BATTLE_TYPE_MULTI && !IS_PARTNER_VS_ONE_FOE(battler))
    {
        if (gBattleTypeFlags & BATTLE_TYPE_TOWER_LINK_MULTI)
        {
            if (GetBattlerSide(battler) == B_SIDE_PLAYER)
            {
                party = gPlayerParty;
                flankId = GetBattlerMultiplayerId(battler);
                playerId = GetLinkTrainerFlankId(flankId);
            }
            else
            {
                party = gEnemyParty;
                if (battler == 1)
                    playerId = 0;
                else
                    playerId = 1;
            }
        }
        else
        {
            flankId = GetBattlerMultiplayerId(battler);

            if (GetBattlerSide(battler) == B_SIDE_PLAYER)
                party = gPlayerParty;
            else
                party = gEnemyParty;

            playerId = GetLinkTrainerFlankId(flankId);
        }

        for (i = playerId * MULTI_PARTY_SIZE; i < playerId * MULTI_PARTY_SIZE + MULTI_PARTY_SIZE; i++)
        {
            if (GetMonData(&party[i], MON_DATA_HP) != 0
             && GetMonData(&party[i], MON_DATA_SPECIES_OR_EGG) != SPECIES_NONE
             && GetMonData(&party[i], MON_DATA_SPECIES_OR_EGG) != SPECIES_EGG)
                break;
        }
        return (i == playerId * MULTI_PARTY_SIZE + MULTI_PARTY_SIZE);
    }
    else if ((gBattleTypeFlags & BATTLE_TYPE_TWO_OPPONENTS) && GetBattlerSide(battler) == B_SIDE_OPPONENT)
    {
        party = gEnemyParty;

        if (battler == 1)
            playerId = 0;
        else
            playerId = MULTI_PARTY_SIZE;

        for (i = playerId; i < playerId + MULTI_PARTY_SIZE; i++)
        {
            if (GetMonData(&party[i], MON_DATA_HP) != 0
             && GetMonData(&party[i], MON_DATA_SPECIES_OR_EGG) != SPECIES_NONE
             && GetMonData(&party[i], MON_DATA_SPECIES_OR_EGG) != SPECIES_EGG)
                break;
        }
        return (i == playerId + 3);
    }
    else
    {
        if (GetBattlerSide(battler) == B_SIDE_OPPONENT)
        {
            flankId = GetBattlerAtPosition(B_POSITION_OPPONENT_LEFT);
            playerId = GetBattlerAtPosition(B_POSITION_OPPONENT_RIGHT);
            party = gEnemyParty;
        }
        else
        {
            flankId = GetBattlerAtPosition(B_POSITION_PLAYER_LEFT);
            playerId = GetBattlerAtPosition(B_POSITION_PLAYER_RIGHT);
            party = gPlayerParty;
        }

        if (partyIdBattlerOn1 == PARTY_SIZE)
            partyIdBattlerOn1 = gBattlerPartyIndexes[flankId];
        if (partyIdBattlerOn2 == PARTY_SIZE)
            partyIdBattlerOn2 = gBattlerPartyIndexes[playerId];

        for (i = 0; i < PARTY_SIZE; i++)
        {
            if (GetMonData(&party[i], MON_DATA_HP) != 0
             && GetMonData(&party[i], MON_DATA_SPECIES_OR_EGG) != SPECIES_NONE
             && GetMonData(&party[i], MON_DATA_SPECIES_OR_EGG) != SPECIES_EGG
             && i != partyIdBattlerOn1 && i != partyIdBattlerOn2
             && i != *(gBattleStruct->monToSwitchIntoId + flankId) && i != playerId[gBattleStruct->monToSwitchIntoId])
                break;
        }
        return (i == PARTY_SIZE);
    }
}

u8 CastformDataTypeChange(u8 battler)
{
    u8 formChange = 0;
    if (gBattleMons[battler].species != SPECIES_CASTFORM || gBattleMons[battler].ability != ABILITY_FORECAST || gBattleMons[battler].hp == 0)
        return 0; // No change
    if (!WEATHER_HAS_EFFECT && !IS_BATTLER_OF_TYPE(battler, TYPE_NORMAL))
    {
        SET_BATTLER_TYPE(battler, TYPE_NORMAL);
        return CASTFORM_NORMAL + 1;
    }
    if (!WEATHER_HAS_EFFECT)
        return 0; // No change
    if (!(gBattleWeather & (B_WEATHER_RAIN | B_WEATHER_SUN | B_WEATHER_HAIL)) && !IS_BATTLER_OF_TYPE(battler, TYPE_NORMAL))
    {
        SET_BATTLER_TYPE(battler, TYPE_NORMAL);
        formChange = CASTFORM_NORMAL + 1;
    }
    if (gBattleWeather & B_WEATHER_SUN && !IS_BATTLER_OF_TYPE(battler, TYPE_FIRE))
    {
        SET_BATTLER_TYPE(battler, TYPE_FIRE);
        formChange = CASTFORM_FIRE + 1;
    }
    if (gBattleWeather & B_WEATHER_RAIN && !IS_BATTLER_OF_TYPE(battler, TYPE_WATER))
    {
        SET_BATTLER_TYPE(battler, TYPE_WATER);
        formChange = CASTFORM_WATER + 1;
    }
    if (gBattleWeather & B_WEATHER_HAIL && !IS_BATTLER_OF_TYPE(battler, TYPE_ICE))
    {
        SET_BATTLER_TYPE(battler, TYPE_ICE);
        formChange = CASTFORM_ICE + 1;
    }
    return formChange;
}

// Forecast reads the foe opposite it and, for 5 turns, overrides the weather with the one that hurts that foe most:
// rain against Fire/Rock/Ground, hail against Dragon/Flying/Grass, sun against Ice/Bug/Steel. If none apply, it
// clears the skies instead, ending the current weather. Returns the script to run.
static const u8 *ForecastSetWeather(u8 battler)
{
    u8 foe = GetBattlerAtPosition(BATTLE_OPPOSITE(GetBattlerPosition(battler)));
    u8 rain = 0, hail = 0, sun = 0;
    u32 i;

    if ((gAbsentBattlerFlags & gBitTable[foe]) || gBattleMons[foe].hp == 0)
        foe = GetBattlerAtPosition(BATTLE_PARTNER(GetBattlerPosition(foe)));

    if (!(gAbsentBattlerFlags & gBitTable[foe]) && gBattleMons[foe].hp != 0)
    {
        for (i = 0; i < 2; i++)
        {
            u8 type = gBattleMons[foe].types[i];

            if (i == 1 && type == gBattleMons[foe].types[0])
                break;
            if (type == TYPE_FIRE || type == TYPE_ROCK || type == TYPE_GROUND)
                rain++;
            if (type == TYPE_DRAGON || type == TYPE_FLYING || type == TYPE_GRASS)
                hail++;
            if (type == TYPE_ICE || type == TYPE_BUG || type == TYPE_STEEL)
                sun++;
        }
    }

    // Ties go rain, then hail, then sun
    if (rain != 0 && rain >= hail && rain >= sun)
    {
        gBattleWeather = B_WEATHER_RAIN_TEMPORARY;
        gWishFutureKnock.weatherDuration = 5;
        return BattleScript_DrizzleActivates;
    }
    if (hail != 0 && hail >= sun)
    {
        gBattleWeather = B_WEATHER_HAIL_TEMPORARY;
        gWishFutureKnock.weatherDuration = 5;
        return BattleScript_SnowWarningActivates;
    }
    if (sun != 0)
    {
        gBattleWeather = B_WEATHER_SUN_TEMPORARY;
        gWishFutureKnock.weatherDuration = 5;
        return BattleScript_DroughtActivates;
    }
    gBattleWeather = 0;
    return BattleScript_ForecastClearsSkies;
}

// The gender of the battler's party Pokémon, for Cute Charm. Reading party data decrypts it, which is slow, so
// AbilityBattleEffects only does this when Cute Charm actually checks, not on every call (the AI's damage
// estimates make many of those calls, through WEATHER_HAS_EFFECT2 and the other on-field checks)
static u8 GetBattlerPartyMonGender(u8 battler)
{
    struct Pokemon *mon;

    if (GetBattlerSide(battler) == B_SIDE_PLAYER)
        mon = &gPlayerParty[gBattlerPartyIndexes[battler]];
    else
        mon = &gEnemyParty[gBattlerPartyIndexes[battler]];
    return GetGenderFromSpeciesAndPersonality(GetMonData(mon, MON_DATA_SPECIES), GetMonData(mon, MON_DATA_PERSONALITY));
}

u8 AbilityBattleEffects(u8 caseID, u8 battler, u8 ability, u8 special, u16 moveArg)
{
    u8 effect = 0;

    if (gBattlerAttacker >= gBattlersCount)
        gBattlerAttacker = battler;
    if (gBattlerTarget >= gBattlersCount)
        gBattlerTarget = battler;

    if (!(gBattleTypeFlags & BATTLE_TYPE_SAFARI)) // Why isn't that check done at the beginning?
    {
        u8 moveType;
        s32 i;
        u16 move;
        u8 side;
        u8 target1;

        if (special)
            gLastUsedAbility = special;
        else
            gLastUsedAbility = gBattleMons[battler].ability;

        if (moveArg)
            move = moveArg;
        else
            move = gCurrentMove;

        GET_MOVE_TYPE(move, moveType);

        switch (caseID)
        {
        case ABILITYEFFECT_ON_SWITCHIN: // 0
            if (gBattlerAttacker >= gBattlersCount)
                gBattlerAttacker = battler;
            switch (gLastUsedAbility)
            {
            case ABILITYEFFECT_SWITCH_IN_WEATHER:
                if (!(gBattleTypeFlags & BATTLE_TYPE_RECORDED))
                {
                    switch (GetCurrentWeather())
                    {
                    case WEATHER_RAIN:
                    case WEATHER_RAIN_THUNDERSTORM:
                    case WEATHER_DOWNPOUR:
                        if (!(gBattleWeather & B_WEATHER_RAIN))
                        {
                            gBattleWeather = (B_WEATHER_RAIN_TEMPORARY | B_WEATHER_RAIN_PERMANENT);
                            gBattleScripting.animArg1 = B_ANIM_RAIN_CONTINUES;
                            gBattleScripting.battler = battler;
                            effect++;
                        }
                        break;
                    case WEATHER_SANDSTORM:
                        if (!(gBattleWeather & B_WEATHER_SANDSTORM))
                        {
                            gBattleWeather = B_WEATHER_SANDSTORM;
                            gBattleScripting.animArg1 = B_ANIM_SANDSTORM_CONTINUES;
                            gBattleScripting.battler = battler;
                            effect++;
                        }
                        break;
                    case WEATHER_DROUGHT:
                        if (!(gBattleWeather & B_WEATHER_SUN))
                        {
                            gBattleWeather = B_WEATHER_SUN;
                            gBattleScripting.animArg1 = B_ANIM_SUN_CONTINUES;
                            gBattleScripting.battler = battler;
                            effect++;
                        }
                        break;
                    }
                }
                if (effect != 0)
                {
                    gBattleCommunication[MULTISTRING_CHOOSER] = GetCurrentWeather();
                    BattleScriptPushCursorAndCallback(BattleScript_OverworldWeatherStarts);
                }
                break;
            case ABILITY_DRIZZLE:
                if (!(gBattleWeather & B_WEATHER_RAIN_PERMANENT))
                {
                    gBattleWeather = (B_WEATHER_RAIN_PERMANENT | B_WEATHER_RAIN_TEMPORARY);
                    BattleScriptPushCursorAndCallback(BattleScript_DrizzleActivates);
                    gBattleScripting.battler = battler;
                    effect++;
                }
                break;
            case ABILITY_SAND_STREAM:
                if (!(gBattleWeather & B_WEATHER_SANDSTORM_PERMANENT))
                {
                    gBattleWeather = B_WEATHER_SANDSTORM;
                    BattleScriptPushCursorAndCallback(BattleScript_SandstreamActivates);
                    gBattleScripting.battler = battler;
                    effect++;
                }
                break;
            case ABILITY_DROUGHT:
                if (!(gBattleWeather & B_WEATHER_SUN_PERMANENT))
                {
                    gBattleWeather = B_WEATHER_SUN;
                    BattleScriptPushCursorAndCallback(BattleScript_DroughtActivates);
                    gBattleScripting.battler = battler;
                    effect++;
                }
                break;
            case ABILITY_SNOW_WARNING:
                if (!(gBattleWeather & B_WEATHER_HAIL_PERMANENT))
                {
                    gBattleWeather = B_WEATHER_HAIL;
                    BattleScriptPushCursorAndCallback(BattleScript_SnowWarningActivates);
                    gBattleScripting.battler = battler;
                    effect++;
                }
                break;
            case ABILITY_INTIMIDATE:
            case ABILITY_FIRST_SIGHT: // Infatuates foes on switch-in, in the same way
            case ABILITY_ILLUMINATE: // Lowers foes' accuracy on switch-in, in the same way
                if (!(gSpecialStatuses[battler].intimidatedMon))
                {
                    gStatuses3[battler] |= STATUS3_INTIMIDATE_POKES;
                    gSpecialStatuses[battler].intimidatedMon = 1;
                }
                break;
            case ABILITY_FORECAST:
                if (!gSpecialStatuses[battler].forecastRead)
                {
                    gSpecialStatuses[battler].forecastRead = TRUE;
                    BattleScriptPushCursorAndCallback(ForecastSetWeather(battler));
                    gBattleScripting.battler = battler;
                    effect++;
                    break;
                }
                effect = CastformDataTypeChange(battler);
                if (effect != 0)
                {
                    BattleScriptPushCursorAndCallback(BattleScript_CastformChange);
                    gBattleScripting.battler = battler;
                    *(&gBattleStruct->formToChangeInto) = effect - 1;
                }
                break;
            case ABILITY_DOWNLOAD:
                // Sharply raises Attack if the foes' combined Defense is lower than their Sp. Def, otherwise Sp. Atk
                if (!gSpecialStatuses[battler].downloaded)
                {
                    u32 foeDef = 0, foeSpDef = 0;
                    u8 stat;

                    gSpecialStatuses[battler].downloaded = TRUE;
                    for (i = 0; i < gBattlersCount; i++)
                    {
                        if (GetBattlerSide(i) != GetBattlerSide(battler) && gBattleMons[i].hp != 0
                         && !(gAbsentBattlerFlags & gBitTable[i]))
                        {
                            foeDef += gBattleMons[i].defense;
                            foeSpDef += gBattleMons[i].spDefense;
                        }
                    }
                    if (foeDef == 0 && foeSpDef == 0)
                        break;
                    stat = (foeDef < foeSpDef) ? STAT_ATK : STAT_SPATK;
                    if (gBattleMons[battler].statStages[stat] < MAX_STAT_STAGE)
                    {
                        gBattleMons[battler].statStages[stat] += 2;
                        if (gBattleMons[battler].statStages[stat] > MAX_STAT_STAGE)
                            gBattleMons[battler].statStages[stat] = MAX_STAT_STAGE;
                        gBattleScripting.animArg1 = STAT_ANIM_PLUS2 + stat;
                        gBattleScripting.animArg2 = 0;
                        PREPARE_STAT_BUFFER(gBattleTextBuff1, stat);
                        gBattleScripting.battler = battler;
                        BattleScriptPushCursorAndCallback(BattleScript_DownloadActivates);
                        effect++;
                    }
                }
                break;
            case ABILITY_FIESTA:
                // Eats a held Berry that does nothing in battle as soon as it comes in, for its stat raises.
                // Other Berries wait for their usual moment (Cmd_removeitem)
                if (!gSpecialStatuses[battler].FiestaAte
                 && gBattleMons[battler].item >= FIRST_BERRY_INDEX && gBattleMons[battler].item <= LAST_BERRY_INDEX
                 && (gBattleMons[battler].item == ITEM_ENIGMA_BERRY ? gEnigmaBerries[battler].holdEffect
                                                                     : GetItemHoldEffect(gBattleMons[battler].item)) == HOLD_EFFECT_NONE
                 && TryStartFiesta(battler, gBattleMons[battler].item))
                {
                    gSpecialStatuses[battler].FiestaAte = TRUE;
                    gLastUsedItem = gBattleMons[battler].item;
                    gBattleScripting.battler = battler;
                    BattleScriptPushCursorAndCallback(BattleScript_FiestaEatsBerry);
                    effect++;
                }
                break;
            case ABILITY_TRACE:
                if (!(gSpecialStatuses[battler].traced))
                {
                    gStatuses3[battler] |= STATUS3_TRACE;
                    gSpecialStatuses[battler].traced = 1;
                }
                break;
            case ABILITY_CLOUD_NINE:
            case ABILITY_AIR_LOCK:
                {
                    // that's a weird choice for a variable, why not use i or battler?
                    for (target1 = 0; target1 < gBattlersCount; target1++)
                    {
                        effect = CastformDataTypeChange(target1);
                        if (effect != 0)
                        {
                            BattleScriptPushCursorAndCallback(BattleScript_CastformChange);
                            gBattleScripting.battler = target1;
                            *(&gBattleStruct->formToChangeInto) = effect - 1;
                            break;
                        }
                    }
                }
                break;
            }
            break;
        case ABILITYEFFECT_ENDTURN: // 1
            if (gBattleMons[battler].hp != 0)
            {
                gBattlerAttacker = battler;
                switch (gLastUsedAbility)
                {
                case ABILITY_RAIN_DISH:
                    if (WEATHER_HAS_EFFECT && (gBattleWeather & B_WEATHER_RAIN)
                     && gBattleMons[battler].maxHP > gBattleMons[battler].hp)
                    {
                        gLastUsedAbility = ABILITY_RAIN_DISH; // why
                        BattleScriptPushCursorAndCallback(BattleScript_RainDishActivates);
                        gBattleMoveDamage = gBattleMons[battler].maxHP / 16;
                        if (gBattleMoveDamage == 0)
                            gBattleMoveDamage = 1;
                        gBattleMoveDamage *= -1;
                        effect++;
                    }
                    break;
                case ABILITY_DRY_SKIN:
                    if (!WEATHER_HAS_EFFECT)
                        break;
                    if ((gBattleWeather & B_WEATHER_RAIN) && gBattleMons[battler].maxHP > gBattleMons[battler].hp)
                    {
                        // Heals 1/8 in rain (same message as Rain Dish)
                        BattleScriptPushCursorAndCallback(BattleScript_RainDishActivates);
                        gBattleMoveDamage = gBattleMons[battler].maxHP / 8;
                        if (gBattleMoveDamage == 0)
                            gBattleMoveDamage = 1;
                        gBattleMoveDamage *= -1;
                        effect++;
                    }
                    else if ((gBattleWeather & B_WEATHER_SUN) && gBattleMons[battler].ability != ABILITY_MAGIC_GUARD)
                    {
                        // Loses 1/8 in sun
                        PREPARE_ABILITY_BUFFER(gBattleTextBuff1, ABILITY_DRY_SKIN);
                        BattleScriptPushCursorAndCallback(BattleScript_DrySkinSunDmg);
                        gBattleMoveDamage = gBattleMons[battler].maxHP / 8;
                        if (gBattleMoveDamage == 0)
                            gBattleMoveDamage = 1;
                        effect++;
                    }
                    break;
                case ABILITY_HYDRATION:
                    if (!WEATHER_HAS_EFFECT || !(gBattleWeather & B_WEATHER_RAIN))
                        break;
                    // fallthrough: in rain, Hydration cures like a Shed Skin that always works
                case ABILITY_SHED_SKIN:
                    if ((gBattleMons[battler].status1 & STATUS1_ANY)
                     && (gBattleMons[battler].ability == ABILITY_HYDRATION || (Random() % 2) == 0)) // Shed Skin: 50%
                    {
                        if (gBattleMons[battler].status1 & (STATUS1_POISON | STATUS1_TOXIC_POISON))
                            StringCopy(gBattleTextBuff1, gStatusConditionString_PoisonJpn);
                        if (gBattleMons[battler].status1 & STATUS1_SLEEP)
                            StringCopy(gBattleTextBuff1, gStatusConditionString_SleepJpn);
                        if (gBattleMons[battler].status1 & STATUS1_PARALYSIS)
                            StringCopy(gBattleTextBuff1, gStatusConditionString_ParalysisJpn);
                        if (gBattleMons[battler].status1 & STATUS1_BURN)
                            StringCopy(gBattleTextBuff1, gStatusConditionString_BurnJpn);
                        if (gBattleMons[battler].status1 & STATUS1_FREEZE)
                            StringCopy(gBattleTextBuff1, gStatusConditionString_IceJpn);
                        gBattleMons[battler].status1 = 0;
                        gBattleMons[battler].status2 &= ~STATUS2_NIGHTMARE;  // fix nightmare glitch
                        gBattleScripting.battler = gActiveBattler = battler;
                        BattleScriptPushCursorAndCallback(BattleScript_ShedSkinActivates);
                        BtlController_EmitSetMonData(B_COMM_TO_CONTROLLER, REQUEST_STATUS_BATTLE, 0, 4, &gBattleMons[battler].status1);
                        MarkBattlerForControllerExec(gActiveBattler);
                        effect++;
                    }
                    break;
                case ABILITY_PICKUP:
                    // Gen 5+: an empty-handed Pickup holder picks up an item another Pokémon used up this turn
                    if (gBattleMons[battler].item == ITEM_NONE && gBattleStruct->itemsConsumedThisTurn)
                    {
                        for (i = 0; i < gBattlersCount; i++)
                        {
                            if (i != battler && (gBattleStruct->itemsConsumedThisTurn & gBitTable[i])
                             && gBattleStruct->usedHeldItems[i] != ITEM_NONE)
                                break;
                        }
                        if (i < gBattlersCount)
                        {
                            gLastUsedItem = gBattleStruct->usedHeldItems[i];
                            gBattleStruct->usedHeldItems[i] = ITEM_NONE; // Can no longer be Recycled
                            gBattleStruct->itemsConsumedThisTurn &= ~gBitTable[i];
                            gBattleMons[battler].item = gLastUsedItem;
                            gActiveBattler = battler;
                            BtlController_EmitSetMonData(B_COMM_TO_CONTROLLER, REQUEST_HELDITEM_BATTLE, 0, sizeof(gBattleMons[battler].item), &gBattleMons[battler].item);
                            MarkBattlerForControllerExec(battler);
                            gBattleScripting.battler = battler;
                            BattleScriptPushCursorAndCallback(BattleScript_PickupActivates);
                            effect++;
                        }
                    }
                    break;
                case ABILITY_SPEED_BOOST:
                    if (gBattleMons[battler].statStages[STAT_SPEED] < MAX_STAT_STAGE && gDisableStructs[battler].isFirstTurn != 2)
                    {
                        gBattleMons[battler].statStages[STAT_SPEED]++;
                        gBattleScripting.animArg1 = STAT_ANIM_PLUS1 + STAT_SPEED;
                        gBattleScripting.animArg2 = 0;
                        BattleScriptPushCursorAndCallback(BattleScript_SpeedBoostActivates);
                        gBattleScripting.battler = battler;
                        effect++;
                    }
                    break;
                case ABILITY_TRUANT:
                    gDisableStructs[gBattlerAttacker].truantCounter ^= 1;
                    break;
                }
            }
            break;
        case ABILITYEFFECT_MOVES_BLOCK: // 2
            if (gLastUsedAbility == ABILITY_SOUNDPROOF)
            {
                for (i = 0; sSoundMovesTable[i] != SOUND_MOVES_END; i++)
                {
                    if (sSoundMovesTable[i] == move)
                        break;
                }
                if (sSoundMovesTable[i] != SOUND_MOVES_END)
                {
                    if (gBattleMons[gBattlerAttacker].status2 & STATUS2_MULTIPLETURNS)
                        gHitMarker |= HITMARKER_NO_PPDEDUCT;
                    gBattlescriptCurrInstr = BattleScript_SoundproofProtected;
                    effect = 1;
                }
            }
            break;
        case ABILITYEFFECT_ABSORBING: // 3
            if (move)
            {
                switch (gLastUsedAbility)
                {
                case ABILITY_VOLT_ABSORB:
                    if (moveType == TYPE_ELECTRIC && battler != gBattlerAttacker)
                    {
                        if (gProtectStructs[gBattlerAttacker].notFirstStrike)
                            gBattlescriptCurrInstr = BattleScript_MoveHPDrain;
                        else
                            gBattlescriptCurrInstr = BattleScript_MoveHPDrain_PPLoss;

                        effect = 1;
                    }
                    break;
                case ABILITY_WATER_ABSORB:
                case ABILITY_DRY_SKIN:
                    if (moveType == TYPE_WATER && battler != gBattlerAttacker)
                    {
                        if (gProtectStructs[gBattlerAttacker].notFirstStrike)
                            gBattlescriptCurrInstr = BattleScript_MoveHPDrain;
                        else
                            gBattlescriptCurrInstr = BattleScript_MoveHPDrain_PPLoss;

                        effect = 1;
                    }
                    break;
                case ABILITY_LIGHTNING_ROD:
                case ABILITY_STORM_DRAIN:
                    // Gen 5+: immune to the drawn-in type, and its Sp. Atk rises instead
                    if (moveType == (gLastUsedAbility == ABILITY_LIGHTNING_ROD ? TYPE_ELECTRIC : TYPE_WATER)
                     && battler != gBattlerAttacker)
                    {
                        if (gBattleMons[battler].statStages[STAT_SPATK] < MAX_STAT_STAGE)
                        {
                            gBattleMons[battler].statStages[STAT_SPATK]++;
                            gBattleScripting.animArg1 = STAT_ANIM_PLUS1 + STAT_SPATK;
                            gBattleScripting.animArg2 = 0;
                            PREPARE_STAT_BUFFER(gBattleTextBuff1, STAT_SPATK);
                            gBattleScripting.battler = battler;
                            if (gProtectStructs[gBattlerAttacker].notFirstStrike)
                                gBattlescriptCurrInstr = BattleScript_AbilityAbsorbRaisesSpAtk;
                            else
                                gBattlescriptCurrInstr = BattleScript_AbilityAbsorbRaisesSpAtk_PPLoss;
                        }
                        else
                        {
                            if (gProtectStructs[gBattlerAttacker].notFirstStrike)
                                gBattlescriptCurrInstr = BattleScript_MonMadeMoveUseless;
                            else
                                gBattlescriptCurrInstr = BattleScript_MonMadeMoveUseless_PPLoss;
                        }
                        effect = 2;
                    }
                    break;
                case ABILITY_FLASH_FIRE:
                    if (moveType == TYPE_FIRE)
                    {
                        if (!(gBattleResources->flags->flags[battler] & RESOURCE_FLAG_FLASH_FIRE))
                        {
                            gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_FLASH_FIRE_BOOST;
                            if (gProtectStructs[gBattlerAttacker].notFirstStrike)
                                gBattlescriptCurrInstr = BattleScript_FlashFireBoost;
                            else
                                gBattlescriptCurrInstr = BattleScript_FlashFireBoost_PPLoss;

                            gBattleResources->flags->flags[battler] |= RESOURCE_FLAG_FLASH_FIRE;
                            effect = 2;
                        }
                        else
                        {
                            gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_FLASH_FIRE_NO_BOOST;
                            if (gProtectStructs[gBattlerAttacker].notFirstStrike)
                                gBattlescriptCurrInstr = BattleScript_FlashFireBoost;
                            else
                                gBattlescriptCurrInstr = BattleScript_FlashFireBoost_PPLoss;

                            effect = 2;
                        }
                    }
                    break;
                }
                if (effect == 1)
                {
                    if (gBattleMons[battler].maxHP == gBattleMons[battler].hp)
                    {
                        if ((gProtectStructs[gBattlerAttacker].notFirstStrike))
                            gBattlescriptCurrInstr = BattleScript_MonMadeMoveUseless;
                        else
                            gBattlescriptCurrInstr = BattleScript_MonMadeMoveUseless_PPLoss;
                    }
                    else
                    {
                        gBattleMoveDamage = gBattleMons[battler].maxHP / 4;
                        if (gBattleMoveDamage == 0)
                            gBattleMoveDamage = 1;
                        gBattleMoveDamage *= -1;
                    }
                }
            }
            break;
        case ABILITYEFFECT_ON_DAMAGE: // Contact abilities and Color Change
            switch (gLastUsedAbility)
            {
            case ABILITY_COLOR_CHANGE:
                if (!(gMoveResultFlags & MOVE_RESULT_NO_EFFECT)
                 && move != MOVE_STRUGGLE
                 && gBattleMoves[move].power != 0
                 && TARGET_TURN_DAMAGED
                 && !IS_BATTLER_OF_TYPE(battler, moveType)
                 && gBattleMons[battler].hp != 0)
                {
                    SET_BATTLER_TYPE(battler, moveType);
                    PREPARE_TYPE_BUFFER(gBattleTextBuff1, moveType);
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_ColorChangeActivates;
                    effect++;
                }
                break;
            case ABILITY_ROUGH_SKIN:
                if (!(gMoveResultFlags & MOVE_RESULT_NO_EFFECT)
                 && gBattleMons[gBattlerAttacker].hp != 0
                 && gBattleMons[gBattlerAttacker].ability != ABILITY_MAGIC_GUARD
                 && !gProtectStructs[gBattlerAttacker].confusionSelfDmg
                 && TARGET_TURN_DAMAGED
                 && (gBattleMoves[move].flags & FLAG_MAKES_CONTACT)
                 && gBattleMons[gBattlerAttacker].ability != ABILITY_SHIELD_DUST)
                {
                    gBattleMoveDamage = gBattleMons[gBattlerAttacker].maxHP / 8; // 1/8 since Gen 4
                    if (gBattleMoveDamage == 0)
                        gBattleMoveDamage = 1;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_RoughSkinActivates;
                    effect++;
                }
                break;
            case ABILITY_ANGER_POINT:
                // Every hit raises Attack by 1, and a critical hit maxes it
                if (!(gMoveResultFlags & MOVE_RESULT_NO_EFFECT)
                 && !gProtectStructs[gBattlerAttacker].confusionSelfDmg
                 && TARGET_TURN_DAMAGED
                 && gBattleMons[battler].hp != 0
                 && gBattleMons[battler].statStages[STAT_ATK] < MAX_STAT_STAGE)
                {
                    gBattleScripting.battler = battler;
                    gBattleScripting.animArg2 = 0;
                    BattleScriptPushCursor();
                    if (gCritMultiplier == 2)
                    {
                        gBattleMons[battler].statStages[STAT_ATK] = MAX_STAT_STAGE;
                        gBattleScripting.animArg1 = STAT_ANIM_PLUS2 + STAT_ATK;
                        gBattlescriptCurrInstr = BattleScript_AngerPointActivates;
                    }
                    else
                    {
                        gBattleMons[battler].statStages[STAT_ATK]++;
                        gBattleScripting.animArg1 = STAT_ANIM_PLUS1 + STAT_ATK;
                        PREPARE_STAT_BUFFER(gBattleTextBuff1, STAT_ATK);
                        gBattlescriptCurrInstr = BattleScript_AngerPointRaises;
                    }
                    effect++;
                }
                break;
            case ABILITY_LIQUID_OOZE:
                if (!(gMoveResultFlags & MOVE_RESULT_NO_EFFECT)
                 && gBattleMons[gBattlerAttacker].hp != 0
                 && !gProtectStructs[gBattlerAttacker].confusionSelfDmg
                 && TARGET_TURN_DAMAGED
                 && (gBattleMoves[move].flags & FLAG_MAKES_CONTACT)
                 && gBattleMons[gBattlerAttacker].ability != ABILITY_SHIELD_DUST
                 && gBattleMons[gBattlerAttacker].statStages[STAT_SPEED] > MIN_STAT_STAGE)
                {
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_LiquidOozeSlows;
                    effect++;
                }
                break;
            case ABILITY_EFFECT_SPORE:
                if (!(gMoveResultFlags & MOVE_RESULT_NO_EFFECT)
                 && gBattleMons[gBattlerAttacker].hp != 0
                 && !gProtectStructs[gBattlerAttacker].confusionSelfDmg
                 && TARGET_TURN_DAMAGED
                 && (gBattleMoves[move].flags & FLAG_MAKES_CONTACT)
                 && gBattleMons[gBattlerAttacker].ability != ABILITY_SHIELD_DUST
                 && (Random() % 3) == 0) // 1/3, like the other contact abilities (20% when its holder makes contact instead)
                {
                    do
                    {
                        // Pick either MOVE_EFFECT_SLEEP, MOVE_EFFECT_POISON or MOVE_EFFECT_BURN
                        gBattleCommunication[MOVE_EFFECT_BYTE] = Random() & 3;
                    } while (gBattleCommunication[MOVE_EFFECT_BYTE] == 0);
                    // Replace MOVE_EFFECT_BURN with MOVE_EFFECT_PARALYSIS
                    if (gBattleCommunication[MOVE_EFFECT_BYTE] == MOVE_EFFECT_BURN)
                        gBattleCommunication[MOVE_EFFECT_BYTE] += (MOVE_EFFECT_PARALYSIS - MOVE_EFFECT_BURN);

                    gBattleCommunication[MOVE_EFFECT_BYTE] += MOVE_EFFECT_AFFECTS_USER;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_ApplySecondaryEffect;
                    gHitMarker |= HITMARKER_STATUS_ABILITY_EFFECT;
                    effect++;
                }
                break;
            case ABILITY_POISON_POINT:
                if (!(gMoveResultFlags & MOVE_RESULT_NO_EFFECT)
                 && gBattleMons[gBattlerAttacker].hp != 0
                 && !gProtectStructs[gBattlerAttacker].confusionSelfDmg
                 && TARGET_TURN_DAMAGED
                 && (gBattleMoves[move].flags & FLAG_MAKES_CONTACT)
                 && gBattleMons[gBattlerAttacker].ability != ABILITY_SHIELD_DUST
                 && (Random() % 3) == 0)
                {
                    gBattleCommunication[MOVE_EFFECT_BYTE] = MOVE_EFFECT_AFFECTS_USER | MOVE_EFFECT_POISON;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_ApplySecondaryEffect;
                    gHitMarker |= HITMARKER_STATUS_ABILITY_EFFECT;
                    effect++;
                }
                break;
            case ABILITY_STATIC:
                if (!(gMoveResultFlags & MOVE_RESULT_NO_EFFECT)
                 && gBattleMons[gBattlerAttacker].hp != 0
                 && !gProtectStructs[gBattlerAttacker].confusionSelfDmg
                 && TARGET_TURN_DAMAGED
                 && (gBattleMoves[move].flags & FLAG_MAKES_CONTACT)
                 && gBattleMons[gBattlerAttacker].ability != ABILITY_SHIELD_DUST
                 && (Random() % 3) == 0)
                {
                    gBattleCommunication[MOVE_EFFECT_BYTE] = MOVE_EFFECT_AFFECTS_USER | MOVE_EFFECT_PARALYSIS;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_ApplySecondaryEffect;
                    gHitMarker |= HITMARKER_STATUS_ABILITY_EFFECT;
                    effect++;
                }
                break;
            case ABILITY_FLAME_BODY:
                if (!(gMoveResultFlags & MOVE_RESULT_NO_EFFECT)
                 && gBattleMons[gBattlerAttacker].hp != 0
                 && !gProtectStructs[gBattlerAttacker].confusionSelfDmg
                 && (gBattleMoves[move].flags & FLAG_MAKES_CONTACT)
                 && gBattleMons[gBattlerAttacker].ability != ABILITY_SHIELD_DUST
                 && TARGET_TURN_DAMAGED
                 && (Random() % 3) == 0)
                {
                    gBattleCommunication[MOVE_EFFECT_BYTE] = MOVE_EFFECT_AFFECTS_USER | MOVE_EFFECT_BURN;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_ApplySecondaryEffect;
                    gHitMarker |= HITMARKER_STATUS_ABILITY_EFFECT;
                    effect++;
                }
                break;
            case ABILITY_CUTE_CHARM:
                if (!(gMoveResultFlags & MOVE_RESULT_NO_EFFECT)
                 && gBattleMons[gBattlerAttacker].hp != 0
                 && !gProtectStructs[gBattlerAttacker].confusionSelfDmg
                 && (gBattleMoves[move].flags & FLAG_MAKES_CONTACT)
                 && TARGET_TURN_DAMAGED
                 && gBattleMons[gBattlerTarget].hp != 0
                 && (Random() % 3) == 0
                 && gBattleMons[gBattlerAttacker].ability != ABILITY_OBLIVIOUS
                 && gBattleMons[gBattlerAttacker].ability != ABILITY_HEARTBROKEN
                 && GetBattlerPartyMonGender(gBattlerAttacker) != GetBattlerPartyMonGender(gBattlerTarget)
                 && !(gBattleMons[gBattlerAttacker].status2 & STATUS2_INFATUATION)
                 && GetBattlerPartyMonGender(gBattlerAttacker) != MON_GENDERLESS
                 && GetBattlerPartyMonGender(gBattlerTarget) != MON_GENDERLESS)
                {
                    gBattleMons[gBattlerAttacker].status2 |= STATUS2_INFATUATED_WITH(gBattlerTarget);
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_CuteCharmActivates;
                    effect++;
                }
                break;
            }
            break;
        case ABILITYEFFECT_IMMUNITY: // 5
            for (battler = 0; battler < gBattlersCount; battler++)
            {
                switch (gBattleMons[battler].ability)
                {
                case ABILITY_IMMUNITY:
                    if (gBattleMons[battler].status1 & (STATUS1_POISON | STATUS1_TOXIC_POISON | STATUS1_TOXIC_COUNTER))
                    {
                        StringCopy(gBattleTextBuff1, gStatusConditionString_PoisonJpn);
                        effect = 1;
                    }
                    break;
                case ABILITY_OWN_TEMPO:
                    if (gBattleMons[battler].status2 & STATUS2_CONFUSION)
                    {
                        StringCopy(gBattleTextBuff1, gStatusConditionString_ConfusionJpn);
                        effect = 2;
                    }
                    break;
                case ABILITY_LIMBER:
                    if (gBattleMons[battler].status1 & STATUS1_PARALYSIS)
                    {
                        StringCopy(gBattleTextBuff1, gStatusConditionString_ParalysisJpn);
                        effect = 1;
                    }
                    break;
                case ABILITY_INSOMNIA:
                    if (gBattleMons[battler].status1 & STATUS1_SLEEP)
                    {
                        gBattleMons[battler].status2 &= ~STATUS2_NIGHTMARE;
                        StringCopy(gBattleTextBuff1, gStatusConditionString_SleepJpn);
                        effect = 1;
                    }
                    break;
                case ABILITY_WATER_VEIL:
                    if (gBattleMons[battler].status1 & STATUS1_BURN)
                    {
                        StringCopy(gBattleTextBuff1, gStatusConditionString_BurnJpn);
                        effect = 1;
                    }
                    break;
                case ABILITY_MAGMA_ARMOR:
                    if (gBattleMons[battler].status1 & STATUS1_FREEZE)
                    {
                        StringCopy(gBattleTextBuff1, gStatusConditionString_IceJpn);
                        effect = 1;
                    }
                    break;
                case ABILITY_OBLIVIOUS:
                case ABILITY_HEARTBROKEN:
                    if (gBattleMons[battler].status2 & STATUS2_INFATUATION)
                    {
                        StringCopy(gBattleTextBuff1, gStatusConditionString_LoveJpn);
                        effect = 3;
                    }
                    break;
                }
                if (effect != 0)
                {
                    switch (effect)
                    {
                    case 1: // status cleared
                        gBattleMons[battler].status1 = 0;
                        break;
                    case 2: // get rid of confusion
                        gBattleMons[battler].status2 &= ~STATUS2_CONFUSION;
                        break;
                    case 3: // get rid of infatuation
                        gBattleMons[battler].status2 &= ~STATUS2_INFATUATION;
                        break;
                    }

                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_AbilityCuredStatus;
                    gBattleScripting.battler = battler;
                    gActiveBattler = battler;
                    BtlController_EmitSetMonData(B_COMM_TO_CONTROLLER, REQUEST_STATUS_BATTLE, 0, 4, &gBattleMons[gActiveBattler].status1);
                    MarkBattlerForControllerExec(gActiveBattler);
                    return effect;
                }
            }
            break;
        case ABILITYEFFECT_FORECAST: // 6
            for (battler = 0; battler < gBattlersCount; battler++)
            {
                if (gBattleMons[battler].ability == ABILITY_FORECAST)
                {
                    effect = CastformDataTypeChange(battler);
                    if (effect != 0)
                    {
                        BattleScriptPushCursorAndCallback(BattleScript_CastformChange);
                        gBattleScripting.battler = battler;
                        *(&gBattleStruct->formToChangeInto) = effect - 1;
                        return effect;
                    }
                }
            }
            break;
        case ABILITYEFFECT_SYNCHRONIZE: // 7
            if (gLastUsedAbility == ABILITY_SYNCHRONIZE && (gHitMarker & HITMARKER_SYNCHRONISE_EFFECT))
            {
                gHitMarker &= ~HITMARKER_SYNCHRONISE_EFFECT;
                gBattleStruct->synchronizeMoveEffect &= ~(MOVE_EFFECT_AFFECTS_USER | MOVE_EFFECT_CERTAIN);
                if (gBattleStruct->synchronizeMoveEffect == MOVE_EFFECT_TOXIC)
                    gBattleStruct->synchronizeMoveEffect = MOVE_EFFECT_POISON;

                gBattleCommunication[MOVE_EFFECT_BYTE] = gBattleStruct->synchronizeMoveEffect + MOVE_EFFECT_AFFECTS_USER;
                gBattleScripting.battler = gBattlerTarget;
                BattleScriptPushCursor();
                gBattlescriptCurrInstr = BattleScript_SynchronizeActivates;
                gHitMarker |= HITMARKER_STATUS_ABILITY_EFFECT;
                effect++;
            }
            break;
        case ABILITYEFFECT_ATK_SYNCHRONIZE: // 8
            if (gLastUsedAbility == ABILITY_SYNCHRONIZE && (gHitMarker & HITMARKER_SYNCHRONISE_EFFECT))
            {
                gHitMarker &= ~HITMARKER_SYNCHRONISE_EFFECT;
                gBattleStruct->synchronizeMoveEffect &= ~(MOVE_EFFECT_AFFECTS_USER | MOVE_EFFECT_CERTAIN);
                if (gBattleStruct->synchronizeMoveEffect == MOVE_EFFECT_TOXIC)
                    gBattleStruct->synchronizeMoveEffect = MOVE_EFFECT_POISON;

                gBattleCommunication[MOVE_EFFECT_BYTE] = gBattleStruct->synchronizeMoveEffect;
                gBattleScripting.battler = gBattlerAttacker;
                BattleScriptPushCursor();
                gBattlescriptCurrInstr = BattleScript_SynchronizeActivates;
                gHitMarker |= HITMARKER_STATUS_ABILITY_EFFECT;
                effect++;
            }
            break;
        case ABILITYEFFECT_INTIMIDATE1: // 9
            for (i = 0; i < gBattlersCount; i++)
            {
                if ((gBattleMons[i].ability == ABILITY_INTIMIDATE || gBattleMons[i].ability == ABILITY_FIRST_SIGHT
                  || gBattleMons[i].ability == ABILITY_ILLUMINATE)
                 && gStatuses3[i] & STATUS3_INTIMIDATE_POKES)
                {
                    gLastUsedAbility = gBattleMons[i].ability;
                    gStatuses3[i] &= ~STATUS3_INTIMIDATE_POKES;
                    if (gLastUsedAbility == ABILITY_FIRST_SIGHT)
                        BattleScriptPushCursorAndCallback(BattleScript_FirstSightActivatesEnd3);
                    else if (gLastUsedAbility == ABILITY_ILLUMINATE)
                        BattleScriptPushCursorAndCallback(BattleScript_IlluminateActivatesEnd3);
                    else
                        BattleScriptPushCursorAndCallback(BattleScript_IntimidateActivatesEnd3);
                    gBattleStruct->intimidateBattler = i;
                    effect++;
                    break;
                }
            }
            break;
        case ABILITYEFFECT_TRACE: // 11
            for (i = 0; i < gBattlersCount; i++)
            {
                if (gBattleMons[i].ability == ABILITY_TRACE && (gStatuses3[i] & STATUS3_TRACE))
                {
                    u8 target2;
                    side = BATTLE_OPPOSITE(GetBattlerPosition(i)) & BIT_SIDE; // side of the opposing Pokémon
                    target1 = GetBattlerAtPosition(side);
                    target2 = GetBattlerAtPosition(side + BIT_FLANK);
                    if (gBattleTypeFlags & BATTLE_TYPE_DOUBLE)
                    {
                        if (gBattleMons[target1].ability != ABILITY_NONE && gBattleMons[target1].hp != 0
                         && gBattleMons[target2].ability != ABILITY_NONE && gBattleMons[target2].hp != 0)
                        {
                            gActiveBattler = GetBattlerAtPosition(((Random() & 1) * 2) | side);
                            gBattleMons[i].ability = gBattleMons[gActiveBattler].ability;
                            gLastUsedAbility = gBattleMons[gActiveBattler].ability;
                            effect++;
                        }
                        else if (gBattleMons[target1].ability != ABILITY_NONE && gBattleMons[target1].hp != 0)
                        {
                            gActiveBattler = target1;
                            gBattleMons[i].ability = gBattleMons[gActiveBattler].ability;
                            gLastUsedAbility = gBattleMons[gActiveBattler].ability;
                            effect++;
                        }
                        else if (gBattleMons[target2].ability != ABILITY_NONE && gBattleMons[target2].hp != 0)
                        {
                            gActiveBattler = target2;
                            gBattleMons[i].ability = gBattleMons[gActiveBattler].ability;
                            gLastUsedAbility = gBattleMons[gActiveBattler].ability;
                            effect++;
                        }
                    }
                    else
                    {
                        gActiveBattler = target1;
                        if (gBattleMons[target1].ability && gBattleMons[target1].hp)
                        {
                            gBattleMons[i].ability = gBattleMons[target1].ability;
                            gLastUsedAbility = gBattleMons[target1].ability;
                            effect++;
                        }
                    }
                    if (effect != 0)
                    {
                        BattleScriptPushCursorAndCallback(BattleScript_TraceActivates);
                        gStatuses3[i] &= ~STATUS3_TRACE;
                        gBattleScripting.battler = i;

                        PREPARE_MON_NICK_WITH_PREFIX_BUFFER(gBattleTextBuff1, gActiveBattler, gBattlerPartyIndexes[gActiveBattler])
                        PREPARE_ABILITY_BUFFER(gBattleTextBuff2, gLastUsedAbility)
                        break;
                    }
                }
            }
            break;
        case ABILITYEFFECT_INTIMIDATE2: // 10
            for (i = 0; i < gBattlersCount; i++)
            {
                if ((gBattleMons[i].ability == ABILITY_INTIMIDATE || gBattleMons[i].ability == ABILITY_FIRST_SIGHT
                  || gBattleMons[i].ability == ABILITY_ILLUMINATE)
                 && (gStatuses3[i] & STATUS3_INTIMIDATE_POKES))
                {
                    gLastUsedAbility = gBattleMons[i].ability;
                    gStatuses3[i] &= ~STATUS3_INTIMIDATE_POKES;
                    BattleScriptPushCursor();
                    if (gLastUsedAbility == ABILITY_FIRST_SIGHT)
                        gBattlescriptCurrInstr = BattleScript_FirstSightActivates;
                    else if (gLastUsedAbility == ABILITY_ILLUMINATE)
                        gBattlescriptCurrInstr = BattleScript_IlluminateActivates;
                    else
                        gBattlescriptCurrInstr = BattleScript_IntimidateActivates;
                    gBattleStruct->intimidateBattler = i;
                    effect++;
                    break;
                }
            }
            break;
        case ABILITYEFFECT_CHECK_OTHER_SIDE: // 12
            side = GetBattlerSide(battler);
            for (i = 0; i < gBattlersCount; i++)
            {
                if (GetBattlerSide(i) != side && gBattleMons[i].ability == ability)
                {
                    gLastUsedAbility = ability;
                    effect = i + 1;
                }
            }
            break;
        case ABILITYEFFECT_CHECK_BATTLER_SIDE: // 13
            side = GetBattlerSide(battler);
            for (i = 0; i < gBattlersCount; i++)
            {
                if (GetBattlerSide(i) == side && gBattleMons[i].ability == ability)
                {
                    gLastUsedAbility = ability;
                    effect = i + 1;
                }
            }
            break;
        case ABILITYEFFECT_FIELD_SPORT: // 14
            switch (gLastUsedAbility)
            {
            case ABILITYEFFECT_MUD_SPORT:
                for (i = 0; i < gBattlersCount; i++)
                {
                    if (gStatuses3[i] & STATUS3_MUDSPORT)
                        effect = i + 1;
                }
                break;
            case ABILITYEFFECT_WATER_SPORT:
                for (i = 0; i < gBattlersCount; i++)
                {
                    if (gStatuses3[i] & STATUS3_WATERSPORT)
                        effect = i + 1;
                }
                break;
            default:
                for (i = 0; i < gBattlersCount; i++)
                {
                    if (gBattleMons[i].ability == ability)
                    {
                        gLastUsedAbility = ability;
                        effect = i + 1;
                    }
                }
                break;
            }
            break;
        case ABILITYEFFECT_CHECK_ON_FIELD: // 19
            for (i = 0; i < gBattlersCount; i++)
            {
                if (gBattleMons[i].ability == ability && gBattleMons[i].hp != 0)
                {
                    gLastUsedAbility = ability;
                    effect = i + 1;
                }
            }
            break;
        case ABILITYEFFECT_CHECK_FIELD_EXCEPT_BATTLER: // 15
            for (i = 0; i < gBattlersCount; i++)
            {
                if (gBattleMons[i].ability == ability && i != battler)
                {
                    gLastUsedAbility = ability;
                    effect = i + 1;
                }
            }
            break;
        case ABILITYEFFECT_COUNT_OTHER_SIDE: // 16
            side = GetBattlerSide(battler);
            for (i = 0; i < gBattlersCount; i++)
            {
                if (GetBattlerSide(i) != side && gBattleMons[i].ability == ability)
                {
                    gLastUsedAbility = ability;
                    effect++;
                }
            }
            break;
        case ABILITYEFFECT_COUNT_BATTLER_SIDE: // 17
            side = GetBattlerSide(battler);
            for (i = 0; i < gBattlersCount; i++)
            {
                if (GetBattlerSide(i) == side && gBattleMons[i].ability == ability)
                {
                    gLastUsedAbility = ability;
                    effect++;
                }
            }
            break;
        case ABILITYEFFECT_COUNT_ON_FIELD: // 18
            for (i = 0; i < gBattlersCount; i++)
            {
                if (gBattleMons[i].ability == ability && i != battler)
                {
                    gLastUsedAbility = ability;
                    effect++;
                }
            }
            break;
        }

        if (effect && caseID < ABILITYEFFECT_CHECK_OTHER_SIDE && gLastUsedAbility != 0xFF)
            RecordAbilityBattle(battler, gLastUsedAbility);
    }

    return effect;
}

void BattleScriptExecute(const u8 *BS_ptr)
{
    gBattlescriptCurrInstr = BS_ptr;
    gBattleResources->battleCallbackStack->function[gBattleResources->battleCallbackStack->size++] = gBattleMainFunc;
    gBattleMainFunc = RunBattleScriptCommands_PopCallbacksStack;
    gCurrentActionFuncId = 0;
}

void BattleScriptPushCursorAndCallback(const u8 *BS_ptr)
{
    BattleScriptPushCursor();
    gBattlescriptCurrInstr = BS_ptr;
    gBattleResources->battleCallbackStack->function[gBattleResources->battleCallbackStack->size++] = gBattleMainFunc;
    gBattleMainFunc = RunBattleScriptCommands;
}

enum
{
    ITEM_NO_EFFECT,
    ITEM_STATUS_CHANGE,
    ITEM_EFFECT_OTHER,
    ITEM_PP_CHANGE,
    ITEM_HP_CHANGE,
    ITEM_STATS_CHANGE,
};

#define TRY_EAT_CONFUSE_BERRY(flavor)                                                       \
    if (gBattleMons[battler].hp <= gBattleMons[battler].maxHP / 2 && !moveTurn)         \
    {                                                                                       \
        PREPARE_FLAVOR_BUFFER(gBattleTextBuff1, flavor);                                    \
        gBattleMoveDamage = (gBattleMons[battler].maxHP * battlerHoldEffectParam) / 100;  \
        if (gBattleMoveDamage == 0)                                                         \
            gBattleMoveDamage = 1;                                                          \
        if (gBattleMons[battler].hp + gBattleMoveDamage > gBattleMons[battler].maxHP)   \
            gBattleMoveDamage = gBattleMons[battler].maxHP - gBattleMons[battler].hp;   \
        gBattleMoveDamage *= -1;                                                            \
        if (GetFlavorRelationByPersonality(gBattleMons[battler].personality, flavor) < 0) \
            BattleScriptExecute(BattleScript_BerryConfuseHealEnd2);                         \
        else                                                                                \
            BattleScriptExecute(BattleScript_ItemHealHP_RemoveItem);                        \
        effect = ITEM_HP_CHANGE;                                                            \
    }

#define TRY_EAT_STAT_UP_BERRY(stat)                                                         \
    if (gBattleMons[battler].hp <= gBattleMons[battler].maxHP / battlerHoldEffectParam  \
    && !moveTurn && gBattleMons[battler].statStages[stat] < MAX_STAT_STAGE)               \
    {                                                                                       \
        PREPARE_STAT_BUFFER(gBattleTextBuff1, stat);                                        \
        gEffectBattler = battler;                                                         \
        SET_STATCHANGER(stat, 2, FALSE);                                                    \
        gBattleScripting.animArg1 = STAT_ANIM_PLUS2 + (stat);                               \
        gBattleScripting.animArg2 = 0;                                                      \
        BattleScriptExecute(BattleScript_BerryStatRaiseEnd2);                               \
        effect = ITEM_STATS_CHANGE;                                                         \
    }

// Air Balloon: its holder floats, like Levitate, until it's hit and the balloon pops
bool32 IsBattlerFloatingOnAirBalloon(u8 battler)
{
    return GetItemHoldEffect(gBattleMons[battler].item) == HOLD_EFFECT_AIR_BALLOON;
}

// EX moves (see data/ex_battle_scripts.s)

struct ExMoveUpgrade
{
    u16 move;
    u16 upgrade;
};

extern const struct ExMove gExMoves[];
extern const struct ExMoveUpgrade gExMoveUpgrades[];

// Pokémon with these abilities can always use the EX moves in the ability's list, like an EX form's
// .exMoves (see data/pokemon/ex_forms.h). Each list ends with MOVE_NONE. For example:
//     static const u16 sSwiftSwimExMoves[] = { MOVE_WATERFALL, MOVE_SURF, MOVE_NONE };
//     ...
//     { ABILITY_SWIFT_SWIM, .exMoves = sSwiftSwimExMoves },
// An ability with .allExMoves = TRUE can use every EX move instead, so it needs no list
static const struct
{
    u8 ability;
    bool8 allExMoves;
    const u16 *exMoves;
} sExMoveAbilities[] =
{
    { ABILITY_WISHMAKER, .allExMoves = TRUE },
    { ABILITY_NONE }, // End of list, keep this last
};

// Each species' EX moves, its own EX versions of moves, or every EX move (see data/pokemon/ex_species_moves.h)
#define MAX_SPECIES_EX_MOVES 3

struct SpeciesExMoves
{
    u16 exMoves[MAX_SPECIES_EX_MOVES]; // MOVE_NONE for an empty slot
    bool8 allExMoves;
    const struct ExMove *exVersions;
};

#include "data/pokemon/ex_species_moves.h"

static const struct SpeciesExMoves *GetBattlerSpeciesExMoves(u8 battler)
{
    u16 species = gBattleMons[battler].species;

    return species < NUM_SPECIES ? &sSpeciesExMoves[species] : NULL;
}

// The battler's species' own EX version of the move (.exVersions in ex_species_moves.h), or NULL
const struct ExMove *GetSpeciesExMove(u8 battler, u16 move)
{
    const struct SpeciesExMoves *speciesExMoves = GetBattlerSpeciesExMoves(battler);
    u32 i;

    if (speciesExMoves == NULL || speciesExMoves->exVersions == NULL)
        return NULL;
    for (i = 0; speciesExMoves->exVersions[i].move != MOVE_NONE; i++)
    {
        if (speciesExMoves->exVersions[i].move == move)
            return &speciesExMoves->exVersions[i];
    }
    return NULL;
}

// The move's own EX version for everyone (gExMoves in data/ex_battle_scripts.s), or NULL
const struct ExMove *GetExMove(u16 move)
{
    u32 i;

    for (i = 0; gExMoves[i].move != MOVE_NONE; i++)
    {
        if (gExMoves[i].move == move)
            return &gExMoves[i];
    }
    return NULL;
}

bool32 IsExMove(u16 move)
{
    return GetExMove(move) != NULL;
}

// The stronger move this one becomes when used as an EX move, or MOVE_NONE.
// A move with its own EX script uses that instead
u16 GetExMoveUpgrade(u16 move)
{
    u32 i;

    if (IsExMove(move))
        return MOVE_NONE;
    for (i = 0; gExMoveUpgrades[i].move != MOVE_NONE; i++)
    {
        if (gExMoveUpgrades[i].move == move)
            return gExMoveUpgrades[i].upgrade;
    }
    return MOVE_NONE;
}

// The move whose targeting the battler's move has when used as an EX move: the move it becomes, if it's an EX upgrade
// for the battler (a species' own EX version comes first, see HandleAction_UseMove), otherwise the move itself
u16 GetExMoveTargetingMove(u8 battler, u16 move)
{
    u16 upgrade;

    if (GetSpeciesExMove(battler, move) != NULL)
        return move;
    upgrade = GetExMoveUpgrade(move);
    return (upgrade != MOVE_NONE) ? upgrade : move;
}

// EX bonuses, which mostly status moves get before their regular effect (see gExMoveBonuses in data/ex_battle_scripts.s)

struct ExMoveBonus
{
    u16 move;
    u8 bonus;  // EX_BONUS_*
    u8 stat;   // For EX_BONUS_STAT_UP
    u8 stages;
    u8 padding[3]; // agbcc pads structs to 4 bytes, so the exbonus macro emits 8 bytes per entry
};

STATIC_ASSERT(sizeof(struct ExMoveBonus) == 8, ExMoveBonusSize);

extern const struct ExMoveBonus gExMoveBonuses[];

static const u8 *const sExBonusScripts[] =
{
    [EX_BONUS_STAT_UP]          = BattleScript_ExBonusStatUp,
    [EX_BONUS_ALL_STATS_UP]     = BattleScript_ExBonusAllStatsUp,
    [EX_BONUS_RESET_STATS]      = BattleScript_ExBonusResetStats,
    [EX_BONUS_BOOST_CRITS]      = BattleScript_ExBonusBoostCrits,
    [EX_BONUS_FOLLOW_ME]        = BattleScript_ExBonusFollowMe,
    [EX_BONUS_CURSE]            = BattleScript_ExBonusCurse,
    [EX_BONUS_RECOVER_HP]       = BattleScript_ExBonusRecoverHp,
    [EX_BONUS_HEAL_REPLACEMENT] = BattleScript_ExBonusHealReplacement,
    [EX_BONUS_STATS_UP]         = BattleScript_ExBonusStatsUp,
    [EX_BONUS_FLINCH]           = BattleScript_ExBonusFlinch,
    [EX_BONUS_CURE_STATUS]      = BattleScript_ExBonusCureStatus,
    [EX_BONUS_DEEPER_SLEEP]     = BattleScript_ExBonusDeeperSleep,
    [EX_BONUS_TAUNT]            = BattleScript_ExBonusTaunt,
    [EX_BONUS_COPY_STATS]       = BattleScript_ExBonusCopyStats,
    [EX_BONUS_PROTECT]          = BattleScript_ExBonusProtect,
    [EX_BONUS_SWAP_STATS]       = BattleScript_ExBonusSwapStats,
};

// The current bonus's details, for its script
static EWRAM_DATA u8 sExBonusStatsLeft = 0;   // EX_BONUS_STATS_UP: BIT_* of the stats still to raise
static EWRAM_DATA u8 sExBonusStages = 0;      // EX_BONUS_STATS_UP: stages to raise each by
static EWRAM_DATA u8 sExBonusHealDivisor = 0; // EX_BONUS_RECOVER_HP: heals 1/this of max HP

// The move's EX bonus, or NULL. A move with an EX script or an EX upgrade uses that instead
static const struct ExMoveBonus *GetExMoveBonus(u16 move)
{
    u32 i;

    if (IsExMove(move) || GetExMoveUpgrade(move) != MOVE_NONE)
        return NULL;
    for (i = 0; gExMoveBonuses[i].move != MOVE_NONE; i++)
    {
        if (gExMoveBonuses[i].move == move)
            return &gExMoveBonuses[i];
    }
    return NULL;
}

// What the move's own script may have set before its attackstring, which a bonus would overwrite
static EWRAM_DATA struct
{
    s32 moveDamage;
    u8 statChanger;
    u8 animArg1;
    u8 animArg2;
    bool8 statAnimPlayed;
    u8 multistringChooser;
    u8 effectBattler;
    bool8 ignoreSubstitute;
    u8 textBuff1[TEXT_BUFF_ARRAY_COUNT];
    u8 textBuff2[TEXT_BUFF_ARRAY_COUNT];
} sExBonusSavedState = {0};

// Called by attackstring. If the move is getting an EX bonus, runs its bonus script and returns TRUE.
// The bonus script then returns to the move's script after its attackstring
bool32 TryStartExMoveBonus(void)
{
    const struct ExMoveBonus *bonus;

    if (!gBattleExBonusPending)
        return FALSE;
    gBattleExBonusPending = FALSE;
    bonus = GetExMoveBonus(gChosenMove);
    if (bonus == NULL || bonus->bonus >= ARRAY_COUNT(sExBonusScripts))
        return FALSE;

    sExBonusSavedState.moveDamage = gBattleMoveDamage;
    sExBonusSavedState.statChanger = gBattleScripting.statChanger;
    sExBonusSavedState.animArg1 = gBattleScripting.animArg1;
    sExBonusSavedState.animArg2 = gBattleScripting.animArg2;
    sExBonusSavedState.statAnimPlayed = gBattleScripting.statAnimPlayed;
    sExBonusSavedState.multistringChooser = gBattleCommunication[MULTISTRING_CHOOSER];
    sExBonusSavedState.effectBattler = gEffectBattler;
    sExBonusSavedState.ignoreSubstitute = (gHitMarker & HITMARKER_IGNORE_SUBSTITUTE) != 0;
    memcpy(sExBonusSavedState.textBuff1, gBattleTextBuff1, TEXT_BUFF_ARRAY_COUNT);
    memcpy(sExBonusSavedState.textBuff2, gBattleTextBuff2, TEXT_BUFF_ARRAY_COUNT);

    if (bonus->bonus == EX_BONUS_STAT_UP)
        SET_STATCHANGER(bonus->stat, bonus->stages, FALSE);
    sExBonusStatsLeft = bonus->stat;
    sExBonusStages = bonus->stages;
    sExBonusHealDivisor = (bonus->bonus == EX_BONUS_RECOVER_HP && bonus->stages != 0) ? bonus->stages : 2;
    BattleScriptPushCursor();
    gBattlescriptCurrInstr = sExBonusScripts[bonus->bonus];
    return TRUE;
}

// EX_BONUS_STATS_UP: sets the stat raise animation for the stats that can still rise, like playstatchangeanimation
// (more than one uses the same animation as raising all stats). Returns FALSE if none can rise
bool32 SetExBonusStatsUpAnim(u8 battler)
{
    u32 stat, count = 0;
    u16 animId = 0;

    for (stat = STAT_ATK; stat < NUM_BATTLE_STATS; stat++)
    {
        if (sExBonusStatsLeft & (1 << stat) && gBattleMons[battler].statStages[stat] < MAX_STAT_STAGE)
        {
            animId = (sExBonusStages >= 2 ? STAT_ANIM_PLUS2 : STAT_ANIM_PLUS1) + stat;
            count++;
        }
    }
    if (count > 1)
        animId = (sExBonusStages >= 2) ? STAT_ANIM_MULTIPLE_PLUS2 : STAT_ANIM_MULTIPLE_PLUS1;
    gBattleScripting.animArg1 = animId;
    gBattleScripting.animArg2 = 0;
    return count != 0;
}

// Fiesta: the stages each stat still has to rise from the Berry just eaten
static EWRAM_DATA u8 sFiestaStages[NUM_BATTLE_STATS] = {0};

// A flavor's stat stages: 10 for +1, 20 for +2, 40 for +3
static u8 GetFiestaFlavorStages(u8 flavor)
{
    if (flavor >= 40)
        return 3;
    if (flavor >= 20)
        return 2;
    if (flavor >= 10)
        return 1;
    return 0;
}

// Fiesta: gets the stat raises for eating this Berry ready for SetNextFiestaStat, and sets the
// stat-up animation. Spicy raises Attack, Dry Sp. Atk, Sweet Speed, Bitter Sp. Def and Sour Defense.
// Returns FALSE if it wouldn't raise anything (no flavor, or those stats are maxed)
bool32 TryStartFiesta(u8 battler, u16 item)
{
    const struct Berry *berry;
    u32 stat, count = 0, maxStages = 0;
    u16 animId = 0;

    if (item < FIRST_BERRY_INDEX || item > LAST_BERRY_INDEX)
        return FALSE;

    berry = GetBerryInfo(ItemIdToBerryType(item));
    memset(sFiestaStages, 0, sizeof(sFiestaStages));
    sFiestaStages[STAT_ATK] = GetFiestaFlavorStages(berry->spicy);
    sFiestaStages[STAT_SPATK] = GetFiestaFlavorStages(berry->dry);
    sFiestaStages[STAT_SPEED] = GetFiestaFlavorStages(berry->sweet);
    sFiestaStages[STAT_SPDEF] = GetFiestaFlavorStages(berry->bitter);
    sFiestaStages[STAT_DEF] = GetFiestaFlavorStages(berry->sour);

    for (stat = STAT_ATK; stat < NUM_BATTLE_STATS; stat++)
    {
        if (sFiestaStages[stat] == 0 || gBattleMons[battler].statStages[stat] >= MAX_STAT_STAGE)
        {
            sFiestaStages[stat] = 0;
            continue;
        }
        animId = (sFiestaStages[stat] >= 2 ? STAT_ANIM_PLUS2 : STAT_ANIM_PLUS1) + stat;
        maxStages = max(maxStages, sFiestaStages[stat]);
        count++;
    }
    if (count > 1)
        animId = (maxStages >= 2) ? STAT_ANIM_MULTIPLE_PLUS2 : STAT_ANIM_MULTIPLE_PLUS1;
    gBattleScripting.animArg1 = animId;
    gBattleScripting.animArg2 = 0;
    return count != 0;
}

// Fiesta: raises the next stat and buffers its name. Returns FALSE once they're all done
bool32 SetNextFiestaStat(u8 battler)
{
    u32 stat;

    for (stat = STAT_ATK; stat < NUM_BATTLE_STATS; stat++)
    {
        if (sFiestaStages[stat] != 0)
        {
            gBattleMons[battler].statStages[stat] = min(gBattleMons[battler].statStages[stat] + sFiestaStages[stat], MAX_STAT_STAGE);
            sFiestaStages[stat] = 0;
            PREPARE_STAT_BUFFER(gBattleTextBuff1, stat);
            return TRUE;
        }
    }
    return FALSE;
}

// EX_BONUS_STATS_UP: sets the stat change for the next stat to raise. Returns FALSE once they're all done
bool32 SetNextExBonusStat(void)
{
    u32 stat;

    for (stat = STAT_ATK; stat < NUM_BATTLE_STATS; stat++)
    {
        if (sExBonusStatsLeft & (1 << stat))
        {
            sExBonusStatsLeft &= ~(1 << stat);
            SET_STATCHANGER(stat, sExBonusStages, FALSE);
            return TRUE;
        }
    }
    return FALSE;
}

// EX_BONUS_RECOVER_HP: sets the damage to heal the battler by its share of max HP. Returns FALSE if it's already at full HP
bool32 SetExBonusHealDamage(u8 battler)
{
    s32 heal = gBattleMons[battler].maxHP / sExBonusHealDivisor;

    if (heal == 0)
        heal = 1;
    if (heal > gBattleMons[battler].maxHP - gBattleMons[battler].hp)
        heal = gBattleMons[battler].maxHP - gBattleMons[battler].hp;
    gBattleMoveDamage = -heal;
    return heal > 0;
}

// Called at the end of a bonus script, before going back to the move's own script
void RestoreExMoveBonusState(void)
{
    gBattleMoveDamage = sExBonusSavedState.moveDamage;
    gBattleScripting.statChanger = sExBonusSavedState.statChanger;
    gBattleScripting.animArg1 = sExBonusSavedState.animArg1;
    gBattleScripting.animArg2 = sExBonusSavedState.animArg2;
    gBattleScripting.statAnimPlayed = sExBonusSavedState.statAnimPlayed;
    gBattleCommunication[MULTISTRING_CHOOSER] = sExBonusSavedState.multistringChooser;
    gEffectBattler = sExBonusSavedState.effectBattler;
    if (sExBonusSavedState.ignoreSubstitute)
        gHitMarker |= HITMARKER_IGNORE_SUBSTITUTE;
    else
        gHitMarker &= ~HITMARKER_IGNORE_SUBSTITUTE;
    memcpy(gBattleTextBuff1, sExBonusSavedState.textBuff1, TEXT_BUFF_ARRAY_COUNT);
    memcpy(gBattleTextBuff2, sExBonusSavedState.textBuff2, TEXT_BUFF_ARRAY_COUNT);
}

bool32 HasExMoveBonus(u16 move)
{
    return GetExMoveBonus(move) != NULL;
}

// Whether the move does something extra as an EX move: its own EX script, an upgrade, or a bonus
bool32 HasExMoveEffect(u16 move)
{
    return IsExMove(move) || GetExMoveUpgrade(move) != MOVE_NONE || GetExMoveBonus(move) != NULL;
}

// Whether a damaging move with no EX script, upgrade, or bonus can still be used as an EX move, just for the
// EX damage boost. Not moves whose damage skips damagecalc, as the boost would do nothing, or two-turn moves,
// as only the turn they're chosen on is an EX move, so the boost would miss the turn they hit
static bool32 CanMoveGetDefaultExBoost(u16 move)
{
    if (gBattleMoves[move].power == 0)
        return FALSE;
    switch (gBattleMoves[move].effect)
    {
    case EFFECT_FIXED_DAMAGE:
    case EFFECT_LEVEL_DAMAGE:
    case EFFECT_PSYWAVE:
    case EFFECT_SUPER_FANG:
    case EFFECT_ENDEAVOR:
    case EFFECT_OHKO:
    case EFFECT_COUNTER:
    case EFFECT_MIRROR_COAT:
    case EFFECT_BIDE:
    case EFFECT_FUTURE_SIGHT:
    case EFFECT_RAZOR_WIND:
    case EFFECT_SKY_ATTACK:
    case EFFECT_SKULL_BASH:
    case EFFECT_SOLAR_BEAM:
    case EFFECT_SEMI_INVULNERABLE:
        return FALSE;
    }
    return TRUE;
}

// Whether the move has an EX version: its own EX script, an upgrade, a bonus, or just the EX damage boost
bool32 CanMoveBeUsedAsEx(u16 move)
{
    return HasExMoveEffect(move) || CanMoveGetDefaultExBoost(move);
}

// Holding a crystal gives access to the EX moves of its types
#define MAX_CRYSTAL_TYPES 3

static const struct
{
    u16 item;
    u8 numTypes;
    u8 types[MAX_CRYSTAL_TYPES];
} sExMoveCrystals[] =
{
    { ITEM_STAR_CRYSTAL,  3, { TYPE_NORMAL, TYPE_FLYING, TYPE_SOUND } },
    { ITEM_AQUA_CRYSTAL,  3, { TYPE_WATER, TYPE_ICE, TYPE_DRAGON } },
    { ITEM_LAND_CRYSTAL,  3, { TYPE_BUG, TYPE_GRASS, TYPE_DRAGON } },
    { ITEM_FLARE_CRYSTAL, 2, { TYPE_FIRE, TYPE_DRAGON } },
    { ITEM_VOLT_CRYSTAL,  2, { TYPE_ELECTRIC, TYPE_DRAGON } },
    { ITEM_POWER_CRYSTAL, 3, { TYPE_ROCK, TYPE_GROUND, TYPE_FIGHTING } },
    { ITEM_MIND_CRYSTAL,  3, { TYPE_PSYCHIC, TYPE_GHOST, TYPE_ASTRAL } },
    { ITEM_SHADE_CRYSTAL, 2, { TYPE_DARK, TYPE_POISON } },
    { ITEM_METAL_CRYSTAL, 2, { TYPE_STEEL, TYPE_BLADE } },
};

// Whether the battler's held crystal covers the move's type, or its held contest scarf the move's contest category
static bool32 DoesHeldItemAllowExMove(u8 battler, u16 move)
{
    u32 i, j;

    if (DoesScarfMatchMoveContestCategory(gBattleMons[battler].item, move))
        return TRUE;

    for (i = 0; i < ARRAY_COUNT(sExMoveCrystals); i++)
    {
        if (sExMoveCrystals[i].item != gBattleMons[battler].item)
            continue;
        for (j = 0; j < sExMoveCrystals[i].numTypes; j++)
        {
            if (sExMoveCrystals[i].types[j] == gBattleMoves[move].type)
                return TRUE;
        }
        return FALSE;
    }
    return FALSE;
}

// Whether the move is in a list of EX moves ending with MOVE_NONE. A NULL list has none
static bool32 IsMoveInExMoveList(const u16 *exMoves, u16 move)
{
    u32 i;

    if (exMoves == NULL)
        return FALSE;
    for (i = 0; exMoves[i] != MOVE_NONE; i++)
    {
        if (exMoves[i] == move)
            return TRUE;
    }
    return FALSE;
}

// Whether the battler is in an EX form with the move in its .exMoves list (see data/pokemon/ex_forms.h)
static bool32 DoesExFormAllowExMove(u8 battler, u16 move)
{
    struct Pokemon *mon = GetBattlerPartyMon(battler);

    // Not while transformed into something else
    if (!IsMonEx(mon) || GetMonData(mon, MON_DATA_SPECIES, NULL) != gBattleMons[battler].species)
        return FALSE;
    return IsMoveInExMoveList(GetSpeciesExFormInfo(gBattleMons[battler].species)->exMoves, move);
}

// Whether the battler's ability is in sExMoveAbilities with .allExMoves, or with the move in its list
static bool32 DoesAbilityAllowExMove(u8 battler, u16 move)
{
    u32 i;

    for (i = 0; sExMoveAbilities[i].ability != ABILITY_NONE; i++)
    {
        if (sExMoveAbilities[i].ability == gBattleMons[battler].ability)
            return sExMoveAbilities[i].allExMoves || IsMoveInExMoveList(sExMoveAbilities[i].exMoves, move);
    }
    return FALSE;
}

// Whether the battler's species has .allExMoves, or the move in its .exMoves or .exVersions (see ex_species_moves.h).
// Like an ability, a Pokémon transformed into the species gets them too
static bool32 DoesSpeciesAllowExMove(u8 battler, u16 move)
{
    const struct SpeciesExMoves *speciesExMoves = GetBattlerSpeciesExMoves(battler);
    u32 i;

    if (speciesExMoves == NULL)
        return FALSE;
    if (speciesExMoves->allExMoves || GetSpeciesExMove(battler, move) != NULL)
        return TRUE;
    for (i = 0; i < MAX_SPECIES_EX_MOVES; i++)
    {
        if (speciesExMoves->exMoves[i] != MOVE_NONE && speciesExMoves->exMoves[i] == move)
            return TRUE;
    }
    return FALSE;
}

// Whether the move does something extra when this battler uses it as an EX move, including its species' own EX version
bool32 BattlerHasExMoveEffect(u8 battler, u16 move)
{
    return GetSpeciesExMove(battler, move) != NULL || HasExMoveEffect(move);
}

// Whether the battler can use this move as an EX move. Each of these gives access to some EX moves,
// and they stack: its EX form (.exMoves), its ability (sExMoveAbilities, where Wishmaker gives every
// EX move), its species (data/pokemon/ex_species_moves.h), its held crystal's types (sExMoveCrystals), and
// its held contest scarf's contest category
bool32 CanBattlerUseExMove(u8 battler, u16 move)
{
    if (GetSpeciesExMove(battler, move) != NULL)
        return TRUE;
    if (!CanMoveBeUsedAsEx(move))
        return FALSE;
    return DoesExFormAllowExMove(battler, move)
        || DoesAbilityAllowExMove(battler, move)
        || DoesSpeciesAllowExMove(battler, move)
        || DoesHeldItemAllowExMove(battler, move);
}

// For each battler's locked EX move slot, the other slots it has used since locking it
static EWRAM_DATA u8 sExMoveUnlockProgress[MAX_BATTLERS_COUNT][MAX_MON_MOVES] = {0};

// The battler's move slots with a move in them, other than this one
static u32 GetOtherMoveSlots(u8 battler, u8 slot)
{
    u32 i, otherMoves = 0;

    for (i = 0; i < MAX_MON_MOVES; i++)
    {
        if (i != slot && gBattleMons[battler].moves[i] != MOVE_NONE)
            otherMoves |= gBitTable[i];
    }
    return otherMoves;
}

// Called by ppreduce when the battler spends PP on the move in this slot. Using a move as an EX move locks
// that slot's EX version (see gExMoveUsedSlots). It unlocks once each of the battler's other moves has been
// used since. A battler with no other moves has nothing to use, so it never locks. Switching out or KOing an
// opponent also unlocks them all
void UpdateExMoveLocks(u8 battler, u8 slot, bool32 usedAsEx)
{
    u32 i, otherMoves;

    for (i = 0; i < MAX_MON_MOVES; i++)
    {
        if (!(gExMoveUsedSlots[battler] & gBitTable[i]))
            continue;
        if (i != slot)
            sExMoveUnlockProgress[battler][i] |= gBitTable[slot];
        otherMoves = GetOtherMoveSlots(battler, i);
        if ((sExMoveUnlockProgress[battler][i] & otherMoves) == otherMoves)
            gExMoveUsedSlots[battler] &= ~gBitTable[i];
    }

    if (usedAsEx && GetOtherMoveSlots(battler, slot) != 0)
    {
        gExMoveUsedSlots[battler] |= gBitTable[slot];
        sExMoveUnlockProgress[battler][slot] = 0;
    }
}

// Whether the battler's current move is an EX move that only its held crystal or scarf allowed.
// The item's power goes into the EX move, so it doesn't roll its usual on-hit effect that turn
static bool32 IsExMoveFromHeldItem(u8 battler)
{
    u16 move = gChosenMoveByBattler[battler];

    return gBattleMoveIsEx
        && DoesHeldItemAllowExMove(battler, move)
        && !DoesExFormAllowExMove(battler, move)
        && !DoesAbilityAllowExMove(battler, move)
        && !DoesSpeciesAllowExMove(battler, move);
}

// Whether a hit of this type will do no damage to the battler, as it chose to use an EX_FLAG_COUNTER_SHIELD move this turn
// (EX Counter or EX Mirror Coat) that will counter it. These move last, so this shields it before they're used.
// The damage is still recorded for them to return. Only if the battler will be able to use it: it'll be used as an
// EX move, and the battler isn't asleep, frozen or flinched. (Full paralysis or confusion can't be known yet)
bool32 IsShieldedByExCounter(u8 battler, u8 moveType)
{
    u16 move = gChosenMoveByBattler[battler];
    u8 movePos = gBattleStruct->chosenMovePositions[battler];
    const struct ExMove *exMove;

    if (!(gExMoveChosenBits & gBitTable[battler])
     || gChosenActionByBattler[battler] != B_ACTION_USE_MOVE
     || gBattleMons[battler].moves[movePos] != move
     || gBattleMons[battler].pp[movePos] < 2
     || (gExMoveUsedSlots[battler] & gBitTable[movePos])
     || !CanBattlerUseExMove(battler, move))
        return FALSE;

    exMove = GetSpeciesExMove(battler, move);
    if (exMove == NULL)
        exMove = GetExMove(move);
    if (exMove == NULL || !(exMove->flags & EX_FLAG_COUNTER_SHIELD))
        return FALSE;

    if ((gBattleMons[battler].status1 & (STATUS1_SLEEP | STATUS1_FREEZE))
     || (gBattleMons[battler].status2 & STATUS2_FLINCHED))
        return FALSE;

    switch (gBattleMoves[move].effect)
    {
    case EFFECT_COUNTER:
        return IS_TYPE_PHYSICAL(moveType);
    case EFFECT_MIRROR_COAT:
        return IS_TYPE_SPECIAL(moveType);
    default:
        return FALSE;
    }
}

// A popped Air Balloon or Bubble Coat is gone for good, like a consumed berry, so the
// party mon's held item is cleared too, not just the battle copy
void PopBattlerHeldItem(u8 battler)
{
    u8 savedActiveBattler = gActiveBattler;

    gBattleStruct->usedHeldItems[battler] = gBattleMons[battler].item; // So Recycle can restore it
    gBattleMons[battler].item = ITEM_NONE;
    gActiveBattler = battler;
    BtlController_EmitSetMonData(B_COMM_TO_CONTROLLER, REQUEST_HELDITEM_BATTLE, 0, sizeof(gBattleMons[battler].item), &gBattleMons[battler].item);
    MarkBattlerForControllerExec(battler);
    gActiveBattler = savedActiveBattler;
}

static bool32 IsSingleStatusCureHoldEffect(u8 holdEffect)
{
    switch (holdEffect)
    {
    case HOLD_EFFECT_CURE_PAR:
    case HOLD_EFFECT_CURE_PSN:
    case HOLD_EFFECT_CURE_BRN:
    case HOLD_EFFECT_CURE_FRZ:
    case HOLD_EFFECT_CURE_SLP:
    case HOLD_EFFECT_CURE_CONFUSION:
        return TRUE;
    default:
        return FALSE;
    }
}

// Most status-curing berries were buffed to also restore HP when used outside battle (see
// gItemEffectTable). Held in battle, they restore the same amount as they're eaten, in
// BattleScript_BerryCureHeal. Sets gBattleMoveDamage to the (negative) amount, or 0 for none.
// Lum Berry doesn't heal.
static void PrepareBerryCureHeal(u8 battler, u16 item)
{
    const u8 *itemEffect;
    s32 heal = 0;

    if (item >= FIRST_BERRY_INDEX && item < ITEM_ENIGMA_BERRY && item != ITEM_LUM_BERRY)
    {
        itemEffect = gItemEffectTable[item - ITEM_POTION];
        if (itemEffect != NULL && (itemEffect[4] & ITEM4_HEAL_HP))
            heal = itemEffect[6];
    }

    if (heal > gBattleMons[battler].maxHP - gBattleMons[battler].hp)
        heal = gBattleMons[battler].maxHP - gBattleMons[battler].hp;
    gBattleMoveDamage = -heal;
}

// Pressure keeps foes from eating their berries
static bool8 IsBerryBlockedByPressure(u8 battler)
{
    u32 i;

    if (GetItemPocket(gBattleMons[battler].item) != POCKET_BERRIES)
        return FALSE;
    for (i = 0; i < gBattlersCount; i++)
    {
        if (GetBattlerSide(i) != GetBattlerSide(battler)
         && gBattleMons[i].ability == ABILITY_PRESSURE && gBattleMons[i].hp != 0)
            return TRUE;
    }
    return FALSE;
}

u8 ItemBattleEffects(u8 caseID, u8 battler, bool8 moveTurn)
{
    int i = 0;
    u8 effect = ITEM_NO_EFFECT;
    u8 changedPP = 0;
    u8 battlerHoldEffect, atkHoldEffect, UNUSED defHoldEffect;
    u8 battlerHoldEffectParam, atkHoldEffectParam, UNUSED defHoldEffectParam;
    u16 atkItem, defItem;

    gLastUsedItem = gBattleMons[battler].item;
    if (gLastUsedItem == ITEM_ENIGMA_BERRY)
    {
        battlerHoldEffect = gEnigmaBerries[battler].holdEffect;
        battlerHoldEffectParam = gEnigmaBerries[battler].holdEffectParam;
    }
    else
    {
        battlerHoldEffect = GetItemHoldEffect(gLastUsedItem);
        battlerHoldEffectParam = GetItemHoldEffectParam(gLastUsedItem);
    }
    if (IsBerryBlockedByPressure(battler))
        battlerHoldEffect = HOLD_EFFECT_NONE;

    atkItem = gBattleMons[gBattlerAttacker].item;
    if (atkItem == ITEM_ENIGMA_BERRY)
    {
        atkHoldEffect = gEnigmaBerries[gBattlerAttacker].holdEffect;
        atkHoldEffectParam = gEnigmaBerries[gBattlerAttacker].holdEffectParam;
    }
    else
    {
        atkHoldEffect = GetItemHoldEffect(atkItem);
        atkHoldEffectParam = GetItemHoldEffectParam(atkItem);
    }

    // def variables are unused
    defItem = gBattleMons[gBattlerTarget].item;
    if (defItem == ITEM_ENIGMA_BERRY)
    {
        defHoldEffect = gEnigmaBerries[gBattlerTarget].holdEffect;
        defHoldEffectParam = gEnigmaBerries[gBattlerTarget].holdEffectParam;
    }
    else
    {
        defHoldEffect = GetItemHoldEffect(defItem);
        defHoldEffectParam = GetItemHoldEffectParam(defItem);
    }

    switch (caseID)
    {
    case ITEMEFFECT_ON_SWITCH_IN:
        switch (battlerHoldEffect)
        {
        case HOLD_EFFECT_DOUBLE_PRIZE:
            if (GetBattlerSide(battler) == B_SIDE_PLAYER)
                gBattleStruct->moneyMultiplier = 2;
            break;
        case HOLD_EFFECT_SOLID_RAGE:
            // Once per switch-in, since the switch-in effects run again after this script
            if (!gDisableStructs[battler].solidRageActivated)
            {
                gDisableStructs[battler].solidRageActivated = TRUE;
                for (i = 0; i < ARRAY_COUNT(sSolidRageStats); i++)
                {
                    gBattleMons[battler].statStages[sSolidRageStats[i]] += SOLID_RAGE_STAGES;
                    if (gBattleMons[battler].statStages[sSolidRageStats[i]] > MAX_STAT_STAGE)
                        gBattleMons[battler].statStages[sSolidRageStats[i]] = MAX_STAT_STAGE;
                }
                // A Perish count it already has (like one passed on by Baton Pass) keeps going
                if (!(gStatuses3[battler] & STATUS3_PERISH_SONG))
                {
                    gStatuses3[battler] |= STATUS3_PERISH_SONG;
                    gDisableStructs[battler].perishSongTimer = 3;
                    gDisableStructs[battler].perishSongTimerStartValue = 3;
                }
                gBattleScripting.battler = battler;
                gBattleScripting.animArg1 = STAT_ANIM_MULTIPLE_PLUS2;
                gBattleScripting.animArg2 = 0;
                gLastUsedItem = gBattleMons[battler].item;
                BattleScriptExecute(BattleScript_SolidRageActivates);
                effect = ITEM_EFFECT_OTHER;
            }
            break;
        case HOLD_EFFECT_AIR_BALLOON:
            // Once per switch-in, since the switch-in effects run again after this script
            if (!gDisableStructs[battler].airBalloonAnnounced)
            {
                gDisableStructs[battler].airBalloonAnnounced = TRUE;
                gBattleScripting.battler = battler;
                gLastUsedItem = gBattleMons[battler].item;
                BattleScriptExecute(BattleScript_AirBalloonFloats);
                effect = ITEM_EFFECT_OTHER;
            }
            break;
        case HOLD_EFFECT_RESTORE_STATS:
            for (i = 0; i < NUM_BATTLE_STATS; i++)
            {
                if (gBattleMons[battler].statStages[i] < DEFAULT_STAT_STAGE)
                {
                    gBattleMons[battler].statStages[i] = DEFAULT_STAT_STAGE;
                    effect = ITEM_STATS_CHANGE;
                }
            }
            if (effect != 0)
            {
                gBattleScripting.battler = battler;
                gPotentialItemEffectBattler = battler;
                gActiveBattler = gBattlerAttacker = battler;
                BattleScriptExecute(BattleScript_WhiteHerbEnd2);
            }
            break;
        }
        break;
    case ITEMEFFECT_NORMAL:
        if (gBattleMons[battler].hp)
        {
            switch (battlerHoldEffect)
            {
            case HOLD_EFFECT_RESTORE_HP:
                if (gBattleMons[battler].hp <= gBattleMons[battler].maxHP / 2 && !moveTurn)
                {
                    gBattleMoveDamage = battlerHoldEffectParam;
                    if (gBattleMons[battler].hp + battlerHoldEffectParam > gBattleMons[battler].maxHP)
                        gBattleMoveDamage = gBattleMons[battler].maxHP - gBattleMons[battler].hp;
                    gBattleMoveDamage *= -1;
                    BattleScriptExecute(BattleScript_ItemHealHP_RemoveItem);
                    effect = ITEM_HP_CHANGE;
                }
                break;
            case HOLD_EFFECT_RESTORE_PCT_HP:
                if (gBattleMons[battler].hp <= gBattleMons[battler].maxHP / 2 && !moveTurn)
                {
                    gBattleMoveDamage = (gBattleMons[battler].maxHP * battlerHoldEffectParam) / 100;
                    if (gBattleMons[battler].hp + gBattleMoveDamage > gBattleMons[battler].maxHP)
                        gBattleMoveDamage = gBattleMons[battler].maxHP - gBattleMons[battler].hp;
                    gBattleMoveDamage *= -1;
                    BattleScriptExecute(BattleScript_ItemHealHP_RemoveItem);
                    effect = ITEM_HP_CHANGE;
                }
                break;
            case HOLD_EFFECT_RESTORE_PP:
                if (!moveTurn)
                {
                    struct Pokemon *mon;
                    u8 ppBonuses;
                    u16 move;

                    if (GetBattlerSide(battler) == B_SIDE_PLAYER)
                        mon = &gPlayerParty[gBattlerPartyIndexes[battler]];
                    else
                        mon = &gEnemyParty[gBattlerPartyIndexes[battler]];
                    for (i = 0; i < MAX_MON_MOVES; i++)
                    {
                        move = GetMonData(mon, MON_DATA_MOVE1 + i);
                        changedPP = GetMonData(mon, MON_DATA_PP1 + i);
                        ppBonuses = GetMonData(mon, MON_DATA_PP_BONUSES);
                        if (move && changedPP == 0)
                            break;
                    }
                    if (i != MAX_MON_MOVES)
                    {
                        u8 maxPP = CalculatePPWithBonus(move, ppBonuses, i);
                        if (changedPP + battlerHoldEffectParam > maxPP)
                            changedPP = maxPP;
                        else
                            changedPP = changedPP + battlerHoldEffectParam;

                        PREPARE_MOVE_BUFFER(gBattleTextBuff1, move);

                        BattleScriptExecute(BattleScript_BerryPPHealEnd2);
                        BtlController_EmitSetMonData(B_COMM_TO_CONTROLLER, i + REQUEST_PPMOVE1_BATTLE, 0, 1, &changedPP);
                        MarkBattlerForControllerExec(gActiveBattler);
                        effect = ITEM_PP_CHANGE;
                    }
                }
                break;
            case HOLD_EFFECT_RESTORE_STATS:
                for (i = 0; i < NUM_BATTLE_STATS; i++)
                {
                    if (gBattleMons[battler].statStages[i] < DEFAULT_STAT_STAGE)
                    {
                        gBattleMons[battler].statStages[i] = DEFAULT_STAT_STAGE;
                        effect = ITEM_STATS_CHANGE;
                    }
                }
                if (effect != 0)
                {
                    gBattleScripting.battler = battler;
                    gPotentialItemEffectBattler = battler;
                    gActiveBattler = gBattlerAttacker = battler;
                    BattleScriptExecute(BattleScript_WhiteHerbEnd2);
                }
                break;
            case HOLD_EFFECT_LEFTOVERS:
                if (gBattleMons[battler].hp < gBattleMons[battler].maxHP && !moveTurn)
                {
                    gBattleMoveDamage = gBattleMons[battler].maxHP / 16;
                    if (gBattleMoveDamage == 0)
                        gBattleMoveDamage = 1;
                    if (gBattleMons[battler].hp + gBattleMoveDamage > gBattleMons[battler].maxHP)
                        gBattleMoveDamage = gBattleMons[battler].maxHP - gBattleMons[battler].hp;
                    gBattleMoveDamage *= -1;
                    BattleScriptExecute(BattleScript_ItemHealHP_End2);
                    effect = ITEM_HP_CHANGE;
                    RecordItemEffectBattle(battler, battlerHoldEffect);
                }
                break;
    // orbs. hopefully they work, because they were having a weird issue with saying hte opponent got the status.
            case HOLD_EFFECT_FLAME_ORB:
             if (!(gBattleMons[battler].status1 & STATUS1_ANY) && !moveTurn) // only if it has no status already
                {
                    gBattleMons[battler].status1 = STATUS1_BURN;
                    BattleScriptExecute(BattleScript_FlameOrb);
                    effect = ITEM_STATUS_CHANGE;
                    RecordItemEffectBattle(battler, battlerHoldEffect);
                }
                break;
            case HOLD_EFFECT_TOXIC_ORB:
             // Only if it has no status already. Checking for exactly STATUS1_TOXIC_POISON re-poisoned it every turn,
             // since the Toxic counter bits made it not match, which reset the counter each turn
             if (!(gBattleMons[battler].status1 & STATUS1_ANY) && !moveTurn)
                {
                    gBattleMons[battler].status1 = STATUS1_TOXIC_POISON;
                    BattleScriptExecute(BattleScript_ToxicOrb);
                    effect = ITEM_STATUS_CHANGE;
                    RecordItemEffectBattle(battler, battlerHoldEffect);
                }
                break;
            case HOLD_EFFECT_CONFUSE_SPICY:
                TRY_EAT_CONFUSE_BERRY(FLAVOR_SPICY);
                break;
            case HOLD_EFFECT_CONFUSE_DRY:
                TRY_EAT_CONFUSE_BERRY(FLAVOR_DRY);
                break;
            case HOLD_EFFECT_CONFUSE_SWEET:
                TRY_EAT_CONFUSE_BERRY(FLAVOR_SWEET);
                break;
            case HOLD_EFFECT_CONFUSE_BITTER:
                TRY_EAT_CONFUSE_BERRY(FLAVOR_BITTER);
                break;
            case HOLD_EFFECT_CONFUSE_SOUR:
                TRY_EAT_CONFUSE_BERRY(FLAVOR_SOUR);
                break;
            case HOLD_EFFECT_ATTACK_UP:
                if (gBattleMons[battler].hp <= gBattleMons[battler].maxHP / battlerHoldEffectParam
                && !moveTurn && gBattleMons[battler].statStages[STAT_ATK] < MAX_STAT_STAGE)
                {
                    PREPARE_STAT_BUFFER(gBattleTextBuff1, STAT_ATK);
                    PREPARE_STRING_BUFFER(gBattleTextBuff2, STRINGID_STATROSE); // Only the Attack stat-up berry has this
                    gEffectBattler = battler;
                    SET_STATCHANGER(STAT_ATK, 2, FALSE);
                    gBattleScripting.animArg1 = STAT_ANIM_PLUS2 + STAT_ATK;
                    gBattleScripting.animArg2 = 0;
                    BattleScriptExecute(BattleScript_BerryStatRaiseEnd2);
                    effect = ITEM_STATS_CHANGE;
                }
                break;
            case HOLD_EFFECT_DEFENSE_UP:
                TRY_EAT_STAT_UP_BERRY(STAT_DEF);
                break;
            case HOLD_EFFECT_SPEED_UP:
                TRY_EAT_STAT_UP_BERRY(STAT_SPEED);
                break;
            case HOLD_EFFECT_SP_ATTACK_UP:
                TRY_EAT_STAT_UP_BERRY(STAT_SPATK);
                break;
            case HOLD_EFFECT_SP_DEFENSE_UP:
                TRY_EAT_STAT_UP_BERRY(STAT_SPDEF);
                break;
            case HOLD_EFFECT_CRITICAL_UP:
                if (gBattleMons[battler].hp <= gBattleMons[battler].maxHP / battlerHoldEffectParam && !moveTurn
                    && !(gBattleMons[battler].status2 & STATUS2_FOCUS_ENERGY))
                {
                    gBattleMons[battler].status2 |= STATUS2_FOCUS_ENERGY;
                    BattleScriptExecute(BattleScript_BerryFocusEnergyEnd2);
                    effect = ITEM_EFFECT_OTHER;
                }
                break;
            case HOLD_EFFECT_RANDOM_STAT_UP:
                if (!moveTurn && gBattleMons[battler].hp <= gBattleMons[battler].maxHP / battlerHoldEffectParam)
                {
                    for (i = 0; i < NUM_STATS - 1; i++)
                    {
                        if (gBattleMons[battler].statStages[STAT_ATK + i] < MAX_STAT_STAGE)
                            break;
                    }
                    if (i != NUM_STATS - 1)
                    {
                        do
                        {
                            i = Random() % (NUM_STATS - 1);
                        } while (gBattleMons[battler].statStages[STAT_ATK + i] == MAX_STAT_STAGE);

                        PREPARE_STAT_BUFFER(gBattleTextBuff1, i + 1);

                        gBattleTextBuff2[0] = B_BUFF_PLACEHOLDER_BEGIN;
                        gBattleTextBuff2[1] = B_BUFF_STRING;
                        gBattleTextBuff2[2] = STRINGID_STATSHARPLY;
                        gBattleTextBuff2[3] = STRINGID_STATSHARPLY >> 8;
                        gBattleTextBuff2[4] = B_BUFF_STRING;
                        gBattleTextBuff2[5] = STRINGID_STATROSE;
                        gBattleTextBuff2[6] = STRINGID_STATROSE >> 8;
                        gBattleTextBuff2[7] = EOS;

                        gEffectBattler = battler;
                        SET_STATCHANGER(i + 1, 6, FALSE);
                        gBattleScripting.animArg1 = STAT_ANIM_PLUS2 + (i + 1);
                        gBattleScripting.animArg2 = 0;
                        BattleScriptExecute(BattleScript_BerryStatRaiseEnd2);
                        effect = ITEM_STATS_CHANGE;
                    }
                }
                break;
            case HOLD_EFFECT_CURE_PAR:
                if (gBattleMons[battler].status1 & STATUS1_PARALYSIS)
                {
                    gBattleMons[battler].status1 &= ~STATUS1_PARALYSIS;
                    BattleScriptExecute(BattleScript_BerryCurePrlzEnd2);
                    effect = ITEM_STATUS_CHANGE;
                }
                break;
            case HOLD_EFFECT_CURE_PSN:
                if (gBattleMons[battler].status1 & STATUS1_PSN_ANY)
                {
                    gBattleMons[battler].status1 &= ~(STATUS1_PSN_ANY | STATUS1_TOXIC_COUNTER);
                    BattleScriptExecute(BattleScript_BerryCurePsnEnd2);
                    effect = ITEM_STATUS_CHANGE;
                }
                break;
            case HOLD_EFFECT_CURE_BRN:
                if (gBattleMons[battler].status1 & STATUS1_BURN)
                {
                    gBattleMons[battler].status1 &= ~STATUS1_BURN;
                    BattleScriptExecute(BattleScript_BerryCureBrnEnd2);
                    effect = ITEM_STATUS_CHANGE;
                }
                if (gBattleMons[battler].status1 & STATUS1_IGNITE)
                {
                    gBattleMons[battler].status1 &= ~STATUS1_IGNITE;
                    BattleScriptExecute(BattleScript_BerryCureBrnEnd2);
                    effect = ITEM_STATUS_CHANGE;
                }
                break;
            case HOLD_EFFECT_CURE_FRZ:
                if (gBattleMons[battler].status1 & STATUS1_FREEZE)
                {
                    gBattleMons[battler].status1 &= ~STATUS1_FREEZE;
                    BattleScriptExecute(BattleScript_BerryCureFrzEnd2);
                    effect = ITEM_STATUS_CHANGE;
                }
                break;
            case HOLD_EFFECT_CURE_SLP:
                if (gBattleMons[battler].status1 & STATUS1_SLEEP)
                {
                    gBattleMons[battler].status1 &= ~STATUS1_SLEEP;
                    gBattleMons[battler].status2 &= ~STATUS2_NIGHTMARE;
                    BattleScriptExecute(BattleScript_BerryCureSlpEnd2);
                    effect = ITEM_STATUS_CHANGE;
                }
                break;
            case HOLD_EFFECT_CURE_CONFUSION:
                if (gBattleMons[battler].status2 & STATUS2_CONFUSION)
                {
                    gBattleMons[battler].status2 &= ~STATUS2_CONFUSION;
                    BattleScriptExecute(BattleScript_BerryCureConfusionEnd2);
                    effect = ITEM_EFFECT_OTHER;
                }
                break;
            case HOLD_EFFECT_CURE_STATUS:
                if (gBattleMons[battler].status1 & STATUS1_ANY || gBattleMons[battler].status2 & STATUS2_CONFUSION)
                {
                    i = 0;
                    if (gBattleMons[battler].status1 & STATUS1_PSN_ANY)
                    {
                        StringCopy(gBattleTextBuff1, gStatusConditionString_PoisonJpn);
                        i++;
                    }
                    if (gBattleMons[battler].status1 & STATUS1_SLEEP)
                    {
                        gBattleMons[battler].status2 &= ~STATUS2_NIGHTMARE;
                        StringCopy(gBattleTextBuff1, gStatusConditionString_SleepJpn);
                        i++;
                    }
                    if (gBattleMons[battler].status1 & STATUS1_PARALYSIS)
                    {
                        StringCopy(gBattleTextBuff1, gStatusConditionString_ParalysisJpn);
                        i++;
                    }
                    if (gBattleMons[battler].status1 & STATUS1_BURN)
                    {
                        StringCopy(gBattleTextBuff1, gStatusConditionString_BurnJpn);
                        i++;
                    }
                    if (gBattleMons[battler].status1 & STATUS1_FREEZE)
                    {
                        StringCopy(gBattleTextBuff1, gStatusConditionString_IceJpn);
                        i++;
                    }
                    if (gBattleMons[battler].status2 & STATUS2_CONFUSION)
                    {
                        StringCopy(gBattleTextBuff1, gStatusConditionString_ConfusionJpn);
                        i++;
                    }
                    if (gBattleMons[battler].status1 & STATUS1_IGNITE)
                    {
                        StringCopy(gBattleTextBuff1, gStatusConditionString_BurnJpn);
                        i++;
                    }
                    if (i <= 1)
                        gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_CURED_PROBLEM;
                    else
                        gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_NORMALIZED_STATUS;
                    gBattleMons[battler].status1 = 0;
                    gBattleMons[battler].status2 &= ~STATUS2_CONFUSION;
                    BattleScriptExecute(BattleScript_BerryCureChosenStatusEnd2);
                    effect = ITEM_STATUS_CHANGE;
                }
                break;
            case HOLD_EFFECT_CURE_ATTRACT:
                if (gBattleMons[battler].status2 & STATUS2_INFATUATION)
                {
                    gBattleMons[battler].status2 &= ~STATUS2_INFATUATION;
                    StringCopy(gBattleTextBuff1, gStatusConditionString_LoveJpn);
                    BattleScriptExecute(BattleScript_BerryCureChosenStatusEnd2);
                    gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_CURED_PROBLEM;
                    effect = ITEM_EFFECT_OTHER;
                }
                break;
            }
            if (effect != 0)
            {
                gBattleScripting.battler = battler;
                gPotentialItemEffectBattler = battler;
                gActiveBattler = gBattlerAttacker = battler;
                if (IsSingleStatusCureHoldEffect(battlerHoldEffect))
                    PrepareBerryCureHeal(battler, gBattleMons[battler].item);
                switch (effect)
                {
                case ITEM_STATUS_CHANGE:
                    BtlController_EmitSetMonData(B_COMM_TO_CONTROLLER, REQUEST_STATUS_BATTLE, 0, 4, &gBattleMons[battler].status1);
                    MarkBattlerForControllerExec(gActiveBattler);
                    break;
                case ITEM_PP_CHANGE:
                    if (MOVE_IS_PERMANENT(battler, i))
                        gBattleMons[battler].pp[i] = changedPP;
                    break;
                }
            }
        }
        break;
    case ITEMEFFECT_DUMMY:
        break;
    case ITEMEFFECT_MOVE_END:
        for (battler = 0; battler < gBattlersCount; battler++)
        {
            gLastUsedItem = gBattleMons[battler].item;
            if (gBattleMons[battler].item == ITEM_ENIGMA_BERRY)
            {
                battlerHoldEffect = gEnigmaBerries[battler].holdEffect;
                battlerHoldEffectParam = gEnigmaBerries[battler].holdEffectParam;
            }
            else
            {
                battlerHoldEffect = GetItemHoldEffect(gLastUsedItem);
                battlerHoldEffectParam = GetItemHoldEffectParam(gLastUsedItem);
            }
            if (IsBerryBlockedByPressure(battler))
                battlerHoldEffect = HOLD_EFFECT_NONE;
            switch (battlerHoldEffect)
            {
            case HOLD_EFFECT_CURE_PAR:
                if (gBattleMons[battler].status1 & STATUS1_PARALYSIS)
                {
                    gBattleMons[battler].status1 &= ~STATUS1_PARALYSIS;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_BerryCureParRet;
                    effect = ITEM_STATUS_CHANGE;
                }
                break;
            case HOLD_EFFECT_CURE_PSN:
                if (gBattleMons[battler].status1 & STATUS1_PSN_ANY)
                {
                    gBattleMons[battler].status1 &= ~(STATUS1_PSN_ANY | STATUS1_TOXIC_COUNTER);
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_BerryCurePsnRet;
                    effect = ITEM_STATUS_CHANGE;
                }
                break;
            case HOLD_EFFECT_CURE_BRN:
                if (gBattleMons[battler].status1 & STATUS1_BURN)
                {
                    gBattleMons[battler].status1 &= ~STATUS1_BURN;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_BerryCureBrnRet;
                    effect = ITEM_STATUS_CHANGE;
                }
                break;
            case HOLD_EFFECT_CURE_FRZ:
                if (gBattleMons[battler].status1 & STATUS1_FREEZE)
                {
                    gBattleMons[battler].status1 &= ~STATUS1_FREEZE;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_BerryCureFrzRet;
                    effect = ITEM_STATUS_CHANGE;
                }
                break;
            case HOLD_EFFECT_CURE_SLP:
                if (gBattleMons[battler].status1 & STATUS1_SLEEP)
                {
                    gBattleMons[battler].status1 &= ~STATUS1_SLEEP;
                    gBattleMons[battler].status2 &= ~STATUS2_NIGHTMARE;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_BerryCureSlpRet;
                    effect = ITEM_STATUS_CHANGE;
                }
                break;
            case HOLD_EFFECT_CURE_CONFUSION:
                if (gBattleMons[battler].status2 & STATUS2_CONFUSION)
                {
                    gBattleMons[battler].status2 &= ~STATUS2_CONFUSION;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_BerryCureConfusionRet;
                    effect = ITEM_EFFECT_OTHER;
                }
                break;
            case HOLD_EFFECT_CURE_ATTRACT:
                if (gBattleMons[battler].status2 & STATUS2_INFATUATION)
                {
                    gBattleMons[battler].status2 &= ~STATUS2_INFATUATION;
                    StringCopy(gBattleTextBuff1, gStatusConditionString_LoveJpn);
                    BattleScriptPushCursor();
                    gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_CURED_PROBLEM;
                    gBattlescriptCurrInstr = BattleScript_BerryCureChosenStatusRet;
                    effect = ITEM_EFFECT_OTHER;
                }
                break;
            case HOLD_EFFECT_CURE_STATUS:
                if (gBattleMons[battler].status1 & STATUS1_ANY || gBattleMons[battler].status2 & STATUS2_CONFUSION)
                {
                    if (gBattleMons[battler].status1 & STATUS1_PSN_ANY)
                        StringCopy(gBattleTextBuff1, gStatusConditionString_PoisonJpn);

                    if (gBattleMons[battler].status1 & STATUS1_SLEEP)
                    {
                        gBattleMons[battler].status2 &= ~STATUS2_NIGHTMARE;
                        StringCopy(gBattleTextBuff1, gStatusConditionString_SleepJpn);
                    }

                    if (gBattleMons[battler].status1 & STATUS1_PARALYSIS)
                        StringCopy(gBattleTextBuff1, gStatusConditionString_ParalysisJpn);

                    if (gBattleMons[battler].status1 & STATUS1_BURN)
                        StringCopy(gBattleTextBuff1, gStatusConditionString_BurnJpn);

                    if (gBattleMons[battler].status1 & STATUS1_FREEZE)
                        StringCopy(gBattleTextBuff1, gStatusConditionString_IceJpn);

                    if (gBattleMons[battler].status2 & STATUS2_CONFUSION)
                        StringCopy(gBattleTextBuff1, gStatusConditionString_ConfusionJpn);

                    if (gBattleMons[battler].status1 & STATUS1_IGNITE)
                        StringCopy(gBattleTextBuff1, gStatusConditionString_BurnJpn);

                    gBattleMons[battler].status1 = 0;
                    gBattleMons[battler].status2 &= ~STATUS2_CONFUSION;
                    BattleScriptPushCursor();
                    gBattleCommunication[MULTISTRING_CHOOSER] = B_MSG_CURED_PROBLEM;
                    gBattlescriptCurrInstr = BattleScript_BerryCureChosenStatusRet;
                    effect = ITEM_STATUS_CHANGE;
                }
                break;
            case HOLD_EFFECT_RESTORE_STATS:
                for (i = 0; i < NUM_BATTLE_STATS; i++)
                {
                    if (gBattleMons[battler].statStages[i] < DEFAULT_STAT_STAGE)
                    {
                        gBattleMons[battler].statStages[i] = DEFAULT_STAT_STAGE;
                        effect = ITEM_STATS_CHANGE;
                    }
                }
                if (effect != 0)
                {
                    gBattleScripting.battler = battler;
                    gPotentialItemEffectBattler = battler;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_WhiteHerbRet;
                    return effect;
                }
                break;
            case HOLD_EFFECT_AIR_BALLOON:
            case HOLD_EFFECT_BUBBLE_COAT: // Only reaches here after an Electric, Steel, or Blade move pierces it
                // Pops when its holder is damaged by someone else's move, and is lost for good
                if (battler != gBattlerAttacker
                 && gBattleMons[battler].hp != 0
                 && (gSpecialStatuses[battler].physicalDmg || gSpecialStatuses[battler].specialDmg))
                {
                    PopBattlerHeldItem(battler);
                    gBattleScripting.battler = battler;
                    gPotentialItemEffectBattler = battler;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_AirBalloonPopped;
                    return ITEM_EFFECT_OTHER;
                }
                break;
            }
            if (effect != 0)
            {
                gBattleScripting.battler = battler;
                gPotentialItemEffectBattler = battler;
                gActiveBattler = battler;
                if (IsSingleStatusCureHoldEffect(battlerHoldEffect))
                    PrepareBerryCureHeal(battler, gBattleMons[battler].item);
                BtlController_EmitSetMonData(B_COMM_TO_CONTROLLER, REQUEST_STATUS_BATTLE, 0, 4, &gBattleMons[gActiveBattler].status1);
                MarkBattlerForControllerExec(gActiveBattler);
                break;
            }
        }
        break;
    case ITEMEFFECT_KINGSROCK_SHELLBELL:
        if (IsExMoveFromHeldItem(gBattlerAttacker))
            break;
        if (gBattleMoveDamage)
        {
            // Stench works like a 10% King's Rock (Gen 5+). It doesn't stack with a held King's Rock.
            if (gBattleMons[gBattlerAttacker].ability == ABILITY_STENCH
                && atkHoldEffect != HOLD_EFFECT_FLINCH
                && !(gMoveResultFlags & MOVE_RESULT_NO_EFFECT)
                && TARGET_TURN_DAMAGED
                && (Random() % 100) < 10
                && gBattleMoves[gCurrentMove].flags & FLAG_KINGS_ROCK_AFFECTED
                && gBattleMons[gBattlerTarget].hp)
            {
                gBattleCommunication[MOVE_EFFECT_BYTE] = MOVE_EFFECT_FLINCH;
                BattleScriptPushCursor();
                SetMoveEffect(FALSE, 0);
                BattleScriptPop();
            }

            switch (atkHoldEffect)
            {
            case HOLD_EFFECT_FLINCH:
                if (!(gMoveResultFlags & MOVE_RESULT_NO_EFFECT)
                    && TARGET_TURN_DAMAGED
                    && (Random() % 100) < atkHoldEffectParam
                    && gBattleMoves[gCurrentMove].flags & FLAG_KINGS_ROCK_AFFECTED
                    && gBattleMons[gBattlerTarget].hp)
                {
                    gBattleCommunication[MOVE_EFFECT_BYTE] = MOVE_EFFECT_FLINCH;
                    BattleScriptPushCursor();
                    SetMoveEffect(FALSE, 0);
                    BattleScriptPop();
                }
                break;
            case HOLD_EFFECT_BURN:
                if (!(gMoveResultFlags & MOVE_RESULT_NO_EFFECT)
                    && TARGET_TURN_DAMAGED
                    && (Random() % 100) < atkHoldEffectParam
                    && gBattleMoves[gCurrentMove].flags & FLAG_KINGS_ROCK_AFFECTED
                    && gBattleMons[gBattlerTarget].hp)
                {
                    gBattleCommunication[MOVE_EFFECT_BYTE] = MOVE_EFFECT_BURN;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_ApplySecondaryEffect;
                    effect++;
                }
                break;
            case HOLD_EFFECT_CONFUSE:
                if (!(gMoveResultFlags & MOVE_RESULT_NO_EFFECT)
                    && TARGET_TURN_DAMAGED
                    && (Random() % 100) < atkHoldEffectParam
                    && gBattleMoves[gCurrentMove].flags & FLAG_KINGS_ROCK_AFFECTED
                    && gBattleMons[gBattlerTarget].hp)
                {
                    gBattleCommunication[MOVE_EFFECT_BYTE] = MOVE_EFFECT_CONFUSION;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_ApplySecondaryEffect;
                    effect++;
                }
                break;
            case HOLD_EFFECT_POISON:
                if (!(gMoveResultFlags & MOVE_RESULT_NO_EFFECT)
                    && TARGET_TURN_DAMAGED
                    && (Random() % 100) < atkHoldEffectParam
                    && gBattleMoves[gCurrentMove].flags & FLAG_KINGS_ROCK_AFFECTED
                    && gBattleMons[gBattlerTarget].hp)
                {
                    gBattleCommunication[MOVE_EFFECT_BYTE] = MOVE_EFFECT_TOXIC;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_ApplySecondaryEffect;
                    effect++;
                }
                break;
            case HOLD_EFFECT_PARALYZE:
                if (!(gMoveResultFlags & MOVE_RESULT_NO_EFFECT)
                    && TARGET_TURN_DAMAGED
                    && (Random() % 100) < atkHoldEffectParam
                    && gBattleMoves[gCurrentMove].flags & FLAG_KINGS_ROCK_AFFECTED
                    && gBattleMons[gBattlerTarget].hp)
                {
                    gBattleCommunication[MOVE_EFFECT_BYTE] = MOVE_EFFECT_PARALYSIS;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_ApplySecondaryEffect;
                    effect++;
                }
                break;
            case HOLD_EFFECT_ATK_DOWN:
                if (!(gMoveResultFlags & MOVE_RESULT_NO_EFFECT)
                    && TARGET_TURN_DAMAGED
                    && (Random() % 100) < atkHoldEffectParam
                    && gBattleMoves[gCurrentMove].flags & FLAG_KINGS_ROCK_AFFECTED
                    && gBattleMons[gBattlerTarget].hp)
                {
                    gBattleCommunication[MOVE_EFFECT_BYTE] = MOVE_EFFECT_ATK_MINUS_1;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_ApplySecondaryEffect;
                    effect++;
                }
                break;
            case HOLD_EFFECT_DEF_DOWN:
                if (!(gMoveResultFlags & MOVE_RESULT_NO_EFFECT)
                    && TARGET_TURN_DAMAGED
                    && (Random() % 100) < atkHoldEffectParam
                    && gBattleMoves[gCurrentMove].flags & FLAG_KINGS_ROCK_AFFECTED
                    && gBattleMons[gBattlerTarget].hp)
                {
                    gBattleCommunication[MOVE_EFFECT_BYTE] = MOVE_EFFECT_DEF_MINUS_1;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_ApplySecondaryEffect;
                    effect++;
                }
                break;
            case HOLD_EFFECT_SP_ATK_DOWN:
                if (!(gMoveResultFlags & MOVE_RESULT_NO_EFFECT)
                    && TARGET_TURN_DAMAGED
                    && (Random() % 100) < atkHoldEffectParam
                    && gBattleMoves[gCurrentMove].flags & FLAG_KINGS_ROCK_AFFECTED
                    && gBattleMons[gBattlerTarget].hp)
                {
                    gBattleCommunication[MOVE_EFFECT_BYTE] = MOVE_EFFECT_SP_ATK_MINUS_1;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_ApplySecondaryEffect;
                    effect++;
                }
                break;
            case HOLD_EFFECT_SP_DEF_DOWN:
                if (!(gMoveResultFlags & MOVE_RESULT_NO_EFFECT)
                    && TARGET_TURN_DAMAGED
                    && (Random() % 100) < atkHoldEffectParam
                    && gBattleMoves[gCurrentMove].flags & FLAG_KINGS_ROCK_AFFECTED
                    && gBattleMons[gBattlerTarget].hp)
                {
                    gBattleCommunication[MOVE_EFFECT_BYTE] = MOVE_EFFECT_SP_DEF_MINUS_1;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_ApplySecondaryEffect;
                    effect++;
                }
                break;
            case HOLD_EFFECT_SPEED_DOWN:
                if (!(gMoveResultFlags & MOVE_RESULT_NO_EFFECT)
                    && TARGET_TURN_DAMAGED
                    && (Random() % 100) < atkHoldEffectParam
                    && gBattleMoves[gCurrentMove].flags & FLAG_KINGS_ROCK_AFFECTED
                    && gBattleMons[gBattlerTarget].hp)
                {
                    gBattleCommunication[MOVE_EFFECT_BYTE] = MOVE_EFFECT_SPD_MINUS_1;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_ApplySecondaryEffect;
                    effect++;
                }
                break;
            case HOLD_EFFECT_SHELL_BELL:
                if (!(gMoveResultFlags & MOVE_RESULT_NO_EFFECT)
                    && gSpecialStatuses[gBattlerTarget].shellBellDmg != 0
                    && gSpecialStatuses[gBattlerTarget].shellBellDmg != IGNORE_SHELL_BELL
                    && gBattlerAttacker != gBattlerTarget
                    && gBattleMons[gBattlerAttacker].hp != gBattleMons[gBattlerAttacker].maxHP
                    && gBattleMons[gBattlerAttacker].hp != 0)
                {
                    gLastUsedItem = atkItem;
                    gPotentialItemEffectBattler = gBattlerAttacker;
                    gBattleScripting.battler = gBattlerAttacker;
                    gBattleMoveDamage = (gSpecialStatuses[gBattlerTarget].shellBellDmg / atkHoldEffectParam) * -1;
                    if (gBattleMoveDamage == 0)
                        gBattleMoveDamage = -1;
                    gSpecialStatuses[gBattlerTarget].shellBellDmg = 0;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_ItemHealHP_Ret;
                    effect++;
                }
                break;
            case HOLD_EFFECT_LIFE_ORB:
                // Recoil is 1/10 max HP, taken once per move even if it hit multiple times or targets
                if (!(gMoveResultFlags & MOVE_RESULT_NO_EFFECT)
                    && TARGET_TURN_DAMAGED
                    && !gSpecialStatuses[gBattlerAttacker].lifeOrbRecoiled
                    && gBattlerAttacker != gBattlerTarget
                    && gBattleMons[gBattlerAttacker].hp != 0
                    && gBattleMons[gBattlerAttacker].ability != ABILITY_MAGIC_GUARD)
                {
                    gSpecialStatuses[gBattlerAttacker].lifeOrbRecoiled = TRUE;
                    gLastUsedItem = atkItem;
                    gPotentialItemEffectBattler = gBattlerAttacker;
                    gBattleScripting.battler = gBattlerAttacker;
                    gBattleMoveDamage = gBattleMons[gBattlerAttacker].maxHP / 10;
                    if (gBattleMoveDamage == 0)
                        gBattleMoveDamage = 1;
                    BattleScriptPushCursor();
                    gBattlescriptCurrInstr = BattleScript_LifeOrbRecoilRet;
                    effect++;
                }
                break;
            }
        }
        break;
    }

    return effect;
}

void ClearFuryCutterDestinyBondGrudge(u8 battler)
{
    gDisableStructs[battler].furyCutterCounter = 0;
    gBattleMons[battler].status2 &= ~STATUS2_DESTINY_BOND;
    gStatuses3[battler] &= ~STATUS3_GRUDGE;
}

void HandleAction_RunBattleScript(void) // identical to RunBattleScriptCommands
{
    if (gBattleControllerExecFlags == 0)
        gBattleScriptingCommandsTable[*gBattlescriptCurrInstr]();
}

u8 GetMoveTarget(u16 move, u8 setTarget)
{
    u8 targetBattler = 0;
    u8 moveTarget;
    u8 side;

    if (setTarget != NO_TARGET_OVERRIDE)
        moveTarget = setTarget - 1;
    else
        moveTarget = gBattleMoves[move].target;

    switch (moveTarget)
    {
    case MOVE_TARGET_SELECTED:
        side = BATTLE_OPPOSITE(GetBattlerSide(gBattlerAttacker));
        if (gSideTimers[side].followmeTimer && gBattleMons[gSideTimers[side].followmeTarget].hp)
        {
            targetBattler = gSideTimers[side].followmeTarget;
        }
        else
        {
            side = GetBattlerSide(gBattlerAttacker);
            do
            {
                targetBattler = Random() % gBattlersCount;
            } while (targetBattler == gBattlerAttacker || side == GetBattlerSide(targetBattler) || gAbsentBattlerFlags & gBitTable[targetBattler]);
            if (GetRedirectAbility(gBattleMoves[move].type) != ABILITY_NONE
                && AbilityBattleEffects(ABILITYEFFECT_COUNT_OTHER_SIDE, gBattlerAttacker, GetRedirectAbility(gBattleMoves[move].type), 0, 0)
                && gBattleMons[targetBattler].ability != GetRedirectAbility(gBattleMoves[move].type))
            {
                targetBattler ^= BIT_FLANK;
                RecordAbilityBattle(targetBattler, gBattleMons[targetBattler].ability);
                gSpecialStatuses[targetBattler].lightningRodRedirected = 1;
            }
        }
        break;
    case MOVE_TARGET_DEPENDS:
    case MOVE_TARGET_BOTH:
    case MOVE_TARGET_FOES_AND_ALLY:
    case MOVE_TARGET_OPPONENTS_FIELD:
        targetBattler = GetBattlerAtPosition(BATTLE_OPPOSITE(GET_BATTLER_SIDE(gBattlerAttacker)));
        if (gAbsentBattlerFlags & gBitTable[targetBattler])
            targetBattler ^= BIT_FLANK;
        break;
    case MOVE_TARGET_RANDOM:
        side = BATTLE_OPPOSITE(GetBattlerSide(gBattlerAttacker));
        if (gSideTimers[side].followmeTimer && gBattleMons[gSideTimers[side].followmeTarget].hp)
        {
            targetBattler = gSideTimers[side].followmeTarget;
        }
        else if (gBattleTypeFlags & BATTLE_TYPE_DOUBLE && moveTarget & MOVE_TARGET_RANDOM)
        {
            if (GetBattlerSide(gBattlerAttacker) == B_SIDE_PLAYER)
            {
                if (Random() & 1)
                    targetBattler = GetBattlerAtPosition(B_POSITION_OPPONENT_LEFT);
                else
                    targetBattler = GetBattlerAtPosition(B_POSITION_OPPONENT_RIGHT);
            }
            else
            {
                if (Random() & 1)
                    targetBattler = GetBattlerAtPosition(B_POSITION_PLAYER_LEFT);
                else
                    targetBattler = GetBattlerAtPosition(B_POSITION_PLAYER_RIGHT);
            }
            if (gAbsentBattlerFlags & gBitTable[targetBattler])
                targetBattler ^= BIT_FLANK;
        }
        else
        {
            targetBattler = GetBattlerAtPosition(BATTLE_OPPOSITE(GET_BATTLER_SIDE(gBattlerAttacker)));
        }
        break;
    case MOVE_TARGET_USER_OR_SELECTED:
    case MOVE_TARGET_USER:
        targetBattler = gBattlerAttacker;
        break;
    }

    *(gBattleStruct->moveTarget + gBattlerAttacker) = targetBattler;

    return targetBattler;
}

static bool32 IsBattlerModernFatefulEncounter(u8 battler)
{
    if (GetBattlerSide(battler) == B_SIDE_OPPONENT)
        return TRUE;
    if (GetMonData(&gPlayerParty[gBattlerPartyIndexes[battler]], MON_DATA_SPECIES, NULL) != SPECIES_DEOXYS
        && GetMonData(&gPlayerParty[gBattlerPartyIndexes[battler]], MON_DATA_SPECIES, NULL) != SPECIES_MEW)
            return TRUE;
    return GetMonData(&gPlayerParty[gBattlerPartyIndexes[battler]], MON_DATA_MODERN_FATEFUL_ENCOUNTER, NULL);
}

u8 IsMonDisobedient(void)
{
    s32 rnd;
    s32 calc;
    u8 obedienceLevel = 0;

    if (gBattleTypeFlags & (BATTLE_TYPE_LINK | BATTLE_TYPE_RECORDED_LINK))
        return 0;
    if (GetBattlerSide(gBattlerAttacker) == B_SIDE_OPPONENT)
        return 0;

    if (IsBattlerModernFatefulEncounter(gBattlerAttacker)) // only false if illegal Mew or Deoxys
    {
        if (gBattleTypeFlags & BATTLE_TYPE_INGAME_PARTNER && GetBattlerPosition(gBattlerAttacker) == 2)
            return 0;
        if (gBattleTypeFlags & BATTLE_TYPE_FRONTIER)
            return 0;
        if (gBattleTypeFlags & BATTLE_TYPE_RECORDED)
            return 0;
        if (!IsOtherTrainer(gBattleMons[gBattlerAttacker].otId, gBattleMons[gBattlerAttacker].otName))
            return 0;
        if (FlagGet(FLAG_BADGE08_GET))
            return 0;

        obedienceLevel = 10;

        if (FlagGet(FLAG_BADGE02_GET))
            obedienceLevel = 30;
        if (FlagGet(FLAG_BADGE04_GET))
            obedienceLevel = 50;
        if (FlagGet(FLAG_BADGE06_GET))
            obedienceLevel = 70;
    }

    if (gBattleMons[gBattlerAttacker].level <= obedienceLevel)
        return 0;
    rnd = (Random() & 255);
    calc = (gBattleMons[gBattlerAttacker].level + obedienceLevel) * rnd >> 8;
    if (calc < obedienceLevel)
        return 0;

    // is not obedient
    if (gCurrentMove == MOVE_RAGE)
        gBattleMons[gBattlerAttacker].status2 &= ~STATUS2_RAGE;
    if (gBattleMons[gBattlerAttacker].status1 & STATUS1_SLEEP && (gCurrentMove == MOVE_SNORE || gCurrentMove == MOVE_SLEEP_TALK))
    {
        gBattlescriptCurrInstr = BattleScript_IgnoresWhileAsleep;
        return 1;
    }

    rnd = (Random() & 255);
    calc = (gBattleMons[gBattlerAttacker].level + obedienceLevel) * rnd >> 8;
    if (calc < obedienceLevel)
    {
        calc = CheckMoveLimitations(gBattlerAttacker, gBitTable[gCurrMovePos], MOVE_LIMITATIONS_ALL);
        if (calc == ALL_MOVES_MASK) // all moves cannot be used
        {
            // Randomly select, then print a disobedient string
            // B_MSG_LOAFING, B_MSG_WONT_OBEY, B_MSG_TURNED_AWAY, or B_MSG_PRETEND_NOT_NOTICE
            gBattleCommunication[MULTISTRING_CHOOSER] = MOD(Random(), NUM_LOAF_STRINGS);
            gBattlescriptCurrInstr = BattleScript_MoveUsedLoafingAround;
            return 1;
        }
        else // use a random move
        {
            do
            {
                gCurrMovePos = gChosenMovePos = MOD(Random(), MAX_MON_MOVES);
            } while (gBitTable[gCurrMovePos] & calc);

            gCalledMove = gBattleMons[gBattlerAttacker].moves[gCurrMovePos];
            gBattlescriptCurrInstr = BattleScript_IgnoresAndUsesRandomMove;
            gBattlerTarget = GetMoveTarget(gCalledMove, NO_TARGET_OVERRIDE);
            gHitMarker |= HITMARKER_DISOBEDIENT_MOVE;
            return 2;
        }
    }
    else
    {
        obedienceLevel = gBattleMons[gBattlerAttacker].level - obedienceLevel;

        calc = (Random() & 255);
        if (calc < obedienceLevel && !(gBattleMons[gBattlerAttacker].status1 & STATUS1_ANY) && gBattleMons[gBattlerAttacker].ability != ABILITY_INSOMNIA)
        {
            // try putting asleep
            int i;
            for (i = 0; i < gBattlersCount; i++)
            {
                if (gBattleMons[i].status2 & STATUS2_UPROAR)
                    break;
            }
            if (i == gBattlersCount)
            {
                gBattlescriptCurrInstr = BattleScript_IgnoresAndFallsAsleep;
                return 1;
            }
        }
        calc -= obedienceLevel;
        if (calc < obedienceLevel)
        {
            gBattleMoveDamage = CalculateBaseDamage(&gBattleMons[gBattlerAttacker], &gBattleMons[gBattlerAttacker], MOVE_POUND, 0, 40, 0, gBattlerAttacker, gBattlerAttacker);
            gBattlerTarget = gBattlerAttacker;
            gBattlescriptCurrInstr = BattleScript_IgnoresAndHitsItself;
            gHitMarker |= HITMARKER_UNABLE_TO_USE_MOVE;
            return 2;
        }
        else
        {
            // Randomly select, then print a disobedient string
            // B_MSG_LOAFING, B_MSG_WONT_OBEY, B_MSG_TURNED_AWAY, or B_MSG_PRETEND_NOT_NOTICE
            gBattleCommunication[MULTISTRING_CHOOSER] = MOD(Random(), NUM_LOAF_STRINGS);
            gBattlescriptCurrInstr = BattleScript_MoveUsedLoafingAround;
            return 1;
        }
    }
}
