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
// Legendary and Mythical Pokemon have no species EX moves (they can still use crystals), unless one is given its
//   own EX version in .exVersions.
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

static const struct ExMove sBanetteExVersions[] =
{
    { MOVE_SUBSTITUTE, .flags = EX_FLAG_NO_HP_COST },
    { MOVE_NONE },
};

static const struct SpeciesExMoves sSpeciesExMoves[NUM_SPECIES] =
{
    [SPECIES_BULBASAUR]    = { .exMoves = { MOVE_VINE_WHIP, MOVE_RAZOR_LEAF, MOVE_BULLET_SEED } }, // 318: 3 EX slots
    [SPECIES_IVYSAUR]      = { .exMoves = { MOVE_VINE_WHIP, MOVE_RAZOR_LEAF } }, // 405: 2 EX slots
    [SPECIES_VENUSAUR]     = { .exMoves = { MOVE_VINE_WHIP } }, // 525: 1 EX slot
    [SPECIES_CHARMANDER]   = { .exMoves = { MOVE_EMBER, MOVE_SCRATCH, MOVE_DRAGON_RAGE } }, // 309: 3 EX slots
    [SPECIES_CHARMELEON]   = { .exMoves = { MOVE_SLASH, MOVE_DRAGON_RAGE } }, // 405: 2 EX slots
    [SPECIES_CHARIZARD]    = { .exMoves = { MOVE_SEISMIC_TOSS } }, // 534: 1 EX slot
    [SPECIES_SQUIRTLE]     = { .exMoves = { MOVE_RAPID_SPIN, MOVE_BUBBLE, MOVE_WITHDRAW } }, // 314: 3 EX slots
    [SPECIES_WARTORTLE]    = { .exMoves = { MOVE_RAPID_SPIN, MOVE_BITE } }, // 405: 2 EX slots
    [SPECIES_BLASTOISE]    = { .exMoves = { MOVE_RAPID_SPIN } }, // 530: 1 EX slot
    [SPECIES_CATERPIE]     = { .exMoves = { MOVE_STRING_SHOT, MOVE_TACKLE, MOVE_NONE } }, // 195: 3 EX slots
    [SPECIES_METAPOD]      = { .exMoves = { MOVE_HARDEN, MOVE_STRING_SHOT, MOVE_TACKLE } }, // 205: 3 EX slots
    [SPECIES_BUTTERFREE]   = { .exMoves = { MOVE_SLEEP_POWDER, MOVE_POISON_POWDER } }, // 395: 2 EX slots
    [SPECIES_WEEDLE]       = { .exMoves = { MOVE_POISON_STING, MOVE_STRING_SHOT, MOVE_NONE } }, // 195: 3 EX slots
    [SPECIES_KAKUNA]       = { .exMoves = { MOVE_POISON_STING, MOVE_HARDEN, MOVE_STRING_SHOT } }, // 205: 3 EX slots
    [SPECIES_BEEDRILL]     = { .exMoves = { MOVE_POISON_STING, MOVE_TWINEEDLE } }, // 395: 2 EX slots
    [SPECIES_PIDGEY]       = { .exMoves = { MOVE_GUST, MOVE_SAND_ATTACK, MOVE_QUICK_ATTACK } }, // 251: 3 EX slots
    [SPECIES_PIDGEOTTO]    = { .exMoves = { MOVE_GUST, MOVE_WHIRLWIND, MOVE_WING_ATTACK } }, // 349: 3 EX slots
    [SPECIES_PIDGEOT]      = { .exMoves = { MOVE_MIRROR_MOVE } }, // 479: 1 EX slot
    [SPECIES_RATTATA]      = { .exMoves = { MOVE_HYPER_FANG, MOVE_QUICK_ATTACK, MOVE_TAIL_WHIP } }, // 253: 3 EX slots
    [SPECIES_RATICATE]     = { .exMoves = { MOVE_HYPER_FANG, MOVE_QUICK_ATTACK } }, // 413: 2 EX slots
    [SPECIES_SPEAROW]      = { .exMoves = { MOVE_PECK, MOVE_FURY_ATTACK, MOVE_LEER } }, // 262: 3 EX slots
    [SPECIES_FEAROW]       = { .exMoves = { MOVE_DRILL_PECK, MOVE_FURY_ATTACK } }, // 442: 2 EX slots
    [SPECIES_EKANS]        = { .exMoves = { MOVE_GLARE, MOVE_WRAP, MOVE_POISON_STING } }, // 288: 3 EX slots
    [SPECIES_ARBOK]        = { .exMoves = { MOVE_GLARE, MOVE_WRAP } }, // 448: 2 EX slots
    [SPECIES_PIKACHU]      = { .exMoves = { MOVE_THUNDERBOLT, MOVE_IRON_TAIL, MOVE_VOLT_TACKLE} }, // 320: 3 EX slots
    [SPECIES_RAICHU]       = { .exMoves = { MOVE_VOLT_TACKLE } }, // 485: 1 EX slot
    [SPECIES_SANDSHREW]    = { .exMoves = { MOVE_SLASH, MOVE_ROLLOUT, MOVE_DEFENSE_CURL } }, // 300: 3 EX slots
    [SPECIES_SANDSLASH]    = { .exMoves = { MOVE_SLASH, MOVE_ROLLOUT } }, // 450: 2 EX slots
    [SPECIES_NIDORAN_F]    = { .exMoves = { MOVE_POISON_STING, MOVE_DOUBLE_KICK, MOVE_FURY_SWIPES } }, // 275: 3 EX slots
    [SPECIES_NIDORINA]     = { .exMoves = { MOVE_DOUBLE_KICK, MOVE_BITE, MOVE_FURY_SWIPES } }, // 365: 3 EX slots
    [SPECIES_NIDOQUEEN]    = { .exMoves = { MOVE_BODY_SLAM } }, // 505: 1 EX slot
    [SPECIES_NIDORAN_M]    = { .exMoves = { MOVE_HORN_ATTACK, MOVE_DOUBLE_KICK, MOVE_POISON_STING } }, // 273: 3 EX slots
    [SPECIES_NIDORINO]     = { .exMoves = { MOVE_HORN_ATTACK, MOVE_FURY_ATTACK, MOVE_DOUBLE_KICK } }, // 365: 3 EX slots
    [SPECIES_NIDOKING]     = { .exMoves = { MOVE_THRASH } }, // 505: 1 EX slot
    [SPECIES_CLEFAIRY]     = { .exMoves = { MOVE_METRONOME, MOVE_METEOR_MASH, MOVE_MOONLIGHT } }, // 323: 3 EX slots
    [SPECIES_CLEFABLE]     = { .exMoves = { MOVE_METRONOME } }, // 483: 1 EX slot
    [SPECIES_VULPIX]       = { .exMoves = { MOVE_FIRE_SPIN, MOVE_WILL_O_WISP, MOVE_CONFUSE_RAY } }, // 299: 3 EX slots
    [SPECIES_NINETALES]    = { .exMoves = { MOVE_FIRE_SPIN } }, // 505: 1 EX slot
    [SPECIES_JIGGLYPUFF]   = { .exMoves = { MOVE_SING, MOVE_HYPER_VOICE, MOVE_REST } }, // 270: 3 EX slots
    [SPECIES_WIGGLYTUFF]   = { .exMoves = { MOVE_SING, MOVE_HYPER_VOICE } }, // 435: 2 EX slots
    [SPECIES_ZUBAT]        = { .exMoves = { MOVE_LEECH_LIFE, MOVE_BITE, MOVE_SUPERSONIC } }, // 245: 3 EX slots
    [SPECIES_GOLBAT]       = { .exMoves = { MOVE_LEECH_LIFE, MOVE_BITE } }, // 455: 2 EX slots
    [SPECIES_ODDISH]       = { .exMoves = { MOVE_ABSORB, MOVE_ACID, MOVE_MOONLIGHT } }, // 320: 3 EX slots
    [SPECIES_GLOOM]        = { .exMoves = { MOVE_ACID, MOVE_SLEEP_POWDER } }, // 395: 2 EX slots
    [SPECIES_VILEPLUME]    = { .exMoves = { MOVE_PETAL_DANCE } }, // 490: 1 EX slot
    [SPECIES_PARAS]        = { .exMoves = { MOVE_LEECH_LIFE, MOVE_SPORE, MOVE_STUN_SPORE } }, // 285: 3 EX slots
    [SPECIES_PARASECT]     = { .exMoves = { MOVE_LEECH_LIFE, MOVE_SPORE } }, // 405: 2 EX slots
    [SPECIES_VENONAT]      = { .exMoves = { MOVE_SUPERSONIC, MOVE_PSYBEAM, MOVE_POISON_POWDER } }, // 305: 3 EX slots
    [SPECIES_VENOMOTH]     = { .exMoves = { MOVE_SILVER_WIND, MOVE_PSYBEAM } }, // 450: 2 EX slots
    [SPECIES_DIGLETT]      = { .exMoves = { MOVE_DIG, MOVE_MAGNITUDE, MOVE_SAND_ATTACK } }, // 265: 3 EX slots
    [SPECIES_DUGTRIO]      = { .exMoves = { MOVE_DIG, MOVE_TRI_ATTACK } }, // 425: 2 EX slots
    [SPECIES_MEOWTH]       = { .exMoves = { MOVE_PAY_DAY, MOVE_FURY_SWIPES, MOVE_BITE } }, // 290: 3 EX slots
    [SPECIES_PERSIAN]      = { .exMoves = { MOVE_PAY_DAY, MOVE_FAINT_ATTACK } }, // 440: 2 EX slots
    [SPECIES_PSYDUCK]      = { .exMoves = { MOVE_CONFUSION, MOVE_DISABLE, MOVE_AMNESIA } }, // 320: 3 EX slots
    [SPECIES_GOLDUCK]      = { .exMoves = { MOVE_FURY_SWIPES } }, // 500: 1 EX slot
    [SPECIES_MANKEY]       = { .exMoves = { MOVE_KARATE_CHOP, MOVE_FURY_SWIPES, MOVE_FOCUS_ENERGY } }, // 305: 3 EX slots
    [SPECIES_PRIMEAPE]     = { .exMoves = { MOVE_RAGE, MOVE_SEISMIC_TOSS, MOVE_THRASH } }, // 455: 2 EX slots
    [SPECIES_GROWLITHE]    = { .exMoves = { MOVE_BITE, MOVE_EMBER, MOVE_ROAR } }, // 350: 3 EX slots
    [SPECIES_ARCANINE]     = { .exMoves = { MOVE_EXTREME_SPEED } }, // 555: 1 EX slot
    [SPECIES_POLIWAG]      = { .exMoves = { MOVE_BUBBLE, MOVE_HYPNOSIS, MOVE_WATER_GUN } }, // 300: 3 EX slots
    [SPECIES_POLIWHIRL]    = { .exMoves = { MOVE_HYPNOSIS, MOVE_DOUBLE_SLAP, MOVE_BODY_SLAM } }, // 385: 3 EX slots
    [SPECIES_POLIWRATH]    = { .exMoves = { MOVE_SUBMISSION } }, // 510: 1 EX slot
    [SPECIES_ABRA]         = { .exMoves = { MOVE_TELEPORT, MOVE_PSYWAVE, MOVE_BARRIER } }, // 310: 3 EX slots
    [SPECIES_KADABRA]      = { .exMoves = { MOVE_TELEPORT, MOVE_KINESIS } }, // 400: 2 EX slots
    [SPECIES_ALAKAZAM]     = { .exMoves = { MOVE_PSYCHIC } }, // 500: 1 EX slot
    [SPECIES_MACHOP]       = { .exMoves = { MOVE_KARATE_CHOP, MOVE_SEISMIC_TOSS, MOVE_FOCUS_ENERGY } }, // 305: 3 EX slots
    [SPECIES_MACHOKE]      = { .exMoves = { MOVE_SUBMISSION, MOVE_STRENGTH } }, // 405: 2 EX slots
    [SPECIES_MACHAMP]      = { .exMoves = { MOVE_DYNAMIC_PUNCH } }, // 505: 1 EX slot
    [SPECIES_BELLSPROUT]   = { .exMoves = { MOVE_VINE_WHIP, MOVE_WRAP, MOVE_GROWTH } }, // 300: 3 EX slots
    [SPECIES_WEEPINBELL]   = { .exMoves = { MOVE_RAZOR_LEAF, MOVE_ACID } }, // 390: 2 EX slots
    [SPECIES_VICTREEBEL]   = { .exMoves = { MOVE_WRAP } }, // 490: 1 EX slot
    [SPECIES_TENTACOOL]    = { .exMoves = { MOVE_CONSTRICT, MOVE_ACID, MOVE_BARRIER } }, // 335: 3 EX slots
    [SPECIES_TENTACRUEL]   = { .exMoves = { MOVE_WRAP } }, // 515: 1 EX slot
    [SPECIES_GEODUDE]      = { .exMoves = { MOVE_EXPLOSION, MOVE_ROLLOUT, MOVE_MAGNITUDE } }, // 300: 3 EX slots
    [SPECIES_GRAVELER]     = { .exMoves = { MOVE_EXPLOSION, MOVE_ROLLOUT, MOVE_MAGNITUDE } }, // 390: 2 EX slots
    [SPECIES_GOLEM]        = { .exMoves = { MOVE_EXPLOSION, MOVE_ROLLOUT } }, // 495: 1 EX slot
    [SPECIES_PONYTA]       = { .exMoves = { MOVE_FIRE_SPIN, MOVE_BOUNCE } }, // 410: 2 EX slots
    [SPECIES_RAPIDASH]     = { .exMoves = { MOVE_FIRE_SPIN } }, // 500: 1 EX slot
    [SPECIES_SLOWPOKE]     = { .exMoves = { MOVE_YAWN, MOVE_HEADBUTT, MOVE_AMNESIA } }, // 315: 3 EX slots
    [SPECIES_SLOWBRO]      = { .exMoves = { MOVE_AMNESIA } }, // 490: 1 EX slot
    [SPECIES_MAGNEMITE]    = { .exMoves = { MOVE_THUNDER_SHOCK, MOVE_SONIC_BOOM, MOVE_LOCK_ON } }, // 325: 3 EX slots
    [SPECIES_MAGNETON]     = { .exMoves = { MOVE_TRI_ATTACK } }, // 465: 1 EX slot
    [SPECIES_FARFETCHD]    = { .exMoves = { MOVE_SLASH, MOVE_FURY_CUTTER, MOVE_SLICE} }, // 377: 3 EX slots
    [SPECIES_DODUO]        = { .exMoves = { MOVE_PECK, MOVE_FURY_ATTACK, MOVE_QUICK_ATTACK } }, // 310: 3 EX slots
    [SPECIES_DODRIO]       = { .exMoves = { MOVE_TRI_ATTACK } }, // 470: 1 EX slot
    [SPECIES_SEEL]         = { .exMoves = { MOVE_HEADBUTT, MOVE_AURORA_BEAM, MOVE_AQUA_JET } }, // 325: 3 EX slots
    [SPECIES_DEWGONG]      = { .exMoves = { MOVE_ICE_BEAM } }, // 475: 1 EX slot
    [SPECIES_GRIMER]       = { .exMoves = { MOVE_SLUDGE, MOVE_MINIMIZE, MOVE_DISABLE } }, // 325: 3 EX slots
    [SPECIES_MUK]          = { .exMoves = { MOVE_ACID_ARMOR } }, // 500: 1 EX slot
    [SPECIES_SHELLDER]     = { .exMoves = { MOVE_ICICLE_SPEAR, MOVE_CLAMP, MOVE_WITHDRAW } }, // 305: 3 EX slots
    [SPECIES_CLOYSTER]     = { .exMoves = { MOVE_ICICLE_SPEAR } }, // 525: 1 EX slot
    [SPECIES_GASTLY]       = { .exMoves = { MOVE_LICK, MOVE_CONFUSE_RAY, MOVE_NIGHT_SHADE } }, // 310: 3 EX slots
    [SPECIES_HAUNTER]      = { .exMoves = { MOVE_LICK, MOVE_SHADOW_PUNCH } }, // 405: 2 EX slots
    [SPECIES_GENGAR]       = { .exMoves = { MOVE_LICK } }, // 500: 1 EX slot
    [SPECIES_ONIX]         = { .exMoves = { MOVE_BIND, MOVE_SCREECH, MOVE_ROCK_THROW } }, // 385: 3 EX slots
    [SPECIES_DROWZEE]      = { .exMoves = { MOVE_DREAM_EATER, MOVE_HYPNOSIS, MOVE_DISABLE } }, // 328: 3 EX slots
    [SPECIES_HYPNO]        = { .exMoves = { MOVE_DREAM_EATER } }, // 483: 1 EX slot
    [SPECIES_KRABBY]       = { .exMoves = { MOVE_CRABHAMMER, MOVE_CLAMP, MOVE_VICE_GRIP } }, // 325: 3 EX slots
    [SPECIES_KINGLER]      = { .exMoves = { MOVE_CRABHAMMER } }, // 475: 1 EX slot
    [SPECIES_VOLTORB]      = { .exMoves = { MOVE_SELF_DESTRUCT, MOVE_EXPLOSION, MOVE_SPARK } }, // 330: 3 EX slots
    [SPECIES_ELECTRODE]    = { .exMoves = { MOVE_SELF_DESTRUCT, MOVE_EXPLOSION } }, // 490: 1 EX slot, plus Explosion
    [SPECIES_EXEGGCUTE]    = { .exMoves = { MOVE_EGG_BOMB, MOVE_BARRAGE, MOVE_NONE } }, // 325: 3 EX slots
    [SPECIES_EXEGGUTOR]    = { .exMoves = { MOVE_EGG_BOMB } }, // 530: 1 EX slot
    [SPECIES_CUBONE]       = { .exMoves = { MOVE_BONE_CLUB, MOVE_BONEMERANG, MOVE_RAGE } }, // 320: 3 EX slots
    [SPECIES_MAROWAK]      = { .exMoves = { MOVE_BONEMERANG, MOVE_THRASH } }, // 425: 2 EX slots
    [SPECIES_HITMONLEE]    = { .exMoves = { MOVE_JUMP_KICK, MOVE_ROLLING_KICK } }, // 455: 2 EX slots
    [SPECIES_HITMONCHAN]   = { .exMoves = { MOVE_COMET_PUNCH, MOVE_SKY_UPPERCUT } }, // 455: 2 EX slots
    [SPECIES_LICKITUNG]    = { .exMoves = { MOVE_LICK, MOVE_WRAP, MOVE_SLAM } }, // 385: 3 EX slots
    [SPECIES_KOFFING]      = { .exMoves = { MOVE_EXPLOSION, MOVE_NONE, MOVE_NONE } }, // 340: 3 EX slots
    [SPECIES_WEEZING]      = { .exMoves = { MOVE_EXPLOSION } }, // 490: 1 EX slot
    [SPECIES_RHYHORN]      = { .exMoves = { MOVE_HORN_ATTACK, MOVE_STOMP, MOVE_TAKE_DOWN } }, // 345: 3 EX slots
    [SPECIES_RHYDON]       = { .exMoves = { MOVE_HORN_ATTACK } }, // 485: 1 EX slot
    [SPECIES_CHANSEY]      = { .exMoves = { MOVE_SOFT_BOILED, MOVE_EGG_BOMB } }, // 450: 2 EX slots
    [SPECIES_TANGELA]      = { .exMoves = { MOVE_VINE_WHIP, MOVE_CONSTRICT } }, // 475: 1 EX slot
    [SPECIES_KANGASKHAN]   = { .exMoves = { MOVE_DIZZY_PUNCH } }, // 490: 1 EX slot
    [SPECIES_HORSEA]       = { .exMoves = { MOVE_SMOKESCREEN, MOVE_BUBBLE, MOVE_TWISTER } }, // 295: 3 EX slots
    [SPECIES_SEADRA]       = { .exMoves = { MOVE_TWISTER, MOVE_SMOKESCREEN } }, // 440: 2 EX slots
    [SPECIES_GOLDEEN]      = { .exMoves = { MOVE_HORN_ATTACK, MOVE_SUPERSONIC, MOVE_FURY_ATTACK } }, // 320: 3 EX slots
    [SPECIES_SEAKING]      = { .exMoves = { MOVE_HORN_ATTACK, MOVE_WATERFALL } }, // 450: 2 EX slots
    [SPECIES_STARYU]       = { .exMoves = { MOVE_SWIFT, MOVE_WATER_GUN, MOVE_HARDEN } }, // 340: 3 EX slots
    [SPECIES_STARMIE]      = { .exMoves = { MOVE_SWIFT } }, // 520: 1 EX slot
    [SPECIES_MR_MIME]      = { .exMoves = { MOVE_BARRIER } }, // 460: 1 EX slot
    [SPECIES_SCYTHER]      = { .exMoves = { MOVE_FURY_CUTTER, MOVE_SLICE } }, // 500: 1 EX slot
    [SPECIES_JYNX]         = { .exMoves = { MOVE_ICE_PUNCH, MOVE_LOVELY_KISS } }, // 455: 2 EX slots
    [SPECIES_ELECTABUZZ]   = { .exMoves = { MOVE_THUNDER_PUNCH } }, // 530: 1 EX slot
    [SPECIES_MAGMAR]       = { .exMoves = { MOVE_FIRE_PUNCH } }, // 535: 1 EX slot
    [SPECIES_PINSIR]       = { .exMoves = { MOVE_VICE_GRIP } }, // 500: 1 EX slot
    [SPECIES_TAUROS]       = { .exMoves = { MOVE_RAGE } }, // 490: 1 EX slot
    [SPECIES_MAGIKARP]     = { .exMoves = { MOVE_SPLASH, MOVE_TACKLE, MOVE_FLAIL } }, // 200: 3 EX slots
    [SPECIES_GYARADOS]     = { .exMoves = { MOVE_OUTRAGE } }, // 540: 1 EX slot
    [SPECIES_LAPRAS]       = { .exMoves = { MOVE_SING, MOVE_SURF } }, // 535: 1 EX slot
    [SPECIES_DITTO]        = { .exMoves = { MOVE_TRANSFORM } }, // 288: 3 EX slots
    [SPECIES_EEVEE]        = { .exMoves = { MOVE_QUICK_ATTACK, MOVE_SAND_ATTACK, MOVE_TAIL_WHIP } }, // 325: 3 EX slots
    [SPECIES_VAPOREON]     = { .exMoves = { MOVE_ACID_ARMOR } }, // 525: 1 EX slot
    [SPECIES_JOLTEON]      = { .exMoves = { MOVE_DOUBLE_KICK } }, // 525: 1 EX slot
    [SPECIES_FLAREON]      = { .exMoves = { MOVE_FIRE_SPIN } }, // 525: 1 EX slot
    [SPECIES_PORYGON]      = { .exMoves = { MOVE_CONVERSION, MOVE_TRI_ATTACK } }, // 395: 2 EX slots
    [SPECIES_OMANYTE]      = { .exMoves = { MOVE_CONSTRICT, MOVE_WITHDRAW, MOVE_WATER_GUN } }, // 355: 3 EX slots
    [SPECIES_OMASTAR]      = { .exMoves = { MOVE_SPIKE_CANNON } }, // 495: 1 EX slot
    [SPECIES_KABUTO]       = { .exMoves = { MOVE_ABSORB, MOVE_HARDEN, MOVE_SCRATCH } }, // 355: 3 EX slots
    [SPECIES_KABUTOPS]     = { .exMoves = { MOVE_SLASH } }, // 495: 1 EX slot
    [SPECIES_AERODACTYL]   = { .exMoves = { MOVE_ANCIENT_POWER } }, // 515: 1 EX slot
    [SPECIES_MUNCHLAX]     = { .exMoves = { MOVE_REST, MOVE_METRONOME } }, // 390: 2 EX slots
    [SPECIES_SNORLAX]      = { .exMoves = { MOVE_REST } }, // 540: 1 EX slot
    [SPECIES_ARTICUNO]     = { .exMoves = { MOVE_NONE } }, // 580: 1 EX slot
    [SPECIES_ZAPDOS]       = { .exMoves = { MOVE_NONE } }, // 580: 1 EX slot
    [SPECIES_MOLTRES]      = { .exMoves = { MOVE_NONE } }, // 580: 1 EX slot
    [SPECIES_DRATINI]      = { .exMoves = { MOVE_OUTRAGE, MOVE_THUNDER_WAVE, MOVE_WRAP } }, // 300: 3 EX slots
    [SPECIES_DRAGONAIR]    = { .exMoves = { MOVE_OUTRAGE, MOVE_WRAP } }, // 420: 2 EX slots
    [SPECIES_DRAGONITE]    = { .exMoves = { MOVE_OUTRAGE } }, // 600: 1 EX slot
    [SPECIES_MEWTWO]       = { .exMoves = { MOVE_NONE } }, // 680: 1 EX slot
    [SPECIES_MEW]          = { .exMoves = { MOVE_NONE } }, // 600: 1 EX slot
    [SPECIES_CHIKORITA]    = { .exMoves = { MOVE_SOLAR_BEAM, MOVE_RAZOR_LEAF, MOVE_VINE_WHIP } }, // 318: 3 EX slots
    [SPECIES_BAYLEEF]      = { .exMoves = { MOVE_SOLAR_BEAM, MOVE_RAZOR_LEAF } }, // 405: 2 EX slots
    [SPECIES_MEGANIUM]     = { .exMoves = { MOVE_SOLAR_BEAM } }, // 525: 1 EX slot
    [SPECIES_CYNDAQUIL]    = { .exMoves = { MOVE_EMBER, MOVE_SMOKESCREEN, MOVE_QUICK_ATTACK } }, // 309: 3 EX slots
    [SPECIES_QUILAVA]      = { .exMoves = { MOVE_FLAME_WHEEL, MOVE_SWIFT } }, // 405: 2 EX slots
    [SPECIES_TYPHLOSION]   = { .exMoves = { MOVE_FLAME_WHEEL } }, // 534: 1 EX slot
    [SPECIES_TOTODILE]     = { .exMoves = { MOVE_WATER_GUN, MOVE_RAGE, MOVE_BITE } }, // 314: 3 EX slots
    [SPECIES_CROCONAW]     = { .exMoves = { MOVE_RAGE, MOVE_BITE } }, // 405: 2 EX slots
    [SPECIES_FERALIGATR]   = { .exMoves = { MOVE_CRUNCH } }, // 530: 1 EX slot
    [SPECIES_SENTRET]      = { .exMoves = { MOVE_SCRATCH, MOVE_QUICK_ATTACK, MOVE_FURY_SWIPES } }, // 215: 3 EX slots
    [SPECIES_FURRET]       = { .exMoves = { MOVE_QUICK_ATTACK, MOVE_FURY_SWIPES, MOVE_SLAM } }, // 415: 2 EX slots
    [SPECIES_HOOTHOOT]     = { .exMoves = { MOVE_HYPNOSIS, MOVE_FORESIGHT, MOVE_PECK } }, // 262: 3 EX slots
    [SPECIES_NOCTOWL]      = { .exMoves = { MOVE_HYPNOSIS, MOVE_CONFUSION } }, // 452: 2 EX slots
    [SPECIES_LEDYBA]       = { .exMoves = { MOVE_COMET_PUNCH, MOVE_SILVER_WIND, MOVE_SWIFT } }, // 265: 3 EX slots
    [SPECIES_LEDIAN]       = { .exMoves = { MOVE_COMET_PUNCH, MOVE_SWIFT } }, // 390: 2 EX slots
    [SPECIES_SPINARAK]     = { .exMoves = { MOVE_STRING_SHOT, MOVE_POISON_STING, MOVE_SPIDER_WEB } }, // 250: 3 EX slots
    [SPECIES_ARIADOS]      = { .exMoves = { MOVE_SPIDER_WEB, MOVE_NIGHT_SHADE } }, // 400: 2 EX slots
    [SPECIES_CROBAT]       = { .exMoves = { MOVE_LEECH_LIFE } }, // 535: 1 EX slot
    [SPECIES_CHINCHOU]     = { .exMoves = { MOVE_RAIN_DANCE, MOVE_CONFUSE_RAY, MOVE_THUNDER } }, // 330: 3 EX slots
    [SPECIES_LANTURN]      = { .exMoves = { MOVE_RAIN_DANCE } }, // 460: 1 EX slot
    [SPECIES_PICHU]        = { .exMoves = { MOVE_THUNDER_SHOCK, MOVE_CHARM, MOVE_SWEET_KISS } }, // 205: 3 EX slots
    [SPECIES_CLEFFA]       = { .exMoves = { MOVE_METRONOME, MOVE_ENCORE, MOVE_POUND } }, // 218: 3 EX slots
    [SPECIES_IGGLYBUFF]    = { .exMoves = { MOVE_SING, MOVE_CHARM, MOVE_POUND } }, // 210: 3 EX slots
    [SPECIES_TOGEPI]       = { .exMoves = { MOVE_METRONOME, MOVE_CHARM, MOVE_SWEET_KISS } }, // 245: 3 EX slots
    [SPECIES_TOGETIC]      = { .exMoves = { MOVE_METRONOME, MOVE_WISH } }, // 405: 2 EX slots
    [SPECIES_TOGEKISS]     = { .exMoves = { MOVE_AIR_SLASH } }, // 545: 1 EX slot
    [SPECIES_NATU]         = { .exMoves = { MOVE_NIGHT_SHADE, MOVE_TELEPORT, MOVE_CONFUSE_RAY } }, // 320: 3 EX slots
    [SPECIES_XATU]         = { .exMoves = { MOVE_NIGHT_SHADE } }, // 470: 1 EX slot
    [SPECIES_MAREEP]       = { .exMoves = { MOVE_THUNDER_SHOCK, MOVE_COTTON_SPORE, MOVE_THUNDER_WAVE } }, // 280: 3 EX slots
    [SPECIES_FLAAFFY]      = { .exMoves = { MOVE_THUNDER_PUNCH, MOVE_COTTON_SPORE, MOVE_SPARK } }, // 365: 3 EX slots
    [SPECIES_AMPHAROS]     = { .exMoves = { MOVE_THUNDER_PUNCH } }, // 510: 1 EX slot
    [SPECIES_BELLOSSOM]    = { .exMoves = { MOVE_PETAL_DANCE } }, // 490: 1 EX slot
    [SPECIES_MARILL]       = { .exMoves = { MOVE_DEFENSE_CURL, MOVE_ROLLOUT, MOVE_WATER_GUN } }, // 250: 3 EX slots
    [SPECIES_AZUMARILL]    = { .exMoves = { MOVE_ROLLOUT, MOVE_DEFENSE_CURL } }, // 420: 2 EX slots
    [SPECIES_BONSLY]       = { .exMoves = { MOVE_ROCK_THROW, MOVE_MIMIC, MOVE_BLOCK } }, // 290: 3 EX slots
    [SPECIES_SUDOWOODO]    = { .exMoves = { MOVE_BLOCK, MOVE_MIMIC } }, // 410: 2 EX slots
    [SPECIES_POLITOED]     = { .exMoves = { MOVE_PERISH_SONG } }, // 500: 1 EX slot
    [SPECIES_HOPPIP]       = { .exMoves = { MOVE_SPLASH, MOVE_SYNTHESIS, MOVE_COTTON_SPORE } }, // 250: 3 EX slots
    [SPECIES_SKIPLOOM]     = { .exMoves = { MOVE_STUN_SPORE, MOVE_SLEEP_POWDER, MOVE_LEECH_SEED } }, // 340: 3 EX slots
    [SPECIES_JUMPLUFF]     = { .exMoves = { MOVE_COTTON_SPORE } }, // 460: 1 EX slot
    [SPECIES_AIPOM]        = { .exMoves = { MOVE_THIEF, MOVE_KNOCK_OFF } }, // 400: 2 EX slots
    [SPECIES_SUNKERN]      = { .exMoves = { MOVE_SOLAR_BEAM, MOVE_SUNNY_DAY, MOVE_GROWTH } }, // 180: 3 EX slots
    [SPECIES_SUNFLORA]     = { .exMoves = { MOVE_SOLAR_BEAM, MOVE_SUNNY_DAY } }, // 425: 2 EX slots
    [SPECIES_YANMA]        = { .exMoves = { MOVE_SONIC_BOOM, MOVE_WING_ATTACK } }, // 430: 2 EX slots
    [SPECIES_WOOPER]       = { .exMoves = { MOVE_WATER_GUN, MOVE_SLAM, MOVE_YAWN } }, // 210: 3 EX slots
    [SPECIES_QUAGSIRE]     = { .exMoves = { MOVE_YAWN, MOVE_AMNESIA } }, // 430: 2 EX slots
    [SPECIES_ESPEON]       = { .exMoves = { MOVE_MORNING_SUN } }, // 525: 1 EX slot
    [SPECIES_UMBREON]      = { .exMoves = { MOVE_MOONLIGHT } }, // 525: 1 EX slot
    [SPECIES_MURKROW]      = { .exMoves = { MOVE_PURSUIT, MOVE_NIGHT_SHADE } }, // 405: 2 EX slots
    [SPECIES_HONCHKROW]    = { .exMoves = { MOVE_ASSURANCE } }, // 505: 1 EX slot
    [SPECIES_SLOWKING]     = { .exMoves = { MOVE_DISABLE } }, // 490: 1 EX slot
    [SPECIES_MISDREAVUS]   = { .exMoves = { MOVE_PERISH_SONG, MOVE_MEAN_LOOK } }, // 435: 2 EX slots
    [SPECIES_MISMAGIUS]    = { .exMoves = { MOVE_PERISH_SONG } }, // 495: 1 EX slot
    [SPECIES_UNOWN]        = { .exMoves = { MOVE_HIDDEN_POWER, MOVE_SECRET_POWER, MOVE_NONE } }, // 336: 3 EX slots
    [SPECIES_WOBBUFFET]    = { .exMoves = { MOVE_COUNTER, MOVE_MIRROR_COAT, MOVE_DESTINY_BOND } }, // 405: 2 EX slots
    [SPECIES_GIRAFARIG]    = { .exMoves = { MOVE_PSYBEAM, MOVE_ODOR_SLEUTH } }, // 455: 2 EX slots
    [SPECIES_PINECO]       = { .exMoves = { MOVE_EXPLOSION, MOVE_BIDE, MOVE_SPIKES } }, // 290: 3 EX slots
    [SPECIES_FORRETRESS]   = { .exMoves = { MOVE_EXPLOSION } }, // 465: 1 EX slot
    [SPECIES_DUNSPARCE]    = { .exMoves = { MOVE_GLARE, MOVE_YAWN, MOVE_RAGE } }, // 455: 2 EX slots
    [SPECIES_GLIGAR]       = { .exMoves = { MOVE_FURY_CUTTER, MOVE_POISON_STING } }, // 430: 2 EX slots
    [SPECIES_GLISCOR]      = { .exMoves = { MOVE_POISON_TAIL } }, // 510: 1 EX slot
    [SPECIES_STEELIX]      = { .exMoves = { MOVE_IRON_TAIL } }, // 510: 1 EX slot
    [SPECIES_SNUBBULL]     = { .exMoves = { MOVE_BITE, MOVE_CHARM, MOVE_SCARY_FACE } }, // 300: 3 EX slots
    [SPECIES_GRANBULL]     = { .exMoves = { MOVE_BITE, MOVE_SCARY_FACE } }, // 450: 2 EX slots
    [SPECIES_QWILFISH]     = { .exMoves = { MOVE_PIN_MISSILE, MOVE_SPIKES } }, // 440: 2 EX slots
    [SPECIES_SCIZOR]       = { .exMoves = { MOVE_METAL_CLAW } }, // 500: 1 EX slot
    [SPECIES_SHUCKLE]      = { .exMoves = { MOVE_WRAP } }, // 505: 1 EX slot
    [SPECIES_HERACROSS]    = { .exMoves = { MOVE_MEGAHORN } }, // 500: 1 EX slot
    [SPECIES_SNEASEL]      = { .exMoves = { MOVE_BEAT_UP, MOVE_FAINT_ATTACK } }, // 430: 2 EX slots
    [SPECIES_WEAVILE]      = { .exMoves = { MOVE_BEAT_UP } }, // 510: 1 EX slot
    [SPECIES_TEDDIURSA]    = { .exMoves = { MOVE_FAKE_TEARS, MOVE_LICK, MOVE_FURY_SWIPES } }, // 330: 3 EX slots
    [SPECIES_URSARING]     = { .exMoves = { MOVE_THRASH } }, // 500: 1 EX slot
    [SPECIES_SLUGMA]       = { .exMoves = { MOVE_SMOG, MOVE_EMBER, MOVE_YAWN } }, // 250: 3 EX slots
    [SPECIES_MAGCARGO]     = { .exMoves = { MOVE_SMOG, MOVE_ROCK_SLIDE, MOVE_AMNESIA } }, // 430: 2 EX slots
    [SPECIES_SWINUB]       = { .exMoves = { MOVE_POWDER_SNOW, MOVE_ODOR_SLEUTH, MOVE_TACKLE } }, // 250: 3 EX slots
    [SPECIES_PILOSWINE]    = { .exMoves = { MOVE_ICICLE_SPEAR } }, // 500: 1 EX slot
    [SPECIES_CORSOLA]      = { .exMoves = { MOVE_SPIKE_CANNON, MOVE_RECOVER } }, // 410: 2 EX slots
    [SPECIES_REMORAID]     = { .exMoves = { MOVE_WATER_GUN, MOVE_LOCK_ON, MOVE_AURORA_BEAM } }, // 300: 3 EX slots
    [SPECIES_OCTILLERY]    = { .exMoves = { MOVE_OCTAZOOKA } }, // 480: 1 EX slot
    [SPECIES_DELIBIRD]     = { .exMoves = { MOVE_PRESENT, MOVE_ICE_BALL, MOVE_AURORA_BEAM } }, // 330: 3 EX slots
    [SPECIES_MANTYKE]      = { .exMoves = { MOVE_BUBBLE, MOVE_SUPERSONIC, MOVE_WING_ATTACK } }, // 345: 3 EX slots
    [SPECIES_MANTINE]      = { .exMoves = { MOVE_BOUNCE } }, // 485: 1 EX slot
    [SPECIES_SKARMORY]     = { .exMoves = { MOVE_STEEL_WING, MOVE_PECK } }, // 465: 1 EX slot
    [SPECIES_HOUNDOUR]     = { .exMoves = { MOVE_EMBER, MOVE_HOWL, MOVE_SMOG } }, // 330: 3 EX slots
    [SPECIES_HOUNDOOM]     = { .exMoves = { MOVE_FIRE_SPIN } }, // 500: 1 EX slot
    [SPECIES_KINGDRA]      = { .exMoves = { MOVE_TWISTER } }, // 540: 1 EX slot
    [SPECIES_PHANPY]       = { .exMoves = { MOVE_ROLLOUT, MOVE_DEFENSE_CURL, MOVE_TAKE_DOWN } }, // 330: 3 EX slots
    [SPECIES_DONPHAN]      = { .exMoves = { MOVE_ROLLOUT } }, // 500: 1 EX slot
    [SPECIES_PORYGON2]     = { .exMoves = { MOVE_TRI_ATTACK } }, // 515: 1 EX slot
    [SPECIES_STANTLER]     = { .exMoves = { MOVE_HYPNOSIS } }, // 500: 1 EX slot
    [SPECIES_SMEARGLE]     = { .exMoves = { MOVE_SKETCH } }, // 250: 3 EX slots
    [SPECIES_TYROGUE]      = { .exMoves = { MOVE_FORESIGHT, MOVE_HELPING_HAND, MOVE_TACKLE } }, // 210: 3 EX slots
    [SPECIES_HITMONTOP]    = { .exMoves = { MOVE_TRIPLE_KICK, MOVE_RAPID_SPIN } }, // 455: 2 EX slots
    [SPECIES_SMOOCHUM]     = { .exMoves = { MOVE_ICE_PUNCH, MOVE_LOVELY_KISS, MOVE_SWEET_KISS } }, // 305: 3 EX slots
    [SPECIES_ELEKID]       = { .exMoves = { MOVE_THUNDER_PUNCH, MOVE_FIRE_PUNCH, MOVE_ICE_PUNCH } }, // 360: 3 EX slots
    [SPECIES_MAGBY]        = { .exMoves = { MOVE_FIRE_PUNCH, MOVE_THUNDER_PUNCH, MOVE_FOCUS_PUNCH } }, // 365: 3 EX slots
    [SPECIES_MILTANK]      = { .exMoves = { MOVE_MILK_DRINK } }, // 490: 1 EX slot
    [SPECIES_BLISSEY]      = { .exMoves = { MOVE_SOFT_BOILED } }, // 540: 1 EX slot
    [SPECIES_RAIKOU]       = { .exMoves = { MOVE_NONE } }, // 580: 1 EX slot
    [SPECIES_ENTEI]        = { .exMoves = { MOVE_NONE } }, // 580: 1 EX slot
    [SPECIES_SUICUNE]      = { .exMoves = { MOVE_NONE } }, // 580: 1 EX slot
    [SPECIES_LARVITAR]     = { .exMoves = { MOVE_BITE, MOVE_SANDSTORM, MOVE_SCREECH } }, // 300: 3 EX slots
    [SPECIES_PUPITAR]      = { .exMoves = { MOVE_THRASH, MOVE_SANDSTORM } }, // 410: 2 EX slots
    [SPECIES_TYRANITAR]    = { .exMoves = { MOVE_ROCK_SLIDE } }, // 600: 1 EX slot
    [SPECIES_LUGIA]        = { .exMoves = { MOVE_NONE } }, // 680: 1 EX slot
    [SPECIES_HO_OH]        = { .exMoves = { MOVE_NONE } }, // 680: 1 EX slot
    [SPECIES_CELEBI]       = { .exMoves = { MOVE_NONE } }, // 600: 1 EX slot
    [SPECIES_TREECKO]      = { .exMoves = { MOVE_BULLET_SEED, MOVE_AGILITY, MOVE_ABSORB } }, // 310: 3 EX slots
    [SPECIES_GROVYLE]      = { .exMoves = { MOVE_BULLET_SEED, MOVE_FURY_CUTTER } }, // 405: 2 EX slots
    [SPECIES_SCEPTILE]     = { .exMoves = { MOVE_LEAF_BLADE } }, // 530: 1 EX slot
    [SPECIES_TORCHIC]      = { .exMoves = { MOVE_PECK, MOVE_QUICK_ATTACK, MOVE_FOCUS_ENERGY } }, // 310: 3 EX slots
    [SPECIES_COMBUSKEN]    = { .exMoves = { MOVE_DOUBLE_KICK, MOVE_QUICK_ATTACK } }, // 405: 2 EX slots
    [SPECIES_BLAZIKEN]     = { .exMoves = { MOVE_BLAZE_KICK } }, // 530: 1 EX slot
    [SPECIES_MUDKIP]       = { .exMoves = { MOVE_WATER_GUN, MOVE_MUD_SPORT, MOVE_BIDE } }, // 310: 3 EX slots
    [SPECIES_MARSHTOMP]    = { .exMoves = { MOVE_MUD_SHOT, MOVE_MUD_SPORT } }, // 405: 2 EX slots
    [SPECIES_SWAMPERT]     = { .exMoves = { MOVE_MUDDY_WATER } }, // 535: 1 EX slot
    [SPECIES_POOCHYENA]    = { .exMoves = { MOVE_ROAR, MOVE_CRUNCH, MOVE_HYPER_FANG } }, // 220: 3 EX slots
    [SPECIES_MIGHTYENA]    = { .exMoves = { MOVE_ROAR, MOVE_CRUNCH } }, // 420: 2 EX slots
    [SPECIES_ZIGZAGOON]    = { .exMoves = { MOVE_EXTREME_SPEED, MOVE_COVET, MOVE_HEADBUTT } }, // 240: 3 EX slots
    [SPECIES_LINOONE]      = { .exMoves = { MOVE_EXTREME_SPEED, MOVE_HEADBUTT } }, // 420: 2 EX slots
    [SPECIES_WURMPLE]      = { .exMoves = { MOVE_POISON_STING, MOVE_STRING_SHOT, MOVE_TACKLE } }, // 195: 3 EX slots
    [SPECIES_SILCOON]      = { .exMoves = { MOVE_POISON_STING, MOVE_STRING_SHOT, MOVE_HARDEN } }, // 205: 3 EX slots
    [SPECIES_BEAUTIFLY]    = { .exMoves = { MOVE_SILVER_WIND, MOVE_SLEEP_POWDER } }, // 395: 2 EX slots
    [SPECIES_CASCOON]      = { .exMoves = { MOVE_POISON_STING, MOVE_STRING_SHOT, MOVE_HARDEN } }, // 205: 3 EX slots
    [SPECIES_DUSTOX]       = { .exMoves = { MOVE_SILVER_WIND, MOVE_TOXIC, MOVE_LEECH_LIFE } }, // 385: 3 EX slots
    [SPECIES_LOTAD]        = { .exMoves = { MOVE_ABSORB, MOVE_RAIN_DANCE, MOVE_PETAL_DANCE } }, // 220: 3 EX slots
    [SPECIES_LOMBRE]       = { .exMoves = { MOVE_MEGA_DRAIN, MOVE_RAIN_DANCE, MOVE_PETAL_DANCE } }, // 340: 3 EX slots
    [SPECIES_LUDICOLO]     = { .exMoves = { MOVE_RAIN_DANCE } }, // 480: 1 EX slot
    [SPECIES_SEEDOT]       = { .exMoves = { MOVE_EXPLOSION, MOVE_BIDE, MOVE_HARDEN } }, // 220: 3 EX slots
    [SPECIES_NUZLEAF]      = { .exMoves = { MOVE_EXPLOSION, MOVE_RAZOR_LEAF, MOVE_FAINT_ATTACK } }, // 340: 3 EX slots
    [SPECIES_SHIFTRY]      = { .exMoves = { MOVE_EXPLOSION } }, // 480: 1 EX slot
    [SPECIES_NINCADA]      = { .exMoves = { MOVE_LEECH_LIFE, MOVE_HARDEN, MOVE_SAND_ATTACK } }, // 266: 3 EX slots
    [SPECIES_NINJASK]      = { .exMoves = { MOVE_BATON_PASS } }, // 456: 1 EX slot
    [SPECIES_SHEDINJA]     = { .exMoves = { MOVE_SPITE, MOVE_GRUDGE, MOVE_CONFUSE_RAY } }, // 237: 3 EX slots
    [SPECIES_TAILLOW]      = { .exMoves = { MOVE_PECK, MOVE_QUICK_ATTACK, MOVE_FOCUS_ENERGY } }, // 270: 3 EX slots
    [SPECIES_SWELLOW]      = { .exMoves = { MOVE_AERIAL_ACE, MOVE_QUICK_ATTACK } }, // 455: 2 EX slots
    [SPECIES_SHROOMISH]    = { .exMoves = { MOVE_LEECH_SEED, MOVE_BULLET_SEED, MOVE_HEADBUTT } }, // 295: 3 EX slots
    [SPECIES_BRELOOM]      = { .exMoves = { MOVE_MACH_PUNCH } }, // 460: 1 EX slot
    [SPECIES_SPINDA]       = { .exMoves = { MOVE_DIZZY_PUNCH, MOVE_TEETER_DANCE, MOVE_THRASH } }, // 360: 3 EX slots
    [SPECIES_WINGULL]      = { .exMoves = { MOVE_WATER_GUN, MOVE_SUPERSONIC, MOVE_WING_ATTACK } }, // 270: 3 EX slots
    [SPECIES_PELIPPER]     = { .exMoves = { MOVE_STOCKPILE, MOVE_SWALLOW } }, // 440: 2 EX slots
    [SPECIES_BUIZEL]       = { .exMoves = { MOVE_SONIC_BOOM, MOVE_WATER_GUN, MOVE_QUICK_ATTACK } }, // 330: 3 EX slots
    [SPECIES_FLOATZEL]     = { .exMoves = { MOVE_AQUA_JET } }, // 495: 1 EX slot
    [SPECIES_SURSKIT]      = { .exMoves = { MOVE_BUBBLE, MOVE_QUICK_ATTACK, MOVE_HAZE } }, // 269: 3 EX slots
    [SPECIES_MASQUERAIN]   = { .exMoves = { MOVE_SCARY_FACE, MOVE_SILVER_WIND } }, // 454: 2 EX slots
    [SPECIES_WAILMER]      = { .exMoves = { MOVE_ROLLOUT, MOVE_WHIRLPOOL } }, // 400: 2 EX slots
    [SPECIES_WAILORD]      = { .exMoves = { MOVE_WATER_SPOUT } }, // 500: 1 EX slot
    [SPECIES_SKITTY]       = { .exMoves = { MOVE_DOUBLE_SLAP, MOVE_SING, MOVE_CHARM } }, // 260: 3 EX slots
    [SPECIES_DELCATTY]     = { .exMoves = { MOVE_SING, MOVE_DOUBLE_SLAP, MOVE_HEAL_BELL } }, // 400: 2 EX slots
    [SPECIES_GLAMEOW]      = { .exMoves = { MOVE_FURY_SWIPES, MOVE_HYPNOSIS, MOVE_SCRATCH } }, // 310: 3 EX slots
    [SPECIES_PURUGLY]      = { .exMoves = { MOVE_FAINT_ATTACK, MOVE_HYPNOSIS } }, // 452: 2 EX slots
    [SPECIES_BUNEARY]      = { .exMoves = { MOVE_BOUNCE, MOVE_JUMP_KICK, MOVE_BATON_PASS } }, // 350: 3 EX slots
    [SPECIES_LOPUNNY]      = { .exMoves = { MOVE_BOUNCE } }, // 480: 1 EX slot
    [SPECIES_KECLEON]      = { .exMoves = { MOVE_CAMOUFLAGE, MOVE_BIND } }, // 440: 2 EX slots
    [SPECIES_BALTOY]       = { .exMoves = { MOVE_EXPLOSION, MOVE_COSMIC_POWER, MOVE_DIG } }, // 300: 3 EX slots
    [SPECIES_CLAYDOL]      = { .exMoves = { MOVE_EXPLOSION, MOVE_COSMIC_POWER, MOVE_DIG } }, // 500: 1 EX slot
    [SPECIES_NOSEPASS]     = { .exMoves = { MOVE_BLOCK, MOVE_LOCK_ON, MOVE_ZAP_CANNON } }, // 415: 2 EX slots
    [SPECIES_TORKOAL]      = { .exMoves = { MOVE_SMOG } }, // 470: 1 EX slot
    [SPECIES_SABLEYE]      = { .exMoves = { MOVE_NIGHT_SHADE, MOVE_SHADOW_PUNCH, MOVE_FURY_SWIPES } }, // 380: 3 EX slots
    [SPECIES_BARBOACH]     = { .exMoves = { MOVE_GEYSER, MOVE_MAGNITUDE, MOVE_MUD_SPORT } }, // 288: 3 EX slots
    [SPECIES_WHISCASH]     = { .exMoves = { MOVE_GEYSER } }, // 468: 1 EX slot
    [SPECIES_SHELLOS]      = { .exMoves = { MOVE_MUD_SHOT, MOVE_MUD_SPORT, MOVE_HARDEN } }, // 325: 3 EX slots
    [SPECIES_GASTRODON]    = { .exMoves = { MOVE_MUDDY_WATER } }, // 475: 1 EX slot
    [SPECIES_LUVDISC]      = { .exMoves = { MOVE_CHARM, MOVE_SWEET_KISS, MOVE_LOVELY_KISS } }, // 330: 3 EX slots
    [SPECIES_CORPHISH]     = { .exMoves = { MOVE_BUBBLE, MOVE_VICE_GRIP, MOVE_CRABHAMMER } }, // 308: 3 EX slots
    [SPECIES_CRAWDAUNT]    = { .exMoves = { MOVE_CRABHAMMER } }, // 468: 1 EX slot
    [SPECIES_FEEBAS]       = { .exMoves = { MOVE_SPLASH, MOVE_TACKLE, MOVE_FLAIL } }, // 200: 3 EX slots
    [SPECIES_MILOTIC]      = { .exMoves = { MOVE_RECOVER } }, // 540: 1 EX slot
    [SPECIES_LEVIATIC]     = { .exMoves = { MOVE_VILE_CUTTER } }, // 540: 1 EX slot
    [SPECIES_CARVANHA]     = { .exMoves = { MOVE_BITE, MOVE_RAGE, MOVE_AQUA_JET } }, // 305: 3 EX slots
    [SPECIES_SHARPEDO]     = { .exMoves = { MOVE_AQUA_JET } }, // 460: 1 EX slot
    [SPECIES_TRAPINCH]     = { .exMoves = { MOVE_SAND_TOMB, MOVE_CRUNCH, MOVE_DIG } }, // 290: 3 EX slots
    [SPECIES_VIBRAVA]      = { .exMoves = { MOVE_SAND_TOMB, MOVE_HYPER_VOICE, MOVE_DRAGON_BREATH } }, // 340: 3 EX slots
    [SPECIES_FLYGON]       = { .exMoves = { MOVE_SAND_TOMB } }, // 520: 1 EX slot
    [SPECIES_MAKUHITA]     = { .exMoves = { MOVE_ARM_THRUST, MOVE_NONE, MOVE_NONE } }, // 237: 3 EX slots
    [SPECIES_HARIYAMA]     = { .exMoves = { MOVE_ARM_THRUST } }, // 474: 1 EX slot
    [SPECIES_ELECTRIKE]    = { .exMoves = { MOVE_SPARK, MOVE_QUICK_ATTACK, MOVE_HOWL } }, // 295: 3 EX slots
    [SPECIES_MANECTRIC]    = { .exMoves = { MOVE_SPARK } }, // 475: 1 EX slot
    [SPECIES_NUMEL]        = { .exMoves = { MOVE_EMBER, MOVE_MAGNITUDE, MOVE_AMNESIA } }, // 305: 3 EX slots
    [SPECIES_CAMERUPT]     = { .exMoves = { MOVE_ROCK_SLIDE } }, // 460: 1 EX slot
    [SPECIES_SPHEAL]       = { .exMoves = { MOVE_ICE_BALL, MOVE_DEFENSE_CURL, MOVE_POWDER_SNOW } }, // 290: 3 EX slots
    [SPECIES_SEALEO]       = { .exMoves = { MOVE_ICE_BALL, MOVE_ENCORE } }, // 410: 2 EX slots
    [SPECIES_WALREIN]      = { .exMoves = { MOVE_HYPER_FANG } }, // 530: 1 EX slot
    [SPECIES_CACNEA]       = { .exMoves = { MOVE_PIN_MISSILE, MOVE_SAND_ATTACK, MOVE_ABSORB } }, // 335: 3 EX slots
    [SPECIES_CACTURNE]     = { .exMoves = { MOVE_NEEDLE_ARM } }, // 475: 1 EX slot
    [SPECIES_SNORUNT]      = { .exMoves = { MOVE_POWDER_SNOW, MOVE_HEADBUTT, MOVE_BITE } }, // 300: 3 EX slots
    [SPECIES_GLALIE]       = { .exMoves = { MOVE_EXPLOSION } }, // 480: 1 EX slot
    [SPECIES_FROSLASS]     = { .exMoves = { MOVE_LOVELY_KISS } }, // 480: 1 EX slot
    [SPECIES_LUNATONE]     = { .exMoves = { MOVE_MOONLIGHT } }, // 460: 1 EX slot
    [SPECIES_SOLROCK]      = { .exMoves = { MOVE_MORNING_SUN } }, // 460: 1 EX slot
    [SPECIES_AZURILL]      = { .exMoves = { MOVE_SPLASH, MOVE_BUBBLE, MOVE_CHARM } }, // 190: 3 EX slots
    [SPECIES_SPOINK]       = { .exMoves = { MOVE_SPLASH, MOVE_PSYWAVE, MOVE_BOUNCE } }, // 330: 3 EX slots
    [SPECIES_GRUMPIG]      = { .exMoves = { MOVE_BOUNCE } }, // 470: 1 EX slot
    [SPECIES_PLUSLE]       = { .exMoves = { MOVE_THUNDERBOLT, MOVE_HELPING_HAND } }, // 405: 2 EX slots
    [SPECIES_MINUN]        = { .exMoves = { MOVE_THUNDERBOLT, MOVE_HELPING_HAND } }, // 405: 2 EX slots
    [SPECIES_MAWILE]       = { .exMoves = { MOVE_CRUNCH, MOVE_FAKE_TEARS, MOVE_VICE_GRIP } }, // 380: 3 EX slots
    [SPECIES_MEDITITE]     = { .exMoves = { MOVE_MEDITATE, MOVE_CONFUSION, MOVE_KARATE_CHOP } }, // 280: 3 EX slots
    [SPECIES_MEDICHAM]     = { .exMoves = { MOVE_MEDITATE, MOVE_HI_JUMP_KICK } }, // 410: 2 EX slots
    [SPECIES_SWABLU]       = { .exMoves = { MOVE_SING, MOVE_PECK, MOVE_ASTONISH } }, // 310: 3 EX slots
    [SPECIES_ALTARIA]      = { .exMoves = { MOVE_SING } }, // 490: 1 EX slot
    [SPECIES_WYNAUT]       = { .exMoves = { MOVE_COUNTER, MOVE_MIRROR_COAT, MOVE_ENCORE } }, // 260: 3 EX slots
    [SPECIES_DUSKULL]      = { .exMoves = { MOVE_NIGHT_SHADE, MOVE_DISABLE, MOVE_FORESIGHT } }, // 295: 3 EX slots
    [SPECIES_DUSCLOPS]     = { .exMoves = { MOVE_SHADOW_PUNCH } }, // 495: 1 EX slot
    [SPECIES_BUDEW]        = { .exMoves = { MOVE_ABSORB, MOVE_GROWTH, MOVE_WATER_SPORT } }, // 280: 3 EX slots
    [SPECIES_ROSELIA]      = { .exMoves = { MOVE_PETAL_DANCE, MOVE_POISON_STING } }, // 400: 2 EX slots
    [SPECIES_ROSERADE]     = { .exMoves = { MOVE_PETAL_DANCE } }, // 515: 1 EX slot
    [SPECIES_SLAKOTH]      = { .exMoves = { MOVE_SLACK_OFF, MOVE_SLASH, MOVE_YAWN } }, // 280: 3 EX slots
    [SPECIES_VIGOROTH]     = { .exMoves = { MOVE_SLACK_OFF, MOVE_SLASH } }, // 440: 2 EX slots
    [SPECIES_SLAKING]      = { .exMoves = { MOVE_SLACK_OFF } }, // 670: 1 EX slot
    [SPECIES_GULPIN]       = { .exMoves = { MOVE_STOCKPILE, MOVE_SPIT_UP, MOVE_SWALLOW } }, // 302: 3 EX slots
    [SPECIES_SWALOT]       = { .exMoves = { MOVE_STOCKPILE, MOVE_SPIT_UP, MOVE_SWALLOW } }, // normally would have gotten 1 ex slot but I used better judgment
    [SPECIES_TROPIUS]      = { .exMoves = { MOVE_BODY_SLAM } }, // 460: 1 EX slot
    [SPECIES_WHISMUR]      = { .exMoves = { MOVE_HYPER_VOICE, MOVE_UPROAR, MOVE_ASTONISH } }, // 240: 3 EX slots
    [SPECIES_LOUDRED]      = { .exMoves = { MOVE_HYPER_VOICE, MOVE_UPROAR, MOVE_STOMP } }, // 360: 3 EX slots
    [SPECIES_EXPLOUD]      = { .exMoves = { MOVE_HYPER_VOICE } }, // 490: 1 EX slot
    [SPECIES_CLAMPERL]     = { .exMoves = { MOVE_CLAMP, MOVE_WHIRLPOOL, MOVE_IRON_DEFENSE } }, // 345: 3 EX slots
    [SPECIES_HUNTAIL]      = { .exMoves = { MOVE_CRUNCH } }, // 485: 1 EX slot
    [SPECIES_GOREBYSS]     = { .exMoves = { MOVE_LEECH_LIFE } }, // 485: 1 EX slot
    [SPECIES_ABSOL]        = { .exMoves = { MOVE_RAZOR_WIND } }, // 465: 1 EX slot
    [SPECIES_SHUPPET]      = { .exMoves = { MOVE_KNOCK_OFF, MOVE_NIGHT_SHADE, MOVE_SPITE } }, // 295: 3 EX slots
    [SPECIES_BANETTE]      = { .exMoves = { MOVE_SELF_DESTRUCT, MOVE_GRUDGE }, .exVersions = sBanetteExVersions }, // 455: 2 EX slots
    [SPECIES_SEVIPER]      = { .exMoves = { MOVE_WRAP } }, // 458: 1 EX slot
    [SPECIES_ZANGOOSE]     = { .exMoves = { MOVE_QUICK_ATTACK } }, // 458: 1 EX slot
    [SPECIES_RELICANTH]    = { .exMoves = { MOVE_ANCIENT_POWER } }, // 485: 1 EX slot
    [SPECIES_ARON]         = { .exMoves = { MOVE_SKULL_BASH, MOVE_HEADBUTT, MOVE_HARDEN } }, // 330: 3 EX slots
    [SPECIES_LAIRON]       = { .exMoves = { MOVE_IRON_DEFENSE, MOVE_SKULL_BASH } }, // 430: 2 EX slots
    [SPECIES_AGGRON]       = { .exMoves = { MOVE_IRON_TAIL } }, // 530: 1 EX slot
    [SPECIES_CASTFORM]     = { .exMoves = { MOVE_SUNNY_DAY, MOVE_RAIN_DANCE, MOVE_HAIL } }, // 420: 2 EX slots
    [SPECIES_VOLBEAT]      = { .exMoves = { MOVE_TAIL_GLOW, MOVE_SIGNAL_BEAM } }, // 430: 2 EX slots
    [SPECIES_ILLUMISE]     = { .exMoves = { MOVE_FLATTER, MOVE_WISH } }, // 430: 2 EX slots
    [SPECIES_LILEEP]       = { .exMoves = { MOVE_CONSTRICT, MOVE_ACID, MOVE_INGRAIN } }, // 355: 3 EX slots
    [SPECIES_CRADILY]      = { .exMoves = { MOVE_INGRAIN } }, // 495: 1 EX slot
    [SPECIES_ANORITH]      = { .exMoves = { MOVE_FURY_CUTTER, MOVE_METAL_CLAW, MOVE_HARDEN } }, // 355: 3 EX slots
    [SPECIES_ARMALDO]      = { .exMoves = { MOVE_CRUSH_CLAW } }, // 495: 1 EX slot
    [SPECIES_RALTS]        = { .exMoves = { MOVE_CONFUSION, MOVE_TELEPORT, MOVE_GROWL } }, // 198: 3 EX slots
    [SPECIES_KIRLIA]       = { .exMoves = { MOVE_CONFUSION, MOVE_TELEPORT, MOVE_MAGICAL_LEAF } }, // 278: 3 EX slots
    [SPECIES_GARDEVOIR]    = { .exMoves = { MOVE_BLACK_HOLE } }, // 518: 1 EX slot
    [SPECIES_GALLADE]      = { .exMoves = { MOVE_SLASH } }, // 518: 1 EX slot
    [SPECIES_BAGON]        = { .exMoves = { MOVE_RAGE, MOVE_HEADBUTT, MOVE_BITE } }, // 300: 3 EX slots
    [SPECIES_SHELGON]      = { .exMoves = { MOVE_HEADBUTT, MOVE_DEFENSE_CURL } }, // 420: 2 EX slots
    [SPECIES_SALAMENCE]    = { .exMoves = { MOVE_FLY } }, // 600: 1 EX slot
    [SPECIES_BELDUM]       = { .exMoves = { MOVE_TAKE_DOWN, MOVE_SHIELD_BASH } }, // 300: 3 EX slots normally but it doesnt learn anything else
    [SPECIES_METANG]       = { .exMoves = { MOVE_TAKE_DOWN, MOVE_COMET_PUNCH } }, // 420: 2 EX slots
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
    [SPECIES_SHINX]        = { .exMoves = { MOVE_SPARK, MOVE_TACKLE, MOVE_LEER } }, // 263: 3 EX slots
    [SPECIES_LUXIO]        = { .exMoves = { MOVE_SPARK, MOVE_BITE, MOVE_LEER } }, // 363: 3 EX slots
    [SPECIES_LUXRAY]       = { .exMoves = { MOVE_SPARK } }, // 523: 1 EX slot
    [SPECIES_CHINGLING]    = { .exMoves = { MOVE_UPROAR, MOVE_YAWN, MOVE_ECHO } }, // 285: 3 EX slots
    [SPECIES_CHIMECHO]     = { .exMoves = { MOVE_HEAL_BELL, MOVE_ECHO } }, // 455: 2 EX slots
    [SPECIES_LUCARIO]      = { .exMoves = { MOVE_AURA_SPHERE } }, // 525: 1 EX slot
};
