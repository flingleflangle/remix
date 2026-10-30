#ifndef GUARD_CONSTANTS_FOLLOWER_PARTIES_H
#define GUARD_CONSTANTS_FOLLOWER_PARTIES_H

// IDs for followers that can join the player in a multi battle.
// Stored in VAR_FOLLOWER_PARTNER; parties are in src/data/follower_parties.h.
#define FOLLOWER_PARTNER_NONE   0
#define FOLLOWER_PARTNER_MAY    1
#define FOLLOWER_PARTNER_BRENDAN 2
#define FOLLOWER_PARTNER_WALLY  3

#define FOLLOWER_PARTNERS_COUNT 4

// Use as a party mon's .species for the rival's own starter (the one they picked to beat the
// player's, as in their real battles), at that evolution stage. Leave .moves out for these.
#define FOLLOWER_RIVAL_STARTER_1 0xFFFD // Treecko / Torchic / Mudkip
#define FOLLOWER_RIVAL_STARTER_2 0xFFFE // Grovyle / Combusken / Marshtomp
#define FOLLOWER_RIVAL_STARTER_3 0xFFFF // Sceptile / Blaziken / Swampert

// Max flags a single party variant can require (all must be set).
#define FOLLOWER_PARTY_MAX_FLAGS 4

// Wild Pokémon facing the player and their follower are this many levels higher (random in range)
#define FOLLOWER_WILD_LEVEL_BOOST_MIN 4
#define FOLLOWER_WILD_LEVEL_BOOST_MAX 7

// FollowerBattle_Prepare results
#define FOLLOWER_BATTLE_NONE   0 // normal battle
#define FOLLOWER_BATTLE_READY  1 // multi battle with the follower, party is set
#define FOLLOWER_BATTLE_CHOOSE 2 // multi battle with the follower, player picks 3 first

#endif // GUARD_CONSTANTS_FOLLOWER_PARTIES_H
