#ifndef GUARD_CONSTANTS_FOLLOWER_PARTIES_H
#define GUARD_CONSTANTS_FOLLOWER_PARTIES_H

// IDs for followers that can join the player in a multi battle.
// Stored in VAR_FOLLOWER_PARTNER; parties are in src/data/follower_parties.h.
#define FOLLOWER_PARTNER_NONE   0
#define FOLLOWER_PARTNER_MAY    1

#define FOLLOWER_PARTNERS_COUNT 2

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
