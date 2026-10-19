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
//
// How an EX form is unlocked. A species can use any of these, or none:
// - .unlockStat unlocks the EX form through training, once the Pokémon has at least
//   EX_UNLOCK_EV_THRESHOLD (230) EVs in that stat. Use the stat's MON_DATA_*_EV, such as
//   MON_DATA_ATK_EV or MON_DATA_SPEED_EV. It's checked after the Pokémon
//   gains EXP in battle, with a message (BattleScript_ExTrainingUnlock).
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
//   (see data/battle_scripts_ex.s). A held crystal still adds the EX moves of its types,
//   and an ability in sExMoveAbilities (battle_util.c) adds the EX moves in its list
//   (Wishmaker adds every EX move).

static const u16 sMawileExMoves[] =
{
    MOVE_CRUNCH,
    MOVE_ROCK_TOMB,
    MOVE_FAKE_TEARS,
    MOVE_SWORDS_DANCE,
    MOVE_NONE,
};

static const u16 sSceptileExMoves[] =
{
    MOVE_OLD_FURY_CUTTER,
    MOVE_FURY_CUTTER,
    MOVE_LEAF_BLADE,
    MOVE_BULLET_SEED,
    MOVE_AGILITY,
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
        .backAnim = BACK_ANIM_SHAKE_FLASH_YELLOW,
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

    // Planned EX forms, not made yet:
    // [SPECIES_MAGNEMITE] =
    // [SPECIES_BUTTERFREE] =
    // [SPECIES_BEEDRILL] =
    // [SPECIES_NIDOKING] =
    // [SPECIES_NIDOQUEEN] =
    // [SPECIES_SNEASEL] =
    // [SPECIES_LEDIAN] =
    // [SPECIES_NOSEPASS] =
    // [SPECIES_SABLEYE] =
    // [SPECIES_AGGRON] =
    // [SPECIES_TORKOAL] =
    // [SPECIES_FLYGON] =
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
