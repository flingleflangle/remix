FieryPath_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, FieryPath_OnTransition
	map_script MAP_SCRIPT_ON_FRAME_TABLE, FieryPath_OnFrame
	map_script MAP_SCRIPT_ON_RESUME, FieryPath_OnResume
	.byte 0

FieryPath_OnResume:
	call Route112_EventScript_TryRefreshRivalHelpCatch
	end

FieryPath_OnTransition:
	call_if_unset FLAG_LANDMARK_FIERY_PATH, FieryPath_EventScript_MoveScottToFallarbor
	setflag FLAG_LANDMARK_FIERY_PATH
	call_if_eq VAR_ROUTE112_RIVAL, 2, FieryPath_EventScript_TryArmRivalTorkoal
	end

FieryPath_OnFrame:
	map_script_2 VAR_TEMP_1, 1, FieryPath_EventScript_RivalPointOutTorkoal
	.2byte 0

FieryPath_EventScript_TryArmRivalTorkoal::
	goto_if_set FLAG_ROUTE112_RIVAL_TORKOAL, Common_EventScript_NopReturn
	setvar VAR_TEMP_1, 1
	return

@ The rival tagging along from Route 112 (see Route112_EventScript_RivalCatchUp), the first time in:
@ they come out beside the player and point out TORKOAL, then help them catch one
FieryPath_EventScript_RivalPointOutTorkoal::
	lockall
	setvar VAR_TEMP_1, 0
	call Common_EventScript_CheckRivalFollower
	goto_if_eq VAR_RESULT, FALSE, FieryPath_EventScript_RivalPointOutEnd
	special FollowerAppearBesidePlayer
	goto_if_eq VAR_RESULT, FALSE, FieryPath_EventScript_RivalPointOutEnd
	facefollower
	rivalmsgbox Route112_Text_MayPointOutTorkoal, Route112_Text_BrendanPointOutTorkoal
	closemessage
	setflag FLAG_ROUTE112_RIVAL_TORKOAL
	call Route112_EventScript_RivalHelpCatchTorkoal
FieryPath_EventScript_RivalPointOutEnd::
	releaseall
	end

FieryPath_EventScript_MoveScottToFallarbor::
	setflag FLAG_HIDE_VERDANTURF_TOWN_SCOTT
	clearflag FLAG_HIDE_FALLARBOR_TOWN_BATTLE_TENT_SCOTT
	return

FieryPath_EventScript_MagmarMaster::
 	trainerbattle_single TRAINER_MAGMAR_MASTER, FieryPath_Text_MagmarMasterIntro, Text_ElementalMasterDefeat, FieryPath_EventScript_MagmarMaster
	goto_if_set FLAG_MOVE_TUTOR_TAUGHT_FIRE_PUNCH, MoveTutor_EventScript_FirePunchTaught
 	msgbox MoveTutor_Text_FirePunchTeach, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, MoveTutor_EventScript_FirePunchDeclined
	msgbox MoveTutor_Text_ElementalPunchWhichMon, MSGBOX_DEFAULT
	setvar VAR_0x8005, TUTOR_MOVE_FIRE_PUNCH
	call MoveTutor_EventScript_OpenPartyMenu
	goto_if_eq VAR_RESULT, 0, MoveTutor_EventScript_FirePunchDeclined
	setflag FLAG_MOVE_TUTOR_TAUGHT_FIRE_PUNCH
	goto MoveTutor_EventScript_ElementalPunchTaught
	end
	
MoveTutor_EventScript_FirePunchTaught::
	msgbox MoveTutor_Text_FirePunchTaught, MSGBOX_DEFAULT
	release
	end

MoveTutor_EventScript_FirePunchDeclined::
	msgbox MoveTutor_Text_FirePunchDecline, MSGBOX_DEFAULT
	release
	end
	
