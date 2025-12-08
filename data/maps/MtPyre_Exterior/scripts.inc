MtPyre_Exterior_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, MtPyre_Exterior_OnTransition
	.byte 0

MtPyre_Exterior_OnTransition:
	call MtPyre_Exterior_EventScript_CheckEnterFromSummit
	end

MtPyre_Exterior_EventScript_CheckEnterFromSummit::
	getplayerxy VAR_TEMP_0, VAR_TEMP_1
	goto_if_lt VAR_TEMP_1, 12, MtPyre_Exterior_EventScript_EnterFromSummit
	return

MtPyre_Exterior_EventScript_EnterFromSummit::
	setweather WEATHER_FOG_HORIZONTAL
	return

MtPyre_Exterior_EventScript_FogTrigger::
	setweather WEATHER_FOG_HORIZONTAL
	doweather
	end

MtPyre_Exterior_EventScript_SunTrigger::
	setweather WEATHER_SUNNY
	doweather
	end


MtPyre_Exterior_EventScript_ShadeTrainer::
 	trainerbattle_single TRAINER_SHADE_CRYSTAL, MtPyre_Exterior_Text_ShadeTrainerIntro, MtPyre_Exterior_Text_ShadeTrainerDefeat, MtPyre_Exterior_EventScript_GiveShadeCrystal
	msgbox MtPyre_Exterior_Text_ShadeTrainerPostDefeat, MSGBOX_DEFAULT
	release
	end
	
MtPyre_Exterior_Text_ShadeTrainerIntro:
	.string "Yo. Knew you had to show up eventually.\n"
	.string "What was the holdup, did you get lost?\p"
	.string "Eh. Doesn't matter.\n"
	.string "You're here for a good fight, yeah?\l"
	.string "Then, check this out.$"
	
MtPyre_Exterior_Text_ShadeTrainerDefeat:
	.string "Nice shot.$"
	
MtPyre_Exterior_EventScript_GiveShadeCrystal:
	msgbox MtPyre_Exterior_Text_GiveShadeCrystal, MSGBOX_DEFAULT
	giveitem ITEM_SHADE_CRYSTAL
	giveitem ITEM_TM_VENOM_FANG
	msgbox MtPyre_Exterior_Text_RewardDescription, MSGBOX_DEFAULT
	release
	end
	
MtPyre_Exterior_Text_GiveShadeCrystal:
	.string "Well, that was cool.\p"
	.string "I'm big enough to admit I lost.\n"
	.string "Here, take these. You earned 'em.$"

MtPyre_Exterior_Text_RewardDescription:
	.string "The SHADE CRYSTAL's not that different\n"
	.string "from the others. It just has a chance\l"
	.string "to poison instead.\p"
	.string "That TM I gave you is for VENOM FANG.\n"
	.string "It's not the strongest move, but its\l"
	.string "effects can really mess a POKéMON up.\p"
	.string "That's all. I know it's tempting, but\n"
	.string "don't waste it. They're hard to come by.$"
	
MtPyre_Exterior_Text_ShadeTrainerPostDefeat:
	.string "You, uhh... can I help you?\p"
	.string "...No? It's all good, then. 'Cause if you\n"
	.string "were gonna ask for more items, I'm out.$"

