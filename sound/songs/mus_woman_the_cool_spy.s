@ "Woman the Cool Spy" from Super Robot Taisen: Original Generation (song 0x1C), ported from sound/import.
@ Track numbers match the original. Tracks 6 (a quiet background guitar) and 12 (a quiet doubling layer) were cut to fit Emerald's 10 tracks and 5 sampled channels.
@ Track 8 is shifted down an octave because Emerald's waves repeat twice.

	.include "MPlayDef.s"

	.equ	mus_woman_the_cool_spy_grp, voicegroup_srt_og
	.equ	mus_woman_the_cool_spy_pri, 0
	.equ	mus_woman_the_cool_spy_rev, reverb_set+48
	.equ	mus_woman_the_cool_spy_mvl, 127
	.equ	mus_woman_the_cool_spy_key, 0
	.equ	mus_woman_the_cool_spy_tbs, 1
	.equ	mus_woman_the_cool_spy_exg, 0
	.equ	mus_woman_the_cool_spy_cmp, 1

	.section .rodata
	.global	mus_woman_the_cool_spy
	.align	2

@**************** Track 1 ****************@

mus_woman_the_cool_spy_1:
	.byte		KEYSH , mus_woman_the_cool_spy_key+0
	.byte		TEMPO , 240*mus_woman_the_cool_spy_tbs/2
	.byte		VOICE , 119
	.byte	W01
	.byte		VOL   , 72*mus_woman_the_cool_spy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W16
	.byte		TEMPO , 140*mus_woman_the_cool_spy_tbs/2
	.byte	W06
mus_woman_the_cool_spy_1_000:
	.byte		N11   , Bn0 , v127
	.byte		N23   , Cs2 , v112
	.byte	W12
	.byte		N11   , Bn0 , v108
	.byte	W12
	.byte		N17   , En1 , v127
	.byte	W18
	.byte		N11   , En1 , v088
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		        Bn0
	.byte	W12
	.byte		PEND
mus_woman_the_cool_spy_1_001:
	.byte	W06
	.byte		N05   , En1 , v088
	.byte	W06
	.byte		N11   , Bn0 , v108
	.byte	W12
	.byte		N17   , En1 , v127
	.byte	W18
	.byte		N11   , En1 , v088
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		        Bn0
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_woman_the_cool_spy_1_001
	.byte	W06
	.byte		N05   , En1 , v088
	.byte	W06
	.byte		N11   , Bn0 , v108
	.byte	W12
	.byte		        En1 , v127
	.byte	W12
	.byte		N05   , Bn0
	.byte	W06
	.byte		N11   , En1 , v088
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte		N02   , En1 , v096
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		N05   , En1 , v088
	.byte	W06
	.byte		        En1 , v108
	.byte	W06
	.byte	PATT
	 .word	mus_woman_the_cool_spy_1_000
	.byte	W12
	.byte		N11   , Bn0 , v108
	.byte	W12
	.byte		        En1 , v127
	.byte	W12
	.byte		N05   , Bn0
	.byte	W06
	.byte		N11   , En1 , v088
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N11   , Bn0 , v108
	.byte	W12
	.byte		        En1 , v127
	.byte	W12
	.byte		        Bn0
	.byte	W12
	.byte	W12
	.byte		        Bn0 , v108
	.byte	W12
	.byte		N17   , En1 , v127
	.byte	W18
	.byte		N11   , En1 , v088
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		        Bn0
	.byte		N23   , Cs2 , v112
	.byte	W12
	.byte	W06
	.byte		N05   , En1 , v088
	.byte	W06
	.byte		N11   , Bn0 , v108
	.byte		N02   , En1 , v096
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		N17   , En1 , v127
	.byte	W18
	.byte		N05
	.byte	W06
	.byte		        Bn0
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		N05   , En1 , v108
	.byte	W06
	.byte		N05
	.byte	W06
mus_woman_the_cool_spy_1_002:
	.byte		N17   , Bn0 , v127
	.byte		N23   , Cs2 , v112
	.byte	W18
	.byte		N05   , Ds1 , v076
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		N05   , Ds1 , v076
	.byte	W12
	.byte		N17   , Bn0 , v127
	.byte	W18
	.byte		N05   , Ds1 , v076
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		N05   , Ds1 , v076
	.byte	W12
	.byte		N17   , Bn0 , v127
	.byte	W18
	.byte		N05   , Ds1 , v076
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		N05   , Ds1 , v076
	.byte	W12
	.byte		N17   , Bn0 , v127
	.byte	W12
	.byte		N05   , Ds1 , v076
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W06
	.byte		        Ds1 , v076
	.byte	W06
	.byte		N05
	.byte	W12
	.byte		N17   , Bn0 , v127
	.byte	W18
	.byte		N05   , Ds1 , v076
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		N05   , Ds1 , v076
	.byte	W12
	.byte		N17   , Bn0 , v127
	.byte	W18
	.byte		N05   , Ds1 , v076
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		N05   , Ds1 , v076
	.byte	W12
	.byte		N17   , Bn0 , v127
	.byte	W18
	.byte		N05   , Ds1 , v076
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		N05   , Ds1 , v076
	.byte	W12
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		N05   , Ds1 , v076
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W06
	.byte		        Ds1 , v076
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		N17   , Bn0
	.byte		N23   , Cs2 , v112
	.byte	W18
	.byte		N05   , Ds1 , v076
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte		N17   , En1
	.byte	W12
	.byte		N05   , Ds1 , v076
	.byte	W06
	.byte		N11   , En1 , v127
	.byte	W06
	.byte		N17   , Bn0
	.byte	W18
	.byte		N05   , Ds1 , v076
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte		N11   , En1
	.byte	W12
	.byte		N05   , Ds1 , v076
	.byte	W06
	.byte		N11   , En1 , v127
	.byte	W06
	.byte		N17   , Bn0
	.byte	W18
	.byte		N05   , Ds1 , v076
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte		N17   , En1
	.byte	W12
	.byte		N05   , Ds1 , v076
	.byte	W06
	.byte		N11   , En1 , v127
	.byte	W06
	.byte		        Bn0
	.byte	W06
	.byte		        En1
	.byte	W06
	.byte		N05   , Ds1 , v076
	.byte	W12
	.byte		        Bn0 , v127
	.byte		N17   , En1
	.byte	W06
	.byte		N05   , Ds1 , v076
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11   , En1 , v127
	.byte	W06
	.byte		N17   , Bn0
	.byte	W18
	.byte		N05   , Ds1 , v076
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte		N17   , En1
	.byte	W12
	.byte		N05   , Ds1 , v076
	.byte	W06
	.byte		N17   , En1 , v127
	.byte	W06
	.byte		N11   , Bn0
	.byte	W12
	.byte		N05   , En1
	.byte	W06
	.byte		N11   , Bn0
	.byte		N05   , Ds1 , v076
	.byte	W06
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		N05   , Bn0
	.byte		N23   , Cs2 , v112
	.byte	W06
	.byte		N11   , En1 , v127
	.byte	W06
	.byte	W06
	.byte		N11
	.byte	W06
	.byte		        Bn0
	.byte	W06
	.byte		N05   , Ds1 , v076
	.byte	W06
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		N05   , Bn0
	.byte		N05   , Ds1 , v076
	.byte	W06
	.byte		N11   , En1 , v127
	.byte	W06
	.byte		        Bn0
	.byte	W06
	.byte		        En1
	.byte	W06
	.byte		N05   , Ds1 , v076
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W06
	.byte		        En1
	.byte	W06
	.byte		N05   , Ds1 , v076
	.byte	W06
	.byte		        Bn0 , v127
	.byte		N05   , Ds1 , v076
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte	PATT
	 .word	mus_woman_the_cool_spy_1_000
mus_woman_the_cool_spy_1_003:
	.byte	W06
	.byte		N05   , En1 , v088
	.byte	W06
	.byte		N11   , Bn0 , v108
	.byte	W12
	.byte		N17   , En1 , v127
	.byte	W18
	.byte		N11   , En1 , v088
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        En1
	.byte	W24
	.byte		PEND
mus_woman_the_cool_spy_1_004:
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Bn0 , v108
	.byte	W12
	.byte		N17   , En1 , v127
	.byte	W18
	.byte		N11   , En1 , v088
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		        Bn0
	.byte	W12
	.byte		PEND
	.byte	W06
	.byte		N05   , En1 , v088
	.byte	W06
	.byte		N11   , Bn0 , v108
	.byte	W12
	.byte		N17   , En1 , v127
	.byte	W18
	.byte		N11   , En1 , v088
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		        Bn0 , v127
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		N05   , En1 , v088
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte	PATT
	 .word	mus_woman_the_cool_spy_1_004
	.byte	PATT
	 .word	mus_woman_the_cool_spy_1_003
	.byte	PATT
	 .word	mus_woman_the_cool_spy_1_004
	.byte	W06
	.byte		N05   , En1 , v088
	.byte	W06
	.byte		N11   , Bn0 , v108
	.byte	W12
	.byte		        En1 , v127
	.byte	W12
	.byte		N05   , En1 , v088
	.byte	W06
	.byte		        En1 , v108
	.byte	W06
	.byte		        Bn0 , v127
	.byte	W06
	.byte		        En1 , v108
	.byte	W06
	.byte		        Bn0
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		N05   , En1 , v088
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
mus_woman_the_cool_spy_1_005:
	.byte		N11   , Bn0 , v127
	.byte		N23   , Cs2 , v112
	.byte	W12
	.byte		N11   , Bn0 , v108
	.byte	W12
	.byte		        En1 , v127
	.byte	W12
	.byte		N05   , Bn0
	.byte	W06
	.byte		N11   , En1 , v088
	.byte	W18
	.byte		        En1 , v127
	.byte	W12
	.byte		N05   , Bn0 , v108
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		N11   , En1 , v108
	.byte	W12
	.byte		PEND
mus_woman_the_cool_spy_1_006:
	.byte	W06
	.byte		N05   , En1 , v088
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		N17   , En1
	.byte	W18
	.byte		N05   , En1 , v108
	.byte	W06
	.byte		        Bn0 , v127
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		N05   , Bn0
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		PEND
	.byte		        Bn0
	.byte	W12
	.byte		        Bn0 , v108
	.byte	W12
	.byte		        En1 , v127
	.byte	W12
	.byte		N05   , Bn0
	.byte	W06
	.byte		N11   , En1 , v088
	.byte	W18
	.byte		        En1 , v127
	.byte	W12
	.byte		N05   , Bn0 , v108
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		N11   , En1 , v108
	.byte	W12
	.byte	PATT
	 .word	mus_woman_the_cool_spy_1_006
	.byte	PATT
	 .word	mus_woman_the_cool_spy_1_005
	.byte	PATT
	 .word	mus_woman_the_cool_spy_1_006
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Bn0 , v108
	.byte	W12
	.byte		        En1 , v127
	.byte	W12
	.byte		N05   , Bn0
	.byte	W06
	.byte		N11   , En1 , v088
	.byte	W18
	.byte		        En1 , v127
	.byte	W12
	.byte		N05   , Bn0 , v108
	.byte	W06
	.byte		        En1
	.byte	W06
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		N05   , Bn0
	.byte	W06
	.byte		N11   , En1 , v088
	.byte	W12
	.byte		N05   , Bn0 , v127
	.byte	W06
	.byte		N11   , En1
	.byte	W12
	.byte		N05   , Bn0
	.byte	W06
	.byte		N11   , En1 , v088
	.byte	W12
	.byte		N05   , Bn0 , v127
	.byte	W06
	.byte		N11   , En1
	.byte	W12
	.byte		N05   , Bn0
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		        Bn0
	.byte		N17   , En1
	.byte	W18
	.byte		N11   , Bn0
	.byte		N17   , En1
	.byte	W18
	.byte		N11   , Bn0
	.byte		N05   , En1
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11   , Bn0
	.byte		N11   , En1
	.byte	W12
	.byte		N02   , En1 , v068
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
	.byte		        En1 , v108
	.byte	W03
	.byte		N11   , Bn0 , v127
	.byte		N17   , En1
	.byte	W12
	.byte		N05   , Bn0 , v108
	.byte	W06
	.byte		        En1
	.byte	W06
mus_woman_the_cool_spy_1_007:
	.byte		N05   , Bn0 , v127
	.byte		N23   , Cs2 , v112
	.byte	W06
	.byte		N17   , En1 , v088
	.byte	W18
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		N05   , Bn0 , v108
	.byte	W06
	.byte		N11   , En1 , v088
	.byte	W12
	.byte		N05   , Bn0 , v108
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		N05   , Bn0
	.byte	W06
	.byte		N11   , En1 , v088
	.byte	W06
	.byte		PEND
mus_woman_the_cool_spy_1_008:
	.byte	W06
	.byte		N05   , En1 , v088
	.byte	W06
	.byte		N11   , Bn0 , v108
	.byte	W12
	.byte		N17   , En1 , v127
	.byte	W18
	.byte		N05   , En1 , v088
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Bn0 , v108
	.byte	W12
	.byte		        En1 , v127
	.byte	W12
	.byte		N05   , Bn0
	.byte	W06
	.byte		N11   , En1 , v088
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_woman_the_cool_spy_1_008
	.byte	W06
	.byte		N05   , En1 , v088
	.byte	W06
	.byte		N11   , Bn0 , v108
	.byte	W12
	.byte		N17   , En1 , v127
	.byte	W18
	.byte		N05   , En1 , v088
	.byte	W06
	.byte		        Bn0 , v127
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		        Bn0 , v108
	.byte	W06
	.byte		        En1
	.byte	W06
	.byte		N11   , En1 , v127
	.byte	W18
	.byte		N05   , En1 , v088
	.byte	W06
	.byte	PATT
	 .word	mus_woman_the_cool_spy_1_007
	.byte	PATT
	 .word	mus_woman_the_cool_spy_1_008
	.byte	PATT
	 .word	mus_woman_the_cool_spy_1_008
mus_woman_the_cool_spy_1_009:
	.byte	W06
	.byte		N05   , En1 , v088
	.byte	W06
	.byte		N11   , Bn0 , v108
	.byte	W12
	.byte		N05   , En1 , v127
	.byte	W06
	.byte		N11   , En1 , v108
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		        Bn0 , v127
	.byte	W06
	.byte		        En1 , v108
	.byte	W06
	.byte		        Bn0
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		N05   , En1 , v108
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		PEND
	.byte		        Bn0
	.byte		N23   , Cs2 , v112
	.byte	W06
	.byte		N17   , En1 , v088
	.byte	W18
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		N05   , Bn0 , v108
	.byte	W06
	.byte		N11   , En1 , v088
	.byte	W12
	.byte		        Bn0 , v108
	.byte	W12
	.byte		N05   , En1 , v088
	.byte	W06
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		N05   , Bn0
	.byte	W06
	.byte		N11   , En1 , v088
	.byte	W06
	.byte	PATT
	 .word	mus_woman_the_cool_spy_1_008
	.byte	PATT
	 .word	mus_woman_the_cool_spy_1_008
	.byte	W06
	.byte		N05   , En1 , v088
	.byte	W06
	.byte		N11   , Bn0 , v108
	.byte	W12
	.byte		        En1 , v127
	.byte	W12
	.byte		N05   , Bn0
	.byte	W06
	.byte		N11   , En1 , v088
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		        Bn0 , v108
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		        En1 , v108
	.byte	W06
	.byte		        Bn0
	.byte	W06
	.byte		        En1
	.byte	W06
	.byte	PATT
	 .word	mus_woman_the_cool_spy_1_007
	.byte	PATT
	 .word	mus_woman_the_cool_spy_1_008
	.byte	W06
	.byte		N05   , En1 , v088
	.byte	W06
	.byte		N11   , Bn0 , v108
	.byte	W12
	.byte		N17   , En1 , v127
	.byte	W18
	.byte		N05   , En1 , v088
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Bn0 , v108
	.byte	W12
	.byte		        En1 , v127
	.byte	W12
	.byte		N05   , Bn0
	.byte		N23   , Cs2 , v112
	.byte	W06
	.byte		N11   , En1 , v088
	.byte	W06
	.byte	PATT
	 .word	mus_woman_the_cool_spy_1_009
	.byte	GOTO
	 .word	mus_woman_the_cool_spy_1_002
	.byte		FINE

@**************** Track 2 ****************@

mus_woman_the_cool_spy_2:
	.byte		KEYSH , mus_woman_the_cool_spy_key+0
	.byte		VOICE , 79
	.byte	W01
	.byte		VOL   , 59*mus_woman_the_cool_spy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W16
	.byte		N02   , Cn4 , v072
	.byte	W03
	.byte		        Dn4 , v080
	.byte	W03
	.byte		MOD   , 2
	.byte		N11   , En4 , v100
	.byte	W12
	.byte		N07   , Dn4
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		N23
	.byte	W24
	.byte		N07   , An3
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		N19   , An3
	.byte	W12
	.byte	W12
	.byte		        Bn3
	.byte	W24
	.byte		        Gn3
	.byte	W24
	.byte		N11   , En3
	.byte	W12
	.byte		N07   , Gn3
	.byte	W12
	.byte		N19   , An3
	.byte	W12
	.byte	W12
	.byte		        Bn3
	.byte	W24
	.byte		        Gn3
	.byte	W24
	.byte		N11   , En3
	.byte	W12
	.byte		N07   , Gn3
	.byte	W12
	.byte		N30   , Cn4
	.byte	W12
	.byte	W24
	.byte		N07   , Dn4
	.byte	W12
	.byte		N19   , Bn3
	.byte	W24
	.byte		N24   , An3
	.byte	W30
	.byte		N02   , Cn4 , v072
	.byte	W03
	.byte		        Dn4 , v080
	.byte	W03
	.byte		N11   , En4 , v100
	.byte	W12
	.byte		N07   , Dn4
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		N23
	.byte	W24
	.byte		N07   , An3
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		N19   , An3
	.byte	W12
	.byte	W12
	.byte		        Bn3
	.byte	W24
	.byte		        Gn3
	.byte	W24
	.byte		N11   , En3
	.byte	W12
	.byte		N07   , Gn3
	.byte	W12
	.byte		N30   , An3
	.byte	W12
	.byte	W24
	.byte		N07   , Bn3
	.byte	W12
	.byte		N13   , An3
	.byte	W24
	.byte		        Dn4
	.byte	W24
	.byte		N90   , En4
	.byte	W12
	.byte	W96
mus_woman_the_cool_spy_2_000:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		N17   , Bn2 , v112
	.byte	W18
	.byte		N02   , En3 , v080
	.byte	W03
	.byte		        Fs3 , v092
	.byte	W03
	.byte		N42   , Gn3 , v112
	.byte	W48
	.byte		N19   , Fs3
	.byte	W24
	.byte		        Gn3
	.byte	W24
	.byte		        Fs3
	.byte	W24
	.byte		N07   , Dn3
	.byte	W12
	.byte		N66   , Bn2
	.byte	W12
	.byte	W60
	.byte		N07   , An2
	.byte	W10
	.byte		N02   , Cn3 , v080
	.byte	W02
	.byte		N07   , Dn3 , v112
	.byte	W12
	.byte		N54   , Bn2
	.byte	W12
	.byte	W48
	.byte		N19   , An2
	.byte	W24
	.byte		        Bn2
	.byte	W24
	.byte		N23   , Cn3
	.byte	W24
	.byte		N07   , Bn2
	.byte	W12
	.byte		N19   , Cn3
	.byte	W24
	.byte		N11
	.byte	W12
	.byte		N07   , En3
	.byte	W12
	.byte		N19   , Bn2
	.byte	W12
	.byte	W12
	.byte		N07
	.byte	W10
	.byte		N02   , Dn3 , v080
	.byte	W02
	.byte		N11   , Ds3 , v112
	.byte	W12
	.byte		N07   , Dn3
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N07   , As2
	.byte	W12
	.byte		        An2
	.byte	W12
	.byte		N19   , Gn2
	.byte	W12
	.byte	W18
	.byte		N02   , Cn3 , v080
	.byte	W03
	.byte		        Dn3 , v092
	.byte	W03
	.byte		N19   , En3 , v112
	.byte	W24
	.byte		        Dn3
	.byte	W24
	.byte		N07   , En3
	.byte	W12
	.byte		N30   , Gn3
	.byte	W12
	.byte	W24
	.byte		N19   , Fs3
	.byte	W24
	.byte		        Gn3
	.byte	W22
	.byte		N02   , An3 , v080
	.byte	W02
	.byte		N19   , Bn3 , v112
	.byte	W24
mus_woman_the_cool_spy_2_001:
	.byte		N42   , Cn4 , v112
	.byte	W48
	.byte		N19
	.byte	W24
	.byte		N07   , Dn4
	.byte	W12
	.byte		N48   , Bn3
	.byte	W12
	.byte		PEND
mus_woman_the_cool_spy_2_002:
	.byte	W44
	.byte	W02
	.byte		N02   , An3 , v080
	.byte	W02
	.byte		N11   , Bn3 , v112
	.byte	W12
	.byte		N07   , An3
	.byte	W12
	.byte		N19   , Gn3
	.byte	W24
	.byte		PEND
	.byte		        An3
	.byte	W24
	.byte		N19
	.byte	W24
	.byte		N07
	.byte	W10
	.byte		N02   , An3 , v080
	.byte	W02
	.byte		N19   , Bn3 , v112
	.byte	W24
	.byte		        En3
	.byte	W12
	.byte	W12
	.byte		N07   , Dn3
	.byte	W10
	.byte		N02   , Fn3 , v080
	.byte	W02
	.byte		N13   , Gn3 , v112
	.byte	W12
	.byte		N30   , En3
	.byte	W36
	.byte		N11   , Gn3
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte	PATT
	 .word	mus_woman_the_cool_spy_2_001
	.byte	PATT
	 .word	mus_woman_the_cool_spy_2_002
	.byte		N19   , An3 , v112
	.byte	W24
	.byte		        Gn3
	.byte	W22
	.byte		N02   , Gn3 , v080
	.byte	W02
	.byte		N11   , An3 , v112
	.byte	W12
	.byte		N07   , Gn3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		N90   , Bn3
	.byte	W12
	.byte	W84
	.byte		N66   , An3
	.byte	W12
	.byte	W72
	.byte		N03   , Fn3 , v100
	.byte	W04
	.byte		        Gn3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        Dn4
	.byte	W04
mus_woman_the_cool_spy_2_003:
	.byte		N11   , En4 , v112
	.byte	W12
	.byte		N07   , Dn4
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		N23
	.byte	W24
	.byte		N07   , An3
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		N19   , An3
	.byte	W12
	.byte		PEND
mus_woman_the_cool_spy_2_004:
	.byte	W12
	.byte		N19   , Bn3 , v112
	.byte	W24
	.byte		        Gn3
	.byte	W24
	.byte		N11   , En3
	.byte	W12
	.byte		N07   , Gn3
	.byte	W12
	.byte		N19   , An3
	.byte	W12
	.byte		PEND
mus_woman_the_cool_spy_2_005:
	.byte	W12
	.byte		N19   , Bn3 , v112
	.byte	W24
	.byte		        Gn3
	.byte	W24
	.byte		N11   , En3
	.byte	W12
	.byte		N07   , Gn3
	.byte	W12
	.byte		N30   , Cn4
	.byte	W12
	.byte		PEND
mus_woman_the_cool_spy_2_006:
	.byte	W24
	.byte		N07   , Dn4 , v112
	.byte	W12
	.byte		N19   , Bn3
	.byte	W24
	.byte		N24   , An3
	.byte	W30
	.byte		N02   , Cn4 , v080
	.byte	W03
	.byte		        Dn4 , v092
	.byte	W03
	.byte		PEND
	.byte	PATT
	 .word	mus_woman_the_cool_spy_2_003
mus_woman_the_cool_spy_2_007:
	.byte	W12
	.byte		N19   , Bn3 , v112
	.byte	W24
	.byte		        Gn3
	.byte	W24
	.byte		N11   , En3
	.byte	W12
	.byte		N07   , Gn3
	.byte	W12
	.byte		N30   , An3
	.byte	W12
	.byte		PEND
mus_woman_the_cool_spy_2_008:
	.byte	W24
	.byte		N07   , Bn3 , v112
	.byte	W12
	.byte		N13   , An3
	.byte	W24
	.byte		        Dn4
	.byte	W24
	.byte		N90   , En4
	.byte	W12
	.byte		PEND
	.byte	W84
	.byte		N03   , Bn3 , v100
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte	PATT
	 .word	mus_woman_the_cool_spy_2_003
	.byte	PATT
	 .word	mus_woman_the_cool_spy_2_004
	.byte	PATT
	 .word	mus_woman_the_cool_spy_2_005
	.byte	PATT
	 .word	mus_woman_the_cool_spy_2_006
	.byte	PATT
	 .word	mus_woman_the_cool_spy_2_003
	.byte	PATT
	 .word	mus_woman_the_cool_spy_2_007
	.byte	PATT
	 .word	mus_woman_the_cool_spy_2_008
	.byte	W96
	.byte	GOTO
	 .word	mus_woman_the_cool_spy_2_000
	.byte		FINE

@**************** Track 3 ****************@

mus_woman_the_cool_spy_3:
	.byte		KEYSH , mus_woman_the_cool_spy_key+0
	.byte		VOICE , 55
	.byte	W01
	.byte		VOL   , 80*mus_woman_the_cool_spy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		N11   , Dn3 , v127
	.byte	W12
mus_woman_the_cool_spy_3_000:
	.byte		N23   , En3 , v127
	.byte	W72
	.byte		N23
	.byte	W24
	.byte	W72
	.byte		N23
	.byte	W24
	.byte	W96
	.byte	W60
	.byte		N11
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N23
	.byte	W72
	.byte		N23
	.byte	W24
	.byte	W72
	.byte		N23
	.byte	W24
	.byte	W96
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		N17   , Fn3
	.byte	W18
	.byte		        An3
	.byte	W18
	.byte		N11   , Dn3
	.byte	W12
	.byte		        En3
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		N23
	.byte	W24
	.byte		        Dn3
	.byte	W24
	.byte		        Cn3
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N17   , En3
	.byte	W18
	.byte		N17
	.byte	W18
	.byte		N17
	.byte	W18
	.byte		N17
	.byte	W18
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N17
	.byte	W18
	.byte		N17
	.byte	W18
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N23
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		N11   , Dn3
	.byte	W12
	.byte		N17   , En3
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		N23
	.byte	W12
	.byte	W84
	.byte		N11   , Dn3
	.byte	W12
	.byte	GOTO
	 .word	mus_woman_the_cool_spy_3_000
	.byte		FINE

@**************** Track 4 ****************@

mus_woman_the_cool_spy_4:
	.byte		KEYSH , mus_woman_the_cool_spy_key+0
	.byte		VOICE , 61
	.byte	W01
	.byte		VOL   , 66*mus_woman_the_cool_spy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_woman_the_cool_spy_4_000:
	.byte		N22   , En4 , v120
	.byte	W24
	.byte		N06   , Gn3 , v092
	.byte		N06   , En4 , v112
	.byte	W06
	.byte		N04   , Fs3 , v092
	.byte		N04   , Dn4 , v112
	.byte	W06
	.byte		        En3 , v092
	.byte		N04   , Bn3 , v112
	.byte	W06
	.byte		N10   , Fs3 , v092
	.byte		N10   , Dn4 , v112
	.byte	W12
	.byte		N18   , Gn3 , v092
	.byte		N24   , En4 , v112
	.byte	W30
	.byte		N06   , Dn4
	.byte	W12
mus_woman_the_cool_spy_4_001:
	.byte		N04   , Cn4 , v092
	.byte		N04   , Gn4 , v112
	.byte	W06
	.byte		N06   , Cn4 , v092
	.byte		N06   , Gn4 , v112
	.byte	W06
	.byte		N04   , An3 , v092
	.byte		N04   , Fs4 , v112
	.byte	W12
	.byte		N12   , Fs3 , v092
	.byte		N12   , Dn4 , v112
	.byte	W12
	.byte		N06   , An3 , v092
	.byte		N06   , Fs4 , v112
	.byte	W06
	.byte		N30   , Cn4 , v092
	.byte		N36   , En4 , v112
	.byte	W42
	.byte		N06   , An3
	.byte	W12
	.byte		PEND
	.byte		N18   , An3 , v092
	.byte		N18   , Cn4 , v112
	.byte	W24
	.byte		        An3 , v092
	.byte		N18   , Dn4 , v112
	.byte	W24
	.byte		        Cn4 , v092
	.byte		N18   , En4 , v112
	.byte	W24
	.byte		        Dn4 , v092
	.byte		N18   , Fs4 , v112
	.byte	W24
	.byte		N06   , Bn3 , v092
	.byte		N06   , Gn4 , v112
	.byte	W12
	.byte		        Dn4 , v092
	.byte		N06   , An4 , v112
	.byte	W12
	.byte		        Bn3 , v092
	.byte		N06   , Gn4 , v112
	.byte	W06
	.byte		        An3 , v092
	.byte		N06   , Fs4 , v112
	.byte	W12
	.byte		N18   , Dn3 , v092
	.byte		N36   , Bn3 , v112
	.byte	W42
	.byte		N06   , Dn4
	.byte	W12
	.byte		N22   , En4
	.byte	W24
	.byte		N06   , Gn3 , v092
	.byte		N06   , En4 , v112
	.byte	W06
	.byte		N04   , Fs3 , v092
	.byte		N04   , Dn4 , v112
	.byte	W06
	.byte		        En3 , v092
	.byte		N04   , Bn3 , v112
	.byte	W06
	.byte		N10   , Fs3 , v092
	.byte		N10   , Dn4 , v112
	.byte	W12
	.byte		N18   , Gn3 , v092
	.byte		N24   , En4 , v112
	.byte	W30
	.byte		N06   , Dn4
	.byte	W12
	.byte	PATT
	 .word	mus_woman_the_cool_spy_4_001
	.byte		N18   , An3 , v092
	.byte		N18   , Cn4 , v112
	.byte	W24
	.byte		        An3 , v092
	.byte		N18   , Dn4 , v112
	.byte	W24
	.byte		        Bn3 , v092
	.byte		N18   , Gn4 , v112
	.byte	W18
	.byte		N06   , Bn3 , v092
	.byte		N06   , Dn4 , v112
	.byte	W18
	.byte		N24   , Cn4 , v092
	.byte		N90   , En4 , v112
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W12
	.byte		N11   , En3 , v076
	.byte	W12
	.byte		N05   , Gn3
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		N11   , Dn4
	.byte	W12
	.byte		N05   , Bn3
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		N17   , Gn4
	.byte	W12
	.byte	W12
	.byte		N05   , En4
	.byte	W12
	.byte		N11   , Bn4
	.byte	W12
	.byte		N05   , Fs4
	.byte	W12
	.byte		        Gn4
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		        Gn3
	.byte	W06
	.byte		        En3
	.byte	W78
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_woman_the_cool_spy_4_000
	.byte		FINE

@**************** Track 5 ****************@

mus_woman_the_cool_spy_5:
	.byte		KEYSH , mus_woman_the_cool_spy_key+0
	.byte		VOICE , 48
	.byte	W01
	.byte		VOL   , 44*mus_woman_the_cool_spy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_woman_the_cool_spy_5_000:
	.byte	W12
	.byte		N05   , En3 , v112
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        En3
	.byte	W24
	.byte		PEND
mus_woman_the_cool_spy_5_001:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N32   , En3 , v060
	.byte	W36
	.byte		N05   , Dn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		N32   , Gn3
	.byte	W36
	.byte		N05   , Fs3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		N32   , An3
	.byte	W36
	.byte		N05   , Gn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		N32   , Bn3
	.byte	W36
	.byte		N05   , An3
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		N52   , Cn4
	.byte	W60
	.byte		N11
	.byte	W24
	.byte		N40   , Bn3
	.byte	W12
	.byte	W36
	.byte		N44   , As3
	.byte	W48
	.byte		N17   , Gn3
	.byte	W12
	.byte	W96
	.byte	W96
mus_woman_the_cool_spy_5_002:
	.byte	W24
	.byte		N23   , Gn3 , v072
	.byte	W24
	.byte		        En4
	.byte	W24
	.byte		N28   , Gn3
	.byte	W24
	.byte		PEND
	.byte	W06
	.byte		N05   , An3
	.byte	W06
	.byte		N23   , Bn3
	.byte	W24
	.byte		N11   , Dn4
	.byte	W12
	.byte		        Gn4
	.byte	W12
	.byte		        Fs4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		N23   , Bn3
	.byte	W24
	.byte		N11   , An3
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		N23   , En4
	.byte	W12
	.byte	W12
	.byte		N11   , Dn4
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		        Gn4
	.byte	W60
	.byte	PATT
	 .word	mus_woman_the_cool_spy_5_002
	.byte	W06
	.byte		N05   , An3 , v072
	.byte	W06
	.byte		N23   , Bn3
	.byte	W24
	.byte		N11   , Dn4
	.byte	W12
	.byte		        Gn4
	.byte	W12
	.byte		        Fs4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		N23   , An3
	.byte	W12
	.byte	W12
	.byte		N11   , Bn3
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		N23   , Fs4
	.byte	W24
	.byte		N11   , Gn4
	.byte	W12
	.byte		        An4
	.byte	W12
	.byte		N88   , Fs4
	.byte	W12
	.byte	W96
	.byte	W72
	.byte		N03   , Fn3 , v060
	.byte	W04
	.byte		        Gn3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		N52   , En4
	.byte	W60
	.byte		N11
	.byte	W24
	.byte		N17   , Cn4
	.byte	W12
	.byte	W12
	.byte		        Dn4
	.byte	W18
	.byte		N03   , Fs4 , v040
	.byte	W03
	.byte		        Gn4
	.byte	W03
	.byte		N23   , An4 , v060
	.byte	W24
	.byte		        Gn4
	.byte	W24
	.byte		N40   , Fs4
	.byte	W12
	.byte	W36
	.byte		        Dn4
	.byte	W48
	.byte		N32   , Cn4
	.byte	W12
	.byte	W24
	.byte		N05   , Dn4
	.byte	W12
	.byte		N17
	.byte	W24
	.byte		N28   , Ds4
	.byte	W36
mus_woman_the_cool_spy_5_003:
	.byte		N52   , En4 , v060
	.byte	W60
	.byte		N11   , Bn3
	.byte	W24
	.byte		N52   , Cn4
	.byte	W12
	.byte		PEND
mus_woman_the_cool_spy_5_004:
	.byte	W42
	.byte		N03   , Cn4 , v040
	.byte	W03
	.byte		        Dn4
	.byte	W03
	.byte		N11   , En4 , v060
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		N32   , Fs4
	.byte	W12
	.byte		PEND
	.byte	W24
	.byte		N23   , An4
	.byte	W24
	.byte		        Fs4
	.byte	W24
	.byte		N11   , Dn4
	.byte	W12
	.byte		N32   , Bn3
	.byte	W12
	.byte	W24
	.byte		N05   , En4 , v080
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        Cn5
	.byte	W18
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT
	 .word	mus_woman_the_cool_spy_5_003
	.byte	PATT
	 .word	mus_woman_the_cool_spy_5_004
	.byte	W24
	.byte		N23   , An4 , v060
	.byte	W24
	.byte		        Fs4
	.byte	W24
	.byte		N11   , Dn4
	.byte	W24
	.byte	PATT
	 .word	mus_woman_the_cool_spy_5_000
	.byte	GOTO
	 .word	mus_woman_the_cool_spy_5_001
	.byte		FINE

@**************** Track 7 ****************@

mus_woman_the_cool_spy_7:
	.byte		KEYSH , mus_woman_the_cool_spy_key+0
	.byte		VOICE , 0
	.byte	W01
	.byte		VOL   , 37*mus_woman_the_cool_spy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		N56   , Bn3 , v100
	.byte	W24
	.byte		        Gn3
	.byte	W36
	.byte		N11   , An3
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		N92   , An3
	.byte		N32   , Cn4
	.byte	W12
mus_woman_the_cool_spy_7_000:
	.byte	W24
	.byte		N11   , Bn3 , v100
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		N44   , An3
	.byte		N23   , Cn4
	.byte	W12
	.byte		PEND
mus_woman_the_cool_spy_7_001:
	.byte	W12
	.byte		N44   , Bn3 , v100
	.byte	W24
	.byte		N23   , Dn4
	.byte	W24
	.byte		        Gn3
	.byte		N11   , Cn4
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		N44   , Cn4
	.byte		N23   , En4
	.byte	W12
	.byte		PEND
	.byte	W12
	.byte		N11   , Dn4
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		N23   , Bn3
	.byte		N32   , Fs4
	.byte	W24
	.byte		N23   , Dn4
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		N11   , An3
	.byte	W12
	.byte		N40   , Bn3
	.byte	W24
	.byte		N23   , Gn3
	.byte	W18
	.byte		N02   , Cn4 , v080
	.byte	W03
	.byte		        Dn4
	.byte	W03
	.byte		N32   , An3 , v100
	.byte		N23   , En4
	.byte	W24
	.byte		N11   , Ds4
	.byte	W12
	.byte		N44   , Gn3
	.byte		N23   , En4
	.byte	W12
	.byte	W12
	.byte		N11   , Dn4
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		N44   , En3
	.byte		N23   , Gn3
	.byte	W24
	.byte		N11   , Cn4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		N23   , An3
	.byte		N32   , En4
	.byte	W12
	.byte	W12
	.byte		N11   , Fs3
	.byte	W12
	.byte		        Gn3
	.byte		N11   , Dn4
	.byte	W12
	.byte		N32   , An3
	.byte		N11   , En4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        Gn3
	.byte		N11   , Bn3
	.byte	W12
	.byte		N23   , Cn4
	.byte	W12
	.byte	W96
mus_woman_the_cool_spy_7_002:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W12
	.byte		N05   , En5 , v088
	.byte	W06
	.byte		        Dn5 , v076
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		N11   , En4
	.byte	W12
	.byte		N05   , Dn2
	.byte	W06
	.byte		        Ds2 , v068
	.byte	W06
	.byte		        En2
	.byte	W12
	.byte		N11   , Gn3 , v088
	.byte	W12
	.byte		N05   , En3
	.byte	W12
	.byte		N11   , En3 , v076
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		        As3
	.byte	W18
	.byte		N05   , An3 , v068
	.byte	W18
	.byte		        Gn3
	.byte	W12
	.byte		N11   , En3 , v076
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		N56   , Gn3 , v100
	.byte		N32   , Bn3
	.byte	W36
	.byte		N11   , An3
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		N92   , An3
	.byte		N32   , Cn4
	.byte	W12
	.byte	PATT
	 .word	mus_woman_the_cool_spy_7_000
	.byte	PATT
	 .word	mus_woman_the_cool_spy_7_001
	.byte	W12
	.byte		N11   , Dn4 , v100
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		N23   , Bn3
	.byte		N32   , Fs4
	.byte	W24
	.byte		N23   , Ds4
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		N11   , An3
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_woman_the_cool_spy_7_002
	.byte		FINE

@**************** Track 8 ****************@

mus_woman_the_cool_spy_8:
	.byte		KEYSH , mus_woman_the_cool_spy_key-12
	.byte		VOICE , 108
	.byte	W01
	.byte		VOL   , 75*mus_woman_the_cool_spy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		N80   , En2 , v120
	.byte	W84
	.byte		N92   , An1
	.byte	W12
	.byte	W84
	.byte		        Dn2
	.byte	W12
	.byte	W84
	.byte		N44   , Gn1
	.byte	W12
	.byte	W36
	.byte		N56   , Fs1
	.byte	W60
	.byte		N44   , En1
	.byte	W48
	.byte		N32   , Bn1
	.byte	W36
	.byte		N44   , Cn2
	.byte	W12
	.byte	W36
	.byte		        Gn1
	.byte	W48
	.byte		N68   , Fs1
	.byte	W12
	.byte	W60
	.byte		N09
	.byte	W24
	.byte		N90   , Fn1
	.byte	W12
	.byte	W84
	.byte		N09   , Dn1
	.byte	W12
mus_woman_the_cool_spy_8_000:
	.byte		N09   , En1 , v120
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		PEND
mus_woman_the_cool_spy_8_001:
	.byte		N09   , An1 , v120
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		PEND
	.byte		        Dn1
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte	PATT
	 .word	mus_woman_the_cool_spy_8_000
	.byte	PATT
	 .word	mus_woman_the_cool_spy_8_001
	.byte		N09   , Dn1 , v120
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N15
	.byte	W18
	.byte		N21   , Fn1
	.byte	W12
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N15
	.byte	W18
	.byte		N15
	.byte	W18
	.byte		N09
	.byte	W12
mus_woman_the_cool_spy_8_002:
	.byte		N06   , En1 , v120
	.byte	W12
	.byte		N09
	.byte	W48
	.byte		N21   , Dn1
	.byte	W24
	.byte		        En1
	.byte	W12
	.byte		PEND
mus_woman_the_cool_spy_8_003:
	.byte	W12
	.byte		N09   , En1 , v120
	.byte	W48
	.byte		N06
	.byte	W12
	.byte		N21   , Gn1
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_woman_the_cool_spy_8_002
	.byte	PATT
	 .word	mus_woman_the_cool_spy_8_003
	.byte		N06   , An1 , v120
	.byte	W12
	.byte		N09
	.byte	W48
	.byte		N21
	.byte	W24
	.byte		        Gs1
	.byte	W12
	.byte	W12
	.byte		N09
	.byte	W48
	.byte		N06   , Gn1
	.byte	W12
	.byte		N21
	.byte	W24
	.byte	PATT
	 .word	mus_woman_the_cool_spy_8_002
	.byte	W12
	.byte		N09   , En1 , v120
	.byte	W48
	.byte		N06   , Gn1
	.byte	W12
	.byte		N21
	.byte	W24
mus_woman_the_cool_spy_8_004:
	.byte		N06   , Cn2 , v120
	.byte	W12
	.byte		N09
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N21
	.byte	W24
	.byte		PEND
mus_woman_the_cool_spy_8_005:
	.byte	W12
	.byte		N06   , Gn1 , v120
	.byte	W12
	.byte		N21
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N21
	.byte	W24
	.byte		PEND
	.byte		N06   , Fs1
	.byte	W12
	.byte		N09
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		        Bn1
	.byte	W12
	.byte		N21
	.byte	W24
	.byte	W12
	.byte		N06   , En1
	.byte	W12
	.byte		N21
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N21
	.byte	W24
	.byte	PATT
	 .word	mus_woman_the_cool_spy_8_004
	.byte	PATT
	 .word	mus_woman_the_cool_spy_8_005
	.byte		N06   , Fs1 , v120
	.byte	W12
	.byte		N09
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N15   , Bn1
	.byte	W18
	.byte		N15
	.byte	W18
	.byte		N15
	.byte	W18
	.byte		N15
	.byte	W18
	.byte		N09
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		N15
	.byte	W18
	.byte		N15
	.byte	W18
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N15
	.byte	W24
	.byte		N09   , Fn2 , v127
	.byte	W06
	.byte		N03   , En2 , v100
	.byte	W03
	.byte		        Dn2 , v092
	.byte	W03
	.byte		        Cn2 , v080
	.byte	W03
	.byte		        Bn1
	.byte	W03
	.byte		        An1
	.byte	W03
	.byte		        Gn1
	.byte	W03
	.byte		N09   , En1 , v120
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N15
	.byte	W18
	.byte		N05
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		        En2
	.byte	W12
	.byte		N09   , En1
	.byte	W12
	.byte		N21   , An1
	.byte	W12
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N15
	.byte	W18
	.byte		N05
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		        An2
	.byte	W12
	.byte		N09   , An1
	.byte	W12
	.byte		N21   , Dn2
	.byte	W12
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N15
	.byte	W18
	.byte		N05
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		        Dn3
	.byte	W12
	.byte		N09   , Dn2
	.byte	W12
	.byte		N21   , Gn1
	.byte	W12
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N15
	.byte	W18
	.byte		N05   , Fs1
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		        Fs2
	.byte	W12
	.byte		N09   , Fs1
	.byte	W12
	.byte		N09
	.byte	W12
mus_woman_the_cool_spy_8_006:
	.byte		N09   , En1 , v120
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N15
	.byte	W18
	.byte		N05
	.byte	W12
	.byte		        Bn1
	.byte	W06
	.byte		        Bn2
	.byte	W12
	.byte		N09   , Bn1
	.byte	W12
	.byte		N21   , Cn2
	.byte	W12
	.byte		PEND
mus_woman_the_cool_spy_8_007:
	.byte	W12
	.byte		N09   , Cn2 , v120
	.byte	W12
	.byte		N15
	.byte	W18
	.byte		N05
	.byte	W12
	.byte		        Gn1
	.byte	W06
	.byte		        Gn2
	.byte	W12
	.byte		N09   , Gn1
	.byte	W12
	.byte		N21   , Fs1
	.byte	W12
	.byte		PEND
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N15
	.byte	W18
	.byte		N05
	.byte	W12
	.byte		        Bn1
	.byte	W06
	.byte		N09   , Fs1
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		N21   , En1
	.byte	W12
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N15
	.byte	W18
	.byte		N05
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		        En2
	.byte	W12
	.byte		N09   , En1
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N18
	.byte	W84
	.byte		        An1
	.byte	W12
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N09
	.byte	W60
	.byte		N18   , Dn2
	.byte	W12
	.byte	W12
	.byte		N09
	.byte	W72
	.byte		N42   , Gn1
	.byte	W12
	.byte	W36
	.byte		N28   , Fs1
	.byte	W36
	.byte		N09   , Fs2 , v127
	.byte	W06
	.byte		N03   , En2 , v100
	.byte	W03
	.byte		        Dn2 , v092
	.byte	W03
	.byte		        Cn2 , v080
	.byte	W03
	.byte		        Bn1
	.byte	W03
	.byte		        An1
	.byte	W03
	.byte		        Gn1
	.byte	W03
	.byte	PATT
	 .word	mus_woman_the_cool_spy_8_006
	.byte	PATT
	 .word	mus_woman_the_cool_spy_8_007
	.byte	W12
	.byte		N09   , Fs1 , v120
	.byte	W12
	.byte		N15
	.byte	W18
	.byte		N05
	.byte	W12
	.byte		        Bn1
	.byte	W06
	.byte		N09   , Fs1
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		N84   , Fn1
	.byte	W12
	.byte	W84
	.byte		N09   , Dn1
	.byte	W12
	.byte	GOTO
	 .word	mus_woman_the_cool_spy_8_000
	.byte		FINE

@**************** Track 9 ****************@

mus_woman_the_cool_spy_9:
	.byte		KEYSH , mus_woman_the_cool_spy_key+0
	.byte		VOICE , 82
	.byte	W01
	.byte		VOL   , 37*mus_woman_the_cool_spy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
mus_woman_the_cool_spy_9_000:
	.byte		N04   , En4 , v072
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        En5
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		        En4
	.byte	W12
	.byte		        En5
	.byte	W12
	.byte		        En4
	.byte	W06
	.byte		        En5
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_woman_the_cool_spy_9_000
	.byte	PATT
	 .word	mus_woman_the_cool_spy_9_000
	.byte	PATT
	 .word	mus_woman_the_cool_spy_9_000
	.byte	PATT
	 .word	mus_woman_the_cool_spy_9_000
	.byte	PATT
	 .word	mus_woman_the_cool_spy_9_000
	.byte		N04   , En4 , v072
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        En5
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		        En4
	.byte	W12
	.byte		        En5
	.byte	W12
	.byte		        En4
	.byte	W06
	.byte		        En5
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		MOD   , 2
	.byte		PAN   , c_v-64
	.byte		TIE   , Cn4 , v100
	.byte	W12
	.byte	W90
	.byte		EOT   
	.byte	W06
mus_woman_the_cool_spy_9_001:
	.byte		VOICE , 81
	.byte		MOD   , 0
	.byte		N04   , Bn3 , v100
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04   , An3
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N10
	.byte	W12
mus_woman_the_cool_spy_9_002:
	.byte		N04   , An3 , v100
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		        Dn4
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10   , Cn4
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10   , Bn3
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10   , An3
	.byte	W12
	.byte		PEND
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04   , Gn3
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		        Bn3
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10   , An3
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10   , Gn3
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N04   , Bn3
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04   , An3
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N10
	.byte	W12
	.byte	PATT
	 .word	mus_woman_the_cool_spy_9_002
	.byte		N04   , An3 , v100
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10   , Bn3
	.byte	W18
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		VOICE , 82
	.byte		N90   , An3
	.byte	W12
	.byte	W84
	.byte		N10   , An3 , v092
	.byte	W12
mus_woman_the_cool_spy_9_003:
	.byte		N06   , Gn3 , v092
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		PEND
mus_woman_the_cool_spy_9_004:
	.byte	W06
	.byte		N05   , Gn3 , v092
	.byte	W06
	.byte		N05
	.byte	W12
	.byte		N12
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_woman_the_cool_spy_9_003
	.byte	W06
	.byte		N05   , Gn3 , v092
	.byte	W06
	.byte		N05
	.byte	W12
	.byte		N12
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N12   , An3
	.byte	W18
	.byte		N06   , Gn3
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N54   , An3
	.byte	W60
	.byte		N12
	.byte	W24
	.byte		N42   , Gs3
	.byte	W12
	.byte	W36
	.byte		N60   , Gn3
	.byte	W60
	.byte	PATT
	 .word	mus_woman_the_cool_spy_9_003
	.byte	PATT
	 .word	mus_woman_the_cool_spy_9_004
	.byte		MOD   , 2
	.byte		N78   , Cn4 , v100
	.byte	W84
	.byte		TIE   , Bn3
	.byte	W12
	.byte	W90
	.byte		EOT   
	.byte	W06
	.byte		N42   , An3
	.byte	W48
	.byte		N30
	.byte	W36
	.byte		N54   , Gn3
	.byte	W12
	.byte	W48
	.byte		N18
	.byte	W24
	.byte		        Bn3
	.byte	W24
	.byte		N78   , Cn4
	.byte	W84
	.byte		TIE   , Bn3
	.byte	W12
	.byte	W90
	.byte		EOT   
	.byte	W06
	.byte		N78   , An3
	.byte	W84
	.byte		N90   , Bn3
	.byte	W12
	.byte	W84
	.byte		N66   , Dn4
	.byte	W12
	.byte	W72
	.byte		VOICE , 81
	.byte		MOD   , 0
	.byte		N04   , Fn3
	.byte	W04
	.byte		        Gn3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        Dn4
	.byte	W04
mus_woman_the_cool_spy_9_005:
	.byte		N04   , Bn3 , v100
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10   , Gn3
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10   , Bn3
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		PEND
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		        Cn4
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10   , An3
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10   , Fs3
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10   , An3
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10   , Gn3
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		N04   , Gn3
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N10   , Bn3
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte	PATT
	 .word	mus_woman_the_cool_spy_9_005
mus_woman_the_cool_spy_9_006:
	.byte		N04   , Gn3 , v100
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		        Cn4
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10   , An3
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10   , An3
	.byte	W12
	.byte		PEND
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10   , Bn3
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10   , An3
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10   , Gn3
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		VOICE , 82
	.byte		MOD   , 2
	.byte		N78   , En3 , v072
	.byte	W84
	.byte		N90
	.byte	W12
	.byte	W84
	.byte		        Dn3
	.byte	W12
	.byte	W84
	.byte		N42   , En3
	.byte	W12
	.byte	W36
	.byte		        Ds3
	.byte	W48
	.byte		VOICE , 81
	.byte		MOD   , 0
	.byte		N04   , Fs3 , v100
	.byte	W04
	.byte		        Gn3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte	PATT
	 .word	mus_woman_the_cool_spy_9_005
	.byte	PATT
	 .word	mus_woman_the_cool_spy_9_006
	.byte		N04   , An3 , v100
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10   , Bn3
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10   , An3
	.byte	W12
	.byte		VOICE , 82
	.byte		MOD   , 2
	.byte		TIE   , Cn4
	.byte	W12
	.byte	W90
	.byte		EOT   
	.byte	W06
	.byte	GOTO
	 .word	mus_woman_the_cool_spy_9_001
	.byte		FINE

@**************** Track 10 ****************@

mus_woman_the_cool_spy_10:
	.byte		KEYSH , mus_woman_the_cool_spy_key+0
	.byte		VOICE , 87
	.byte	W01
	.byte		VOL   , 37*mus_woman_the_cool_spy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte	W12
	.byte		        c_v+4
	.byte	W03
	.byte		N04   , En4 , v020
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        En5
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		        En4
	.byte	W12
	.byte		        En5
	.byte	W12
	.byte		        En4
	.byte	W06
	.byte		        En5
	.byte	W12
	.byte		N04
	.byte	W03
mus_woman_the_cool_spy_10_000:
	.byte	W03
	.byte		N04   , En4 , v020
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        En5
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		        En4
	.byte	W12
	.byte		        En5
	.byte	W12
	.byte		        En4
	.byte	W06
	.byte		        En5
	.byte	W12
	.byte		N04
	.byte	W03
	.byte		PEND
	.byte	PATT
	 .word	mus_woman_the_cool_spy_10_000
	.byte	PATT
	 .word	mus_woman_the_cool_spy_10_000
	.byte	PATT
	 .word	mus_woman_the_cool_spy_10_000
	.byte	PATT
	 .word	mus_woman_the_cool_spy_10_000
	.byte	W03
	.byte		N04   , En4 , v020
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        En5
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		        En4
	.byte	W12
	.byte		        En5
	.byte	W12
	.byte		        En4
	.byte	W09
	.byte		VOICE , 87
	.byte		MOD   , 2
	.byte		PAN   , c_v+63
	.byte		BEND  , c_v+0
	.byte		TIE   , An3 , v100
	.byte	W12
	.byte	W90
	.byte		EOT   
	.byte	W06
mus_woman_the_cool_spy_10_001:
	.byte		VOICE , 86
	.byte		MOD   , 0
	.byte		N04   , Gn3 , v100
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N10
	.byte	W12
mus_woman_the_cool_spy_10_002:
	.byte		N04   , Gn3 , v100
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		        Fs3
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10   , An3
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10   , Gn3
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10   , En3
	.byte	W12
	.byte		PEND
	.byte		N04   , Fs3
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04   , En3
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04   , Dn3
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		        Gn3
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10   , Dn3
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10   , Bn2
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N04   , Gn3
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N10
	.byte	W12
	.byte	PATT
	 .word	mus_woman_the_cool_spy_10_002
	.byte		N04   , Fs3 , v100
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10   , Gn3
	.byte	W18
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		VOICE , 87
	.byte		N90   , Fn3
	.byte	W12
	.byte	W84
	.byte		N10   , Fn3 , v092
	.byte	W12
mus_woman_the_cool_spy_10_003:
	.byte		N06   , En3 , v092
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		PEND
mus_woman_the_cool_spy_10_004:
	.byte	W06
	.byte		N05   , En3 , v092
	.byte	W06
	.byte		N05
	.byte	W12
	.byte		N12
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_woman_the_cool_spy_10_003
	.byte	PATT
	 .word	mus_woman_the_cool_spy_10_004
	.byte		N54   , En3 , v092
	.byte	W60
	.byte		N12
	.byte	W24
	.byte		N42   , Ds3
	.byte	W12
	.byte	W36
	.byte		N60   , Dn3
	.byte	W60
	.byte	PATT
	 .word	mus_woman_the_cool_spy_10_003
	.byte	PATT
	 .word	mus_woman_the_cool_spy_10_004
	.byte		MOD   , 2
	.byte		N78   , En3 , v100
	.byte	W84
	.byte		TIE   , Dn3
	.byte	W12
	.byte	W90
	.byte		EOT   
	.byte	W06
	.byte		N42   , Cn3
	.byte	W48
	.byte		N30   , Ds3
	.byte	W36
	.byte		N54   , En3
	.byte	W12
	.byte	W48
	.byte		N18
	.byte	W24
	.byte		        Gn3
	.byte	W24
	.byte		N78   , En3
	.byte	W84
	.byte		TIE   , Dn3
	.byte	W12
	.byte	W90
	.byte		EOT   
	.byte	W06
	.byte		N78   , Cn3
	.byte	W84
	.byte		N90   , Fs3
	.byte	W12
	.byte	W84
	.byte		N66   , Fn3
	.byte	W12
	.byte	W72
	.byte		VOICE , 86
	.byte		MOD   , 0
	.byte	W24
mus_woman_the_cool_spy_10_005:
	.byte		N04   , Gn3 , v100
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10   , En3
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10   , Gn3
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		PEND
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10   , Cn3
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10   , Dn3
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N10   , Dn3
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte	PATT
	 .word	mus_woman_the_cool_spy_10_005
mus_woman_the_cool_spy_10_006:
	.byte		N04   , En3 , v100
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10   , Cn3
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		PEND
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10   , Dn3
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		VOICE , 87
	.byte		MOD   , 2
	.byte		N78   , Gn2 , v072
	.byte	W84
	.byte		N90   , An2
	.byte	W12
	.byte	W84
	.byte		N48
	.byte	W12
	.byte	W36
	.byte		N42   , Gn2
	.byte	W48
	.byte		N42
	.byte	W12
	.byte	W36
	.byte		        An2
	.byte	W48
	.byte		VOICE , 86
	.byte		MOD   , 0
	.byte	W12
	.byte	PATT
	 .word	mus_woman_the_cool_spy_10_005
	.byte	PATT
	 .word	mus_woman_the_cool_spy_10_006
	.byte		N04   , Cn3 , v100
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10   , Dn3
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		VOICE , 87
	.byte		MOD   , 2
	.byte		TIE   , An3
	.byte	W12
	.byte	W90
	.byte		EOT   
	.byte	W06
	.byte	GOTO
	 .word	mus_woman_the_cool_spy_10_001
	.byte		FINE

@**************** Track 11 ****************@

mus_woman_the_cool_spy_11:
	.byte		KEYSH , mus_woman_the_cool_spy_key+0
	.byte		VOICE , 24
	.byte	W01
	.byte		VOL   , 44*mus_woman_the_cool_spy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte	W11
	.byte		VOICE , 123
	.byte	W01
	.byte		N05   , Cs8 , v072
	.byte	W24
	.byte		N05
	.byte	W24
	.byte		N05
	.byte	W24
	.byte		N05
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
mus_woman_the_cool_spy_11_000:
	.byte		N03   , Cn8 , v080
	.byte	W11
	.byte		VOICE , 123
	.byte	W01
	.byte		N05   , Cs8 , v072
	.byte	W24
	.byte		N05
	.byte	W24
	.byte		N05
	.byte	W24
	.byte		N05
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		PEND
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_000
mus_woman_the_cool_spy_11_001:
	.byte		N03   , Cn8 , v080
	.byte	W11
	.byte		VOICE , 123
	.byte	W01
	.byte		N05   , Cs8 , v072
	.byte	W24
	.byte		N05
	.byte	W24
	.byte		N05
	.byte	W24
	.byte		N05
	.byte	W12
	.byte		PEND
mus_woman_the_cool_spy_11_002:
	.byte	W12
	.byte		N05   , Cs8 , v072
	.byte	W24
	.byte		N05
	.byte	W24
	.byte		N05
	.byte	W24
	.byte		N05
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		PEND
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_000
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_000
	.byte		N03   , Cn8 , v080
	.byte	W11
	.byte		VOICE , 123
	.byte	W01
	.byte		N05   , Cs8 , v072
	.byte	W24
	.byte		N05
	.byte	W24
	.byte		N05
	.byte	W32
	.byte	W03
	.byte		VOICE , 124
	.byte	W01
mus_woman_the_cool_spy_11_003:
	.byte		N03   , Cn8 , v080
	.byte	W06
	.byte		        Cn8 , v052
	.byte	W05
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Cs8 , v072
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , Cn8 , v080
	.byte	W06
	.byte		        Cn8 , v052
	.byte	W05
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Cs8 , v072
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , Cn8 , v080
	.byte	W06
	.byte		        Cn8 , v052
	.byte	W05
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Cs8 , v072
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , Cn8 , v080
	.byte	W06
	.byte		        Cn8 , v052
	.byte	W05
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Cs8 , v072
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		PEND
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_003
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_003
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_003
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_003
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_003
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_003
	.byte		N03   , Cn8 , v080
	.byte	W06
	.byte		        Cn8 , v052
	.byte	W05
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Cs8 , v072
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , Cn8 , v080
	.byte	W06
	.byte		        Cn8 , v052
	.byte	W05
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Cs8 , v072
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , Cn8 , v080
	.byte	W06
	.byte		        Cn8 , v052
	.byte	W05
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Cs8 , v072
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , Cn8 , v080
	.byte	W06
	.byte		        Cn8 , v052
	.byte	W05
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Cs8 , v072
	.byte	W12
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_002
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_001
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_002
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_001
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_002
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_001
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_002
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_000
mus_woman_the_cool_spy_11_004:
	.byte		N03   , Cn8 , v080
	.byte	W11
	.byte		VOICE , 123
	.byte	W01
	.byte		N05   , Cs8 , v072
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , Cn8 , v080
	.byte	W11
	.byte		VOICE , 123
	.byte	W01
	.byte		N05   , Cs8 , v072
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , Cn8 , v080
	.byte	W11
	.byte		VOICE , 123
	.byte	W01
	.byte		N05   , Cs8 , v072
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , Cn8 , v080
	.byte	W11
	.byte		VOICE , 123
	.byte	W01
	.byte		N05   , Cs8 , v072
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		PEND
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_004
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_004
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_004
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_004
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_004
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_004
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_004
	.byte		N03   , Cn8 , v080
	.byte	W11
	.byte		VOICE , 123
	.byte	W01
	.byte		N05   , Cs8 , v072
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , Cn8 , v080
	.byte	W11
	.byte		VOICE , 123
	.byte	W01
	.byte		N05   , Cs8 , v072
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , Cn8 , v080
	.byte	W32
	.byte	W03
	.byte		VOICE , 123
	.byte	W01
	.byte		N05   , Cs8 , v072
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_004
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_004
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_004
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_004
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_004
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_004
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_004
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_004
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_004
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_004
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_004
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_004
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_004
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_004
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_004
	.byte	PATT
	 .word	mus_woman_the_cool_spy_11_004
	.byte	GOTO
	 .word	mus_woman_the_cool_spy_11_003
	.byte		FINE

@******************************************************@
	.align	2

mus_woman_the_cool_spy:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_woman_the_cool_spy_pri	@ Priority
	.byte	mus_woman_the_cool_spy_rev	@ Reverb.

	.word	mus_woman_the_cool_spy_grp

	.word	mus_woman_the_cool_spy_1
	.word	mus_woman_the_cool_spy_2
	.word	mus_woman_the_cool_spy_3
	.word	mus_woman_the_cool_spy_4
	.word	mus_woman_the_cool_spy_5
	.word	mus_woman_the_cool_spy_7
	.word	mus_woman_the_cool_spy_8
	.word	mus_woman_the_cool_spy_9
	.word	mus_woman_the_cool_spy_10
	.word	mus_woman_the_cool_spy_11

	.end
