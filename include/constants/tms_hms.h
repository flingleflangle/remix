#ifndef GUARD_CONSTANTS_TMS_HMS_H
#define GUARD_CONSTANTS_TMS_HMS_H

#define FOREACH_TM(F) \
    F(FOCUS_PUNCH) \
    F(DRAGON_CLAW) \
    F(BUBBLE_BEAM) \
    F(CALM_MIND) \
    F(MUDDY_WATER) \
    F(TOXIC) \
    F(HAIL) \
    F(SWORDS_DANCE) \
    F(LEECH_SEED) \
    F(BLAZE_KICK) \
    F(SUNNY_DAY) \
    F(U_TURN) \
    F(ICE_PUNCH) \
    F(BLIZZARD) \
    F(HYPER_BEAM) \
    F(LIGHT_SCREEN) \
    F(PROTECT) \
    F(RAIN_DANCE) \
    F(GIGA_DRAIN) \
    F(SELF_DESTRUCT) \
    F(OUTRAGE) \
    F(SOLAR_BEAM) \
    F(IRON_TAIL) \
    F(ZAP_CANNON) \
    F(THUNDER) \
    F(EARTHQUAKE) \
    F(METEOR_MASH) \
    F(TOMBSTONER) \
    F(PSYCHIC) \
    F(SHADOW_BALL) \
    F(BRICK_BREAK) \
    F(DOUBLE_TEAM) \
    F(REFLECT) \
    F(THUNDER_PUNCH) \
    F(FIRE_PUNCH) \
    F(SLUDGE_BOMB) \
    F(SANDSTORM) \
    F(FIRE_BLAST) \
    F(MUD_SLAP) \
    F(AERIAL_ACE) \
    F(CURSE) \
    F(FACADE) \
    F(SECRET_POWER) \
    F(REST) \
    F(LEAF_BLADE) \
    F(THIEF) \
    F(ROCK_SLIDE) \
    F(REVERSAL) \
    F(CRUNCH) \
    F(OVERHEAT) \
    F(TRI_ATTACK) 

#define FOREACH_HM(F) \
    F(CUT) \
    F(FLY) \
    F(SURF) \
    F(STRENGTH) \
    F(FLASH) \
    F(ROCK_SMASH) \
    F(WATERFALL) \
    F(DIVE)

#define FOREACH_TMHM(F) \
    FOREACH_TM(F) \
    FOREACH_HM(F)

#endif
