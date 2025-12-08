VerdanturfTown_PokemonCenter_1F_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, VerdanturfTown_PokemonCenter_1F_OnTransition
	.byte 0

VerdanturfTown_PokemonCenter_1F_OnTransition:
	setrespawn HEAL_LOCATION_VERDANTURF_TOWN
	call Common_EventScript_UpdateBrineyLocation
	end

VerdanturfTown_PokemonCenter_1F_EventScript_Nurse::
	setvar VAR_0x800B, LOCALID_VERDANTURF_NURSE
	call Common_EventScript_PkmnCenterNurse
	waitmessage
	waitbuttonpress
	release
	end

VerdanturfTown_PokemonCenter_1F_EventScript_Gentleman::
	msgbox VerdanturfTown_PokemonCenter_1F_Text_FaithInYourPokemon, MSGBOX_NPC
	end

VerdanturfTown_PokemonCenter_1F_EventScript_ExpertM::
	msgbox VerdanturfTown_PokemonCenter_1F_Text_VisitForBattleTent, MSGBOX_NPC
	end

VerdanturfTown_PokemonCenter_1F_Text_FaithInYourPokemon:
	.string "You can't consider yourself a real\n"
	.string "TRAINER if you don't have faith\l"
	.string "in your POKéMON.\p"
	.string "Only those people who can believe\n"
	.string "in their battling POKéMON can win\l"
	.string "through to the very end.$"

VerdanturfTown_PokemonCenter_1F_Text_VisitForBattleTent:
	.string "The reason why anyone would visit\n"
	.string "VERDANTURF…\p"
	.string "It's the BATTLE TENT. It goes without\n"
	.string "saying.\p"
	.string "Or is there somebody here that you\n"
	.string "came to see?$"

VerdanturfTown_PokemonCenter_1F_EventScript_AbilityGuy::
	msgbox VerdanturfTown_PokemonCenter_1F_Text_AbilityGuy, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, VerdanturfTown_PokemonCenter_1F_EventScript_NotInterested
	msgbox VerdanturfTown_PokemonCenter_1F_Text_WhichMon, MSGBOX_DEFAULT
	special ChoosePartyMon
	waitstate
	goto_if_ne VAR_0x8004, PARTY_NOTHING_CHOSEN, VerdanturfTown_PokemonCenter_1F_EventScript_AbilitySwapped
	goto_if_eq VAR_0x8004, PARTY_NOTHING_CHOSEN, VerdanturfTown_PokemonCenter_1F_EventScript_NotInterested
	end
	
VerdanturfTown_PokemonCenter_1F_Text_AbilityGuy:
	.string "Hi! I'm the ABILITY guy!\n"
	.string "Or the ABILITY MANIAC, depending on\l"
	.string "who you ask.\p"
	.string "Anyway, I can swap your POKéMON's\n"
	.string "abilities, free of charge. Interested?$"
	
VerdanturfTown_PokemonCenter_1F_EventScript_NotInterested:
	msgbox VerdanturfTown_PokemonCenter_1F_Text_NotInterested, MSGBOX_DEFAULT
	release
	end

VerdanturfTown_PokemonCenter_1F_Text_NotInterested:
	.string "No? Are you satisfied with your current\n"
	.string "abilities? You'd be surprised how much\l"
	.string "of a difference one ability can make.$"
	

VerdanturfTown_PokemonCenter_1F_EventScript_AbilitySwapped:
	specialvar VAR_RESULT, SwitchMonAbility
	msgbox VerdanturfTown_PokemonCenter_1F_Text_AbilitySwapped, MSGBOX_DEFAULT
	release
	end
	
VerdanturfTown_PokemonCenter_1F_Text_WhichMon:
	.string "Alright, which POKéMON needs their\n"
	.string "ability swapped?$"

VerdanturfTown_PokemonCenter_1F_Text_AbilitySwapped:
	.string "Voila! Now your POKéMON's ready for a\n"
	.string "new strategy. Get to training!$"
	


