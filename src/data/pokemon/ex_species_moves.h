// Species EX moves.
//
// A Pokémon of a species listed here can always use these EX moves, whatever its ability, and in or
// out of its EX form (see CanBattlerUseExMove in battle_util.c). This stacks with the other ways to
// get EX moves: EX forms (ex_forms.h), abilities (sExMoveAbilities), and held crystals (sExMoveCrystals).
// Each species is separate, so an evolution needs its own moves. A Pokémon transformed into a species
// gets that species' EX moves too, like it does an ability.
//
// .exMoves: replace a MOVE_NONE with a move to give the species that EX move. Each species has 1-3
//   slots, by its base stat total, noted after it: 3 for 385 or below, 2 for 386-455, 1 above that.
//   A move only works here if it has an EX version for everyone (data/ex_battle_scripts.s), or is a
//   damaging move that gets the default EX boost (see CanMoveGetDefaultExBoost).
// .allExMoves = TRUE: the species can use every EX move, like Wishmaker.
// .exVersions: the species' own EX versions of moves, which it can always use too. For that species
//   only, they replace the move's usual EX version (script, upgrade, or bonus), so a move can do
//   different things as an EX move for different species. Like gExMoves in data/ex_battle_scripts.s,
//   each has EX_FLAG_* .flags, a .script, or both. Without a script, it runs its regular script with
//   just the flags. Each list ends with MOVE_NONE, and each script goes in data/ex_battle_scripts.s,
//   with an extern in include/battle_scripts.h:
//     static const struct ExMove sPikachuExVersions[] =
//     {
//         { MOVE_THUNDER, .script = BattleScript_ExThunderPikachu },
//         { MOVE_THUNDERBOLT, .flags = EX_FLAG_SURE_EFFECT },
//         { MOVE_NONE },
//     };
//     ...
//     [SPECIES_PIKACHU] = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE }, .exVersions = sPikachuExVersions },

static const struct ExMove sVoltorbExVersions[] =
{
    { MOVE_EXPLOSION, .script = BattleScript_ExExplosionVoltorb },
    { MOVE_NONE },
};

static const struct ExMove sGlalieExVersions[] =
{
    { MOVE_EXPLOSION, .script = BattleScript_ExExplosionGlalie },
    { MOVE_NONE },
};

static const struct ExMove sBanetteExVersions[] =
{
    { MOVE_SUBSTITUTE, .flags = EX_FLAG_NO_HP_COST },
    { MOVE_SELF_DESTRUCT, .script = BattleScript_ExSelfDestructBanette },
    { MOVE_NONE },
};

static const struct SpeciesExMoves sSpeciesExMoves[NUM_SPECIES] =
{
    [SPECIES_BULBASAUR]    = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 318: 3 EX slots
    [SPECIES_IVYSAUR]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 405: 2 EX slots
    [SPECIES_VENUSAUR]     = { .exMoves = { MOVE_NONE } }, // 525: 1 EX slot
    [SPECIES_CHARMANDER]   = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 309: 3 EX slots
    [SPECIES_CHARMELEON]   = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 405: 2 EX slots
    [SPECIES_CHARIZARD]    = { .exMoves = { MOVE_NONE } }, // 534: 1 EX slot
    [SPECIES_SQUIRTLE]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 314: 3 EX slots
    [SPECIES_WARTORTLE]    = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 405: 2 EX slots
    [SPECIES_BLASTOISE]    = { .exMoves = { MOVE_NONE } }, // 530: 1 EX slot
    [SPECIES_CATERPIE]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 195: 3 EX slots
    [SPECIES_METAPOD]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 205: 3 EX slots
    [SPECIES_BUTTERFREE]   = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 395: 2 EX slots
    [SPECIES_WEEDLE]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 195: 3 EX slots
    [SPECIES_KAKUNA]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 205: 3 EX slots
    [SPECIES_BEEDRILL]     = { .exMoves = { MOVE_FINAL_STING, MOVE_NONE } }, // 395: 2 EX slots
    [SPECIES_PIDGEY]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 251: 3 EX slots
    [SPECIES_PIDGEOTTO]    = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 349: 3 EX slots
    [SPECIES_PIDGEOT]      = { .exMoves = { MOVE_NONE } }, // 479: 1 EX slot
    [SPECIES_RATTATA]      = { .exMoves = { MOVE_HYPER_FANG, MOVE_NONE, MOVE_NONE } }, // 253: 3 EX slots
    [SPECIES_RATICATE]     = { .exMoves = { MOVE_HYPER_FANG, MOVE_NONE } }, // 413: 2 EX slots
    [SPECIES_SPEAROW]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 262: 3 EX slots
    [SPECIES_FEAROW]       = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 442: 2 EX slots
    [SPECIES_EKANS]        = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 288: 3 EX slots
    [SPECIES_ARBOK]        = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 448: 2 EX slots
    [SPECIES_PIKACHU]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 320: 3 EX slots
    [SPECIES_RAICHU]       = { .exMoves = { MOVE_NONE } }, // 485: 1 EX slot
    [SPECIES_SANDSHREW]    = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 300: 3 EX slots
    [SPECIES_SANDSLASH]    = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 450: 2 EX slots
    [SPECIES_NIDORAN_F]    = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 275: 3 EX slots
    [SPECIES_NIDORINA]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 365: 3 EX slots
    [SPECIES_NIDOQUEEN]    = { .exMoves = { MOVE_NONE } }, // 505: 1 EX slot
    [SPECIES_NIDORAN_M]    = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 273: 3 EX slots
    [SPECIES_NIDORINO]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 365: 3 EX slots
    [SPECIES_NIDOKING]     = { .exMoves = { MOVE_NONE } }, // 505: 1 EX slot
    [SPECIES_CLEFAIRY]     = { .exMoves = { MOVE_METEOR_MASH, MOVE_NONE, MOVE_NONE } }, // 323: 3 EX slots
    [SPECIES_CLEFABLE]     = { .exMoves = { MOVE_METEOR_MASH } }, // 483: 1 EX slot
    [SPECIES_VULPIX]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 299: 3 EX slots
    [SPECIES_NINETALES]    = { .exMoves = { MOVE_NONE } }, // 505: 1 EX slot
    [SPECIES_JIGGLYPUFF]   = { .exMoves = { MOVE_SING, MOVE_NONE, MOVE_NONE } }, // 270: 3 EX slots
    [SPECIES_WIGGLYTUFF]   = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 435: 2 EX slots
    [SPECIES_ZUBAT]        = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 245: 3 EX slots
    [SPECIES_GOLBAT]       = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 455: 2 EX slots
    [SPECIES_ODDISH]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 320: 3 EX slots
    [SPECIES_GLOOM]        = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 395: 2 EX slots
    [SPECIES_VILEPLUME]    = { .exMoves = { MOVE_NONE } }, // 490: 1 EX slot
    [SPECIES_PARAS]        = { .exMoves = { MOVE_LEECH_LIFE, MOVE_NONE, MOVE_NONE } }, // 285: 3 EX slots
    [SPECIES_PARASECT]     = { .exMoves = { MOVE_LEECH_LIFE, MOVE_NONE } }, // 405: 2 EX slots
    [SPECIES_VENONAT]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 305: 3 EX slots
    [SPECIES_VENOMOTH]     = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 450: 2 EX slots
    [SPECIES_DIGLETT]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 265: 3 EX slots
    [SPECIES_DUGTRIO]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 425: 2 EX slots
    [SPECIES_MEOWTH]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 290: 3 EX slots
    [SPECIES_PERSIAN]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 440: 2 EX slots
    [SPECIES_PSYDUCK]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 320: 3 EX slots
    [SPECIES_GOLDUCK]      = { .exMoves = { MOVE_NONE } }, // 500: 1 EX slot
    [SPECIES_MANKEY]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 305: 3 EX slots
    [SPECIES_PRIMEAPE]     = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 455: 2 EX slots
    [SPECIES_GROWLITHE]    = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 350: 3 EX slots
    [SPECIES_ARCANINE]     = { .exMoves = { MOVE_EXTREME_SPEED } }, // 555: 1 EX slot
    [SPECIES_POLIWAG]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 300: 3 EX slots
    [SPECIES_POLIWHIRL]    = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 385: 3 EX slots
    [SPECIES_POLIWRATH]    = { .exMoves = { MOVE_NONE } }, // 510: 1 EX slot
    [SPECIES_ABRA]         = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 310: 3 EX slots
    [SPECIES_KADABRA]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 400: 2 EX slots
    [SPECIES_ALAKAZAM]     = { .exMoves = { MOVE_NONE } }, // 500: 1 EX slot
    [SPECIES_MACHOP]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 305: 3 EX slots
    [SPECIES_MACHOKE]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 405: 2 EX slots
    [SPECIES_MACHAMP]      = { .exMoves = { MOVE_NONE } }, // 505: 1 EX slot
    [SPECIES_BELLSPROUT]   = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 300: 3 EX slots
    [SPECIES_WEEPINBELL]   = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 390: 2 EX slots
    [SPECIES_VICTREEBEL]   = { .exMoves = { MOVE_NONE } }, // 490: 1 EX slot
    [SPECIES_TENTACOOL]    = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 335: 3 EX slots
    [SPECIES_TENTACRUEL]   = { .exMoves = { MOVE_NONE } }, // 515: 1 EX slot
    [SPECIES_GEODUDE]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 300: 3 EX slots
    [SPECIES_GRAVELER]     = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 390: 2 EX slots
    [SPECIES_GOLEM]        = { .exMoves = { MOVE_NONE } }, // 495: 1 EX slot
    [SPECIES_PONYTA]       = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 410: 2 EX slots
    [SPECIES_RAPIDASH]     = { .exMoves = { MOVE_NONE } }, // 500: 1 EX slot
    [SPECIES_SLOWPOKE]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 315: 3 EX slots
    [SPECIES_SLOWBRO]      = { .exMoves = { MOVE_NONE } }, // 490: 1 EX slot
    [SPECIES_MAGNEMITE]    = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 325: 3 EX slots
    [SPECIES_MAGNETON]     = { .exMoves = { MOVE_NONE } }, // 465: 1 EX slot
    [SPECIES_FARFETCHD]    = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 377: 3 EX slots
    [SPECIES_DODUO]        = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 310: 3 EX slots
    [SPECIES_DODRIO]       = { .exMoves = { MOVE_NONE } }, // 470: 1 EX slot
    [SPECIES_SEEL]         = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 325: 3 EX slots
    [SPECIES_DEWGONG]      = { .exMoves = { MOVE_NONE } }, // 475: 1 EX slot
    [SPECIES_GRIMER]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 325: 3 EX slots
    [SPECIES_MUK]          = { .exMoves = { MOVE_NONE } }, // 500: 1 EX slot
    [SPECIES_SHELLDER]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 305: 3 EX slots
    [SPECIES_CLOYSTER]     = { .exMoves = { MOVE_NONE } }, // 525: 1 EX slot
    [SPECIES_GASTLY]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 310: 3 EX slots
    [SPECIES_HAUNTER]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 405: 2 EX slots
    [SPECIES_GENGAR]       = { .exMoves = { MOVE_NONE } }, // 500: 1 EX slot
    [SPECIES_ONIX]         = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 385: 3 EX slots
    [SPECIES_DROWZEE]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 328: 3 EX slots
    [SPECIES_HYPNO]        = { .exMoves = { MOVE_NONE } }, // 483: 1 EX slot
    [SPECIES_KRABBY]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 325: 3 EX slots
    [SPECIES_KINGLER]      = { .exMoves = { MOVE_CRABHAMMER } }, // 475: 1 EX slot
    [SPECIES_VOLTORB]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE }, .exVersions = sVoltorbExVersions }, // 330: 3 EX slots
    [SPECIES_ELECTRODE]    = { .exMoves = { MOVE_NONE }, .exVersions = sVoltorbExVersions }, // 490: 1 EX slot
    [SPECIES_EXEGGCUTE]    = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 325: 3 EX slots
    [SPECIES_EXEGGUTOR]    = { .exMoves = { MOVE_NONE } }, // 530: 1 EX slot
    [SPECIES_CUBONE]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 320: 3 EX slots
    [SPECIES_MAROWAK]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 425: 2 EX slots
    [SPECIES_HITMONLEE]    = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 455: 2 EX slots
    [SPECIES_HITMONCHAN]   = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 455: 2 EX slots
    [SPECIES_LICKITUNG]    = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 385: 3 EX slots
    [SPECIES_KOFFING]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 340: 3 EX slots
    [SPECIES_WEEZING]      = { .exMoves = { MOVE_NONE } }, // 490: 1 EX slot
    [SPECIES_RHYHORN]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 345: 3 EX slots
    [SPECIES_RHYDON]       = { .exMoves = { MOVE_NONE } }, // 485: 1 EX slot
    [SPECIES_CHANSEY]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 450: 2 EX slots
    [SPECIES_TANGELA]      = { .exMoves = { MOVE_NONE } }, // 475: 1 EX slot
    [SPECIES_KANGASKHAN]   = { .exMoves = { MOVE_DIZZY_PUNCH } }, // 490: 1 EX slot
    [SPECIES_HORSEA]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 295: 3 EX slots
    [SPECIES_SEADRA]       = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 440: 2 EX slots
    [SPECIES_GOLDEEN]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 320: 3 EX slots
    [SPECIES_SEAKING]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 450: 2 EX slots
    [SPECIES_STARYU]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 340: 3 EX slots
    [SPECIES_STARMIE]      = { .exMoves = { MOVE_NONE } }, // 520: 1 EX slot
    [SPECIES_MR_MIME]      = { .exMoves = { MOVE_NONE } }, // 460: 1 EX slot
    [SPECIES_SCYTHER]      = { .exMoves = { MOVE_NONE } }, // 500: 1 EX slot
    [SPECIES_JYNX]         = { .exMoves = { MOVE_ICE_PUNCH, MOVE_NONE } }, // 455: 2 EX slots
    [SPECIES_ELECTABUZZ]   = { .exMoves = { MOVE_THUNDER_PUNCH } }, // 530: 1 EX slot
    [SPECIES_MAGMAR]       = { .exMoves = { MOVE_FIRE_PUNCH } }, // 535: 1 EX slot
    [SPECIES_PINSIR]       = { .exMoves = { MOVE_NONE } }, // 500: 1 EX slot
    [SPECIES_TAUROS]       = { .exMoves = { MOVE_NONE } }, // 490: 1 EX slot
    [SPECIES_MAGIKARP]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 200: 3 EX slots
    [SPECIES_GYARADOS]     = { .exMoves = { MOVE_OUTRAGE } }, // 540: 1 EX slot
    [SPECIES_LAPRAS]       = { .exMoves = { MOVE_NONE } }, // 535: 1 EX slot
    [SPECIES_DITTO]        = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 288: 3 EX slots
    [SPECIES_EEVEE]        = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 325: 3 EX slots
    [SPECIES_VAPOREON]     = { .exMoves = { MOVE_NONE } }, // 525: 1 EX slot
    [SPECIES_JOLTEON]      = { .exMoves = { MOVE_NONE } }, // 525: 1 EX slot
    [SPECIES_FLAREON]      = { .exMoves = { MOVE_NONE } }, // 525: 1 EX slot
    [SPECIES_PORYGON]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 395: 2 EX slots
    [SPECIES_OMANYTE]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 355: 3 EX slots
    [SPECIES_OMASTAR]      = { .exMoves = { MOVE_NONE } }, // 495: 1 EX slot
    [SPECIES_KABUTO]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 355: 3 EX slots
    [SPECIES_KABUTOPS]     = { .exMoves = { MOVE_NONE } }, // 495: 1 EX slot
    [SPECIES_AERODACTYL]   = { .exMoves = { MOVE_NONE } }, // 515: 1 EX slot
    [SPECIES_MUNCHLAX]     = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 390: 2 EX slots
    [SPECIES_SNORLAX]      = { .exMoves = { MOVE_NONE } }, // 540: 1 EX slot
    [SPECIES_ARTICUNO]     = { .exMoves = { MOVE_NONE } }, // 580: 1 EX slot
    [SPECIES_ZAPDOS]       = { .exMoves = { MOVE_NONE } }, // 580: 1 EX slot
    [SPECIES_MOLTRES]      = { .exMoves = { MOVE_NONE } }, // 580: 1 EX slot
    [SPECIES_DRATINI]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 300: 3 EX slots
    [SPECIES_DRAGONAIR]    = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 420: 2 EX slots
    [SPECIES_DRAGONITE]    = { .exMoves = { MOVE_OUTRAGE } }, // 600: 1 EX slot
    [SPECIES_MEWTWO]       = { .exMoves = { MOVE_NONE } }, // 680: 1 EX slot
    [SPECIES_MEW]          = { .exMoves = { MOVE_NONE } }, // 600: 1 EX slot
    [SPECIES_CHIKORITA]    = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 318: 3 EX slots
    [SPECIES_BAYLEEF]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 405: 2 EX slots
    [SPECIES_MEGANIUM]     = { .exMoves = { MOVE_NONE } }, // 525: 1 EX slot
    [SPECIES_CYNDAQUIL]    = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 309: 3 EX slots
    [SPECIES_QUILAVA]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 405: 2 EX slots
    [SPECIES_TYPHLOSION]   = { .exMoves = { MOVE_NONE } }, // 534: 1 EX slot
    [SPECIES_TOTODILE]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 314: 3 EX slots
    [SPECIES_CROCONAW]     = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 405: 2 EX slots
    [SPECIES_FERALIGATR]   = { .exMoves = { MOVE_NONE } }, // 530: 1 EX slot
    [SPECIES_SENTRET]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 215: 3 EX slots
    [SPECIES_FURRET]       = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 415: 2 EX slots
    [SPECIES_HOOTHOOT]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 262: 3 EX slots
    [SPECIES_NOCTOWL]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 452: 2 EX slots
    [SPECIES_LEDYBA]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 265: 3 EX slots
    [SPECIES_LEDIAN]       = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 390: 2 EX slots
    [SPECIES_SPINARAK]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 250: 3 EX slots
    [SPECIES_ARIADOS]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 400: 2 EX slots
    [SPECIES_CROBAT]       = { .exMoves = { MOVE_NONE } }, // 535: 1 EX slot
    [SPECIES_CHINCHOU]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 330: 3 EX slots
    [SPECIES_LANTURN]      = { .exMoves = { MOVE_NONE } }, // 460: 1 EX slot
    [SPECIES_PICHU]        = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 205: 3 EX slots
    [SPECIES_CLEFFA]       = { .exMoves = { MOVE_METEOR_MASH, MOVE_NONE, MOVE_NONE } }, // 218: 3 EX slots
    [SPECIES_IGGLYBUFF]    = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 210: 3 EX slots
    [SPECIES_TOGEPI]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 245: 3 EX slots
    [SPECIES_TOGETIC]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 405: 2 EX slots
    [SPECIES_TOGEKISS]     = { .exMoves = { MOVE_NONE } }, // 545: 1 EX slot
    [SPECIES_NATU]         = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 320: 3 EX slots
    [SPECIES_XATU]         = { .exMoves = { MOVE_NONE } }, // 470: 1 EX slot
    [SPECIES_MAREEP]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 280: 3 EX slots
    [SPECIES_FLAAFFY]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 365: 3 EX slots
    [SPECIES_AMPHAROS]     = { .exMoves = { MOVE_NONE } }, // 510: 1 EX slot
    [SPECIES_BELLOSSOM]    = { .exMoves = { MOVE_PETAL_DANCE } }, // 490: 1 EX slot
    [SPECIES_MARILL]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 250: 3 EX slots
    [SPECIES_AZUMARILL]    = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 420: 2 EX slots
    [SPECIES_BONSLY]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 290: 3 EX slots
    [SPECIES_SUDOWOODO]    = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 410: 2 EX slots
    [SPECIES_POLITOED]     = { .exMoves = { MOVE_NONE } }, // 500: 1 EX slot
    [SPECIES_HOPPIP]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 250: 3 EX slots
    [SPECIES_SKIPLOOM]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 340: 3 EX slots
    [SPECIES_JUMPLUFF]     = { .exMoves = { MOVE_NONE } }, // 460: 1 EX slot
    [SPECIES_AIPOM]        = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 400: 2 EX slots
    [SPECIES_SUNKERN]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 180: 3 EX slots
    [SPECIES_SUNFLORA]     = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 425: 2 EX slots
    [SPECIES_YANMA]        = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 430: 2 EX slots
    [SPECIES_WOOPER]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 210: 3 EX slots
    [SPECIES_QUAGSIRE]     = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 430: 2 EX slots
    [SPECIES_ESPEON]       = { .exMoves = { MOVE_NONE } }, // 525: 1 EX slot
    [SPECIES_UMBREON]      = { .exMoves = { MOVE_NONE } }, // 525: 1 EX slot
    [SPECIES_MURKROW]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 405: 2 EX slots
    [SPECIES_HONCHKROW]    = { .exMoves = { MOVE_NONE } }, // 505: 1 EX slot
    [SPECIES_SLOWKING]     = { .exMoves = { MOVE_NONE } }, // 490: 1 EX slot
    [SPECIES_MISDREAVUS]   = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 435: 2 EX slots
    [SPECIES_MISMAGIUS]    = { .exMoves = { MOVE_NONE } }, // 495: 1 EX slot
    [SPECIES_UNOWN]        = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 336: 3 EX slots
    [SPECIES_WOBBUFFET]    = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 405: 2 EX slots
    [SPECIES_GIRAFARIG]    = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 455: 2 EX slots
    [SPECIES_PINECO]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 290: 3 EX slots
    [SPECIES_FORRETRESS]   = { .exMoves = { MOVE_NONE } }, // 465: 1 EX slot
    [SPECIES_DUNSPARCE]    = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 455: 2 EX slots
    [SPECIES_GLIGAR]       = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 430: 2 EX slots
    [SPECIES_GLISCOR]      = { .exMoves = { MOVE_NONE } }, // 510: 1 EX slot
    [SPECIES_STEELIX]      = { .exMoves = { MOVE_NONE } }, // 510: 1 EX slot
    [SPECIES_SNUBBULL]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 300: 3 EX slots
    [SPECIES_GRANBULL]     = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 450: 2 EX slots
    [SPECIES_QWILFISH]     = { .exMoves = { MOVE_PIN_MISSILE, MOVE_NONE } }, // 440: 2 EX slots
    [SPECIES_SCIZOR]       = { .exMoves = { MOVE_METAL_CLAW } }, // 500: 1 EX slot
    [SPECIES_SHUCKLE]      = { .exMoves = { MOVE_NONE } }, // 505: 1 EX slot
    [SPECIES_HERACROSS]    = { .exMoves = { MOVE_MEGAHORN } }, // 500: 1 EX slot
    [SPECIES_SNEASEL]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 430: 2 EX slots
    [SPECIES_WEAVILE]      = { .exMoves = { MOVE_NONE } }, // 510: 1 EX slot
    [SPECIES_TEDDIURSA]    = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 330: 3 EX slots
    [SPECIES_URSARING]     = { .exMoves = { MOVE_NONE } }, // 500: 1 EX slot
    [SPECIES_SLUGMA]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 250: 3 EX slots
    [SPECIES_MAGCARGO]     = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 430: 2 EX slots
    [SPECIES_SWINUB]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 250: 3 EX slots
    [SPECIES_PILOSWINE]    = { .exMoves = { MOVE_NONE } }, // 500: 1 EX slot
    [SPECIES_CORSOLA]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 410: 2 EX slots
    [SPECIES_REMORAID]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 300: 3 EX slots
    [SPECIES_OCTILLERY]    = { .exMoves = { MOVE_NONE } }, // 480: 1 EX slot
    [SPECIES_DELIBIRD]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 330: 3 EX slots
    [SPECIES_MANTYKE]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 345: 3 EX slots
    [SPECIES_MANTINE]      = { .exMoves = { MOVE_NONE } }, // 485: 1 EX slot
    [SPECIES_SKARMORY]     = { .exMoves = { MOVE_STEEL_WING } }, // 465: 1 EX slot
    [SPECIES_HOUNDOUR]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 330: 3 EX slots
    [SPECIES_HOUNDOOM]     = { .exMoves = { MOVE_NONE } }, // 500: 1 EX slot
    [SPECIES_KINGDRA]      = { .exMoves = { MOVE_NONE } }, // 540: 1 EX slot
    [SPECIES_PHANPY]       = { .exMoves = { MOVE_ROLLOUT, MOVE_NONE, MOVE_NONE } }, // 330: 3 EX slots
    [SPECIES_DONPHAN]      = { .exMoves = { MOVE_ROLLOUT } }, // 500: 1 EX slot
    [SPECIES_PORYGON2]     = { .exMoves = { MOVE_NONE } }, // 515: 1 EX slot
    [SPECIES_STANTLER]     = { .exMoves = { MOVE_NONE } }, // 500: 1 EX slot
    [SPECIES_SMEARGLE]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 250: 3 EX slots
    [SPECIES_TYROGUE]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 210: 3 EX slots
    [SPECIES_HITMONTOP]    = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 455: 2 EX slots
    [SPECIES_SMOOCHUM]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 305: 3 EX slots
    [SPECIES_ELEKID]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 360: 3 EX slots
    [SPECIES_MAGBY]        = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 365: 3 EX slots
    [SPECIES_MILTANK]      = { .exMoves = { MOVE_NONE } }, // 490: 1 EX slot
    [SPECIES_BLISSEY]      = { .exMoves = { MOVE_NONE } }, // 540: 1 EX slot
    [SPECIES_RAIKOU]       = { .exMoves = { MOVE_NONE } }, // 580: 1 EX slot
    [SPECIES_ENTEI]        = { .exMoves = { MOVE_NONE } }, // 580: 1 EX slot
    [SPECIES_SUICUNE]      = { .exMoves = { MOVE_NONE } }, // 580: 1 EX slot
    [SPECIES_LARVITAR]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 300: 3 EX slots
    [SPECIES_PUPITAR]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 410: 2 EX slots
    [SPECIES_TYRANITAR]    = { .exMoves = { MOVE_NONE } }, // 600: 1 EX slot
    [SPECIES_LUGIA]        = { .exMoves = { MOVE_NONE } }, // 680: 1 EX slot
    [SPECIES_HO_OH]        = { .exMoves = { MOVE_NONE } }, // 680: 1 EX slot
    [SPECIES_CELEBI]       = { .exMoves = { MOVE_NONE } }, // 600: 1 EX slot
    [SPECIES_TREECKO]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 310: 3 EX slots
    [SPECIES_GROVYLE]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 405: 2 EX slots
    [SPECIES_SCEPTILE]     = { .exMoves = { MOVE_NONE } }, // 530: 1 EX slot
    [SPECIES_TORCHIC]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 310: 3 EX slots
    [SPECIES_COMBUSKEN]    = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 405: 2 EX slots
    [SPECIES_BLAZIKEN]     = { .exMoves = { MOVE_NONE } }, // 530: 1 EX slot
    [SPECIES_MUDKIP]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 310: 3 EX slots
    [SPECIES_MARSHTOMP]    = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 405: 2 EX slots
    [SPECIES_SWAMPERT]     = { .exMoves = { MOVE_NONE } }, // 535: 1 EX slot
    [SPECIES_POOCHYENA]    = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 220: 3 EX slots
    [SPECIES_MIGHTYENA]    = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 420: 2 EX slots
    [SPECIES_ZIGZAGOON]    = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 240: 3 EX slots
    [SPECIES_LINOONE]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 420: 2 EX slots
    [SPECIES_WURMPLE]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 195: 3 EX slots
    [SPECIES_SILCOON]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 205: 3 EX slots
    [SPECIES_BEAUTIFLY]    = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 395: 2 EX slots
    [SPECIES_CASCOON]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 205: 3 EX slots
    [SPECIES_DUSTOX]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 385: 3 EX slots
    [SPECIES_LOTAD]        = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 220: 3 EX slots
    [SPECIES_LOMBRE]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 340: 3 EX slots
    [SPECIES_LUDICOLO]     = { .exMoves = { MOVE_NONE } }, // 480: 1 EX slot
    [SPECIES_SEEDOT]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 220: 3 EX slots
    [SPECIES_NUZLEAF]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 340: 3 EX slots
    [SPECIES_SHIFTRY]      = { .exMoves = { MOVE_NONE } }, // 480: 1 EX slot
    [SPECIES_NINCADA]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 266: 3 EX slots
    [SPECIES_NINJASK]      = { .exMoves = { MOVE_NONE } }, // 456: 1 EX slot
    [SPECIES_SHEDINJA]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 237: 3 EX slots
    [SPECIES_TAILLOW]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 270: 3 EX slots
    [SPECIES_SWELLOW]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 455: 2 EX slots
    [SPECIES_SHROOMISH]    = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 295: 3 EX slots
    [SPECIES_BRELOOM]      = { .exMoves = { MOVE_NONE } }, // 460: 1 EX slot
    [SPECIES_SPINDA]       = { .exMoves = { MOVE_DIZZY_PUNCH, MOVE_NONE, MOVE_NONE } }, // 360: 3 EX slots
    [SPECIES_WINGULL]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 270: 3 EX slots
    [SPECIES_PELIPPER]     = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 440: 2 EX slots
    [SPECIES_BUIZEL]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 330: 3 EX slots
    [SPECIES_FLOATZEL]     = { .exMoves = { MOVE_NONE } }, // 495: 1 EX slot
    [SPECIES_SURSKIT]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 269: 3 EX slots
    [SPECIES_MASQUERAIN]   = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 454: 2 EX slots
    [SPECIES_WAILMER]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 400: 2 EX slots
    [SPECIES_WAILORD]      = { .exMoves = { MOVE_NONE } }, // 500: 1 EX slot
    [SPECIES_SKITTY]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 260: 3 EX slots
    [SPECIES_DELCATTY]     = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 400: 2 EX slots
    [SPECIES_GLAMEOW]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 310: 3 EX slots
    [SPECIES_PURUGLY]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 452: 2 EX slots
    [SPECIES_BUNEARY]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 350: 3 EX slots
    [SPECIES_LOPUNNY]      = { .exMoves = { MOVE_NONE } }, // 480: 1 EX slot
    [SPECIES_KECLEON]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 440: 2 EX slots
    [SPECIES_BALTOY]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 300: 3 EX slots
    [SPECIES_CLAYDOL]      = { .exMoves = { MOVE_NONE } }, // 500: 1 EX slot
    [SPECIES_NOSEPASS]     = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 415: 2 EX slots
    [SPECIES_TORKOAL]      = { .exMoves = { MOVE_NONE } }, // 470: 1 EX slot
    [SPECIES_SABLEYE]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 380: 3 EX slots
    [SPECIES_BARBOACH]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 288: 3 EX slots
    [SPECIES_WHISCASH]     = { .exMoves = { MOVE_NONE } }, // 468: 1 EX slot
    [SPECIES_SHELLOS]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 325: 3 EX slots
    [SPECIES_GASTRODON]    = { .exMoves = { MOVE_NONE } }, // 475: 1 EX slot
    [SPECIES_LUVDISC]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 330: 3 EX slots
    [SPECIES_CORPHISH]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 308: 3 EX slots
    [SPECIES_CRAWDAUNT]    = { .exMoves = { MOVE_NONE } }, // 468: 1 EX slot
    [SPECIES_FEEBAS]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 200: 3 EX slots
    [SPECIES_MILOTIC]      = { .exMoves = { MOVE_NONE } }, // 540: 1 EX slot
    [SPECIES_LEVIATIC]     = { .exMoves = { MOVE_NONE } }, // 540: 1 EX slot
    [SPECIES_CARVANHA]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 305: 3 EX slots
    [SPECIES_SHARPEDO]     = { .exMoves = { MOVE_NONE } }, // 460: 1 EX slot
    [SPECIES_TRAPINCH]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 290: 3 EX slots
    [SPECIES_VIBRAVA]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 340: 3 EX slots
    [SPECIES_FLYGON]       = { .exMoves = { MOVE_NONE } }, // 520: 1 EX slot
    [SPECIES_MAKUHITA]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 237: 3 EX slots
    [SPECIES_HARIYAMA]     = { .exMoves = { MOVE_NONE } }, // 474: 1 EX slot
    [SPECIES_ELECTRIKE]    = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 295: 3 EX slots
    [SPECIES_MANECTRIC]    = { .exMoves = { MOVE_NONE } }, // 475: 1 EX slot
    [SPECIES_NUMEL]        = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 305: 3 EX slots
    [SPECIES_CAMERUPT]     = { .exMoves = { MOVE_NONE } }, // 460: 1 EX slot
    [SPECIES_SPHEAL]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 290: 3 EX slots
    [SPECIES_SEALEO]       = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 410: 2 EX slots
    [SPECIES_WALREIN]      = { .exMoves = { MOVE_NONE } }, // 530: 1 EX slot
    [SPECIES_CACNEA]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 335: 3 EX slots
    [SPECIES_CACTURNE]     = { .exMoves = { MOVE_NEEDLE_ARM } }, // 475: 1 EX slot
    [SPECIES_SNORUNT]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 300: 3 EX slots
    [SPECIES_GLALIE]       = { .exMoves = { MOVE_NONE }, .exVersions = sGlalieExVersions }, // 480: 1 EX slot
    [SPECIES_FROSLASS]     = { .exMoves = { MOVE_NONE } }, // 480: 1 EX slot
    [SPECIES_LUNATONE]     = { .exMoves = { MOVE_NONE } }, // 460: 1 EX slot
    [SPECIES_SOLROCK]      = { .exMoves = { MOVE_NONE } }, // 460: 1 EX slot
    [SPECIES_AZURILL]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 190: 3 EX slots
    [SPECIES_SPOINK]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 330: 3 EX slots
    [SPECIES_GRUMPIG]      = { .exMoves = { MOVE_NONE } }, // 470: 1 EX slot
    [SPECIES_PLUSLE]       = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 405: 2 EX slots
    [SPECIES_MINUN]        = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 405: 2 EX slots
    [SPECIES_MAWILE]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 380: 3 EX slots
    [SPECIES_MEDITITE]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 280: 3 EX slots
    [SPECIES_MEDICHAM]     = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 410: 2 EX slots
    [SPECIES_SWABLU]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 310: 3 EX slots
    [SPECIES_ALTARIA]      = { .exMoves = { MOVE_NONE } }, // 490: 1 EX slot
    [SPECIES_WYNAUT]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 260: 3 EX slots
    [SPECIES_DUSKULL]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 295: 3 EX slots
    [SPECIES_DUSCLOPS]     = { .exMoves = { MOVE_NONE } }, // 495: 1 EX slot
    [SPECIES_BUDEW]        = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 280: 3 EX slots
    [SPECIES_ROSELIA]      = { .exMoves = { MOVE_PETAL_DANCE, MOVE_NONE } }, // 400: 2 EX slots
    [SPECIES_ROSERADE]     = { .exMoves = { MOVE_PETAL_DANCE } }, // 515: 1 EX slot
    [SPECIES_SLAKOTH]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 280: 3 EX slots
    [SPECIES_VIGOROTH]     = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 440: 2 EX slots
    [SPECIES_SLAKING]      = { .exMoves = { MOVE_NONE } }, // 670: 1 EX slot
    [SPECIES_GULPIN]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 302: 3 EX slots
    [SPECIES_SWALOT]       = { .exMoves = { MOVE_NONE } }, // 467: 1 EX slot
    [SPECIES_TROPIUS]      = { .exMoves = { MOVE_NONE } }, // 460: 1 EX slot
    [SPECIES_WHISMUR]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 240: 3 EX slots
    [SPECIES_LOUDRED]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 360: 3 EX slots
    [SPECIES_EXPLOUD]      = { .exMoves = { MOVE_NONE } }, // 490: 1 EX slot
    [SPECIES_CLAMPERL]     = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 345: 3 EX slots
    [SPECIES_HUNTAIL]      = { .exMoves = { MOVE_NONE } }, // 485: 1 EX slot
    [SPECIES_GOREBYSS]     = { .exMoves = { MOVE_NONE } }, // 485: 1 EX slot
    [SPECIES_ABSOL]        = { .exMoves = { MOVE_NONE } }, // 465: 1 EX slot
    [SPECIES_SHUPPET]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 295: 3 EX slots
    [SPECIES_BANETTE]      = { .exMoves = { MOVE_NONE, MOVE_NONE }, .exVersions = sBanetteExVersions }, // 455: 2 EX slots
    [SPECIES_SEVIPER]      = { .exMoves = { MOVE_POISON_TAIL } }, // 458: 1 EX slot
    [SPECIES_ZANGOOSE]     = { .exMoves = { MOVE_CRUSH_CLAW } }, // 458: 1 EX slot
    [SPECIES_RELICANTH]    = { .exMoves = { MOVE_NONE } }, // 485: 1 EX slot
    [SPECIES_ARON]         = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 330: 3 EX slots
    [SPECIES_LAIRON]       = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 430: 2 EX slots
    [SPECIES_AGGRON]       = { .exMoves = { MOVE_NONE } }, // 530: 1 EX slot
    [SPECIES_CASTFORM]     = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 420: 2 EX slots
    [SPECIES_VOLBEAT]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 430: 2 EX slots
    [SPECIES_ILLUMISE]     = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 430: 2 EX slots
    [SPECIES_LILEEP]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 355: 3 EX slots
    [SPECIES_CRADILY]      = { .exMoves = { MOVE_NONE } }, // 495: 1 EX slot
    [SPECIES_ANORITH]      = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 355: 3 EX slots
    [SPECIES_ARMALDO]      = { .exMoves = { MOVE_NONE } }, // 495: 1 EX slot
    [SPECIES_RALTS]        = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 198: 3 EX slots
    [SPECIES_KIRLIA]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 278: 3 EX slots
    [SPECIES_GARDEVOIR]    = { .exMoves = { MOVE_NONE } }, // 518: 1 EX slot
    [SPECIES_GALLADE]      = { .exMoves = { MOVE_NONE } }, // 518: 1 EX slot
    [SPECIES_BAGON]        = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 300: 3 EX slots
    [SPECIES_SHELGON]      = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 420: 2 EX slots
    [SPECIES_SALAMENCE]    = { .exMoves = { MOVE_NONE } }, // 600: 1 EX slot
    [SPECIES_BELDUM]       = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 300: 3 EX slots
    [SPECIES_METANG]       = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 420: 2 EX slots
    [SPECIES_METAGROSS]    = { .exMoves = { MOVE_METEOR_MASH } }, // 600: 1 EX slot
    [SPECIES_REGIROCK]     = { .exMoves = { MOVE_NONE } }, // 580: 1 EX slot
    [SPECIES_REGICE]       = { .exMoves = { MOVE_NONE } }, // 580: 1 EX slot
    [SPECIES_REGISTEEL]    = { .exMoves = { MOVE_NONE } }, // 580: 1 EX slot
    [SPECIES_KYOGRE]       = { .exMoves = { MOVE_NONE } }, // 670: 1 EX slot
    [SPECIES_GROUDON]      = { .exMoves = { MOVE_NONE } }, // 670: 1 EX slot
    [SPECIES_RAYQUAZA]     = { .exMoves = { MOVE_NONE } }, // 680: 1 EX slot
    [SPECIES_LATIAS]       = { .exMoves = { MOVE_NONE } }, // 600: 1 EX slot
    [SPECIES_LATIOS]       = { .exMoves = { MOVE_NONE } }, // 600: 1 EX slot
    [SPECIES_JIRACHI]      = { .exMoves = { MOVE_NONE } }, // 600: 1 EX slot
    [SPECIES_DEOXYS]       = { .exMoves = { MOVE_NONE } }, // 600: 1 EX slot
    [SPECIES_PHIONE]       = { .exMoves = { MOVE_NONE } }, // 480: 1 EX slot
    [SPECIES_MANAPHY]      = { .exMoves = { MOVE_NONE } }, // 600: 1 EX slot
    [SPECIES_GIRATINA]     = { .exMoves = { MOVE_NONE } }, // 680: 1 EX slot
    [SPECIES_CHINGLING]    = { .exMoves = { MOVE_NONE, MOVE_NONE, MOVE_NONE } }, // 285: 3 EX slots
    [SPECIES_CHIMECHO]     = { .exMoves = { MOVE_NONE, MOVE_NONE } }, // 455: 2 EX slots
    [SPECIES_LUCARIO]      = { .exMoves = { MOVE_NONE } }, // 525: 1 EX slot
};
