@ An NPC who turns one of the player's party Pokémon into its EX form, like a move tutor.
@ The party menu shows which Pokémon are ABLE: ones with an EX form that isn't unlocked yet.
@ Any NPC can use it with "goto EventScript_ExTutor". To only take one species, use:
@	setvar VAR_0x8005, SPECIES_MAWILE
@	goto EventScript_ExTutorForSpecies
EventScript_ExTutor::
	setvar VAR_0x8005, SPECIES_NONE
EventScript_ExTutorForSpecies::
	lock
	faceplayer
	msgbox Text_ExTutorOffer, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, EventScript_ExTutorDeclined
EventScript_ExTutorChooseMon:
	msgbox Text_ExTutorWhichMon, MSGBOX_DEFAULT
	special ChooseMonForExTutor
	waitstate
	goto_if_eq VAR_0x8004, PARTY_NOTHING_CHOSEN, EventScript_ExTutorDeclined
	goto_if_eq VAR_RESULT, FALSE, EventScript_ExTutorCantUnlock
	special GrantExFormToPartyMon
	playfanfare MUS_OBTAIN_B_POINTS
	message Text_ExTutorUnlocked
	waitmessage
	waitfanfare
	msgbox Text_ExTutorDone, MSGBOX_DEFAULT
	release
	end

EventScript_ExTutorCantUnlock:
	msgbox Text_ExTutorCantUnlock, MSGBOX_DEFAULT
	goto EventScript_ExTutorChooseMon
	end

EventScript_ExTutorDeclined:
	msgbox Text_ExTutorDeclined, MSGBOX_DEFAULT
	release
	end

Text_ExTutorOffer:
	.string "I can draw out the hidden power\n"
	.string "sleeping inside a POKéMON.\p"
	.string "Shall I awaken one of your\n"
	.string "POKéMON's EX form?$"

Text_ExTutorWhichMon:
	.string "Which POKéMON should it be?$"

Text_ExTutorCantUnlock:
	.string "Hm… I can't awaken anything\n"
	.string "in that POKéMON.$"

Text_ExTutorUnlocked:
	.string "{STR_VAR_1} became\n"
	.string "{STR_VAR_2}{EX}!$"

Text_ExTutorDone:
	.string "Its true power is awake now.\n"
	.string "Take good care of it.$"

Text_ExTutorDeclined:
	.string "Come back if you change your mind.$"
