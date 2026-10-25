// Parties a follower brings into a multi battle with the player.
//
// The followers who can battle beside the player (FOLLOWER_PARTNER_*), then each one's
// list of party variants.
//
// A follower's list is checked from the BOTTOM up and the first variant whose
// requirements are all met is used, so write them early-to-late, with later-game
// variants lower down. A variant's requirements are:
//   .flags     - every flag listed must be set (up to FOLLOWER_PARTY_MAX_FLAGS)
//   .minBadges - the player needs at least this many badges
// Variants with no requirements are only used as the fallback: if nothing else
// matches, the highest variant in the list with no requirements is used.
// End each list with FOLLOWER_PARTY_VARIANTS_END.
//
// Mons: up to 3. Leave .moves out to use the level-up moveset for that level.

extern const struct FollowerPartyVariant gFollowerPartyVariants_May[];

const struct FollowerPartner gFollowerPartners[FOLLOWER_PARTNERS_COUNT] =
{
    [FOLLOWER_PARTNER_MAY] =
    {
        .name = sText_FollowerMay,
        .trainerClass = TRAINER_CLASS_RIVAL,
        .backPic = TRAINER_BACK_PIC_MAY,
        .gender = FEMALE,
        .otId = 51203,
        .variants = gFollowerPartyVariants_May,
    },
};

// MAY
const struct FollowerPartyVariant gFollowerPartyVariants_May[] =
{
    // Fallback
    {
        .mons = {
            {
                .species = SPECIES_MARSHTOMP,
                .level = 20,
                .fixedIV = 15,
                .nature = NATURE_ADAMANT,
                .moves = {MOVE_MUD_SHOT, MOVE_WATER_GUN, MOVE_TACKLE},
            },
            {
                .species = SPECIES_WINGULL,
                .level = 12,
                .fixedIV = 10,
                .nature = NATURE_HASTY,
            },
            {
                .species = SPECIES_LOTAD,
                .level = 12,
                .fixedIV = 10,
                .nature = NATURE_MODEST,
            },
        },
    },
    // After beating her on Route 104 and getting the Stone Badge
    {
        .flags = {FLAG_DEFEATED_RIVAL_ROUTE_104},
        .minBadges = 1,
        .mons = {
            {
                .species = SPECIES_WINGULL,
                .level = 18,
                .fixedIV = 15,
                .nature = NATURE_HASTY,
            },
            {
                .species = SPECIES_LOMBRE,
                .level = 18,
                .fixedIV = 15,
                .nature = NATURE_MODEST,
            },
            {
                .species = SPECIES_MARSHTOMP,
                .level = 20,
                .fixedIV = 15,
                .nature = NATURE_ADAMANT,
                .moves = {MOVE_MUD_SHOT, MOVE_WATER_GUN, MOVE_PROTECT, MOVE_TACKLE},
            },
        },
    },
    // Two flags at once: met her in Lilycove and has the Feather Badge
    {
        .flags = {FLAG_MET_RIVAL_LILYCOVE, FLAG_BADGE06_GET},
        .mons = {
            {
                .species = SPECIES_PELIPPER,
                .heldItem = ITEM_SHARP_BEAK,
                .level = 34,
                .fixedIV = 20,
                .nature = NATURE_MODEST,
                .evs = {0, 0, 0, 0, 252, 6},
            },
            {
                .species = SPECIES_LUDICOLO,
                .level = 34,
                .fixedIV = 20,
                .nature = NATURE_MODEST,
            },
            {
                .species = SPECIES_SWAMPERT,
                .heldItem = ITEM_SITRUS_BERRY,
                .level = 36,
                .fixedIV = 20,
                .nature = NATURE_ADAMANT,
                .evs = {252, 252, 0, 0, 0, 6},
            },
        },
    },
    FOLLOWER_PARTY_VARIANTS_END,
};
