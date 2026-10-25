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
