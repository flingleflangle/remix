#ifndef GUARD_BATTLE_UTIL_H
#define GUARD_BATTLE_UTIL_H

#define MOVE_LIMITATION_ZEROMOVE                (1 << 0)
#define MOVE_LIMITATION_PP                      (1 << 1)
#define MOVE_LIMITATION_DISABLED                (1 << 2)
#define MOVE_LIMITATION_TORMENTED               (1 << 3)
#define MOVE_LIMITATION_TAUNT                   (1 << 4)
#define MOVE_LIMITATION_IMPRISON                (1 << 5)
#define MOVE_LIMITATIONS_ALL                    0xFF

#define ABILITYEFFECT_ON_SWITCHIN                0
#define ABILITYEFFECT_ENDTURN                    1
#define ABILITYEFFECT_MOVES_BLOCK                2
#define ABILITYEFFECT_ABSORBING                  3
#define ABILITYEFFECT_ON_DAMAGE                  4
#define ABILITYEFFECT_IMMUNITY                   5
#define ABILITYEFFECT_FORECAST                   6
#define ABILITYEFFECT_SYNCHRONIZE                7
#define ABILITYEFFECT_ATK_SYNCHRONIZE            8
#define ABILITYEFFECT_INTIMIDATE1                9
#define ABILITYEFFECT_INTIMIDATE2                10
#define ABILITYEFFECT_TRACE                      11
#define ABILITYEFFECT_CHECK_OTHER_SIDE           12
#define ABILITYEFFECT_CHECK_BATTLER_SIDE         13
#define ABILITYEFFECT_FIELD_SPORT                14
#define ABILITYEFFECT_CHECK_FIELD_EXCEPT_BATTLER 15
#define ABILITYEFFECT_COUNT_OTHER_SIDE           16
#define ABILITYEFFECT_COUNT_BATTLER_SIDE         17
#define ABILITYEFFECT_COUNT_ON_FIELD             18
#define ABILITYEFFECT_CHECK_ON_FIELD             19
#define ABILITYEFFECT_MUD_SPORT                  253
#define ABILITYEFFECT_WATER_SPORT                254
#define ABILITYEFFECT_SWITCH_IN_WEATHER          255

#define ABILITY_ON_OPPOSING_FIELD(battler, abilityId) (AbilityBattleEffects(ABILITYEFFECT_CHECK_OTHER_SIDE, battler, abilityId, 0, 0))
#define ABILITY_ON_FIELD(abilityId) (AbilityBattleEffects(ABILITYEFFECT_CHECK_ON_FIELD, 0, abilityId, 0, 0))
#define ABILITY_ON_FIELD2(abilityId) (AbilityBattleEffects(ABILITYEFFECT_FIELD_SPORT, 0, abilityId, 0, 0))

// For the first argument of ItemBattleEffects, to deteremine which block of item effects to try
#define ITEMEFFECT_ON_SWITCH_IN                 0
#define ITEMEFFECT_NORMAL                       1
#define ITEMEFFECT_DUMMY                        2 // Unused, empty
#define ITEMEFFECT_MOVE_END                     3
#define ITEMEFFECT_KINGSROCK_SHELLBELL          4

#define WEATHER_HAS_EFFECT ((!ABILITY_ON_FIELD(ABILITY_CLOUD_NINE) && !ABILITY_ON_FIELD(ABILITY_AIR_LOCK)))
#define WEATHER_HAS_EFFECT2 ((!ABILITY_ON_FIELD2(ABILITY_CLOUD_NINE) && !ABILITY_ON_FIELD2(ABILITY_AIR_LOCK)))

void HandleAction_UseMove(void);
void HandleAction_Switch(void);
void HandleAction_UseItem(void);
void HandleAction_Run(void);
void HandleAction_WatchesCarefully(void);
void HandleAction_SafariZoneBallThrow(void);
void HandleAction_ThrowPokeblock(void);
void HandleAction_GoNear(void);
void HandleAction_SafariZoneRun(void);
void HandleAction_WallyBallThrow(void);
void HandleAction_TryFinish(void);
void HandleAction_NothingIsFainted(void);
void HandleAction_ActionFinished(void);
u8 GetBattlerForBattleScript(u8 caseId);
void PressurePPLose(u8 target, u8 attacker, u16 move);
void PressurePPLoseOnUsingPerishSong(u8 attacker);
void PressurePPLoseOnUsingImprison(u8 attacker);
void MarkBattlerForControllerExec(u8 battler);
void MarkBattlerReceivedLinkData(u8 battler);
void CancelMultiTurnMoves(u8 battler);
bool8 WasUnableToUseMove(u8 battler);
void PrepareStringBattle(u16 stringId, u8 battler);
void ResetSentPokesToOpponentValue(void);
void OpponentSwitchInResetSentPokesToOpponentValue(u8 battler);
void UpdateSentPokesToOpponentValue(u8 battler);
void BattleScriptPush(const u8 *bsPtr);
void BattleScriptPushCursor(void);
void BattleScriptPop(void);
u8 TrySetCantSelectMoveBattleScript(void);
bool32 IsBattlerInBlackHole(u8 battler);
bool32 IsMoveBlockedByBlackHole(u8 battler, u16 move);
u8 CheckMoveLimitations(u8 battler, u8 unusableMoves, u8 check);
bool8 AreAllMovesUnusable(void);
u8 GetImprisonedMovesCount(u8 battler, u16 move);
u8 DoFieldEndTurnEffects(void);
u8 DoBattlerEndTurnEffects(void);
bool8 HandleWishPerishSongOnTurnEnd(void);
bool8 HandleFaintedMonActions(void);
void TryClearRageStatuses(void);
u8 AtkCanceller_UnableToUseMove(void);
bool8 HasNoMonsToSwitch(u8 battler, u8 partyIdBattlerOn1, u8 partyIdBattlerOn2);
u8 CastformDataTypeChange(u8 battler);
u8 AbilityBattleEffects(u8 caseID, u8 battler, u8 ability, u8 special, u16 moveArg);
void BattleScriptExecute(const u8 *BS_ptr);
void BattleScriptPushCursorAndCallback(const u8 *BS_ptr);
u8 ItemBattleEffects(u8 caseID, u8 battler, bool8 moveTurn);
bool32 IsBattlerFloatingOnAirBalloon(u8 battler);
void PopBattlerHeldItem(u8 battler);
// A move's own EX version: for everyone (gExMoves in data/ex_battle_scripts.s), or for a species
// (.exVersions in src/data/pokemon/ex_species_moves.h)
struct ExMove
{
    u16 move;
    u16 extraEffect;  // A MOVE_EFFECT_* that always happens after it hits, on top of its own (gExExtraMoveEffect). 0 for none
    u32 flags;        // EX_FLAG_*, for what it does on top of its script
    const u8 *script; // NULL to run its regular script, with just the flags
};

STATIC_ASSERT(sizeof(struct ExMove) == 12, ExMoveSize); // The size the exmove macro emits

bool32 IsExMove(u16 move);
bool32 IsShieldedByExCounter(u8 battler, u8 moveType);
void StartUsualExMoveVersion(void);
void TrySetUpChosenExMoveOutOfTurn(u8 battler);
const struct ExMove *GetExMove(u16 move);
u16 GetExMoveUpgrade(u16 move);
bool32 CanMoveBeUsedAsEx(u16 move);
bool32 HasExMoveBonus(u16 move);
bool32 HasExMoveEffect(u16 move);
bool32 BattlerHasExMoveEffect(u8 battler, u16 move);
const struct ExMove *GetSpeciesExMove(u8 battler, u16 move);
void UpdateExMoveLocks(u8 battler, u8 slot, bool32 usedAsEx);
bool32 TryStartExMoveBonus(void);
void RestoreExMoveBonusState(void);
bool32 SetExBonusStatsUpAnim(u8 battler);
bool32 SetNextExBonusStat(void);
bool32 SetExBonusHealDamage(u8 battler);
bool32 CanBattlerUseExMove(u8 battler, u16 move);
bool32 IsBattlerEnragedBySolidRage(u8 battler);
void ClearFuryCutterDestinyBondGrudge(u8 battler);
void HandleAction_RunBattleScript(void);
u8 GetMoveTarget(u16 move, u8 setTarget);
u8 IsMonDisobedient(void);

#endif // GUARD_BATTLE_UTIL_H
