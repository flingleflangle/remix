Underwater_Route127_MapScripts::
	map_script MAP_SCRIPT_ON_RESUME, Underwater_Route127_OnResume
	map_script MAP_SCRIPT_ON_FRAME_TABLE, Underwater_Route127_OnFrame
	.byte 0

Underwater_Route127_OnFrame:
	map_script_2 VAR_ROUTE126_RIVAL, 2, Underwater_Route127_EventScript_Route126RivalTurnBack
	.2byte 0

Underwater_Route127_EventScript_Route126RivalTurnBack::
	setvar VAR_0x8004, DIR_WEST
	goto Route126_EventScript_RivalTurnBack
	end

Underwater_Route127_OnResume:
	call AbnormalWeather_Underwater_SetupEscapeWarp
	end

