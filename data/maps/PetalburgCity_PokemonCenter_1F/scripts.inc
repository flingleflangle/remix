PetalburgCity_PokemonCenter_1F_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, PetalburgCity_PokemonCenter_1F_OnTransition
	.byte 0

PetalburgCity_PokemonCenter_1F_OnTransition:
	setrespawn HEAL_LOCATION_PETALBURG_CITY
	call Common_EventScript_UpdateBrineyLocation
	end

PetalburgCity_PokemonCenter_1F_EventScript_Nurse::
	setvar VAR_0x800B, LOCALID_PETALBURG_NURSE
	call Common_EventScript_PkmnCenterNurse
	waitmessage
	waitbuttonpress
	release
	end

PetalburgCity_PokemonCenter_1F_EventScript_FatMan::
	msgbox PetalburgCity_PokemonCenter_1F_Text_PCStorageSystem, MSGBOX_NPC
	end

PetalburgCity_PokemonCenter_1F_EventScript_Youngster::
	msgbox PetalburgCity_PokemonCenter_1F_Text_OranBerryRegainedHP, MSGBOX_NPC
	end

PetalburgCity_PokemonCenter_1F_EventScript_Woman::
	lock
	faceplayer
	msgbox PetalburgCity_PokemonCenter_1F_Text_ManyTypesOfPokemon, MSGBOX_DEFAULT
	specialvar VAR_RESULT, IsStarterInParty
	goto_if_eq VAR_RESULT, TRUE, PetalburgCity_PokemonCenter_1F_EventScript_SayStarterTypeInfo
	release
	end

PetalburgCity_PokemonCenter_1F_EventScript_SayStarterTypeInfo::
	call_if_eq VAR_STARTER_MON, 0, PetalburgCity_PokemonCenter_1F_EventScript_SayMareepType
	call_if_eq VAR_STARTER_MON, 1, PetalburgCity_PokemonCenter_1F_EventScript_SayChikoritaType
	call_if_eq VAR_STARTER_MON, 2, PetalburgCity_PokemonCenter_1F_EventScript_SayCyndaquilType
	call_if_eq VAR_STARTER_MON, 3, PetalburgCity_PokemonCenter_1F_EventScript_SayTotodileType
	call_if_eq VAR_STARTER_MON, 4, PetalburgCity_PokemonCenter_1F_EventScript_SayLarvitarType
	release
	end

PetalburgCity_PokemonCenter_1F_EventScript_SayMareepType::
	msgbox PetalburgCity_PokemonCenter_1F_Text_MareepIsElectricType, MSGBOX_DEFAULT
	return

PetalburgCity_PokemonCenter_1F_EventScript_SayChikoritaType::
	msgbox PetalburgCity_PokemonCenter_1F_Text_ChikoritaIsGrassType, MSGBOX_DEFAULT
	return

PetalburgCity_PokemonCenter_1F_EventScript_SayCyndaquilType::
	msgbox PetalburgCity_PokemonCenter_1F_Text_CyndaquilIsFireType, MSGBOX_DEFAULT
	return

PetalburgCity_PokemonCenter_1F_EventScript_SayTotodileType::
	msgbox PetalburgCity_PokemonCenter_1F_Text_TotodileIsWaterType, MSGBOX_DEFAULT
	return

PetalburgCity_PokemonCenter_1F_EventScript_SayLarvitarType::
	msgbox PetalburgCity_PokemonCenter_1F_Text_LarvitarIsRockType, MSGBOX_DEFAULT
	return

PetalburgCity_PokemonCenter_1F_Text_PCStorageSystem:
	.string "That PC-based POKéMON Storage\n"
	.string "System…\p"
	.string "Whoever made it must be some kind\n"
	.string "of a scientific wizard!$"

PetalburgCity_PokemonCenter_1F_Text_OranBerryRegainedHP:
	.string "When my POKéMON ate an\n"
	.string "ORAN BERRY, it regained HP!$"

PetalburgCity_PokemonCenter_1F_Text_ManyTypesOfPokemon:
	.string "There are many types of POKéMON.\p"
	.string "All types have their strengths and\n"
	.string "weaknesses against other types.\p"
	.string "Depending on the types of POKéMON,\n"
	.string "a battle could be easy or hard.$"


PetalburgCity_PokemonCenter_1F_Text_MareepIsElectricType:
	.string "For example, your MAREEP\n"
	.string "is an ELECTRIC type.\p"
	.string "It's strong against the WATER and\n"
	.string "FLYING types.\p"
	.string "But, it's weak against GROUND-type\n"
	.string "POKéMON.$"

PetalburgCity_PokemonCenter_1F_Text_ChikoritaIsGrassType:
	.string "For example, your CHIKORITA\n"
	.string "is a GRASS type.\p"
	.string "It's strong against the WATER and\n"
	.string "GROUND types.\p"
	.string "But, it's weak against FIRE-type\n"
	.string "POKéMON.$"

PetalburgCity_PokemonCenter_1F_Text_CyndaquilIsFireType:
	.string "For example, your CYNDAQUIL\n"
	.string "is a FIRE type.\p"
	.string "It's strong against the GRASS and\n"
	.string "BUG types.\p"
	.string "But, it's weak against WATER-type\n"
	.string "POKéMON.$"

PetalburgCity_PokemonCenter_1F_Text_TotodileIsWaterType:
	.string "For example, your TOTODILE\n"
	.string "is a WATER type.\p"
	.string "It's strong against the FIRE type.\p"
	.string "But, it's weak against GRASS-type\n"
	.string "and ELECTRIC-type POKéMON.$"

PetalburgCity_PokemonCenter_1F_Text_LarvitarIsRockType:
	.string "For example, your LARVITAR\n"
	.string "is a ROCK type.\p"
	.string "It's strong against the FIRE and\n"
	.string "FLYING types.\p"
	.string "But, it's weak against GRASS-type,\n"
	.string "WATER-type, and FIGHTING-type\l"
	.string "POKéMON, so be careful.$"

