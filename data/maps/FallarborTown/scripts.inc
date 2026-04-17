FallarborTown_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, FallarborTown_OnTransition
	.byte 0

FallarborTown_OnTransition:
	setflag FLAG_VISITED_FALLARBOR_TOWN
	setvar VAR_CONTEST_HALL_STATE, 0
	clearflag FLAG_CONTEST_SKETCH_CREATED
	end

FallarborTown_EventScript_ExpertM::
	lock
	faceplayer
	goto_if_set FLAG_DEFEATED_EVIL_TEAM_MT_CHIMNEY, FallarborTown_EventScript_ExpertMNormal
	msgbox FallarborTown_Text_ShadyCharactersCozmosHome, MSGBOX_DEFAULT
	release
	end

FallarborTown_EventScript_ExpertMNormal::
	msgbox FallarborTown_Text_RegionKnownForMeteors, MSGBOX_DEFAULT
	release
	end

FallarborTown_EventScript_Girl::
	msgbox FallarborTown_Text_MyPreciousAzurill, MSGBOX_NPC
	end

FallarborTown_EventScript_Gentleman::
	msgbox FallarborTown_Text_HaveYouChallengedFlannery, MSGBOX_NPC
	end

FallarborTown_EventScript_Azurill::
	lock
	faceplayer
	waitse
	playmoncry SPECIES_AZURILL, CRY_MODE_NORMAL
	msgbox FallarborTown_Text_Azurill, MSGBOX_DEFAULT
	waitmoncry
	release
	end

FallarborTown_EventScript_BattleTentSign::
	msgbox FallarborTown_Text_BattleTentSign, MSGBOX_SIGN
	end

FallarborTown_EventScript_TownSign::
	msgbox FallarborTown_Text_TownSign, MSGBOX_SIGN
	end

FallarborTown_EventScript_MoveTutorSign::
	msgbox FallarborTown_Text_MoveTutorSign, MSGBOX_SIGN
	end

FallarborTown_Text_ShadyCharactersCozmosHome:
	.string "Something's happening,\n"
	.string "and I don't like it!\p"
	.string "I've seen shady characters wandering\n"
	.string "in and out of PROF. COZMO's home…$"

FallarborTown_Text_RegionKnownForMeteors:
	.string "This region's been known for meteors\n"
	.string "since the olden days.\p"
	.string "They say METEOR FALLS was gouged out\n"
	.string "by a falling meteorite long ago.$"

FallarborTown_Text_MyPreciousAzurill:
	.string "See! Take a look!\n"
	.string "This is my precious AZURILL!\p"
	.string "It's slick and smooth and plushy, too!$"

FallarborTown_Text_Azurill:
	.string "AZURILL: Rooreelooo.$"

FallarborTown_Text_HaveYouChallengedFlannery:
	.string "Have you already challenged FLANNERY,\n"
	.string "the LEADER of LAVARIDGE GYM?\p"
	.string "The girl's grandfather was famous.\n"
	.string "He was one of the ELITE FOUR in the\l"
	.string "POKéMON LEAGUE at one point.\p"
	.string "It wouldn't surprise me to see FLANNERY\n"
	.string "become a great TRAINER in her own\l"
	.string "right.$"

FallarborTown_Text_BattleTentSign:
	.string "BATTLE TENT FALLARBOR SITE\n"
	.string "“May the Greatest Teams Gather!”$"

FallarborTown_Text_TownSign:
	.string "FALLARBOR TOWN\n"
	.string "“A farm community with small gardens.”$"

FallarborTown_Text_MoveTutorSign:
	.string "MOVE TUTOR'S HOUSE\n"
	.string "“New moves taught to POKéMON.”$"


FallarborTown_EventScript_Bob::
	call_if_unset FLAG_TEMP_1, FallarborTown_EventScript_FurtherConfusion
	lock
	faceplayer
	msgbox FallarborTown_Text_DidYouFindIt, MSGBOX_DEFAULT
	release
	end


FallarborTown_EventScript_FurtherConfusion::
	call_if_unset FLAG_TEMP_2, FallarborTown_EventScript_MetalConfusion
	lock
	faceplayer
	msgbox FallarborTown_Text_InTheWay, MSGBOX_DEFAULT
	release
	end

FallarborTown_EventScript_MetalConfusion::
	lock
	faceplayer
	msgbox FallarborTown_Text_MetalTrainerEncounter, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, YES, FallarborTown_EventScript_MetalTrainer
	msgbox FallarborTown_Text_IsThatSo, MSGBOX_DEFAULT
	release
	end
	
FallarborTown_Text_MetalTrainerEncounter:
	.string "Hmm. I'm looking for someone named\n"
	.string "“{PLAYER}”, but I'm stuck here.\p"
	.string "I think they were supposed to come\n"
	.string "to me. Do you know them?$"

FallarborTown_Text_MetalTrainerIntro:
	.string "Oh, you do?\n"
	.string "You're saying it's you?!\l"
	.string "We've gotta battle, then!$"

FallarborTown_EventScript_MetalTrainer::
 	trainerbattle_single TRAINER_METAL_CRYSTAL, FallarborTown_Text_MetalTrainerIntro, FallarborTown_Text_MetalTrainerDefeat, FallarborTown_EventScript_GiveMetalCrystal
	msgbox FallarborTown_Text_MetalTrainerPostDefeat, MSGBOX_DEFAULT
	setflag FLAG_TEMP_2
	release
	end

FallarborTown_Text_IsThatSo:
	.string "I guess it was a long shot.\n"
	.string "Thanks anyway, though.$"
	
FallarborTown_Text_MetalTrainerDefeat:
	.string "Yep, that's what I figured.\n"
	.string "Good game, man.$"

FallarborTown_EventScript_GiveMetalCrystal:
	msgbox FallarborTown_Text_GiveMetalCrystal, MSGBOX_DEFAULT
	giveitem ITEM_METAL_CRYSTAL
	giveitem ITEM_TM_SHIELD_BASH
	msgbox FallarborTown_Text_RewardDescription, MSGBOX_DEFAULT
	release
	end

FallarborTown_Text_GiveMetalCrystal:
	.string "You're definitely the person I was\n"
	.string "waiting for. No doubt about it.\p"
	.string "I was supposed to give these to you.$"

FallarborTown_Text_RewardDescription:
	.string "A crystal, and a CD...\n"
	.string "I'll be honest, I don't really know\l"
	.string "what they're for.\p"
	.string "How do I not know?\n"
	.string "Oooh, that's a long story...\l"
	.string "Not to freak you out, but...\p"
	.string "I wandered in, somehow. I just had them.\n"
	.string "It probably wouldn't make sense, and\l"
	.string "I'm not sure I have words for it, but...\p"
	.string "For whatever reason, I know I was chosen\n"
	.string "to be the one to hand those to you.\l"
	.string "No, don't worry, you can keep them.\p"
	.string "It would've taken me a million years to\n"
	.string "figure out what to do with them, anyway.$"

FallarborTown_Text_MetalTrainerPostDefeat:
	.string "Oh, wait, I'm dumb. We fought already.\n"
	.string "Well, progress update- still stuck.\p"
	.string "I'm trying to go out the same way\n"
	.string "I came in, but it's a weird angle...\p"
	.string "I had another thing to give you, too,\n"
	.string "but I dropped it, I think.\p"
	.string "Where could it be?$"

FallarborTown_Text_InTheWay:
	.string "Sorry, am I in your way?\n"
	.string "It's kind of cramped...$"

FallarborTown_Text_DidYouFindIt:
	.string "Did you find it?\n"
	.string "It wasn't much, but it helps to have.$"

