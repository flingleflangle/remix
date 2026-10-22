// EX forms.
//
// An EX form isn't a separate species. It's a switch stored on each Pokémon (MON_DATA_IS_EX).
// A Pokémon changes into its EX form as soon as it's unlocked (MON_DATA_EX_UNLOCKED), and
// after that the player can switch it back and forth on the summary screen with Select
// (unless it's exFixed). An EX form's data is only used while its species has
// .exEnabled = TRUE in species_info.h, so setting that to FALSE turns the EX form off
// everywhere without deleting anything here.
//
// Each entry lists only what the EX form changes:
// - Base stats are added to the species' regular base stats. Negative numbers subtract,
//   and leaving one out keeps that stat the same.
// - .types replaces the species' types.
// - .ability is the only ability the EX form can have. Its regular abilities return when
//   it switches back.
// - .frontPic, .backPic, .palette and .shinyPalette replace the regular graphics. Leave one
//   out to keep the regular one. An EX sprite is positioned like the regular sprite, so it
//   should be drawn to fit the same space. The front and back sprites share one palette, so
//   an EX back sprite should use the same colors as the EX front sprite.
//   The EX palette can be taken straight from an EX picture's colors, for example in
//   src/data/graphics/pokemon.h:
//     const u32 gMonBackPic_MawileEX[] = INCBIN_U32("graphics/pokemon/mawile/EXback.4bpp.lz");
//     const u32 gMonPalette_MawileEX[] = INCBIN_U32("graphics/pokemon/mawile/EXfront.gbapal.lz");
//   (plus an extern for each in include/graphics.h). The build makes EXfront.gbapal from
//   EXfront.png. A shiny EX palette needs its own picture or .pal file, such as EXshiny.pal.
//   Without an EX shiny palette, a shiny EX Pokémon uses the regular shiny palette.
// - .noFlip is the EX front sprite's version of species_info.h's noFlip.
// - .backAnim replaces the battle back sprite animation (BACK_ANIM_*). Leave it out to keep
//   the regular one.
// - .frontAnim replaces the front sprite's movement, written as FRONT_ANIM(ANIM_*), such as
//   FRONT_ANIM(ANIM_H_SHAKE). The ANIM_* list is in include/pokemon_animation.h, and
//   sMonFrontAnimIdsTable in pokemon.c shows which one each species uses. Leave it out to
//   keep the regular one. .frontAnimDelay is how many frames to wait before it starts
//   (0 for none), and is only used along with .frontAnim.
// - .frontFrames replaces when the front sprite switches between the two frames of its
//   anim_front picture. Leave it out to keep the regular timing (front_pic_anims.h).
//   Make one with EX_FRONT_FRAMES below, and list the frames as ANIMCMD_FRAME(frame, duration):
//     static const union AnimCmd sAnim_FlygonEx_1[] =
//     {
//         ANIMCMD_FRAME(0, 10),
//         ANIMCMD_FRAME(1, 30),
//         ANIMCMD_FRAME(0, 20),
//         ANIMCMD_END,
//     };
//     EX_FRONT_FRAMES(FlygonEx);
//   and then .frontFrames = sAnims_FlygonEx in the entry.
// - .grounded = TRUE makes an enemy's EX front sprite stand on the ground in battle, for a
//   species that normally floats (gEnemyMonElevation). It also hides the floating shadow.
// - .frontYOffset is added to the regular front sprite's y_offset (front_pic_coordinates.h),
//   for an EX front sprite with a different number of empty rows below it.
//
// How an EX form is unlocked. A species can use any of these, or none:
// - .unlockStat unlocks the EX form through training, once the Pokémon has at least
//   EX_UNLOCK_EV_THRESHOLD (230) EVs in that stat. Use the stat's MON_DATA_*_EV, such as
//   MON_DATA_ATK_EV or MON_DATA_SPEED_EV. It's checked after the Pokémon
//   gains EXP in battle, with a message (BattleScript_ExTrainingUnlock).
//   .unlockStat = MON_DATA_FRIENDSHIP instead unlocks it once the Pokémon has at least
//   EX_UNLOCK_FRIENDSHIP_THRESHOLD (220) friendship. It's checked at the same time, with its own message.
// - .unlockItem unlocks the EX form when used on the Pokémon from the bag.
// - A story event unlocks it with "grantex SPECIES_X" in a script, for every Pokémon of
//   that species in the party (see asm/macros/event.inc). Any species with an EX form can
//   be granted this way, so it needs nothing here.
// - An NPC can unlock it for one Pokémon the player chooses from the party, like a move tutor,
//   with "goto EventScript_ExTutor" (see data/scripts/ex_tutor.inc). That also needs nothing here.
// - A gift or static encounter Pokémon can be EX from the start with "givemon ..., ex=TRUE"
//   or "setwildbattle ..., ex=TRUE". Wild Pokémon are never EX. A species whose only EX is
//   one of these needs no unlock criteria here.
// - .exFixed = TRUE means a Pokémon in its EX form can't switch back to its regular form.
// - .exMoves lists the moves the EX form can always use as EX moves, with no crystal or
//   ability needed. End the list with MOVE_NONE. A move only counts if it has an EX version
//   (see data/ex_battle_scripts.s). A held crystal still adds the EX moves of its types,
//   and an ability in sExMoveAbilities (battle_util.c) adds the EX moves in its list
//   (Wishmaker adds every EX move).

// The still first frame every front sprite rests on, like data.c's sAnim_GeneralFrame0
static const union AnimCmd sAnim_ExFrame0[] =
{
    ANIMCMD_FRAME(0, 0),
    ANIMCMD_END,
};

// An EX form's .frontFrames, made from sAnim_<name>_1. See .frontFrames above
#define EX_FRONT_FRAMES(name)                       \
static const union AnimCmd *const sAnims_##name[] = \
{                                                   \
    sAnim_ExFrame0,                                 \
    sAnim_##name##_1,                               \
}

static const union AnimCmd sAnim_FlygonEX_1[] =
{
    ANIMCMD_FRAME(1, 20),
    ANIMCMD_FRAME(0, 20),
    ANIMCMD_END,
};
EX_FRONT_FRAMES(FlygonEX);

static const u16 sMawileExMoves[] =
{
    MOVE_BITE,
    MOVE_CRUNCH,
    MOVE_ROCK_TOMB,
    MOVE_FAKE_TEARS,
    MOVE_SWORDS_DANCE,
    MOVE_NONE,
};

static const u16 sSceptileExMoves[] =
{
    MOVE_ABSORB,
    MOVE_MEGA_DRAIN,
    MOVE_FURY_CUTTER,
    MOVE_OLD_FURY_CUTTER,
    MOVE_LEAF_BLADE,
    MOVE_BULLET_SEED,
    MOVE_AGILITY,
    MOVE_NONE,
};

static const u16 sFlygonExMoves[] =
{
    MOVE_BITE,
    MOVE_SAND_ATTACK,
    MOVE_SAND_TOMB,
    MOVE_MAGNITUDE,
    MOVE_EARTHQUAKE,
    MOVE_DRAGON_DANCE,
    MOVE_HYPER_VOICE,
    MOVE_NONE,
};

static const u16 sLuvdiscExMoves[] =
{
    MOVE_ATTRACT,
    MOVE_SWEET_KISS,
    MOVE_LOVELY_KISS,
    MOVE_SWAGGER,
    MOVE_FLATTER,
    MOVE_NONE,
};

const struct ExFormInfo gExFormInfo[NUM_SPECIES] =
{
    [SPECIES_MAWILE] =
    {
        .baseSpAttack = +30,
        .types = { TYPE_STEEL, TYPE_DARK },
        .ability = ABILITY_HUGE_POWER,
        .noFlip = TRUE,
        .unlockStat = MON_DATA_ATK_EV,
        .exMoves = sMawileExMoves,
        .frontPic = gMonFrontPic_MawileEX,
    },

    [SPECIES_SCEPTILE] =
    {
        .baseAttack = +10,
        .baseSpAttack = +20,
        .types = { TYPE_GRASS, TYPE_DRAGON },
        .ability = ABILITY_LIGHTNING_ROD,
        .noFlip = TRUE,
        .unlockStat = MON_DATA_SPATK_EV,
        .exMoves = sSceptileExMoves,
    },

    [SPECIES_FLYGON] =
    {
        .baseHP = +20,
        .baseAttack = -20,
        .baseDefense = -10,
        .baseSpeed = +10,
        .baseSpAttack = +30,
        .types = { TYPE_GROUND, TYPE_SOUND },
        .ability = ABILITY_MYSTIC_VEIL,
        .noFlip = TRUE,
        .grounded = TRUE,
        .frontYOffset = +4,
        .unlockStat = MON_DATA_SPATK_EV,
        .exMoves = sFlygonExMoves,
        .frontPic = gMonFrontPic_FlygonEX,
        .frontAnim = FRONT_ANIM(ANIM_H_VIBRATE),
        .frontFrames = sAnims_FlygonEX,
        .backAnim = BACK_ANIM_H_VIBRATE,
    },

    [SPECIES_LUVDISC] =
    {
        .baseHP = +27,
        .baseSpeed = +3,
        .types = { TYPE_WATER, TYPE_ASTRAL },
        .ability = ABILITY_FIRST_SIGHT,
        .noFlip = TRUE,
        .grounded = TRUE,
        .unlockStat = MON_DATA_SPEED_EV,
        .exMoves = sLuvdiscExMoves,
    },

    [SPECIES_LEDIAN] =
    {
        .baseHP = +35,
        .baseAttack = -15,
        .types = { TYPE_ASTRAL, TYPE_FIGHTING },
        .ability = ABILITY_NORTH_STAR,
        .unlockStat = MON_DATA_FRIENDSHIP,
        .exMoves = sLuvdiscExMoves,
    },

    // Planned EX forms, not made yet:
    // [SPECIES_MAGNEMITE] =
    // [SPECIES_BUTTERFREE] =
    // [SPECIES_BEEDRILL] =
    // [SPECIES_NIDOKING] =
    // [SPECIES_NIDOQUEEN] =
    // [SPECIES_SNEASEL] =
    // [SPECIES_NOSEPASS] =
    // [SPECIES_SABLEYE] =
    // [SPECIES_AGGRON] =
    // [SPECIES_TORKOAL] =
    // [SPECIES_GLALIE] =
    // [SPECIES_DRAGONITE] =
    // [SPECIES_TYRANITAR] =
    // [SPECIES_SLAKING] =
    // [SPECIES_LAPRAS] =
    // [SPECIES_SKARMORY] =
    // [SPECIES_SOLROCK] =
    // [SPECIES_LUNATONE] =
    // [SPECIES_KECLEON] =
    // [SPECIES_JIRACHI] =
};
