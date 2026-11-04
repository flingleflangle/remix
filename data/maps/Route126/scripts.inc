Route126_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, Route126_OnTransition
	map_script MAP_SCRIPT_ON_FRAME_TABLE, Route126_OnFrame
	.byte 0

Route126_OnFrame:
	map_script_2 VAR_ROUTE126_RIVAL, 1, Route126_EventScript_RivalCatchUp
	.2byte 0

Route126_OnTransition:
	call_if_set FLAG_SYS_WEATHER_CTRL, Common_EventScript_SetAbnormalWeather
	setflag FLAG_HIDE_ROUTE_126_RIVAL
	call Common_EventScript_SetupRivalSurfingGfxId
@ DEMO	call_if_eq VAR_ROUTE126_RIVAL, 0, Route126_EventScript_TryArmRival
	end

@ During the SOOTOPOLIS crisis, the rival (MAY, or BRENDAN for a female player) surfs up to the player
@ on Route 126 and can come with them: they have a word before the first DIVE, swim down with the player
@ and surface in SOOTOPOLIS CITY beside them, watch GROUDON and KYOGRE clash, then go to help the
@ people in the city (SootopolisCity_EventScript_RivalAfterClash). If the player heads off to Route 124
@ or 127 instead, they go on ahead alone. VAR_ROUTE126_RIVAL: 1 = about to catch up, 2 = following,
@ 3 = done, 4 = in SOOTOPOLIS, waiting for the clash to end.
Route126_EventScript_TryArmRival::
	goto_if_ne VAR_SOOTOPOLIS_CITY_STATE, 1, Common_EventScript_NopReturn
	checkfollower
	goto_if_eq VAR_RESULT, TRUE, Common_EventScript_NopReturn
	setvar VAR_ROUTE126_RIVAL, 1
	return

Route126_EventScript_RivalCatchUp::
	lockall
	setvar VAR_ROUTE126_RIVAL, 3
	special RivalApproach_Prepare
	goto_if_eq VAR_RESULT, FALSE, Route126_EventScript_RivalNoRoom
	setobjectxyperm LOCALID_ROUTE126_RIVAL, VAR_0x8004, VAR_0x8005
	addobject LOCALID_ROUTE126_RIVAL
	call Common_EventScript_PlayRivalEncounterMusic
	setfollower LOCALID_ROUTE126_RIVAL, FOLLOWER_FLAG_RIVAL
	call Common_EventScript_RivalWalkUp
	rivalmsgbox Route126_Text_MayCatchUp, Route126_Text_BrendanCatchUp, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, Route126_EventScript_RivalDeclined
	rivalmsgbox Route126_Text_MayLetsGo, Route126_Text_BrendanLetsGo
	call Common_EventScript_RivalJoined
	clearflag FLAG_ROUTE126_RIVAL_DIVE_TALK
	setvar VAR_ROUTE126_RIVAL, 2
	releaseall
	end

@ Nowhere for them to surf up from: try again next time the player comes here
Route126_EventScript_RivalNoRoom::
	setvar VAR_ROUTE126_RIVAL, 0
	releaseall
	end

Route126_EventScript_RivalDeclined::
	rivalmsgbox Route126_Text_MayDeclined, Route126_Text_BrendanDeclined
	call Common_EventScript_RivalDeclinedLeave
	releaseall
	end

Route126_EventScript_RivalFollowerTalk::
	lock
	facefollower
	special GetCurrentMapForScript
	goto_if_eq VAR_RESULT, MAP_UNDERWATER_ROUTE126, Route126_EventScript_RivalFollowerTalkUnderwater
	goto_if_eq VAR_RESULT, MAP_UNDERWATER_SOOTOPOLIS_CITY, Route126_EventScript_RivalFollowerTalkChamber
	rivalmsgbox Route126_Text_MayFollowerTalkSurface, Route126_Text_BrendanFollowerTalkSurface
	release
	end

Route126_EventScript_RivalFollowerTalkUnderwater::
	rivalmsgbox Route126_Text_MayFollowerTalkUnderwater, Route126_Text_BrendanFollowerTalkUnderwater
	release
	end

Route126_EventScript_RivalFollowerTalkChamber::
	rivalmsgbox Route126_Text_MayFollowerTalkChamber, Route126_Text_BrendanFollowerTalkChamber
	release
	end

@ From EventScript_UseDive, once the player's said yes: the rival has a word before the first DIVE.
@ Keeps VAR_0x8004 (the Pokémon using DIVE).
Route126_EventScript_RivalBeforeDive::
	goto_if_ne VAR_ROUTE126_RIVAL, 2, Common_EventScript_NopReturn
	goto_if_set FLAG_ROUTE126_RIVAL_DIVE_TALK, Common_EventScript_NopReturn
	call Common_EventScript_CheckRivalFollower
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_NopReturn
	setflag FLAG_ROUTE126_RIVAL_DIVE_TALK
	facefollower
	rivalmsgbox Route126_Text_MayBeforeDive, Route126_Text_BrendanBeforeDive
	closemessage
	return

@ The player went on to Route 124 or 127 (above or under the water) instead of SOOTOPOLIS: the rival
@ goes on ahead. VAR_0x8004 = the direction back toward Route 126.
Route126_EventScript_RivalTurnBack::
	lockall
	copyvar VAR_0x8008, VAR_0x8004
	call Common_EventScript_CheckRivalFollower
	goto_if_eq VAR_RESULT, FALSE, Route126_EventScript_RivalGone
	facefollower
	rivalmsgbox Route126_Text_MayTurnBack, Route126_Text_BrendanTurnBack
	closemessage
	copyvar VAR_0x8004, VAR_0x8008
	call Common_EventScript_FollowerStopLeave
	setvar VAR_ROUTE126_RIVAL, 3
	releaseall
	end

@ They stopped following some other way (e.g. the player whited out): they can catch up again
Route126_EventScript_RivalGone::
	setvar VAR_ROUTE126_RIVAL, 0
	releaseall
	end


Route126_EventScript_Barry::
	trainerbattle_single TRAINER_BARRY, Route126_Text_BarryIntro, Route126_Text_BarryDefeat
	msgbox Route126_Text_BarryPostBattle, MSGBOX_AUTOCLOSE
	end

Route126_EventScript_Dean::
	trainerbattle_single TRAINER_DEAN, Route126_Text_DeanIntro, Route126_Text_DeanDefeat
	msgbox Route126_Text_DeanPostBattle, MSGBOX_AUTOCLOSE
	end

Route126_EventScript_Nikki::
	trainerbattle_single TRAINER_NIKKI, Route126_Text_NikkiIntro, Route126_Text_NikkiDefeat
	msgbox Route126_Text_NikkiPostBattle, MSGBOX_AUTOCLOSE
	end

Route126_EventScript_Brenda::
	trainerbattle_single TRAINER_BRENDA, Route126_Text_BrendaIntro, Route126_Text_BrendaDefeat
	msgbox Route126_Text_BrendaPostBattle, MSGBOX_AUTOCLOSE
	end

Route126_EventScript_Leonardo::
	trainerbattle_single TRAINER_LEONARDO, Route126_Text_LeonardoIntro, Route126_Text_LeonardoDefeat
	msgbox Route126_Text_LeonardoPostBattle, MSGBOX_AUTOCLOSE
	end

Route126_EventScript_Isobel::
	trainerbattle_single TRAINER_ISOBEL, Route126_Text_IsobelIntro, Route126_Text_IsobelDefeat
	msgbox Route126_Text_IsobelPostBattle, MSGBOX_AUTOCLOSE
	end

Route126_EventScript_Sienna::
	trainerbattle_single TRAINER_SIENNA, Route126_Text_SiennaIntro, Route126_Text_SiennaDefeat
	msgbox Route126_Text_SiennaPostBattle, MSGBOX_AUTOCLOSE
	end

Route126_EventScript_Pablo::
	trainerbattle_single TRAINER_PABLO_1, Route126_Text_PabloIntro, Route126_Text_PabloDefeat, Route126_EventScript_RegisterPablo
	specialvar VAR_RESULT, ShouldTryRematchBattle
	goto_if_eq VAR_RESULT, TRUE, Route126_EventScript_RematchPablo
	msgbox Route126_Text_PabloPostBattle, MSGBOX_DEFAULT
	release
	end

Route126_EventScript_RegisterPablo::
	special PlayerFaceTrainerAfterBattle
	waitmovement 0
	msgbox Route126_Text_PabloRegister, MSGBOX_DEFAULT
	register_matchcall TRAINER_PABLO_1
	release
	end

Route126_EventScript_RematchPablo::
	trainerbattle_rematch TRAINER_PABLO_1, Route126_Text_PabloRematchIntro, Route126_Text_PabloRematchDefeat
	msgbox Route126_Text_PabloPostRematch, MSGBOX_AUTOCLOSE
	end


Route126_Text_MayCatchUp:
	.string "MAY: {PLAYER}{KUN}!\n"
	.string "I finally found you!\p"
	.string "This weather… My dad says it's all\n"
	.string "coming from SOOTOPOLIS CITY.\p"
	.string "You're going there, aren't you?\p"
	.string "I can't just sit around at home!\n"
	.string "Let me come with you, at least as\l"
	.string "far as the city!$"

Route126_Text_MayLetsGo:
	.string "MAY: Thank you!\p"
	.string "SOOTOPOLIS is inside a crater, so we\n"
	.string "have to DIVE to get in. Let's go!$"

Route126_Text_MayDeclined:
	.string "MAY: …Okay. I understand.\p"
	.string "Then good luck, {PLAYER}{KUN}.\n"
	.string "Please be careful!$"

Route126_Text_MayFollowerTalkSurface:
	.string "MAY: The way into SOOTOPOLIS is deep\n"
	.string "underwater.\p"
	.string "Let's find a good spot to DIVE!$"

Route126_Text_MayFollowerTalkUnderwater:
	.string "MAY: It's so quiet down here…\p"
	.string "You'd never know what's happening\n"
	.string "up above.$"

Route126_Text_MayFollowerTalkChamber:
	.string "MAY: SOOTOPOLIS should be right\n"
	.string "above us.\p"
	.string "…Ready?$"

Route126_Text_MayBeforeDive:
	.string "MAY: Wait, {PLAYER}{KUN}.\p"
	.string "…To be honest, I'm a little scared.\n"
	.string "Whatever's down there is huge.\p"
	.string "But if you're going, I'm going too.\n"
	.string "Okay! Let's go!$"

Route126_Text_MayTurnBack:
	.string "MAY: Huh? {PLAYER}{KUN}, SOOTOPOLIS\n"
	.string "is back that way!\p"
	.string "…I can't wait. I'll go on ahead!$"

Route126_Text_MayArrive:
	.string "MAY: We made it…\p"
	.string "…Wait. What's that sound?!$"

Route126_Text_MayAfterClash:
	.string "MAY: Those were… GROUDON and\n"
	.string "KYOGRE…\p"
	.string "Everyone in the city must be\n"
	.string "terrified.\p"
	.string "I'll help get people indoors.\n"
	.string "STEVEN must be around here somewhere.\l"
	.string "Go find him!\p"
	.string "Be careful, {PLAYER}{KUN}!$"

Route126_Text_BrendanCatchUp:
	.string "BRENDAN: {PLAYER}!\n"
	.string "There you are.\p"
	.string "This weather's crazy. My dad says it's\n"
	.string "all coming from SOOTOPOLIS CITY.\p"
	.string "You're heading there, right?\p"
	.string "I'm not just going to sit this one out.\n"
	.string "Let me come with you, at least as far\l"
	.string "as the city.$"

Route126_Text_BrendanLetsGo:
	.string "BRENDAN: Thanks.\p"
	.string "SOOTOPOLIS is inside a crater, so we'll\n"
	.string "have to DIVE to get in. Let's go.$"

Route126_Text_BrendanDeclined:
	.string "BRENDAN: …Yeah. Okay.\p"
	.string "Good luck, {PLAYER}.\n"
	.string "Don't do anything too crazy.$"

Route126_Text_BrendanFollowerTalkSurface:
	.string "BRENDAN: The way into SOOTOPOLIS is\n"
	.string "down deep.\p"
	.string "We need a good spot to DIVE.$"

Route126_Text_BrendanFollowerTalkUnderwater:
	.string "BRENDAN: Weird how calm it is down\n"
	.string "here, with all that going on up top.$"

Route126_Text_BrendanFollowerTalkChamber:
	.string "BRENDAN: SOOTOPOLIS should be right\n"
	.string "above us.\p"
	.string "…You ready?$"

Route126_Text_BrendanBeforeDive:
	.string "BRENDAN: Hold on a sec.\p"
	.string "…Whatever's down there, it's big.\n"
	.string "I'd be lying if I said I wasn't nervous.\p"
	.string "…Okay. Let's go.$"

Route126_Text_BrendanTurnBack:
	.string "BRENDAN: Hey, {PLAYER}, SOOTOPOLIS is\n"
	.string "back that way.\p"
	.string "…Forget it. I'll go on ahead.$"

Route126_Text_BrendanArrive:
	.string "BRENDAN: We made it…\p"
	.string "…Hold on. What's that noise?!$"

Route126_Text_BrendanAfterClash:
	.string "BRENDAN: Those were… GROUDON and\n"
	.string "KYOGRE…\p"
	.string "People here must be freaking out.\p"
	.string "I'll help get everyone indoors.\n"
	.string "STEVEN's got to be around here.\l"
	.string "Go find him.\p"
	.string "Be careful, {PLAYER}.$"
