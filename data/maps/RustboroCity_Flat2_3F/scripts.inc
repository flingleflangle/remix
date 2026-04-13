RustboroCity_Flat2_3F_MapScripts::
	.byte 0

RustboroCity_Flat2_3F_EventScript_DevonEmployee::
	msgbox RustboroCity_Flat2_3F_Text_PresidentCollectsRareStones, MSGBOX_NPC
	end

RustboroCity_Flat2_3F_EventScript_Woman::
	msgbox RustboroCity_Flat2_3F_Text_PresidentsSonAlsoCollectsRareStones, MSGBOX_NPC
	end

RustboroCity_Flat2_3F_Text_PresidentCollectsRareStones:
	.string "DEVON's PRESIDENT likes to collect\n"
	.string "rare stones.$"

RustboroCity_Flat2_3F_Text_PresidentsSonAlsoCollectsRareStones:
	.string "I think the PRESIDENT's son also\n"
	.string "collects rare stones.$"
	
RustboroCity_Flat2_3F_EventScript_PowerTrainer::
 	trainerbattle_double TRAINER_POWER_CRYSTAL, RustboroCity_Flat2_3F_Text_PowerTrainerIntro, RustboroCity_Flat2_3F_Text_PowerTrainerDefeat, RustboroCity_Flat2_3F_Text_NoDrinks, RustboroCity_Flat2_3F_EventScript_GivePowerCrystal
	goto_if_unset FLAG_RECEIVED_TM_BOULDER_DASH, RustboroCity_Flat2_3F_EventScript_IForgot
	msgbox RustboroCity_Flat2_3F_Text_NoDrinks, MSGBOX_DEFAULT
	release
	end
	
RustboroCity_Flat2_3F_Text_PowerTrainerIntro:
	.string "Yo!\n"
	.string "You wanna see something cool?$"
	
RustboroCity_Flat2_3F_Text_PowerTrainerDefeat:
	.string "Good stuff, good stuff!$"
	
RustboroCity_Flat2_3F_EventScript_GivePowerCrystal::
	msgbox RustboroCity_Flat2_3F_Text_GivePowerCrystal, MSGBOX_DEFAULT
	giveitem ITEM_POWER_CRYSTAL
	msgbox RustboroCity_Flat2_3F_Text_PowerCrystalExplanation, MSGBOX_DEFAULT
	release
	end

RustboroCity_Flat2_3F_Text_GivePowerCrystal:
	.string "You don't even have to say it!\n"
	.string "“AGGRON? At level 15?” That's right!\p"
	.string "Here's the secret to my little\n"
	.string "demonstration! No need to be shy,\l"
	.string "just take it!$"
	
RustboroCity_Flat2_3F_Text_PowerCrystalExplanation:
	.string "That right there is a POWER CRYSTAL!\p"
	.string "It's a really cool-looking gem.\n"
	.string "See the little emblem in it?\p"
	.string "With this, any POKéMON you give it to\n"
	.string "can lower the DEFENSE stat of their\l"
	.string "opponents just by attacking them.\p"
	.string "That's not all, though. Some POKéMON\n"
	.string "can use it to evolve way early,\l"
	.string "no experience needed. Crazy, right?\p"
	.string "This one specifically evolves ROCK,\n"
	.string "GROUND, and FIGHTING POKéMON.\p"
	.string "There's a ton of other crystals, too.\n"
	.string "I'd explain what they all did, but you\l"
	.string "look like you're busy. So, get to it!\p"
	.string "I'm sure you'll figure them out!$"
	

RustboroCity_Flat2_3F_EventScript_IForgot:
	msgbox RustboroCity_Flat2_3F_Text_IForgot, MSGBOX_DEFAULT
	giveitem ITEM_TM_BOULDER_DASH
	setflag FLAG_RECEIVED_TM_BOULDER_DASH
	msgbox RustboroCity_Flat2_3F_Text_BoulderDash, MSGBOX_DEFAULT
	release
	end

RustboroCity_Flat2_3F_Text_IForgot:
	.string "Oh, right.\n"
	.string "I meant to give you this, earlier.$"
	
RustboroCity_Flat2_3F_Text_BoulderDash:
	.string "That's the TM for BOULDER DASH.\n"
	.string "I bought one to teach it to my BONSLY,\l"
	.string "but then I found out that SUDOWOODO\l"
	.string "learns it naturally anyways.\p"
	.string "It's a pretty cool move. Get a critical\n"
	.string "hit with it to see what happens!$"
	
RustboroCity_Flat2_3F_Text_NoDrinks:
	.string "Y'know, it's mighty inconvenient that\n"
	.string "there's no vending machine here.\p"
	.string "No water fountain, either. You'd think\n"
	.string "they would've thought of that with all\l"
	.string "the stairs you have to go up.$"
	
	
	
	

