#ifndef GUARD_FOLLOWER_PARTIES_H
#define GUARD_FOLLOWER_PARTIES_H

#include "constants/follower_parties.h"

struct FollowerPartyMon
{
    u16 species;
    u16 heldItem;
    u8 level;
    u8 fixedIV;
    u8 nature;
    u8 evs[NUM_STATS];
    u16 moves[MAX_MON_MOVES]; // all MOVE_NONE = default level-up moves
};

struct FollowerPartyVariant
{
    u16 flags[FOLLOWER_PARTY_MAX_FLAGS]; // every listed flag must be set; unused entries are 0
    u8 minBadges;                        // 0 = no badge requirement
    struct FollowerPartyMon mons[MULTI_PARTY_SIZE]; // unused slots are left empty (SPECIES_NONE)
};

struct FollowerPartner
{
    const u8 *name;
    u8 trainerClass;
    u8 backPic;      // TRAINER_BACK_PIC_*; shown sliding in beside the player
    u8 gender;
    u32 otId;
    const struct FollowerPartyVariant *variants; // ends with FOLLOWER_PARTY_VARIANTS_END
};

// Ends a follower's list of party variants (a variant with no Pokémon)
#define FOLLOWER_PARTY_VARIANTS_END {0}

extern const struct FollowerPartner gFollowerPartners[FOLLOWER_PARTNERS_COUNT];

const struct FollowerPartner *GetFollowerPartner(void);
u8 GetStoryPartnerBackPic(void);
const struct FollowerPartyVariant *GetFollowerPartyVariant(u16 partnerId);
bool8 FillFollowerPartnerParty(u16 partnerId);

void FollowerBattle_OnBattleInit(void);
bool8 FollowerBattle_PartnerCanJoin(void);
void FollowerBattle_TryStartWild(void);
bool8 FollowerBattle_TryGiveCaughtMon(struct Pokemon *mon);
void FollowerBattle_SetHelpCatch(const u8 *foundText, const u8 *caughtText, const u16 *species);
bool8 FollowerBattle_ShouldAcknowledgeCatch(void);
void BufferHelpCatchCaughtLine(void);
void HelpCatchTargetCaught(void);
const u8 *FollowerBattle_GetHelpCatchLine(void);
bool8 FollowerBattle_IsHoldingBack(void);
bool8 FollowerBattle_HasSteppedAside(void);
bool8 FollowerBattle_TakeHelpCatchLine(void);
bool8 FollowerBattle_TryStepAside(void);
u8 FollowerBattle_ChooseHoldBackMove(u8 battler, const u16 *moves, const u8 *pp);
void FollowerBattle_RestoreParty(void);

// specials
void LoadFollowerPartnerParty(void);
void FollowerBattle_Prepare(void);
void FollowerBattle_ApplyChosenParty(void);
void IsTalkingToFollower(void);

#endif // GUARD_FOLLOWER_PARTIES_H
