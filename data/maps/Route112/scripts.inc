Route112_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, Route112_OnTransition
	map_script MAP_SCRIPT_ON_FRAME_TABLE, Route112_OnFrame
	map_script MAP_SCRIPT_ON_RESUME, Route112_OnResume
	.byte 0

Route112_OnResume:
	call Route112_EventScript_TryRefreshRivalHelpCatch
	end

@ helpcatch lines are ROM addresses kept in the save: set them up again once TORKOAL's been pointed out
Route112_EventScript_TryRefreshRivalHelpCatch::
	goto_if_ne VAR_ROUTE112_RIVAL, 2, Common_EventScript_NopReturn
	goto_if_unset FLAG_ROUTE112_RIVAL_TORKOAL, Common_EventScript_NopReturn
	goto Route112_EventScript_RivalHelpCatchTorkoal

Route112_OnTransition:
	clearflag FLAG_FORCE_MIRAGE_TOWER_VISIBLE
	setvar VAR_JAGGED_PASS_ASH_WEATHER, 0
	setflag FLAG_HIDE_ROUTE_112_RIVAL
	call Common_EventScript_SetupRivalGfxId
@ DEMO	call_if_eq VAR_ROUTE112_RIVAL, 0, Route112_EventScript_TryArmRival
	end

Route112_OnFrame:
	map_script_2 VAR_ROUTE112_RIVAL, 1, Route112_EventScript_RivalCatchUp
	.2byte 0

@ The rival (MAY, or BRENDAN for a female player) catches up to the player the first time they come
@ to Route 112 and can tag along through the FIERY PATH, where they point out TORKOAL and help the
@ player catch one (FieryPath_EventScript_RivalPointOutTorkoal). Stops: out the far side of the FIERY
@ PATH, JAGGED PASS or the cable car, LAVARIDGE TOWN, or back toward Route 111.
@ VAR_ROUTE112_RIVAL: 1 = about to catch up, 2 = following, 3 = done.
Route112_EventScript_TryArmRival::
	goto_if_set FLAG_BADGE04_GET, Common_EventScript_NopReturn
	checkfollower
	goto_if_eq VAR_RESULT, TRUE, Common_EventScript_NopReturn
	setvar VAR_ROUTE112_RIVAL, 1
	return

Route112_EventScript_RivalCatchUp::
	lockall
	setvar VAR_ROUTE112_RIVAL, 3
	special RivalApproach_Prepare
	goto_if_eq VAR_RESULT, FALSE, Route112_EventScript_RivalNoRoom
	setobjectxyperm LOCALID_ROUTE112_RIVAL, VAR_0x8004, VAR_0x8005
	addobject LOCALID_ROUTE112_RIVAL
	call Common_EventScript_PlayRivalEncounterMusic
	setfollower LOCALID_ROUTE112_RIVAL, FOLLOWER_FLAG_RIVAL
	call Common_EventScript_RivalWalkUp
	rivalmsgbox Route112_Text_MayCatchUp, Route112_Text_BrendanCatchUp, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, Route112_EventScript_RivalDeclined
	rivalmsgbox Route112_Text_MayLetsGo, Route112_Text_BrendanLetsGo
	call Common_EventScript_RivalJoined
	clearflag FLAG_ROUTE112_RIVAL_TORKOAL
	setvar VAR_ROUTE112_RIVAL, 2
	releaseall
	end

@ Nowhere for them to walk up from: try again next time the player comes here
Route112_EventScript_RivalNoRoom::
	setvar VAR_ROUTE112_RIVAL, 0
	releaseall
	end

Route112_EventScript_RivalDeclined::
	rivalmsgbox Route112_Text_MayDeclined, Route112_Text_BrendanDeclined
	call Common_EventScript_RivalDeclinedLeave
	releaseall
	end

Route112_EventScript_RivalHelpCatchTorkoal::
	checkplayergender
	goto_if_eq VAR_RESULT, FEMALE, Route112_EventScript_BrendanHelpCatchTorkoal
	helpcatch Route112_Text_MayFoundTorkoal, Route112_Text_MayCaughtTorkoal, SPECIES_TORKOAL
	return

Route112_EventScript_BrendanHelpCatchTorkoal::
	helpcatch Route112_Text_BrendanFoundTorkoal, Route112_Text_BrendanCaughtTorkoal, SPECIES_TORKOAL
	return

Route112_EventScript_RivalFollowerTalk::
	lock
	facefollower
	goto_if_unset FLAG_ROUTE112_RIVAL_TORKOAL, Route112_EventScript_RivalFollowerTalkBeforeCave
	special HelpCatchTargetCaught
	goto_if_eq VAR_RESULT, TRUE, Route112_EventScript_RivalFollowerTalkCaught
	rivalmsgbox Route112_Text_MayFollowerTalkTorkoal, Route112_Text_BrendanFollowerTalkTorkoal
	release
	end

Route112_EventScript_RivalFollowerTalkBeforeCave::
	rivalmsgbox Route112_Text_MayFollowerTalk, Route112_Text_BrendanFollowerTalk
	release
	end

Route112_EventScript_RivalFollowerTalkCaught::
	rivalmsgbox Route112_Text_MayFollowerTalkCaught, Route112_Text_BrendanFollowerTalkCaught
	release
	end

@ Out the far side of the FIERY PATH (toward Route 111's north end): they head back to watch TEAM MAGMA
Route112_EventScript_RivalStopThroughFieryPath::
	lockall
	call Common_EventScript_CheckRivalFollower
	goto_if_eq VAR_RESULT, FALSE, Route112_EventScript_RivalStopNoFollower
	facefollower
	rivalmsgbox Route112_Text_MayAskThroughFieryPath, Route112_Text_BrendanAskThroughFieryPath, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, Route112_EventScript_RivalStayWest
	rivalmsgbox Route112_Text_MayThroughFieryPathBye, Route112_Text_BrendanThroughFieryPathBye
	closemessage
	setvar VAR_0x8004, DIR_WEST
	goto Route112_EventScript_RivalLeaves
	end

@ In front of JAGGED PASS and the cable car: they stay behind to watch TEAM MAGMA
Route112_EventScript_RivalStopMoveOn::
	lockall
	call Common_EventScript_CheckRivalFollower
	goto_if_eq VAR_RESULT, FALSE, Route112_EventScript_RivalStopNoFollower
	facefollower
	rivalmsgbox Route112_Text_MayAskMoveOn, Route112_Text_BrendanAskMoveOn, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, Route112_EventScript_RivalStaySouth
	rivalmsgbox Route112_Text_MayMoveOnBye, Route112_Text_BrendanMoveOnBye
	closemessage
	setvar VAR_0x8004, DIR_EAST
	goto Route112_EventScript_RivalLeaves
	end

@ Toward LAVARIDGE TOWN (and its GYM): they go to the hot springs
Route112_EventScript_RivalStopLavaridge::
	lockall
	call Common_EventScript_CheckRivalFollower
	goto_if_eq VAR_RESULT, FALSE, Route112_EventScript_RivalStopNoFollower
	facefollower
	rivalmsgbox Route112_Text_MayAskLavaridge, Route112_Text_BrendanAskLavaridge, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, Route112_EventScript_RivalStayEast
	rivalmsgbox Route112_Text_MayLavaridgeBye, Route112_Text_BrendanLavaridgeBye
	closemessage
	setvar VAR_0x8004, DIR_WEST
	goto Route112_EventScript_RivalLeaves
	end

@ Back toward Route 111: they stay on Route 112
Route112_EventScript_RivalStopRoute111::
	lockall
	call Common_EventScript_CheckRivalFollower
	goto_if_eq VAR_RESULT, FALSE, Route112_EventScript_RivalStopNoFollower
	facefollower
	rivalmsgbox Route112_Text_MayAskRoute111, Route112_Text_BrendanAskRoute111, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, Route112_EventScript_RivalStayWest
	rivalmsgbox Route112_Text_MayRoute111Bye, Route112_Text_BrendanRoute111Bye
	closemessage
	setvar VAR_0x8004, DIR_WEST
	goto Route112_EventScript_RivalLeaves
	end

Route112_EventScript_RivalStaySouth::
	setvar VAR_0x8004, DIR_SOUTH
	goto Route112_EventScript_RivalStay
	end

Route112_EventScript_RivalStayEast::
	setvar VAR_0x8004, DIR_EAST
	goto Route112_EventScript_RivalStay
	end

Route112_EventScript_RivalStayWest::
	setvar VAR_0x8004, DIR_WEST
	goto Route112_EventScript_RivalStay
	end

@ VAR_0x8004 = the direction the player steps back in
Route112_EventScript_RivalStay::
	copyvar VAR_0x8008, VAR_0x8004
	rivalmsgbox Route112_Text_MayStaying, Route112_Text_BrendanStaying
	closemessage
	copyvar VAR_0x8004, VAR_0x8008
	call Common_EventScript_FollowerStopStepBack
	releaseall
	end

Route112_EventScript_RivalLeaves::
	call Common_EventScript_FollowerStopLeave
	setvar VAR_ROUTE112_RIVAL, 3
	releaseall
	end

@ They stopped following some other way (e.g. the player whited out)
Route112_EventScript_RivalStopNoFollower::
	setvar VAR_ROUTE112_RIVAL, 3
	releaseall
	end


Route112_EventScript_MagmaGrunts::
	lockall
	delay 40
	applymovement LOCALID_ROUTE112_GRUNT_1, Common_Movement_WalkInPlaceFasterRight
	waitmovement 0
	delay 20
	msgbox Route112_Text_LeaderGoingToAwakenThing, MSGBOX_DEFAULT
	closemessage
	applymovement LOCALID_ROUTE112_GRUNT_1, Common_Movement_FaceOriginalDirection
	waitmovement 0
	delay 40
	applymovement LOCALID_ROUTE112_GRUNT_2, Common_Movement_WalkInPlaceFasterLeft
	waitmovement 0
	delay 20
	msgbox Route112_Text_YeahWeNeedMeteorite, MSGBOX_DEFAULT
	closemessage
	applymovement LOCALID_ROUTE112_GRUNT_2, Common_Movement_FaceOriginalDirection
	waitmovement 0
	delay 40
	applymovement LOCALID_ROUTE112_GRUNT_1, Common_Movement_WalkInPlaceFasterRight
	waitmovement 0
	delay 20
	msgbox Route112_Text_OhThatsWhyCrewWentToFallarbor, MSGBOX_DEFAULT
	closemessage
	applymovement LOCALID_ROUTE112_GRUNT_1, Common_Movement_FaceOriginalDirection
	waitmovement 0
	delay 40
	applymovement LOCALID_ROUTE112_GRUNT_2, Common_Movement_WalkInPlaceFasterLeft
	waitmovement 0
	delay 20
	msgbox Route112_Text_CantLetAnyonePassUntilTheyreBack, MSGBOX_DEFAULT
	closemessage
	applymovement LOCALID_ROUTE112_GRUNT_2, Common_Movement_FaceOriginalDirection
	waitmovement 0
	releaseall
	end

Route112_EventScript_MtChimneyCableCarSign::
	msgbox Route112_Text_MtChimneyCableCarSign, MSGBOX_SIGN
	end

Route112_EventScript_MtChimneySign::
	msgbox Route112_Text_MtChimneySign, MSGBOX_SIGN
	end

Route112_EventScript_RouteSignLavaridge::
	msgbox Route112_Text_RouteSignLavaridge, MSGBOX_SIGN
	end

Route112_EventScript_Hiker::
	msgbox Route112_Text_NotEasyToGetBackToLavaridge, MSGBOX_NPC
	end

Route112_EventScript_Brice::
	trainerbattle_single TRAINER_BRICE, Route112_Text_BriceIntro, Route112_Text_BriceDefeat, forfeit_text=Route112_Text_BriceForfeit
	msgbox Route112_Text_BricePostBattle, MSGBOX_AUTOCLOSE
	end

Route112_EventScript_Trent::
	trainerbattle_single TRAINER_TRENT_1, Route112_Text_TrentIntro, Route112_Text_TrentDefeat, Route112_EventScript_RegisterTrent, forfeit_text=Route112_Text_TrentForfeit, payoff=PAYOFF_ALLOW
	specialvar VAR_RESULT, ShouldTryRematchBattle
	goto_if_eq VAR_RESULT, TRUE, Route112_EventScript_RematchTrent
	msgbox Route112_Text_TrentPostBattle, MSGBOX_DEFAULT
	release
	end

Route112_EventScript_RegisterTrent::
	special PlayerFaceTrainerAfterBattle
	waitmovement 0
	msgbox Route112_Text_TrentRegister, MSGBOX_DEFAULT
	register_matchcall TRAINER_TRENT_1
	release
	end

Route112_EventScript_RematchTrent::
	trainerbattle_rematch TRAINER_TRENT_1, Route112_Text_TrentRematchIntro, Route112_Text_TrentRematchDefeat, forfeit_text=Route112_Text_TrentRematchForfeit
	msgbox Route112_Text_TrentRematchPostBattle, MSGBOX_AUTOCLOSE
	end

Route112_EventScript_Larry::
	trainerbattle_single TRAINER_LARRY, Route112_Text_LarryIntro, Route112_Text_LarryDefeat, forfeit_text=Route112_Text_LarryForfeit
	msgbox Route112_Text_LarryPostBattle, MSGBOX_AUTOCLOSE
	end

Route112_EventScript_Carol::
	trainerbattle_single TRAINER_CAROL, Route112_Text_CarolIntro, Route112_Text_CarolDefeat, forfeit_text=Route112_Text_CarolForfeit
	msgbox Route112_Text_CarolPostBattle, MSGBOX_AUTOCLOSE
	end

Route112_EventScript_Bryant::
	trainerbattle_single TRAINER_BRYANT, Route112_Text_BryantIntro, Route112_Text_BryantDefeat, forfeit_text=Route112_Text_BryantForfeit
	msgbox Route112_Text_BryantPostBattle, MSGBOX_AUTOCLOSE
	end

Route112_EventScript_Shayla::
	trainerbattle_single TRAINER_SHAYLA, Route112_Text_ShaylaIntro, Route112_Text_ShaylaDefeat, forfeit_text=Route112_Text_ShaylaForfeit
	msgbox Route112_Text_ShaylaPostBattle, MSGBOX_AUTOCLOSE
	end

Route112_Text_LeaderGoingToAwakenThing:
	.string "Hey, man, is our leader really going\n"
	.string "to awaken that thing?$"

Route112_Text_YeahWeNeedMeteorite:
	.string "Sounds like it, yeah. But I heard\n"
	.string "we need a METEORITE to do it.$"

Route112_Text_OhThatsWhyCrewWentToFallarbor:
	.string "Oh, I get it now. That's why the rest\n"
	.string "of the crew went out to FALLARBOR.$"

Route112_Text_CantLetAnyonePassUntilTheyreBack:
	.string "You got it. And until they come back,\n"
	.string "we're not to let anyone pass, right.$"

Route112_Text_NotEasyToGetBackToLavaridge:
	.string "Eh, I'd like to get to MAUVILLE, but if\n"
	.string "I went down these ledges, it'd be no\l"
	.string "easy matter to get back to LAVARIDGE.$"

Route112_Text_MtChimneyCableCarSign:
	.string "MT. CHIMNEY CABLE CAR\n"
	.string "“A short walk {UP_ARROW} way!”$"

Route112_Text_MtChimneySign:
	.string "MT. CHIMNEY\p"
	.string "“For LAVARIDGE TOWN or the summit,\n"
	.string "please take the CABLE CAR.”$"

Route112_Text_RouteSignLavaridge:
	.string "ROUTE 112\n"
	.string "{LEFT_ARROW} LAVARIDGE TOWN$"


Route112_Text_MayCatchUp:
	.string "MAY: {PLAYER}{KUN}! Wait up!\p"
	.string "Phew, I've been running after you\n"
	.string "all the way from the desert!\p"
	.string "I heard TEAM MAGMA's been gathering\n"
	.string "around MT. CHIMNEY.\p"
	.string "Want to go together for a while?$"

Route112_Text_MayLetsGo:
	.string "MAY: Yay! Let's go!$"

Route112_Text_MayDeclined:
	.string "MAY: Oh, okay.\n"
	.string "I'll look around on my own, then.\p"
	.string "Be careful of TEAM MAGMA!$"

Route112_Text_MayFollowerTalk:
	.string "MAY: It's getting warmer the closer we\n"
	.string "get to MT. CHIMNEY.$"

Route112_Text_MayPointOutTorkoal:
	.string "MAY: Whew, it's so hot in here!\p"
	.string "Oh! {PLAYER}{KUN}, I heard TORKOAL live\n"
	.string "in this cave.\p"
	.string "If we find one, I'll go easy on it\n"
	.string "so you can catch it!$"

Route112_Text_MayFollowerTalkTorkoal:
	.string "MAY: TORKOAL dig through mountains\n"
	.string "looking for coal to burn.\p"
	.string "This cave must be perfect for them!$"

Route112_Text_MayFollowerTalkCaught:
	.string "MAY: Your TORKOAL keeps puffing out\n"
	.string "smoke. I think it's happy!$"

Route112_Text_MayFoundTorkoal:
	.string "MAY: A TORKOAL! Don't worry,\n"
	.string "I'll hold back. You catch it!$"

Route112_Text_MayCaughtTorkoal:
	.string "MAY: You caught the TORKOAL!\n"
	.string "Way to go, {PLAYER}{KUN}!$"

Route112_Text_MayAskMoveOn:
	.string "MAY: You're heading on from here?\p"
	.string "Then this is where I stop.\n"
	.string "Is that okay?$"

Route112_Text_MayMoveOnBye:
	.string "MAY: I'll keep an eye on TEAM MAGMA\n"
	.string "from around here.\p"
	.string "Thanks for letting me tag along,\n"
	.string "{PLAYER}{KUN}. Good luck!$"

Route112_Text_MayAskThroughFieryPath:
	.string "MAY: We made it through!\p"
	.string "Are you going on ahead from here?$"

Route112_Text_MayThroughFieryPathBye:
	.string "MAY: Then I'll head back and keep an\n"
	.string "eye on TEAM MAGMA.\p"
	.string "Thanks for letting me tag along,\n"
	.string "{PLAYER}{KUN}. See you!$"

Route112_Text_MayAskLavaridge:
	.string "MAY: That's LAVARIDGE TOWN ahead!\n"
	.string "It's famous for its hot springs.\p"
	.string "Are you going there?$"

Route112_Text_MayLavaridgeBye:
	.string "MAY: Then I'll go soak in the hot\n"
	.string "springs for a bit!\p"
	.string "Thanks for letting me tag along,\n"
	.string "{PLAYER}{KUN}. See you!$"

Route112_Text_MayAskRoute111:
	.string "MAY: Are you going back to the\n"
	.string "desert?$"

Route112_Text_MayRoute111Bye:
	.string "MAY: Okay! I'll stay around here\n"
	.string "and keep looking.\p"
	.string "See you, {PLAYER}{KUN}!$"

Route112_Text_MayStaying:
	.string "MAY: Okay! Let's keep going together.$"

Route112_Text_BrendanCatchUp:
	.string "BRENDAN: {PLAYER}! Hold up!\p"
	.string "Man, you're fast. I've been trying\n"
	.string "to catch up since the desert.\p"
	.string "Word is TEAM MAGMA's been gathering\n"
	.string "around MT. CHIMNEY.\p"
	.string "Mind if I tag along for a while?$"

Route112_Text_BrendanLetsGo:
	.string "BRENDAN: All right, let's go.$"

Route112_Text_BrendanDeclined:
	.string "BRENDAN: Fair enough.\n"
	.string "I'll look around on my own, then.\p"
	.string "Watch out for TEAM MAGMA.$"

Route112_Text_BrendanFollowerTalk:
	.string "BRENDAN: It's getting hotter the\n"
	.string "closer we get to MT. CHIMNEY.$"

Route112_Text_BrendanPointOutTorkoal:
	.string "BRENDAN: Man, it's hot in here.\p"
	.string "Hey, {PLAYER}. TORKOAL live in this\n"
	.string "cave, from what I've heard.\p"
	.string "If we find one, I'll take it easy.\n"
	.string "You can catch it.$"

Route112_Text_BrendanFollowerTalkTorkoal:
	.string "BRENDAN: TORKOAL burn coal inside\n"
	.string "their shells. That's where all the\l"
	.string "smoke comes from.$"

Route112_Text_BrendanFollowerTalkCaught:
	.string "BRENDAN: Your TORKOAL won't stop\n"
	.string "puffing smoke. Guess it likes you.$"

Route112_Text_BrendanFoundTorkoal:
	.string "BRENDAN: There's a TORKOAL!\n"
	.string "I'll take it easy. You catch it!$"

Route112_Text_BrendanCaughtTorkoal:
	.string "BRENDAN: Nice catch, {PLAYER}!\n"
	.string "That one's a keeper.$"

Route112_Text_BrendanAskMoveOn:
	.string "BRENDAN: You're heading on from here?\p"
	.string "Then this is where I stop.\n"
	.string "That okay?$"

Route112_Text_BrendanMoveOnBye:
	.string "BRENDAN: I'll hang around here and\n"
	.string "keep an eye on TEAM MAGMA.\p"
	.string "Thanks for letting me tag along,\n"
	.string "{PLAYER}. Good luck.$"

Route112_Text_BrendanAskThroughFieryPath:
	.string "BRENDAN: Made it through.\p"
	.string "You going on ahead from here?$"

Route112_Text_BrendanThroughFieryPathBye:
	.string "BRENDAN: Then I'll head back and keep\n"
	.string "an eye on TEAM MAGMA.\p"
	.string "Thanks for letting me tag along,\n"
	.string "{PLAYER}. Later.$"

Route112_Text_BrendanAskLavaridge:
	.string "BRENDAN: That's LAVARIDGE TOWN.\n"
	.string "The one with the hot springs.\p"
	.string "You going there?$"

Route112_Text_BrendanLavaridgeBye:
	.string "BRENDAN: Then I'm going to check out\n"
	.string "those hot springs.\p"
	.string "Thanks for letting me tag along,\n"
	.string "{PLAYER}. Later.$"

Route112_Text_BrendanAskRoute111:
	.string "BRENDAN: Going back to the desert?$"

Route112_Text_BrendanRoute111Bye:
	.string "BRENDAN: Okay. I'll stick around here\n"
	.string "and keep looking.\p"
	.string "See you, {PLAYER}.$"

Route112_Text_BrendanStaying:
	.string "BRENDAN: All right, let's keep going.$"
