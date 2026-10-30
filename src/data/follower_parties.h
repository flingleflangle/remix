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
// FOLLOWER_RIVAL_STARTER_1/2/3 as the species is the rival's own starter at that stage
// (whichever one they picked against the player's), so leave .moves out for those.

extern const struct FollowerPartyVariant gFollowerPartyVariants_May[];
extern const struct FollowerPartyVariant gFollowerPartyVariants_Brendan[];
extern const struct FollowerPartyVariant gFollowerPartyVariants_Wally[];

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
    [FOLLOWER_PARTNER_BRENDAN] =
    {
        .name = sText_FollowerBrendan,
        .trainerClass = TRAINER_CLASS_RIVAL,
        .backPic = TRAINER_BACK_PIC_BRENDAN,
        .gender = MALE,
        .otId = 30215,
        .variants = gFollowerPartyVariants_Brendan,
    },
    [FOLLOWER_PARTNER_WALLY] =
    {
        .name = sText_FollowerWally,
        .trainerClass = TRAINER_CLASS_RIVAL,
        .backPic = TRAINER_BACK_PIC_WALLY,
        .gender = MALE,
        .otId = 60812,
        .variants = gFollowerPartyVariants_Wally,
    },
};

// MAY
const struct FollowerPartyVariant gFollowerPartyVariants_May[] =
{
    // Fallback
    {
        .mons = {
            {
                .species = FOLLOWER_RIVAL_STARTER_2,
                .level = 20,
                .fixedIV = 15,
                .nature = NATURE_ADAMANT,
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
                .species = FOLLOWER_RIVAL_STARTER_2,
                .level = 20,
                .fixedIV = 15,
                .nature = NATURE_ADAMANT,
            },
        },
    },
    // Dynamo Badge: Route 112 and Mt. Chimney
    {
        .minBadges = 3,
        .mons = {
            {
                .species = SPECIES_WINGULL,
                .level = 23,
                .fixedIV = 15,
                .nature = NATURE_HASTY,
            },
            {
                .species = SPECIES_LOMBRE,
                .level = 23,
                .fixedIV = 15,
                .nature = NATURE_MODEST,
            },
            {
                .species = FOLLOWER_RIVAL_STARTER_2,
                .level = 25,
                .fixedIV = 15,
                .nature = NATURE_ADAMANT,
            },
        },
    },
    // Balance Badge: Route 119 and the Weather Institute
    {
        .minBadges = 5,
        .mons = {
            {
                .species = SPECIES_PELIPPER,
                .level = 29,
                .fixedIV = 18,
                .nature = NATURE_MODEST,
            },
            {
                .species = SPECIES_LOMBRE,
                .level = 29,
                .fixedIV = 18,
                .nature = NATURE_MODEST,
            },
            {
                .species = FOLLOWER_RIVAL_STARTER_2,
                .level = 31,
                .fixedIV = 18,
                .nature = NATURE_ADAMANT,
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
                .species = FOLLOWER_RIVAL_STARTER_3,
                .heldItem = ITEM_SITRUS_BERRY,
                .level = 36,
                .fixedIV = 20,
                .nature = NATURE_ADAMANT,
                .evs = {252, 252, 0, 0, 0, 6},
            },
        },
    },
    // Mind Badge: the Sootopolis crisis (Route 126)
    {
        .minBadges = 7,
        .mons = {
            {
                .species = SPECIES_PELIPPER,
                .heldItem = ITEM_SHARP_BEAK,
                .level = 40,
                .fixedIV = 22,
                .nature = NATURE_MODEST,
                .evs = {0, 0, 0, 0, 252, 6},
            },
            {
                .species = SPECIES_LUDICOLO,
                .level = 40,
                .fixedIV = 22,
                .nature = NATURE_MODEST,
            },
            {
                .species = FOLLOWER_RIVAL_STARTER_3,
                .heldItem = ITEM_SITRUS_BERRY,
                .level = 42,
                .fixedIV = 22,
                .nature = NATURE_ADAMANT,
                .evs = {252, 252, 0, 0, 0, 6},
            },
        },
    },
    FOLLOWER_PARTY_VARIANTS_END,
};

// BRENDAN (his vanilla teams: Wingull/Pelipper, Slugma and Tropius beside his starter)
const struct FollowerPartyVariant gFollowerPartyVariants_Brendan[] =
{
    // Fallback
    {
        .mons = {
            {
                .species = FOLLOWER_RIVAL_STARTER_2,
                .level = 20,
                .fixedIV = 15,
                .nature = NATURE_ADAMANT,
            },
            {
                .species = SPECIES_WINGULL,
                .level = 12,
                .fixedIV = 10,
                .nature = NATURE_HASTY,
            },
            {
                .species = SPECIES_SLUGMA,
                .level = 12,
                .fixedIV = 10,
                .nature = NATURE_MODEST,
            },
        },
    },
    // After beating him on Route 104 and getting the Stone Badge
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
                .species = SPECIES_SLUGMA,
                .level = 18,
                .fixedIV = 15,
                .nature = NATURE_MODEST,
            },
            {
                .species = FOLLOWER_RIVAL_STARTER_2,
                .level = 20,
                .fixedIV = 15,
                .nature = NATURE_ADAMANT,
            },
        },
    },
    // Dynamo Badge: Route 112 and Mt. Chimney
    {
        .minBadges = 3,
        .mons = {
            {
                .species = SPECIES_WINGULL,
                .level = 23,
                .fixedIV = 15,
                .nature = NATURE_HASTY,
            },
            {
                .species = SPECIES_SLUGMA,
                .level = 23,
                .fixedIV = 15,
                .nature = NATURE_MODEST,
            },
            {
                .species = FOLLOWER_RIVAL_STARTER_2,
                .level = 25,
                .fixedIV = 15,
                .nature = NATURE_ADAMANT,
            },
        },
    },
    // Balance Badge: Route 119 and the Weather Institute
    {
        .minBadges = 5,
        .mons = {
            {
                .species = SPECIES_PELIPPER,
                .level = 29,
                .fixedIV = 18,
                .nature = NATURE_MODEST,
            },
            {
                .species = SPECIES_SLUGMA,
                .level = 29,
                .fixedIV = 18,
                .nature = NATURE_MODEST,
            },
            {
                .species = FOLLOWER_RIVAL_STARTER_2,
                .level = 31,
                .fixedIV = 18,
                .nature = NATURE_ADAMANT,
            },
        },
    },
    // Two flags at once: met him in Lilycove and has the Feather Badge
    {
        .flags = {FLAG_MET_RIVAL_LILYCOVE, FLAG_BADGE06_GET},
        .mons = {
            {
                .species = SPECIES_TROPIUS,
                .level = 34,
                .fixedIV = 20,
                .nature = NATURE_ADAMANT,
            },
            {
                .species = SPECIES_PELIPPER,
                .heldItem = ITEM_SHARP_BEAK,
                .level = 34,
                .fixedIV = 20,
                .nature = NATURE_MODEST,
                .evs = {0, 0, 0, 0, 252, 6},
            },
            {
                .species = FOLLOWER_RIVAL_STARTER_3,
                .heldItem = ITEM_SITRUS_BERRY,
                .level = 36,
                .fixedIV = 20,
                .nature = NATURE_ADAMANT,
                .evs = {252, 252, 0, 0, 0, 6},
            },
        },
    },
    // Mind Badge: the Sootopolis crisis (Route 126)
    {
        .minBadges = 7,
        .mons = {
            {
                .species = SPECIES_TROPIUS,
                .level = 40,
                .fixedIV = 22,
                .nature = NATURE_ADAMANT,
            },
            {
                .species = SPECIES_PELIPPER,
                .heldItem = ITEM_SHARP_BEAK,
                .level = 40,
                .fixedIV = 22,
                .nature = NATURE_MODEST,
                .evs = {0, 0, 0, 0, 252, 6},
            },
            {
                .species = FOLLOWER_RIVAL_STARTER_3,
                .heldItem = ITEM_SITRUS_BERRY,
                .level = 42,
                .fixedIV = 22,
                .nature = NATURE_ADAMANT,
                .evs = {252, 252, 0, 0, 0, 6},
            },
        },
    },
    FOLLOWER_PARTY_VARIANTS_END,
};

// WALLY: one team per place he can tag along (the player's badges at the time)
const struct FollowerPartyVariant gFollowerPartyVariants_Wally[] =
{
    // Route 116, after he's left VERDANTURF: his RALTS, with a ROSELIA as backup
    {
        .mons = {
            {
                .species = SPECIES_ROSELIA,
                .level = 18,
                .fixedIV = 12,
                .nature = NATURE_MODEST,
                .moves = {MOVE_POISON_STING, MOVE_MEGA_DRAIN, MOVE_GRASS_WHISTLE},
            },
            {
                .species = SPECIES_RALTS,
                .level = 19,
                .fixedIV = 15,
                .nature = NATURE_MODEST,
            },
        },
    },
    // NEW MAUVILLE: he's caught his SKITTY and his RALTS has evolved (his MARILL sits this one out)
    {
        .minBadges = 5,
        .mons = {
            {
                .species = SPECIES_SKITTY,
                .level = 27,
                .fixedIV = 15,
                .nature = NATURE_JOLLY,
            },
            {
                .species = SPECIES_ROSELIA,
                .level = 28,
                .fixedIV = 15,
                .nature = NATURE_MODEST,
            },
            {
                .species = SPECIES_KIRLIA,
                .level = 29,
                .fixedIV = 18,
                .nature = NATURE_ADAMANT,
            },
        },
    },
    // METEOR FALLS: his SWABLU has become an ALTARIA; KIRLIA and ROSELIA are waiting on their stones
    {
        .minBadges = 6,
        .mons = {
            {
                .species = SPECIES_ROSELIA,
                .level = 35,
                .fixedIV = 18,
                .nature = NATURE_MODEST,
            },
            {
                .species = SPECIES_KIRLIA,
                .level = 35,
                .fixedIV = 20,
                .nature = NATURE_ADAMANT,
            },
            {
                .species = SPECIES_ALTARIA,
                .level = 36,
                .fixedIV = 20,
                .nature = NATURE_MODEST,
            },
        },
    },
    FOLLOWER_PARTY_VARIANTS_END,
};
