Underwater_Route124_MapScripts::
	map_script MAP_SCRIPT_ON_FRAME_TABLE, Underwater_Route124_OnFrame
	.byte 0

Underwater_Route124_OnFrame:
	map_script_2 VAR_ROUTE126_RIVAL, 2, Underwater_Route124_EventScript_Route126RivalTurnBack
	.2byte 0

Underwater_Route124_EventScript_Route126RivalTurnBack::
	setvar VAR_0x8004, DIR_SOUTH
	goto Route126_EventScript_RivalTurnBack
	end

