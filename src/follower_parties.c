#include "global.h"
#include "follower_parties.h"
#include "battle.h"
#include "battle_main.h"
#include "battle_pyramid.h"
#include "battle_script_commands.h"
#include "battle_util.h"
#include "battle_anim.h"
#include "util.h"
#include "battle_setup.h"
#include "battle_scripts.h"
#include "event_data.h"
#include "follow_me.h"
#include "party_menu.h"
#include "pokedex.h"
#include "pokemon.h"
#include "random.h"
#include "string_util.h"
#include "trainer_hill.h"
#include "constants/battle.h"
#include "constants/battle_move_effects.h"
#include "constants/characters.h"
#include "constants/flags.h"
#include "constants/items.h"
#include "constants/moves.h"
#include "constants/species.h"
#include "constants/trainers.h"
#include "constants/vars.h"

static const u8 sText_FollowerMay[] = _("MAY");
static const u8 sText_FollowerBrendan[] = _("BRENDAN");
static const u8 sText_FollowerWally[] = _("WALLY");

#include "data/follower_parties.h"

// The rival's starter line for each of the player's starters (VAR_STARTER_MON), matching the
// teams they use in their real battles (Route 103, 110, 119 and Lilycove City)
static const u16 sRivalStarterLines[][3] =
{
    {SPECIES_TREECKO, SPECIES_GROVYLE, SPECIES_SCEPTILE},
    {SPECIES_TORCHIC, SPECIES_COMBUSKEN, SPECIES_BLAZIKEN},
    {SPECIES_MUDKIP, SPECIES_MARSHTOMP, SPECIES_SWAMPERT},
};

static const u8 sRivalStarterLineByPlayerStarter[] = {0, 1, 2, 0, 2};

static u16 GetFollowerPartyMonSpecies(u16 species)
{
    u16 starter;

    if (species < FOLLOWER_RIVAL_STARTER_1)
        return species;
    starter = VarGet(VAR_STARTER_MON);
    if (starter >= ARRAY_COUNT(sRivalStarterLineByPlayerStarter))
        starter = 0;
    return sRivalStarterLines[sRivalStarterLineByPlayerStarter[starter]][species - FOLLOWER_RIVAL_STARTER_1];
}

static u8 CountBadges(void)
{
    u8 i, count = 0;

    for (i = 0; i < NUM_BADGES; i++)
    {
        if (FlagGet(FLAG_BADGE01_GET + i))
            count++;
    }
    return count;
}

static bool8 HasRequirements(const struct FollowerPartyVariant *variant)
{
    u8 i;

    if (variant->minBadges != 0)
        return TRUE;
    for (i = 0; i < FOLLOWER_PARTY_MAX_FLAGS; i++)
    {
        if (variant->flags[i] != 0)
            return TRUE;
    }
    return FALSE;
}

static bool8 RequirementsMet(const struct FollowerPartyVariant *variant, u8 badges)
{
    u8 i;

    if (badges < variant->minBadges)
        return FALSE;
    for (i = 0; i < FOLLOWER_PARTY_MAX_FLAGS; i++)
    {
        if (variant->flags[i] != 0 && !FlagGet(variant->flags[i]))
            return FALSE;
    }
    return TRUE;
}

// The follower set in VAR_FOLLOWER_PARTNER, or NULL if there isn't a valid one.
const struct FollowerPartner *GetFollowerPartner(void)
{
    u16 partnerId = VarGet(VAR_FOLLOWER_PARTNER);

    if (partnerId == FOLLOWER_PARTNER_NONE || partnerId >= FOLLOWER_PARTNERS_COUNT)
        return NULL;
    return &gFollowerPartners[partnerId];
}

// Back pic for an in-game partner that slides in beside the player (see IS_STORY_PARTNER).
u8 GetStoryPartnerBackPic(void)
{
    if (gPartnerTrainerId == TRAINER_FOLLOWER_PARTNER && GetFollowerPartner() != NULL)
        return GetFollowerPartner()->backPic;
    return TRAINER_BACK_PIC_STEVEN;
}

// Bottom-up, the first variant whose requirements are all met. If none are, the
// highest variant with no requirements (or the first variant if every one has some).
const struct FollowerPartyVariant *GetFollowerPartyVariant(u16 partnerId)
{
    const struct FollowerPartner *partner;
    s32 i, count;
    u8 badges = CountBadges();

    if (partnerId == FOLLOWER_PARTNER_NONE || partnerId >= FOLLOWER_PARTNERS_COUNT)
        return NULL;
    partner = &gFollowerPartners[partnerId];
    if (partner->variants == NULL)
        return NULL;
    for (count = 0; partner->variants[count].mons[0].species != SPECIES_NONE; count++)
        ;
    if (count == 0)
        return NULL;

    for (i = count - 1; i >= 0; i--)
    {
        if (HasRequirements(&partner->variants[i]) && RequirementsMet(&partner->variants[i], badges))
            return &partner->variants[i];
    }
    for (i = 0; i < count; i++)
    {
        if (!HasRequirements(&partner->variants[i]))
            return &partner->variants[i];
    }
    return &partner->variants[0];
}

// Builds the follower's party into gPlayerParty[3..5], the partner's half in a multi battle.
// The player's own party should already be cut down to 3 (ChooseHalfPartyForBattle).
bool8 FillFollowerPartnerParty(u16 partnerId)
{
    const struct FollowerPartner *partner;
    const struct FollowerPartyVariant *variant;
    const struct FollowerPartyMon *partyMon;
    struct Pokemon *mon;
    u32 personality;
    u8 i, j;

    variant = GetFollowerPartyVariant(partnerId);
    if (variant == NULL)
        return FALSE;
    partner = &gFollowerPartners[partnerId];

    for (i = 0; i < MULTI_PARTY_SIZE; i++)
    {
        partyMon = &variant->mons[i];
        mon = &gPlayerParty[MULTI_PARTY_SIZE + i];
        if (partyMon->species == SPECIES_NONE)
        {
            ZeroMonData(mon);
            continue;
        }

        do
        {
            personality = Random32();
        } while (IsShinyOtIdPersonality(partner->otId, personality) || GetNatureFromPersonality(personality) != partyMon->nature);

        CreateMon(mon, GetFollowerPartyMonSpecies(partyMon->species), partyMon->level, partyMon->fixedIV, TRUE, personality, OT_ID_PRESET, partner->otId);
        SetMonData(mon, MON_DATA_HELD_ITEM, &partyMon->heldItem);
        for (j = 0; j < NUM_STATS; j++)
            SetMonData(mon, MON_DATA_HP_EV + j, &partyMon->evs[j]);
        if (partyMon->moves[0] != MOVE_NONE)
        {
            for (j = 0; j < MAX_MON_MOVES; j++)
                SetMonMoveSlot(mon, partyMon->moves[j], j);
        }
        SetMonData(mon, MON_DATA_OT_NAME, partner->name);
        j = partner->gender;
        SetMonData(mon, MON_DATA_OT_GENDER, &j);
        j = GetTrainerClassBall(partner->trainerClass);
        SetMonData(mon, MON_DATA_POKEBALL, &j);
        CalculateMonStats(mon);
    }
    return TRUE;
}

// special LoadFollowerPartnerParty
// Fills the partner half of the party for the follower in VAR_FOLLOWER_PARTNER.
// VAR_RESULT is FALSE if no follower partner is set.
void LoadFollowerPartnerParty(void)
{
    gSpecialVar_Result = FillFollowerPartnerParty(VarGet(VAR_FOLLOWER_PARTNER));
}

// ---------------------------------------------------------------------------
// Follower multi battles: while a follower with a partner party is following,
// every trainer battle has them fight beside the player. The player brings up
// to 3 Pokémon (data/scripts/trainer_battle.inc chooses them before the battle).

static void InitHelpCatch(bool8 isWild);

EWRAM_DATA static struct Pokemon sSavedPlayerParty[PARTY_SIZE] = {0};
// What the next battle becomes when it initialises (FollowerBattle_OnBattleInit). The heavy work,
// building the partner's party and levelling the wild Pokémon, waits until then, while the screen
// is black, instead of freezing the overworld for a few frames as the battle triggers.
#define PENDING_NONE    0
#define PENDING_TRAINER 1 // the player's battlers are set (FollowerBattle_Prepare) and their party saved
#define PENDING_WILD    2

EWRAM_DATA static u8 sFollowerBattlePending = PENDING_NONE;
EWRAM_DATA static bool8 sFollowerBattleActive = FALSE;

static bool8 IsMonUsableInBattle(struct Pokemon *mon)
{
    return GetMonData(mon, MON_DATA_SPECIES) != SPECIES_NONE
        && !GetMonData(mon, MON_DATA_IS_EGG)
        && GetMonData(mon, MON_DATA_HP) != 0;
}

// Puts the given saved party slots into gPlayerParty[0..2], usable Pokémon first
// (the player's battler always starts with slot 0). FALSE if none can battle.
static bool8 SetBattlingParty(const u8 *slots, u8 count)
{
    u8 i, n = 0;

    ZeroPlayerPartyMons();
    for (i = 0; i < count && n < MULTI_PARTY_SIZE; i++)
    {
        if (IsMonUsableInBattle(&sSavedPlayerParty[slots[i]]))
            gPlayerParty[n++] = sSavedPlayerParty[slots[i]];
    }
    if (n == 0)
    {
        for (i = 0; i < PARTY_SIZE; i++)
            gPlayerParty[i] = sSavedPlayerParty[i];
        CalculatePlayerPartyCount();
        return FALSE;
    }
    for (i = 0; i < count && n < MULTI_PARTY_SIZE; i++)
    {
        if (!IsMonUsableInBattle(&sSavedPlayerParty[slots[i]]) && GetMonData(&sSavedPlayerParty[slots[i]], MON_DATA_SPECIES) != SPECIES_NONE)
            gPlayerParty[n++] = sSavedPlayerParty[slots[i]];
    }
    CalculatePlayerPartyCount();
    return TRUE;
}

// A follower with a partner party will battle beside the player (outside the Battle Pyramid and
// Trainer Hill, which have their own rules).
bool8 FollowerBattle_PartnerCanJoin(void)
{
    return PlayerHasFollower() && GetFollowerPartner() != NULL
        && CurrentBattlePyramidLocation() == PYRAMID_LOCATION_NONE && !InTrainerHillChallenge();
}

// special FollowerBattle_Prepare, right before a trainer battle starts.
// VAR_RESULT: FOLLOWER_BATTLE_NONE for a normal battle, otherwise the party is saved and
// FOLLOWER_BATTLE_READY / FOLLOWER_BATTLE_CHOOSE.
void FollowerBattle_Prepare(void)
{
    u8 i, slots[PARTY_SIZE];

    sFollowerBattlePending = PENDING_NONE;
    gSpecialVar_Result = FOLLOWER_BATTLE_NONE;
    if (!FollowerBattle_PartnerCanJoin())
        return;

    for (i = 0; i < PARTY_SIZE; i++)
    {
        sSavedPlayerParty[i] = gPlayerParty[i];
        slots[i] = i;
    }
    sFollowerBattlePending = PENDING_TRAINER;

    if (gPlayerPartyCount > MULTI_PARTY_SIZE)
        gSpecialVar_Result = FOLLOWER_BATTLE_CHOOSE;
    else if (SetBattlingParty(slots, PARTY_SIZE))
        gSpecialVar_Result = FOLLOWER_BATTLE_READY;
    else
        sFollowerBattlePending = PENDING_NONE; // nobody can fight; let the normal battle code handle it
}

// special FollowerBattle_ApplyChosenParty, after ChooseHalfPartyForBattle.
// VAR_RESULT is FALSE if none of the chosen Pokémon can battle (choose again).
void FollowerBattle_ApplyChosenParty(void)
{
    u8 i, count = 0, slots[MULTI_PARTY_SIZE];

    for (i = 0; i < MULTI_PARTY_SIZE && gSelectedOrderFromParty[i] != 0; i++)
        slots[count++] = gSelectedOrderFromParty[i] - 1;
    gSpecialVar_Result = SetBattlingParty(slots, count);
}

// A wild Pokémon facing the player and a partner is FOLLOWER_WILD_LEVEL_BOOST_MIN-MAX levels
// higher. It keeps its IVs, nature and personality; its moves are relearned for the new level.
static void BoostWildMonLevel(struct Pokemon *mon)
{
    u16 species = GetMonData(mon, MON_DATA_SPECIES);
    u32 level = GetMonData(mon, MON_DATA_LEVEL)
              + FOLLOWER_WILD_LEVEL_BOOST_MIN + Random() % (FOLLOWER_WILD_LEVEL_BOOST_MAX - FOLLOWER_WILD_LEVEL_BOOST_MIN + 1);
    u16 move = MOVE_NONE;
    u8 i;

    if (level > MAX_LEVEL)
        level = MAX_LEVEL;
    SetMonData(mon, MON_DATA_EXP, &gExperienceTables[gSpeciesInfo[species].growthRate][level]);
    CalculateMonStats(mon);
    for (i = 0; i < MAX_MON_MOVES; i++)
        SetMonData(mon, MON_DATA_MOVE1 + i, &move);
    GiveMonInitialMoveset(mon);
}

// Called as a standard wild battle starts (grass, water, fishing, Rock Smash, Sweet Scent).
// With a follower partner, the player's first 3 usable Pokémon will fight beside them against
// the wild Pokémon, which is a few levels higher. The battle is set up in FollowerBattle_OnBattleInit.
void FollowerBattle_TryStartWild(void)
{
    if (PlayerHasFollower() && GetFollowerPartner() != NULL)
        sFollowerBattlePending = PENDING_WILD;
}

// Called from CB2_InitBattle. Turns a battle marked by FollowerBattle_Prepare (trainer) or
// FollowerBattle_TryStartWild into a multi battle beside the follower.
void FollowerBattle_OnBattleInit(void)
{
    u8 i, slots[PARTY_SIZE];
    u8 pending = sFollowerBattlePending;

    if (pending == PENDING_NONE)
        return;

    if (pending == PENDING_WILD)
    {
        sFollowerBattlePending = PENDING_NONE;
        for (i = 0; i < PARTY_SIZE; i++)
        {
            sSavedPlayerParty[i] = gPlayerParty[i];
            slots[i] = i;
        }
        if (!SetBattlingParty(slots, PARTY_SIZE))
            return;
        sFollowerBattlePending = PENDING_TRAINER; // party saved, so RestoreParty can undo it
    }

    if (!FillFollowerPartnerParty(VarGet(VAR_FOLLOWER_PARTNER)))
    {
        FollowerBattle_RestoreParty();
        return;
    }
    sFollowerBattlePending = PENDING_NONE;
    sFollowerBattleActive = TRUE;
    gBattleTypeFlags |= BATTLE_TYPE_DOUBLE | BATTLE_TYPE_MULTI | BATTLE_TYPE_INGAME_PARTNER;
    gPartnerTrainerId = TRAINER_FOLLOWER_PARTNER;
    if (pending == PENDING_WILD)
        BoostWildMonLevel(&gEnemyParty[0]);
    InitHelpCatch(pending == PENDING_WILD);
}

// A Pokémon caught in a follower battle goes into the player's real party if it has room
// (gPlayerParty is full of battlers and partner Pokémon until the battle ends).
bool8 FollowerBattle_TryGiveCaughtMon(struct Pokemon *mon)
{
    u8 i;

    if (!sFollowerBattleActive)
        return FALSE;
    for (i = 0; i < PARTY_SIZE; i++)
    {
        if (GetMonData(&sSavedPlayerParty[i], MON_DATA_SPECIES) == SPECIES_NONE)
        {
            SetMonData(mon, MON_DATA_OT_NAME, gSaveBlock2Ptr->playerName);
            SetMonData(mon, MON_DATA_OT_GENDER, &gSaveBlock2Ptr->playerGender);
            SetMonData(mon, MON_DATA_OT_ID, gSaveBlock2Ptr->playerTrainerId);
            sSavedPlayerParty[i] = *mon;
            return TRUE;
        }
    }
    return FALSE;
}

// Called when a follower battle ends (won, lost, ran or caught). Puts the Pokémon that battled back
// into their original slots, keeping their HP, EXP, evolutions, etc., and drops the partner's.
void FollowerBattle_RestoreParty(void)
{
    u8 i, j;
    bool8 restored[PARTY_SIZE] = {0};

    if (!sFollowerBattleActive && sFollowerBattlePending != PENDING_TRAINER)
    {
        sFollowerBattlePending = PENDING_NONE;
        return;
    }

    if (sFollowerBattleActive)
    {
        for (i = 0; i < MULTI_PARTY_SIZE; i++)
        {
            u32 personality = GetMonData(&gPlayerParty[i], MON_DATA_PERSONALITY);
            u32 otId = GetMonData(&gPlayerParty[i], MON_DATA_OT_ID);

            if (GetMonData(&gPlayerParty[i], MON_DATA_SPECIES) == SPECIES_NONE)
                continue;
            for (j = 0; j < PARTY_SIZE; j++)
            {
                if (!restored[j]
                 && GetMonData(&sSavedPlayerParty[j], MON_DATA_SPECIES) != SPECIES_NONE
                 && GetMonData(&sSavedPlayerParty[j], MON_DATA_PERSONALITY) == personality
                 && GetMonData(&sSavedPlayerParty[j], MON_DATA_OT_ID) == otId)
                {
                    sSavedPlayerParty[j] = gPlayerParty[i];
                    restored[j] = TRUE;
                    break;
                }
            }
        }
    }

    for (i = 0; i < PARTY_SIZE; i++)
        gPlayerParty[i] = sSavedPlayerParty[i];
    CalculatePlayerPartyCount();
    sFollowerBattleActive = FALSE;
    sFollowerBattlePending = PENDING_NONE;
}

// ---------------------------------------------------------------------------
// helpcatch: a follower can be set up (in the map script that makes them follow) to help catch
// certain species. In a wild battle against one the player hasn't caught yet, they say the
// script's line, use weak moves on it, and once it's down to 1/3 HP they recall their Pokémon,
// tell the player to catch it and sit the rest of the battle out.

#define HELPCATCH_SPECIES_COUNT 4

static const u16 sHelpCatchSpeciesVars[HELPCATCH_SPECIES_COUNT] =
{
    VAR_FOLLOWER_HELPCATCH_1,
    VAR_FOLLOWER_HELPCATCH_2,
    VAR_FOLLOWER_HELPCATCH_3,
    VAR_FOLLOWER_HELPCATCH_4,
};

EWRAM_DATA static bool8 sHoldingBack = FALSE;    // this battle's wild Pokémon is one to help catch
EWRAM_DATA static bool8 sSteppedAside = FALSE;   // the partner has recalled their Pokémon for the player to catch it
EWRAM_DATA static bool8 sPartnerCatches = FALSE; // FLAG_FOLLOWER_PARTNER_CATCHES: the partner throws the ball themselves
EWRAM_DATA static bool8 sPartnerCaughtIt = FALSE; // ...and just caught it
EWRAM_DATA static bool8 sHelpCatchLineDue = FALSE;

// Script command helpcatch (see asm/macros/event.inc). Also called with NULL/none by setfollower.
void FollowerBattle_SetHelpCatch(const u8 *foundText, const u8 *caughtText, const u16 *species)
{
    u8 i;

    for (i = 0; i < HELPCATCH_SPECIES_COUNT; i++)
        VarSet(sHelpCatchSpeciesVars[i], species != NULL ? species[i] : SPECIES_NONE);
    VarSet(VAR_FOLLOWER_HELPCATCH_TEXT_LO, (u32)foundText & 0xFFFF);
    VarSet(VAR_FOLLOWER_HELPCATCH_TEXT_HI, (u32)foundText >> 16);
    VarSet(VAR_FOLLOWER_HELPCATCH_CAUGHT_TEXT_LO, (u32)caughtText & 0xFFFF);
    VarSet(VAR_FOLLOWER_HELPCATCH_CAUGHT_TEXT_HI, (u32)caughtText >> 16);
    FlagClear(FLAG_FOLLOWER_PARTNER_CATCHES); // partnercatch sets it again
}

// The helpcatch lines are ROM addresses kept in the save, so a follower set up before the ROM
// was rebuilt may need to be set up again for the right lines.
static const u8 *GetTextFromVars(u16 varLo, u16 varHi)
{
    u32 text = VarGet(varLo) | (VarGet(varHi) << 16);

    if (text < 0x08000000 || text >= 0x0A000000) // not a ROM address
        return NULL;
    return (const u8 *)text;
}

// The helpcatch line for finding the Pokémon, or NULL
const u8 *FollowerBattle_GetHelpCatchLine(void)
{
    return GetTextFromVars(VAR_FOLLOWER_HELPCATCH_TEXT_LO, VAR_FOLLOWER_HELPCATCH_TEXT_HI);
}

static bool8 ShouldHelpCatch(u16 species)
{
    u8 i;

    if (GetSetPokedexFlag(SpeciesToNationalPokedexNum(species), FLAG_GET_CAUGHT))
        return FALSE;
    for (i = 0; i < HELPCATCH_SPECIES_COUNT; i++)
    {
        if (species != SPECIES_NONE && VarGet(sHelpCatchSpeciesVars[i]) == species)
            return TRUE;
    }
    return FALSE;
}

// The partner wants to catch this one themselves (partnercatch): it counts even if the player has
// already caught one of their own
static bool8 ShouldPartnerCatch(u16 species)
{
    u8 i;

    if (!FlagGet(FLAG_FOLLOWER_PARTNER_CATCHES))
        return FALSE;
    for (i = 0; i < HELPCATCH_SPECIES_COUNT; i++)
    {
        if (species != SPECIES_NONE && VarGet(sHelpCatchSpeciesVars[i]) == species)
            return TRUE;
    }
    return FALSE;
}

static void InitHelpCatch(bool8 isWild)
{
    u16 species = GetMonData(&gEnemyParty[0], MON_DATA_SPECIES);

    sSteppedAside = FALSE;
    sPartnerCaughtIt = FALSE;
    sPartnerCatches = isWild && ShouldPartnerCatch(species);
    sHoldingBack = isWild && (sPartnerCatches || ShouldHelpCatch(species));
    sHelpCatchLineDue = sHoldingBack && FollowerBattle_GetHelpCatchLine() != NULL;
}

// The partner is going easy on the wild Pokémon (and hasn't stepped aside yet).
bool8 FollowerBattle_IsHoldingBack(void)
{
    return sFollowerBattleActive && sHoldingBack && !sSteppedAside;
}

// The partner has recalled their Pokémon so the player can catch the wild one.
bool8 FollowerBattle_HasSteppedAside(void)
{
    return sFollowerBattleActive && sSteppedAside;
}

// Once, before the first turn: TRUE if the partner should say the helpcatch line.
bool8 FollowerBattle_TakeHelpCatchLine(void)
{
    if (!FollowerBattle_IsHoldingBack() || !sHelpCatchLineDue)
        return FALSE;
    sHelpCatchLineDue = FALSE;
    return TRUE;
}

// End of turn: if the wild Pokémon is down to 1/3 of its HP, the partner recalls their Pokémon
// (BattleScript_FollowerStepsAsideForCatch) and is absent from then on. With partnercatch, both sides'
// Pokémon are recalled instead and the partner throws a ball that always catches it
// (BattleScript_FollowerCatchesWildMon, Cmd_handleballthrow).
const u8 *FollowerBattle_TryStepAside(void)
{
    u8 partner = GetBattlerAtPosition(B_POSITION_PLAYER_RIGHT);
    u8 player = GetBattlerAtPosition(B_POSITION_PLAYER_LEFT);
    u8 wild = GetBattlerAtPosition(B_POSITION_OPPONENT_LEFT);

    if (!FollowerBattle_IsHoldingBack()
     || (gAbsentBattlerFlags & gBitTable[partner]) || gBattleMons[partner].hp == 0
     || gBattleMons[wild].hp == 0 || gBattleMons[wild].hp * 3 > gBattleMons[wild].maxHP)
        return NULL;

    sSteppedAside = TRUE;
    gBattlerAttacker = partner;
    if (sPartnerCatches)
    {
        gLastUsedItem = ITEM_POKE_BALL;
        if ((gAbsentBattlerFlags & gBitTable[player]) || gBattleMons[player].hp == 0)
            return BattleScript_FollowerCatchesWildMonAlone;
        // The player's Pokémon goes back first (as the attacker), then the partner's (kept in gBattlerTarget)
        gBattlerAttacker = player;
        gBattlerTarget = partner;
        return BattleScript_FollowerCatchesWildMon;
    }
    gAbsentBattlerFlags |= gBitTable[partner];
    return BattleScript_FollowerStepsAsideForCatch;
}

// The partner is throwing the ball themselves (Cmd_handleballthrow)
bool8 FollowerBattle_PartnerThrowsBall(void)
{
    return sFollowerBattleActive && sPartnerCatches && sSteppedAside;
}

// The partner's ball caught it: the Pokémon is theirs, not the player's
void FollowerBattle_SetPartnerCaughtIt(void)
{
    sPartnerCaughtIt = TRUE;
}

// As a wild battle ends: TRUE if the partner caught the Pokémon themselves
// (EventScript_FollowerPartnerCaughtWildMon runs on returning to the field)
bool8 FollowerBattle_PartnerCaughtIt(void)
{
    return sFollowerBattleActive && sPartnerCaughtIt && gBattleOutcome == B_OUTCOME_CAUGHT;
}

// Damage-over-time and similar effects that could knock out the Pokémon the player wants.
static bool8 IsRiskyStatusEffect(u16 effect)
{
    switch (effect)
    {
    case EFFECT_POISON:
    case EFFECT_TOXIC:
    case EFFECT_WILL_O_WISP:
    case EFFECT_LEECH_SEED:
    case EFFECT_CURSE:
    case EFFECT_PERISH_SONG:
    case EFFECT_DESTINY_BOND:
    case EFFECT_MEMENTO:
    case EFFECT_SANDSTORM:
    case EFFECT_HAIL:
        return TRUE;
    }
    return FALSE;
}

// How much a move suits holding back on the wild Pokémon; higher is better, 0 = don't use.
static u16 GetHoldBackMoveScore(u16 move, u8 target)
{
    const struct BattleMove *data = &gBattleMoves[move];
    bool8 weakened = gBattleMons[target].hp * 2 <= gBattleMons[target].maxHP;
    u8 typeFlags;
    u16 power;

    if (data->effect == EFFECT_FALSE_SWIPE)
        return 1000;
    if (data->effect == EFFECT_OHKO || data->effect == EFFECT_EXPLOSION)
        return 0;
    if (data->effect == EFFECT_SUPER_FANG) // halves its HP, never knocks it out
        return 900;

    if (data->power == 0)
    {
        if (IsRiskyStatusEffect(data->effect))
            return 0;
        if ((data->effect == EFFECT_SLEEP || data->effect == EFFECT_PARALYZE || data->effect == EFFECT_YAWN)
         && gBattleMons[target].status1 == 0)
            return weakened ? 950 : 600;
        return weakened ? 800 : 10; // anything else harmless: only once it's weakened
    }

    typeFlags = AI_TypeCalc(move, gBattleMons[target].species, gBattleMons[target].ability);
    if (typeFlags & MOVE_RESULT_NO_EFFECT)
        return 0;
    power = (data->power == 1) ? 60 : data->power; // fixed-damage moves: treat as middling
    if (typeFlags & MOVE_RESULT_SUPER_EFFECTIVE)
        power *= 2;
    else if (typeFlags & MOVE_RESULT_NOT_VERY_EFFECTIVE)
        power /= 2;
    if (power > 500)
        power = 500;
    return 700 - power; // the weakest damaging move scores highest
}

// The partner's move against the wild Pokémon while holding back (a moveInfo slot).
u8 FollowerBattle_ChooseHoldBackMove(u8 battler, const u16 *moves, const u8 *pp)
{
    u8 i, best = 0;
    u16 bestScore = 0;
    u8 target = GetBattlerAtPosition(B_POSITION_OPPONENT_LEFT);
    u8 unusable = CheckMoveLimitations(battler, 0, MOVE_LIMITATIONS_ALL);

    for (i = 0; i < MAX_MON_MOVES; i++)
    {
        u16 score;

        if (moves[i] == MOVE_NONE || pp[i] == 0 || (unusable & gBitTable[i]))
            continue;
        score = GetHoldBackMoveScore(moves[i], target) + 1; // +1 so any usable move beats none
        if (score > bestScore)
        {
            bestScore = score;
            best = i;
        }
    }
    return best;
}

// special IsTalkingToFollower: VAR_RESULT is TRUE if the object just talked to is the follower
// (so a follower NPC's script can tell "talking to my follower" from "talking to me while someone else follows")
void IsTalkingToFollower(void)
{
    gSpecialVar_Result = PlayerHasFollower() && GetFollowerLocalId() == gSpecialVar_LastTalked;
}

// As a wild battle ends (before FollowerBattle_RestoreParty): TRUE if the player just caught the
// Pokémon their follower was helping catch, and the follower has a line for it
// (EventScript_FollowerCaughtHelpCatch runs on returning to the field).
bool8 FollowerBattle_ShouldAcknowledgeCatch(void)
{
    return sFollowerBattleActive && sHoldingBack && !sPartnerCaughtIt && gBattleOutcome == B_OUTCOME_CAUGHT
        && GetTextFromVars(VAR_FOLLOWER_HELPCATCH_CAUGHT_TEXT_LO, VAR_FOLLOWER_HELPCATCH_CAUGHT_TEXT_HI) != NULL;
}

// special BufferHelpCatchCaughtLine: the follower's helpcatch line for a catch, into gStringVar4
void BufferHelpCatchCaughtLine(void)
{
    const u8 *text = GetTextFromVars(VAR_FOLLOWER_HELPCATCH_CAUGHT_TEXT_LO, VAR_FOLLOWER_HELPCATCH_CAUGHT_TEXT_HI);

    if (text != NULL)
        StringExpandPlaceholders(gStringVar4, text);
    else
        gStringVar4[0] = EOS;
}

// special HelpCatchTargetCaught: VAR_RESULT is TRUE once the player has caught any of the
// species their follower's helpcatch is for (for follower scripts to change their dialogue)
void HelpCatchTargetCaught(void)
{
    u8 i;

    gSpecialVar_Result = FALSE;
    for (i = 0; i < HELPCATCH_SPECIES_COUNT; i++)
    {
        u16 species = VarGet(sHelpCatchSpeciesVars[i]);

        if (species != SPECIES_NONE && GetSetPokedexFlag(SpeciesToNationalPokedexNum(species), FLAG_GET_CAUGHT))
            gSpecialVar_Result = TRUE;
    }
}
