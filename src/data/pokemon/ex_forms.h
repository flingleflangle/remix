// EX forms.
//
// An EX form isn't a separate species. It's a switch stored on each Pokémon (MON_DATA_IS_EX),
// which the player can flip on the summary screen once the Pokémon has it unlocked
// (MON_DATA_EX_UNLOCKED). An EX form's data is only used while its species has
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
//   should be drawn to fit the same space.
// - .noFlip is the EX front sprite's version of species_info.h's noFlip.
// - .backAnim replaces the battle back sprite animation (BACK_ANIM_*). Leave it out to keep
//   the regular one.
// - .unlockItem unlocks the EX form when used on the Pokémon from the bag. Leave it out if
//   nothing should unlock it that way.
// - .exMoves lists the moves the EX form can always use as EX moves, with no crystal or
//   ability needed. End the list with MOVE_NONE. A move only counts if it has an EX version
//   (see data/battle_scripts_ex.s). A held crystal still adds the EX moves of its types,
//   and an ability in sExMoveAbilities (battle_util.c) adds the EX moves in its list
//   (Wishmaker adds every EX move).

static const u16 sMawileExMoves[] =
{
    MOVE_CRUNCH,
    MOVE_FAKE_TEARS,
    MOVE_SWORDS_DANCE,
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
        .unlockItem = ITEM_MOON_STONE,
        .exMoves = sMawileExMoves,
        .frontPic = gMonFrontPic_MawileEX,
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
