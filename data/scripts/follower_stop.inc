@ Follower stops: spots on a map the follower won't go past. Put a coord event on each tile of the
@ stop that runs a map script asking whether the follower should leave, then:
@   setvar VAR_0x8004, <direction the player came from>
@   call Common_EventScript_FollowerStopStepBack   @ "no": the player steps back, the follower stays
@ or
@   setvar VAR_0x8004, <direction the follower leaves in>
@   call Common_EventScript_FollowerStopLeave      @ "yes": the follower walks/bikes away and is gone

Common_EventScript_FollowerStopStepBack::
	special FollowerStop_PrepareStepBack
	applymovement VAR_0x8005, gFollowerStopFollowerMovement
	applymovement OBJ_EVENT_ID_PLAYER, gFollowerStopPlayerMovement
	waitmovement 0
	return

@ Someone started following again while the player stands on a stop: setvar VAR_0x8004 to the
@ direction back onto the map, then the player steps off it and the follower falls in behind
Common_EventScript_FollowerStopStepOff::
	special FollowerStop_PrepareStepOff
	applymovement VAR_0x8005, gFollowerStopFollowerMovement
	applymovement OBJ_EVENT_ID_PLAYER, gFollowerStopPlayerMovement
	waitmovement 0
	return

Common_EventScript_FollowerStopLeave::
	special FollowerStop_PrepareLeave
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_FollowerFlyAway @ nowhere to walk to
	applymovement VAR_0x8005, gFollowerStopFollowerMovement
	waitmovement 0
	destroyfollower
	setfollowerpartner FOLLOWER_PARTNER_NONE
	return

@ The follower leaves without a path to walk: they use Fly, like MAY in LILYCOVE CITY and STEVEN
@ on ROUTE 120 (face down, the bird swoops past, and they're gone)
Common_EventScript_FollowerFlyAway::
	special GetFollowerLocalIdForScript
	applymovement VAR_0x8005, Common_Movement_WalkInPlaceFasterDown
	waitmovement 0
	delay 50
	setfieldeffectargument 0, 1
	dofieldeffect FLDEFF_NPCFLY_OUT
	delay 15
	destroyfollower
	waitfieldeffect FLDEFF_NPCFLY_OUT
	setfollowerpartner FOLLOWER_PARTNER_NONE
	return

@ After a wild battle where the player caught the Pokémon their follower was helping catch
@ (helpcatch): the follower's line for it (see FollowerBattle_ShouldAcknowledgeCatch)
EventScript_FollowerCaughtHelpCatch::
	lockall
	facefollower
	special BufferHelpCatchCaughtLine
	msgbox gStringVar4, MSGBOX_DEFAULT
	releaseall
	end

@ The rival as a follower (MAY for a male player, BRENDAN for a female one) on Routes 110, 112,
@ 119 and 126.

@ VAR_RESULT = TRUE if the rival is the one following the player
Common_EventScript_CheckRivalFollower::
	checkfollower
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_NopReturn
	goto_if_eq VAR_FOLLOWER_PARTNER, FOLLOWER_PARTNER_MAY, Common_EventScript_NopReturn
	goto_if_eq VAR_FOLLOWER_PARTNER, FOLLOWER_PARTNER_BRENDAN, Common_EventScript_NopReturn
	setvar VAR_RESULT, FALSE
	return

@ The rival battles beside the player while following (src/data/follower_parties.h)
Common_EventScript_SetRivalFollowerPartner::
	checkplayergender
	goto_if_eq VAR_RESULT, FEMALE, Common_EventScript_SetBrendanFollowerPartner
	setfollowerpartner FOLLOWER_PARTNER_MAY
	return

Common_EventScript_SetBrendanFollowerPartner::
	setfollowerpartner FOLLOWER_PARTNER_BRENDAN
	return

Common_EventScript_PlayRivalEncounterMusic::
	checkplayergender
	goto_if_eq VAR_RESULT, FEMALE, Common_EventScript_PlayBrendanEncounterMusic
	playbgm MUS_ENCOUNTER_MAY, TRUE
	return

Common_EventScript_PlayBrendanEncounterMusic::
	playbgm MUS_ENCOUNTER_BRENDAN, TRUE
	return

@ The rival catching up to the player: after RivalApproach_Prepare, setobjectxyperm/addobject
@ and setfollower for the rival, they walk up and the player turns to face them.
@ VAR_0x8008 = the direction they came from (for Common_EventScript_RivalDeclinedLeave).
Common_EventScript_RivalWalkUp::
	copyvar VAR_0x8008, VAR_0x8006
	special GetFollowerLocalIdForScript
	applymovement VAR_0x8005, gRivalApproachMovement
	applymovement OBJ_EVENT_ID_PLAYER, gRivalApproachPlayerMovement
	waitmovement 0
	return

@ The player said no: the rival heads back the way they came
Common_EventScript_RivalDeclinedLeave::
	closemessage
	copyvar VAR_0x8004, VAR_0x8008
	call Common_EventScript_FollowerStopLeave
	savebgm MUS_DUMMY
	fadedefaultbgm
	return

@ The rival's joined: battle partner set, the encounter music fades back to the route's
Common_EventScript_RivalJoined::
	closemessage
	call Common_EventScript_SetRivalFollowerPartner
	savebgm MUS_DUMMY
	fadedefaultbgm
	return

@ After a wild battle where the follower caught their partnercatch Pokémon themselves
EventScript_FollowerPartnerCaughtWildMon::
	lockall
	goto_if_eq VAR_WALLY_FOLLOWER, 1, Route116_EventScript_WallyCaughtSkitty
	releaseall
	end

@ The player tried to call their follower on the POKéNAV: the PokéNav closes (gPokenavCalledFollower)
@ and they point out they're right there
EventScript_FollowerPokenavCalled::
	lockall
	facefollower
	goto_if_eq VAR_FOLLOWER_PARTNER, FOLLOWER_PARTNER_WALLY, EventScript_WallyPokenavCalled
	goto_if_eq VAR_FOLLOWER_PARTNER, FOLLOWER_PARTNER_BRENDAN, EventScript_BrendanPokenavCalled
	msgbox Text_MayPokenavCalled, MSGBOX_DEFAULT
	releaseall
	end

EventScript_BrendanPokenavCalled::
	msgbox Text_BrendanPokenavCalled, MSGBOX_DEFAULT
	releaseall
	end

EventScript_WallyPokenavCalled::
	msgbox Text_WallyPokenavCalled, MSGBOX_DEFAULT
	releaseall
	end

Text_MayPokenavCalled:
	.string "MAY: …{PLAYER}?\n"
	.string "What are you doing?\p"
	.string "I'm standing right\n"
	.string "behind you, silly!$"

Text_BrendanPokenavCalled:
	.string "BRENDAN: Uh, {PLAYER}?\n"
	.string "I'm right here, you know.$"

Text_WallyPokenavCalled:
	.string "WALLY: Um… {PLAYER}?\n"
	.string "I'm right behind you…\l"
	.string "Did you mean to call someone else?$"
