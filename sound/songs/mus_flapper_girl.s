@ "Flapper Girl" from Super Robot Taisen: Original Generation (song 0x04), ported from sound/import.
@ Track numbers match the original. Tracks 6 (a sparse pad, 19 notes) and 12 (a quiet doubling layer) were cut to fit Emerald's 10 tracks and 5 sampled channels.
@ Track 8 is shifted down an octave because Emerald's waves repeat twice.
@ Late in the song the original moves the square tracks 9 and 10 to the center while they play the same
@ melody slightly detuned, which makes their volume pulse. They stay on their own sides here instead.

	.include "MPlayDef.s"

	.equ	mus_flapper_girl_grp, voicegroup_srt_og
	.equ	mus_flapper_girl_pri, 0
	.equ	mus_flapper_girl_rev, reverb_set+48
	.equ	mus_flapper_girl_mvl, 127
	.equ	mus_flapper_girl_key, 0
	.equ	mus_flapper_girl_tbs, 1
	.equ	mus_flapper_girl_exg, 0
	.equ	mus_flapper_girl_cmp, 1

	.section .rodata
	.global	mus_flapper_girl
	.align	2

@**************** Track 1 ****************@

mus_flapper_girl_1:
	.byte		KEYSH , mus_flapper_girl_key+0
	.byte		TEMPO , 250*mus_flapper_girl_tbs/2
	.byte		VOICE , 119
	.byte		VOL   , 66*mus_flapper_girl_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W11
	.byte		TEMPO , 176*mus_flapper_girl_tbs/2
	.byte	W12
	.byte		N11   , Bn0 , v120
	.byte	W11
	.byte		N01   , Dn1 , v100
	.byte	W02
	.byte		N10   , Dn1 , v116
	.byte	W11
	.byte		N11   , Bn0 , v120
	.byte	W12
mus_flapper_girl_1_000:
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W24
	.byte		N11
	.byte	W12
	.byte	W12
	.byte		N11
	.byte	W24
	.byte		N11
	.byte	W06
	.byte		N05   , Dn1 , v080
	.byte	W06
	.byte		N11   , Dn1 , v116
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W24
	.byte		N11
	.byte	W24
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W24
	.byte		        Dn1 , v116
	.byte	W12
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W18
	.byte		N05   , Dn1 , v100
	.byte	W06
	.byte		N11   , Bn0 , v120
	.byte	W18
	.byte		N05   , Dn1 , v100
	.byte	W06
	.byte		N11   , Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte	W12
	.byte		N03   , Dn1 , v072
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        Dn1 , v084
	.byte	W04
	.byte		N11   , Dn1 , v116
	.byte	W24
	.byte		        Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte	W11
	.byte		N01   , Dn1 , v096
	.byte	W02
	.byte		N09   , Dn1 , v116
	.byte	W10
	.byte		N01   , Dn1 , v096
	.byte	W02
	.byte		N10   , Dn1 , v116
	.byte	W11
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		        Dn1 , v116
	.byte	W12
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v100
	.byte	W06
	.byte		N11   , Dn1 , v116
	.byte	W12
mus_flapper_girl_1_001:
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W24
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		PEND
mus_flapper_girl_1_002:
	.byte	W12
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W24
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		PEND
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W18
	.byte		N05   , Bn0 , v120
	.byte	W06
	.byte		N11
	.byte	W24
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W18
	.byte		N06   , Bn0 , v120
	.byte	W06
	.byte		N11
	.byte	W24
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
mus_flapper_girl_1_003:
	.byte		N05   , Bn0 , v120
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11   , Dn1 , v116
	.byte	W12
	.byte		N05   , Bn0 , v120
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11
	.byte	W18
	.byte		N05   , Dn1 , v100
	.byte	W06
	.byte		N17   , Dn1 , v116
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_flapper_girl_1_003
	.byte	PATT
	 .word	mus_flapper_girl_1_003
mus_flapper_girl_1_004:
	.byte		N05   , Bn0 , v120
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11   , Dn1 , v116
	.byte	W12
	.byte		N05   , Bn0 , v120
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11
	.byte	W06
	.byte		N05   , Dn1 , v100
	.byte	W06
	.byte		N11   , Dn1 , v116
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N11   , Dn1 , v100
	.byte	W06
	.byte		PEND
mus_flapper_girl_1_005:
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		N17   , Dn1 , v116
	.byte	W18
	.byte		N11   , Dn1 , v092
	.byte	W12
	.byte		N05   , Bn0 , v120
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_flapper_girl_1_005
	.byte	PATT
	 .word	mus_flapper_girl_1_005
	.byte	PATT
	 .word	mus_flapper_girl_1_005
	.byte	PATT
	 .word	mus_flapper_girl_1_005
	.byte	PATT
	 .word	mus_flapper_girl_1_005
	.byte	PATT
	 .word	mus_flapper_girl_1_005
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		N17   , Dn1 , v116
	.byte	W18
	.byte		N11   , Dn1 , v088
	.byte	W12
	.byte		N05   , Dn1 , v100
	.byte	W06
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		N05   , Dn1 , v116
	.byte	W06
	.byte		N11   , Dn1 , v100
	.byte	W06
	.byte		        Bn0 , v120
	.byte	W12
mus_flapper_girl_1_006:
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		PEND
mus_flapper_girl_1_007:
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		PEND
mus_flapper_girl_1_008:
	.byte	W12
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		N17   , Dn1 , v116
	.byte	W24
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		PEND
mus_flapper_girl_1_009:
	.byte	W12
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		N17   , Dn1 , v116
	.byte	W24
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N17   , Dn1 , v116
	.byte	W24
	.byte		PEND
mus_flapper_girl_1_010:
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		N17   , Dn1 , v116
	.byte	W24
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_flapper_girl_1_008
	.byte	W12
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W05
	.byte		N01   , Dn1 , v088
	.byte	W02
	.byte		N10   , Dn1 , v127
	.byte	W11
	.byte		N11   , Dn1 , v124
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		N17   , Dn1 , v124
	.byte	W24
	.byte		N05   , Bn0 , v120
	.byte	W06
	.byte		N05
	.byte	W05
	.byte		N01   , Dn1 , v088
	.byte	W02
	.byte		N10   , Dn1 , v127
	.byte	W11
	.byte		N11   , Bn0 , v120
	.byte	W12
mus_flapper_girl_1_011:
	.byte	W12
	.byte		N05   , Bn0 , v120
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11   , Dn1 , v116
	.byte	W12
	.byte		N05   , Bn0 , v120
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		PEND
mus_flapper_girl_1_012:
	.byte	W12
	.byte		N05   , Bn0 , v120
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N17   , Dn1 , v116
	.byte	W18
	.byte		N05   , Bn0 , v120
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		PEND
mus_flapper_girl_1_013:
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		N05   , Bn0 , v120
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		PEND
mus_flapper_girl_1_014:
	.byte	W12
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		N17   , Dn1 , v116
	.byte	W18
	.byte		N05   , Bn0 , v120
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_flapper_girl_1_014
mus_flapper_girl_1_015:
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N17   , Dn1 , v116
	.byte	W18
	.byte		N05   , Bn0 , v120
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_flapper_girl_1_014
	.byte	W12
	.byte		N11   , Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		N17   , Dn1 , v116
	.byte	W24
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		N05   , Dn1 , v116
	.byte	W06
	.byte		        Dn1 , v100
	.byte	W06
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte	PATT
	 .word	mus_flapper_girl_1_014
	.byte	PATT
	 .word	mus_flapper_girl_1_014
	.byte	PATT
	 .word	mus_flapper_girl_1_014
	.byte	PATT
	 .word	mus_flapper_girl_1_014
	.byte	PATT
	 .word	mus_flapper_girl_1_014
	.byte	PATT
	 .word	mus_flapper_girl_1_014
mus_flapper_girl_1_016:
	.byte	W12
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		N17   , Dn1 , v116
	.byte	W18
	.byte		N05   , Bn0 , v120
	.byte	W06
	.byte		N11   , Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		PEND
mus_flapper_girl_1_017:
	.byte	W12
	.byte		N11   , Cn2 , v120
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		N05   , Dn1 , v080
	.byte	W06
	.byte		        Dn1 , v100
	.byte	W06
	.byte		        Dn1 , v116
	.byte	W06
	.byte		        Dn1 , v068
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		        Dn1 , v100
	.byte	W06
	.byte		        Dn1 , v116
	.byte	W06
	.byte		        Dn1 , v068
	.byte	W06
	.byte		        Dn1 , v116
	.byte	W06
	.byte		N11   , Dn1 , v100
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_flapper_girl_1_010
	.byte	PATT
	 .word	mus_flapper_girl_1_010
	.byte	PATT
	 .word	mus_flapper_girl_1_010
	.byte	PATT
	 .word	mus_flapper_girl_1_014
mus_flapper_girl_1_018:
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		N17   , Dn1 , v116
	.byte	W18
	.byte		N05   , Bn0 , v120
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_flapper_girl_1_010
mus_flapper_girl_1_019:
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N17   , Dn1 , v116
	.byte	W24
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W24
	.byte		PEND
	.byte		        Bn0 , v120
	.byte	W12
	.byte		N03   , Gn1 , v108
	.byte	W04
	.byte		        An1
	.byte	W04
	.byte		        Cn2 , v120
	.byte	W03
	.byte		N01   , Dn1 , v108
	.byte	W02
	.byte		N23   , Dn1 , v127
	.byte	W23
	.byte		N11   , Dn1 , v116
	.byte	W12
	.byte		        Dn1 , v100
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		N05   , Dn1 , v088
	.byte	W06
	.byte		N11   , Dn1 , v108
	.byte	W06
	.byte	PATT
	 .word	mus_flapper_girl_1_001
	.byte	PATT
	 .word	mus_flapper_girl_1_002
mus_flapper_girl_1_020:
	.byte	W12
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		N17   , Dn1 , v116
	.byte	W18
	.byte		N05   , Bn0 , v120
	.byte	W06
	.byte		N11
	.byte	W24
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_flapper_girl_1_020
	.byte	PATT
	 .word	mus_flapper_girl_1_003
	.byte	PATT
	 .word	mus_flapper_girl_1_003
	.byte	PATT
	 .word	mus_flapper_girl_1_003
	.byte	PATT
	 .word	mus_flapper_girl_1_004
	.byte	PATT
	 .word	mus_flapper_girl_1_005
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		N17   , Dn1 , v116
	.byte	W18
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N05   , Bn0 , v120
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte	PATT
	 .word	mus_flapper_girl_1_005
	.byte	PATT
	 .word	mus_flapper_girl_1_005
	.byte	PATT
	 .word	mus_flapper_girl_1_005
	.byte	PATT
	 .word	mus_flapper_girl_1_005
	.byte	PATT
	 .word	mus_flapper_girl_1_005
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		N17   , Dn1 , v116
	.byte	W18
	.byte		N11   , Dn1 , v088
	.byte	W12
	.byte		        Dn1 , v100
	.byte	W06
	.byte		        Bn0 , v120
	.byte	W12
	.byte		N05   , Dn1 , v116
	.byte	W06
	.byte		N11   , Dn1 , v100
	.byte	W06
	.byte		        Bn0 , v120
	.byte	W12
	.byte	PATT
	 .word	mus_flapper_girl_1_006
	.byte	PATT
	 .word	mus_flapper_girl_1_007
	.byte	PATT
	 .word	mus_flapper_girl_1_008
	.byte	PATT
	 .word	mus_flapper_girl_1_009
	.byte	PATT
	 .word	mus_flapper_girl_1_010
	.byte	PATT
	 .word	mus_flapper_girl_1_008
	.byte	W12
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W05
	.byte		N01   , Dn1 , v088
	.byte	W02
	.byte		N10   , Dn1 , v127
	.byte	W11
	.byte		N17   , Dn1 , v124
	.byte	W12
	.byte	W12
	.byte		N11   , Dn1 , v116
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		N17   , Dn1 , v124
	.byte	W24
	.byte		N05   , Bn0 , v120
	.byte	W06
	.byte		N05
	.byte	W05
	.byte		N01   , Dn1 , v088
	.byte	W02
	.byte		N11   , Dn1 , v127
	.byte	W11
	.byte		        Bn0 , v120
	.byte	W12
	.byte	PATT
	 .word	mus_flapper_girl_1_011
	.byte	PATT
	 .word	mus_flapper_girl_1_012
	.byte	PATT
	 .word	mus_flapper_girl_1_013
	.byte	PATT
	 .word	mus_flapper_girl_1_014
	.byte	PATT
	 .word	mus_flapper_girl_1_014
	.byte	PATT
	 .word	mus_flapper_girl_1_015
	.byte	PATT
	 .word	mus_flapper_girl_1_014
	.byte	W12
	.byte		N11   , Dn1 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		N17   , Dn1 , v116
	.byte	W24
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		N05   , Dn1 , v116
	.byte	W06
	.byte		N11   , Dn1 , v100
	.byte	W06
	.byte		        Bn0 , v120
	.byte	W12
	.byte	PATT
	 .word	mus_flapper_girl_1_014
	.byte	PATT
	 .word	mus_flapper_girl_1_014
	.byte	PATT
	 .word	mus_flapper_girl_1_014
	.byte	PATT
	 .word	mus_flapper_girl_1_014
	.byte	PATT
	 .word	mus_flapper_girl_1_014
	.byte	PATT
	 .word	mus_flapper_girl_1_014
	.byte	PATT
	 .word	mus_flapper_girl_1_016
	.byte	PATT
	 .word	mus_flapper_girl_1_017
	.byte	PATT
	 .word	mus_flapper_girl_1_010
	.byte	PATT
	 .word	mus_flapper_girl_1_010
	.byte	PATT
	 .word	mus_flapper_girl_1_010
	.byte	PATT
	 .word	mus_flapper_girl_1_014
	.byte	PATT
	 .word	mus_flapper_girl_1_018
	.byte	PATT
	 .word	mus_flapper_girl_1_010
	.byte	PATT
	 .word	mus_flapper_girl_1_019
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		N03   , Gn1 , v108
	.byte	W04
	.byte		        An1
	.byte	W04
	.byte		        Cn2 , v120
	.byte	W03
	.byte		N01   , Dn1 , v108
	.byte	W02
	.byte		N16   , Dn1 , v127
	.byte	W23
	.byte		N11   , Dn1 , v116
	.byte	W12
	.byte		        Dn1 , v100
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		N05   , Dn1 , v088
	.byte	W06
	.byte		        Dn1 , v108
	.byte	W06
	.byte	GOTO
	 .word	mus_flapper_girl_1_000
	.byte		FINE

@**************** Track 2 ****************@

mus_flapper_girl_2:
	.byte		KEYSH , mus_flapper_girl_key+0
	.byte		VOICE , 79
	.byte		BENDR , 12
	.byte		VOL   , 49*mus_flapper_girl_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W11
	.byte	W48
mus_flapper_girl_2_000:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		N23   , Bn3 , v112
	.byte	W12
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W24
	.byte		N11
	.byte	W12
	.byte		        Cs4
	.byte	W24
	.byte		N23   , Dn4
	.byte	W12
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Cs4
	.byte	W24
	.byte		        Dn4
	.byte	W24
	.byte		N05   , Cs4
	.byte	W12
	.byte		N23   , Fs3 , v080
	.byte		N23   , Fs4 , v112
	.byte	W12
	.byte	W12
	.byte		N05   , En3 , v080
	.byte		N05   , En4 , v112
	.byte	W12
	.byte		N04   , Dn3 , v080
	.byte		N04   , Dn4 , v112
	.byte	W12
	.byte		N23   , Cs3 , v080
	.byte		N23   , Cs4 , v112
	.byte	W04
	.byte		BEND  , c_v+5
	.byte	W04
	.byte		        c_v+0
	.byte	W16
	.byte		N11   , Bn2 , v080
	.byte		N11   , Bn3 , v112
	.byte	W12
	.byte		N05   , Gs2 , v080
	.byte		N05   , Gs3 , v112
	.byte	W12
	.byte		N23   , As2 , v080
	.byte		N23   , As3 , v112
	.byte	W12
	.byte	W12
	.byte		N11   , Bn2 , v080
	.byte		N11   , Bn3 , v112
	.byte	W12
	.byte		        Cs3 , v080
	.byte		N11   , Cs4 , v112
	.byte	W12
	.byte		N23   , Fs3 , v080
	.byte		N23   , Fs4 , v112
	.byte	W24
	.byte		N10   , En3 , v080
	.byte		N10   , En4 , v112
	.byte	W12
	.byte		BEND  , c_v-6
	.byte		N23   , Dn3 , v080
	.byte		N23   , Dn4 , v112
	.byte	W02
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W18
	.byte		N36   , Bn3
	.byte	W30
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte	W13
	.byte		        c_v-6
	.byte		N11
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N11   , Cs4
	.byte	W12
	.byte		N10   , Dn4
	.byte	W11
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-6
	.byte		N32
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte	W24
	.byte		N10   , En4
	.byte	W12
	.byte		BEND  , c_v-11
	.byte		N10   , Cs4
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W21
	.byte		N11   , Bn3
	.byte	W24
	.byte		BEND  , c_v-11
	.byte		N23
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte	W12
	.byte		N04   , An3
	.byte	W12
	.byte		BEND  , c_v-11
	.byte		N32
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W32
	.byte	W01
	.byte		N22   , Gn3
	.byte	W24
	.byte		BEND  , c_v-6
	.byte		N23
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte	W12
	.byte		N11   , Fs3
	.byte	W12
	.byte		N23
	.byte	W36
	.byte		N11   , En3
	.byte	W12
	.byte		N10   , Fs3
	.byte	W12
	.byte		BEND  , c_v-11
	.byte		N32   , En3
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte	W24
	.byte		N11   , Dn3
	.byte	W12
	.byte		N23
	.byte	W24
	.byte		N11   , Cs3
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		N32   , En3
	.byte	W12
	.byte	W24
	.byte		N11   , Fs3
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		        Bn3
	.byte	W24
	.byte		BEND  , c_v-11
	.byte		N32   , Cs4
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte	W24
	.byte		N23   , Bn3
	.byte	W24
	.byte		        Cs4
	.byte	W24
	.byte		N10   , Dn4
	.byte	W12
	.byte		BEND  , c_v-11
	.byte		N23   , Cs4
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte	W12
	.byte		N11   , Bn3
	.byte	W12
	.byte		N68
	.byte	W72
	.byte	W24
	.byte		N23   , En4
	.byte	W24
	.byte		        Dn4
	.byte	W04
	.byte		BEND  , c_v+10
	.byte	W04
	.byte		        c_v+0
	.byte	W16
	.byte		N23   , Cs4
	.byte	W24
	.byte		        Bn3
	.byte	W24
	.byte		        An3
	.byte	W24
	.byte		        Gn3
	.byte	W24
	.byte		        An3
	.byte	W24
	.byte		N36   , Fs3
	.byte	W48
	.byte		BEND  , c_v-11
	.byte		N11   , En3
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N11   , Dn3
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		N56   , Fs3
	.byte	W12
	.byte	W48
	.byte		N23   , Gn3
	.byte	W24
	.byte		N11   , An3
	.byte	W12
	.byte		N56   , Bn3
	.byte	W12
	.byte	W48
	.byte		N11   , Cs4
	.byte	W12
	.byte		        Dn4
	.byte	W24
	.byte		N23
	.byte	W12
	.byte	W12
	.byte		N11   , Cs4
	.byte	W12
	.byte		N23
	.byte	W24
	.byte		N22   , Bn3
	.byte	W14
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N05   , An3
	.byte	W12
	.byte		BEND  , c_v-11
	.byte		TIE   , Fs4
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte	W96
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W13
	.byte		BEND  , c_v-17
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-7
	.byte		N28   , Gn4
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W09
	.byte	W24
	.byte		N11   , Fs4
	.byte	W24
	.byte		        En4
	.byte	W12
	.byte		N22   , Dn4
	.byte	W24
	.byte		BEND  , c_v-11
	.byte		N32   , En4
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte	W16
	.byte		        c_v-1
	.byte	W02
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-17
	.byte	W11
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Cs4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		N23   , En4
	.byte	W24
	.byte		N32   , Fs4
	.byte	W12
	.byte	W24
	.byte		N10   , Gn4
	.byte	W12
	.byte		BEND  , c_v-11
	.byte		N23   , Fs4
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W21
	.byte		N23   , En4
	.byte	W24
	.byte		N32   , Ds4
	.byte	W12
	.byte	W16
	.byte		BEND  , c_v-1
	.byte	W02
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-17
	.byte	W11
	.byte		        c_v+5
	.byte	W01
	.byte		N23   , Bn3
	.byte	W12
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		        c_v+5
	.byte	W03
	.byte		        c_v+0
	.byte	W06
	.byte		N11   , An3
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		N44   , Gn3
	.byte	W60
	.byte		N11   , An3
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		N56   , Gn3
	.byte	W12
	.byte	W32
	.byte	W02
	.byte		BEND  , c_v-11
	.byte	W02
	.byte		        c_v+0
	.byte	W12
	.byte		N11   , Fs3
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		N23   , Gn3
	.byte	W12
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N23   , Bn3
	.byte	W24
	.byte		N04
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N60   , Cs4
	.byte	W12
mus_flapper_girl_2_001:
	.byte	W60
	.byte		BEND  , c_v-11
	.byte		N10   , Bn3 , v112
	.byte		N11   , Dn4 , v072
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N10   , Cs4 , v112
	.byte		N11   , En4 , v072
	.byte	W12
	.byte		N56   , Dn4 , v112
	.byte		N56   , Fs4 , v072
	.byte	W12
	.byte		PEND
mus_flapper_girl_2_002:
	.byte	W60
	.byte		BEND  , c_v-11
	.byte		N10   , Cs4 , v112
	.byte		N11   , En4 , v072
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N10   , An3 , v112
	.byte		N11   , Cs4 , v072
	.byte	W12
	.byte		N56   , Bn3 , v112
	.byte		N56   , Dn4 , v072
	.byte	W12
	.byte		PEND
mus_flapper_girl_2_003:
	.byte	W60
	.byte		BEND  , c_v-6
	.byte		N10   , En4 , v112
	.byte		N11   , Gn4 , v072
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N10   , Dn4 , v112
	.byte		N11   , Fs4 , v072
	.byte	W12
	.byte		N22   , Cs4 , v112
	.byte		N23   , En4 , v072
	.byte	W12
	.byte		PEND
mus_flapper_girl_2_004:
	.byte	W12
	.byte		N07   , Cs4 , v112
	.byte		N07   , En4 , v072
	.byte	W12
	.byte		N22   , Bn3 , v112
	.byte		N23   , Dn4 , v072
	.byte	W24
	.byte		N22   , An3 , v112
	.byte		N23   , Cs4 , v072
	.byte	W24
	.byte		N11   , En3 , v112
	.byte		N11   , Bn3 , v072
	.byte	W12
	.byte		N80   , Fs3 , v112
	.byte		N44   , Cs4 , v072
	.byte	W12
	.byte		PEND
mus_flapper_girl_2_005:
	.byte	W36
	.byte		N32   , Cn4 , v072
	.byte	W36
	.byte		BEND  , c_v-11
	.byte		N10   , En3 , v112
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N10   , Fs3
	.byte	W12
	.byte		PEND
mus_flapper_girl_2_006:
	.byte		N32   , Gn3 , v112
	.byte		N32   , Cn4 , v072
	.byte	W36
	.byte		N22   , Gn3 , v112
	.byte		N23   , Cn4 , v072
	.byte	W24
	.byte		N10   , Fs3 , v112
	.byte		N11   , Bn3 , v072
	.byte	W12
	.byte		N10   , En3 , v112
	.byte		N11   , An3 , v072
	.byte	W12
	.byte		N32   , Fs3 , v112
	.byte		N32   , Bn3 , v072
	.byte	W12
	.byte		PEND
mus_flapper_girl_2_007:
	.byte	W24
	.byte		N22   , Bn3 , v112
	.byte		N23   , Dn4 , v072
	.byte	W24
	.byte		N10   , As3 , v112
	.byte		N11   , Cs4 , v072
	.byte	W12
	.byte		N10   , Bn3 , v112
	.byte		N11   , Dn4 , v072
	.byte	W24
	.byte		BEND  , c_v-11
	.byte		N32   , Cs4 , v112
	.byte		N32   , En4 , v072
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		PEND
mus_flapper_girl_2_008:
	.byte	W24
	.byte		N22   , Bn3 , v112
	.byte		N23   , Dn4 , v072
	.byte	W24
	.byte		N10   , As3 , v112
	.byte		N11   , Cs4 , v072
	.byte	W12
	.byte		N22   , Bn3 , v112
	.byte		N23   , Dn4 , v072
	.byte	W24
	.byte		N44   , Cs4 , v112
	.byte		N23   , En4 , v072
	.byte	W12
	.byte		PEND
mus_flapper_girl_2_009:
	.byte	W12
	.byte		N23   , Dn4 , v072
	.byte	W24
	.byte		        Cs4 , v112
	.byte	W24
	.byte		N10   , Bn3
	.byte		N11   , Fs4 , v072
	.byte	W12
	.byte		N09   , Bn3 , v112
	.byte		N10   , Fs4 , v072
	.byte	W12
	.byte		BEND  , c_v-6
	.byte		N68   , Dn4 , v112
	.byte		N68   , Fs4 , v072
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		PEND
mus_flapper_girl_2_010:
	.byte	W60
	.byte		N10   , Cs4 , v112
	.byte		N11   , En4 , v072
	.byte	W12
	.byte		N10   , Dn4 , v112
	.byte		N11   , Fs4 , v072
	.byte	W12
	.byte		N32   , En4 , v112
	.byte		N32   , Gn4 , v072
	.byte	W12
	.byte		PEND
mus_flapper_girl_2_011:
	.byte	W24
	.byte		N22   , Dn4 , v112
	.byte		N23   , Fs4 , v072
	.byte	W24
	.byte		N10   , Cs4 , v112
	.byte		N11   , En4 , v072
	.byte	W12
	.byte		N22   , Bn3 , v112
	.byte		N23   , Dn4 , v072
	.byte	W24
	.byte		N32   , En4 , v112
	.byte		N32   , Gn4 , v072
	.byte	W12
	.byte		PEND
mus_flapper_girl_2_012:
	.byte	W24
	.byte		N10   , Dn4 , v112
	.byte		N11   , Fs4 , v072
	.byte	W12
	.byte		N32   , Cs4 , v112
	.byte		N32   , En4 , v072
	.byte	W36
	.byte		N10   , En4 , v112
	.byte		N10   , Gn4 , v072
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		N32   , Gn4 , v112
	.byte		N32   , Bn4 , v072
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		PEND
mus_flapper_girl_2_013:
	.byte	W24
	.byte		N09   , An4 , v112
	.byte		N10   , Cs5 , v072
	.byte	W11
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		N32   , Fs4 , v112
	.byte		N32   , An4 , v072
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W19
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-11
	.byte	W07
	.byte		        c_v+0
	.byte	W01
	.byte		N10   , En3 , v112
	.byte		N11   , Gn3 , v072
	.byte	W12
	.byte		N10   , Fs3 , v112
	.byte		N11   , An3 , v072
	.byte	W12
	.byte		PEND
mus_flapper_girl_2_014:
	.byte		N10   , Gn3 , v112
	.byte		N11   , Bn3 , v072
	.byte	W12
	.byte		N10   , En3 , v112
	.byte		N11   , Gn3 , v072
	.byte	W12
	.byte		N10   , Fs3 , v112
	.byte		N11   , An3 , v072
	.byte	W12
	.byte		N22   , Gn3 , v112
	.byte		N23   , Bn3 , v072
	.byte	W24
	.byte		N10   , An3 , v112
	.byte		N11   , Cs4 , v072
	.byte	W12
	.byte		N10   , Bn3 , v112
	.byte		N11   , Dn4 , v072
	.byte	W12
	.byte		N10   , Cs4 , v112
	.byte		N11   , En4 , v072
	.byte	W12
	.byte		PEND
	.byte		N22   , Dn4 , v112
	.byte		N23   , Fs4 , v072
	.byte	W24
	.byte		N10   , En4 , v112
	.byte		N11   , Gn4 , v072
	.byte	W12
	.byte		N10   , Cs4 , v112
	.byte		N11   , An4 , v072
	.byte	W24
	.byte		N21   , An3 , v112
	.byte		N22   , Fs4 , v072
	.byte	W24
	.byte		BEND  , c_v-11
	.byte		TIE   , Bn3 , v112
	.byte		N92   , En4 , v072
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte	W84
	.byte		N80   , Dn4
	.byte	W12
	.byte	W68
	.byte	W02
	.byte		EOT   , Bn3
	.byte	W24
	.byte	W02
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT
	 .word	mus_flapper_girl_2_001
	.byte	PATT
	 .word	mus_flapper_girl_2_002
	.byte	PATT
	 .word	mus_flapper_girl_2_003
	.byte	PATT
	 .word	mus_flapper_girl_2_004
	.byte	PATT
	 .word	mus_flapper_girl_2_005
	.byte	PATT
	 .word	mus_flapper_girl_2_006
	.byte	PATT
	 .word	mus_flapper_girl_2_007
	.byte	PATT
	 .word	mus_flapper_girl_2_008
	.byte	PATT
	 .word	mus_flapper_girl_2_009
	.byte	PATT
	 .word	mus_flapper_girl_2_010
	.byte	PATT
	 .word	mus_flapper_girl_2_011
	.byte	PATT
	 .word	mus_flapper_girl_2_012
	.byte	PATT
	 .word	mus_flapper_girl_2_013
	.byte	PATT
	 .word	mus_flapper_girl_2_014
	.byte		N22   , Dn4 , v112
	.byte		N23   , Fs4 , v072
	.byte	W24
	.byte		N10   , En4 , v112
	.byte		N11   , Gn4 , v072
	.byte	W12
	.byte		N10   , Cs4 , v112
	.byte		N11   , En4 , v072
	.byte	W24
	.byte		N22   , An3 , v112
	.byte		N23   , Cs4 , v072
	.byte	W24
	.byte		BEND  , c_v-11
	.byte		TIE   , Bn3 , v112
	.byte		N92   , En4 , v072
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte	W84
	.byte		N80   , Dn4
	.byte	W12
	.byte	W68
	.byte	W03
	.byte		EOT   , Bn3
	.byte	W24
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_flapper_girl_2_000
	.byte		FINE

@**************** Track 3 ****************@

mus_flapper_girl_3:
	.byte		KEYSH , mus_flapper_girl_key+0
	.byte		VOICE , 56
	.byte		VOL   , 60*mus_flapper_girl_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W11
	.byte	W23
	.byte		N22   , An3 , v092
	.byte		N22   , An4 , v120
	.byte	W24
	.byte	W01
mus_flapper_girl_3_000:
	.byte		N32   , Bn4 , v120
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W68
	.byte	W03
	.byte		N10   , An4
	.byte	W12
	.byte		N32   , Bn4
	.byte	W13
	.byte	W23
	.byte		N32
	.byte	W36
	.byte		N22   , Cs5
	.byte	W24
	.byte		N32   , Dn5
	.byte	W13
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
	.byte	W18
	.byte		VOICE , 46
	.byte		VOL   , 49*mus_flapper_girl_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		N02   , Dn2 , v108
	.byte	W03
	.byte		        En2 , v096
	.byte	W04
	.byte		        Fs2
	.byte	W03
	.byte		        Gn2 , v092
	.byte	W04
	.byte		        An2
	.byte	W03
	.byte		        Bn2
	.byte	W04
	.byte		        Cn3
	.byte	W03
	.byte		        Dn3 , v088
	.byte	W04
	.byte		        En3
	.byte	W03
	.byte		        Fs3
	.byte	W04
	.byte		        Gn3
	.byte	W03
	.byte		        An3 , v084
	.byte	W04
	.byte		        Bn3
	.byte	W03
	.byte		        Cn4
	.byte	W04
	.byte		        Dn4
	.byte	W03
	.byte		        En4 , v080
	.byte	W04
	.byte		        Fs4
	.byte	W03
	.byte		        Gn4
	.byte	W04
	.byte		        An4
	.byte	W03
	.byte		N08   , Bn4 , v076
	.byte	W06
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
	.byte		N02   , Dn2 , v108
	.byte	W03
	.byte		        En2 , v096
	.byte	W04
	.byte		        Fs2
	.byte	W03
	.byte		        Gn2 , v092
	.byte	W04
	.byte		        An2
	.byte	W03
	.byte		        Bn2
	.byte	W04
	.byte		        Cn3
	.byte	W03
	.byte		        Dn3 , v088
	.byte	W04
	.byte		        En3
	.byte	W03
	.byte		        Fs3
	.byte	W04
	.byte		        Gn3
	.byte	W03
	.byte		        An3 , v084
	.byte	W04
	.byte		        Bn3
	.byte	W03
	.byte		        Cn4
	.byte	W04
	.byte		        Dn4
	.byte	W03
	.byte		        En4 , v080
	.byte	W04
	.byte		        Fs4
	.byte	W03
	.byte		        Gn4
	.byte	W04
	.byte		        An4
	.byte	W03
	.byte		N08   , Bn4 , v076
	.byte	W06
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W66
	.byte		VOICE , 56
	.byte		VOL   , 60*mus_flapper_girl_mvl/mxv
	.byte	W05
	.byte		N22   , An3 , v092
	.byte		N22   , An4 , v120
	.byte	W24
	.byte	W01
	.byte	GOTO
	 .word	mus_flapper_girl_3_000
	.byte		FINE

@**************** Track 4 ****************@

mus_flapper_girl_4:
	.byte		KEYSH , mus_flapper_girl_key+0
	.byte		VOICE , 48
	.byte		BENDR , 12
	.byte		VOL   , 35*mus_flapper_girl_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W11
	.byte	W48
mus_flapper_girl_4_000:
	.byte		N56   , Fs4 , v072
	.byte		N10   , Bn4 , v100
	.byte	W11
	.byte		N11   , Cs5
	.byte	W12
	.byte		        Dn5
	.byte	W11
	.byte		N24   , Fs3 , v052
	.byte	W01
	.byte		N23   , Cs5 , v100
	.byte	W24
	.byte		N12   , En3 , v052
	.byte		N23   , Fs4 , v072
	.byte		N23   , Bn4 , v100
	.byte	W12
	.byte		N12   , Fs3 , v052
	.byte	W12
	.byte		N80   , Gn3
	.byte		N80   , Gn4 , v092
	.byte		N56   , Bn4 , v072
	.byte	W13
	.byte	W44
	.byte	W03
	.byte		N23   , En5 , v100
	.byte	W24
	.byte		N22   , Dn3 , v052
	.byte		N23   , Bn4 , v072
	.byte		N23   , Dn5 , v100
	.byte	W24
	.byte		N56   , Cs3 , v052
	.byte		N56   , An4 , v072
	.byte		N56   , Cs5 , v100
	.byte	W01
	.byte	W56
	.byte	W03
	.byte		N10   , En3 , v052
	.byte		N23   , En4
	.byte		N11   , Bn4 , v100
	.byte	W12
	.byte		N10   , En3 , v052
	.byte		N11   , An4 , v100
	.byte	W12
	.byte		N23   , Fs3 , v052
	.byte		N80   , Fs4 , v092
	.byte		N80   , As4 , v072
	.byte	W13
	.byte	W96
	.byte	W11
	.byte		N11   , Bn4 , v092
	.byte	W12
	.byte		N11
	.byte	W24
	.byte		N11
	.byte	W12
	.byte		        Cs5
	.byte	W24
	.byte		N23   , Dn5
	.byte	W13
	.byte	W11
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W72
	.byte	W01
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		N36   , Bn4 , v060
	.byte	W01
	.byte	W30
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W02
	.byte		        c_v-6
	.byte	W11
	.byte		N11
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v+0
	.byte	W08
	.byte		N11   , Cs5
	.byte	W12
	.byte		        Dn5 , v056
	.byte	W12
	.byte		N32   , Dn5 , v060
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte	W23
	.byte		N11   , En5
	.byte	W12
	.byte		        Cs5
	.byte	W01
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W20
	.byte		N11   , Bn4
	.byte	W24
	.byte		N23
	.byte	W01
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte	W11
	.byte		N04   , An4 , v056
	.byte	W12
	.byte		N32   , An4 , v060
	.byte	W01
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W32
	.byte		N23   , Gn4
	.byte	W24
	.byte		N23
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte	W19
	.byte		N04   , Fs4 , v056
	.byte	W04
	.byte		N30   , Fs4 , v060
	.byte	W36
	.byte		N11   , En4 , v068
	.byte	W12
	.byte		        Fs4 , v056
	.byte	W12
	.byte		N32   , En4 , v068
	.byte	W01
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte	W23
	.byte		N11   , Dn4 , v064
	.byte	W12
	.byte		N23   , Dn4 , v068
	.byte	W24
	.byte		N11   , Cs4
	.byte	W12
	.byte		        Dn4 , v064
	.byte	W12
	.byte		N32   , En4 , v068
	.byte	W13
	.byte	W23
	.byte		N11   , Fs4 , v060
	.byte	W12
	.byte		        Gn4
	.byte	W12
	.byte		        An4
	.byte	W12
	.byte		        Bn4
	.byte	W24
	.byte		N32   , Cs5
	.byte	W01
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte	W23
	.byte		N23   , Bn4 , v056
	.byte	W24
	.byte		        Cs5 , v060
	.byte	W24
	.byte		N11   , Dn5
	.byte	W12
	.byte		N23   , Cs5
	.byte	W01
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte	W11
	.byte		N11   , Bn4
	.byte	W12
	.byte		N68
	.byte	W72
	.byte	W01
	.byte	W23
	.byte		N23   , En5 , v064
	.byte	W24
	.byte		        Dn5
	.byte	W05
	.byte		BEND  , c_v+10
	.byte	W04
	.byte		        c_v+0
	.byte	W15
	.byte		N23   , Cs5
	.byte	W24
	.byte		        Bn4
	.byte	W01
	.byte	W23
	.byte		        An4
	.byte	W24
	.byte		        Gn4
	.byte	W24
	.byte		        An4
	.byte	W24
	.byte		N36   , Fs4
	.byte	W01
	.byte	W44
	.byte	W03
	.byte		N11   , En4 , v072
	.byte	W01
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W08
	.byte		N11   , Dn4 , v068
	.byte	W12
	.byte		        En4 , v064
	.byte	W12
	.byte		N56   , Fs4
	.byte	W13
	.byte	W44
	.byte	W03
	.byte		N23   , Gn4
	.byte	W24
	.byte		N11   , An4
	.byte	W12
	.byte		N56   , Bn4 , v068
	.byte	W13
	.byte	W44
	.byte	W03
	.byte		N11   , Cs5 , v064
	.byte	W12
	.byte		        Dn5 , v060
	.byte	W24
	.byte		N23   , Dn5 , v068
	.byte	W13
	.byte	W11
	.byte		N11   , Cs5 , v064
	.byte	W12
	.byte		N23
	.byte	W24
	.byte		        Bn4
	.byte	W15
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v+0
	.byte		N05   , An4 , v060
	.byte	W12
	.byte		TIE   , Fs5 , v036
	.byte	W01
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte	W96
	.byte	W22
	.byte		EOT   
	.byte	W72
	.byte	W01
	.byte		N92   , Bn4 , v052
	.byte	W01
	.byte	W92
	.byte	W03
	.byte		        Cs5
	.byte	W01
	.byte	W92
	.byte	W03
	.byte		N80   , An4
	.byte	W01
	.byte	W80
	.byte	W03
	.byte		N44   , Bn4
	.byte	W13
	.byte	W32
	.byte	W03
	.byte		N24   , Gn4 , v084
	.byte	W24
	.byte		N12   , Fs4 , v080
	.byte	W12
	.byte		        En4 , v076
	.byte	W12
	.byte		        Ds4 , v068
	.byte	W12
	.byte		TIE   , Bn4 , v044
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W80
	.byte	W02
	.byte		EOT   
	.byte	W01
	.byte		N44   , Bn4 , v056
	.byte	W13
	.byte	W32
	.byte	W03
	.byte		N07   , As4
	.byte	W48
	.byte		N32   , Fs3 , v068
	.byte	W13
	.byte	W23
	.byte		N23   , En3
	.byte	W24
	.byte		N24   , Fs3
	.byte	W36
	.byte		N68   , Bn3 , v060
	.byte	W13
mus_flapper_girl_4_001:
	.byte	W56
	.byte	W03
	.byte		N07   , Bn3 , v076
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N23   , Cs4 , v068
	.byte	W13
	.byte		PEND
	.byte	W11
	.byte		N07   , Cs4 , v076
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N23   , Cs4 , v068
	.byte	W24
	.byte		N07   , Cs4 , v076
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N44   , Cs4 , v068
	.byte	W13
mus_flapper_girl_4_002:
	.byte	W32
	.byte	W03
	.byte		N56   , Cn4 , v068
	.byte	W60
	.byte	W01
	.byte		PEND
	.byte	W96
	.byte	W96
	.byte	W96
mus_flapper_girl_4_003:
	.byte	W92
	.byte	W03
	.byte		N23   , Dn4 , v068
	.byte	W01
	.byte		PEND
mus_flapper_girl_4_004:
	.byte	W23
	.byte		N23   , Cs4 , v068
	.byte	W24
	.byte		N11   , Bn3
	.byte	W12
	.byte		N23   , An3
	.byte	W24
	.byte		N32   , Gn4
	.byte	W13
	.byte		PEND
mus_flapper_girl_4_005:
	.byte	W23
	.byte		N23   , Fs4 , v068
	.byte	W24
	.byte		N11   , En4
	.byte	W12
	.byte		N23   , Dn4
	.byte	W24
	.byte		N32   , Gn4
	.byte	W13
	.byte		PEND
mus_flapper_girl_4_006:
	.byte	W32
	.byte	W03
	.byte		N32   , An4 , v068
	.byte	W48
	.byte		        Bn4
	.byte	W13
	.byte		PEND
	.byte	W23
	.byte		N11   , An4
	.byte	W12
	.byte		N32   , Fs4
	.byte	W60
	.byte		N11   , Bn3 , v104
	.byte	W01
	.byte	W11
	.byte		        Gn3 , v108
	.byte	W12
	.byte		        An3 , v100
	.byte	W12
	.byte		N23   , Bn3 , v104
	.byte	W24
	.byte		N11   , Cs4 , v108
	.byte	W12
	.byte		        Dn4 , v104
	.byte	W12
	.byte		        En4 , v108
	.byte	W12
	.byte		N23   , Fs4 , v100
	.byte	W01
	.byte	W23
	.byte		N11   , Gn4 , v096
	.byte	W12
	.byte		        An4 , v100
	.byte	W24
	.byte		N23   , Fs4 , v096
	.byte	W24
	.byte		N92   , En4 , v108
	.byte	W01
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte	W80
	.byte	W03
	.byte		N80   , Dn4 , v096
	.byte	W13
mus_flapper_girl_4_007:
	.byte	W68
	.byte	W03
	.byte		N11   , Gn2 , v112
	.byte		N11   , Gn3
	.byte	W12
	.byte		        An2 , v104
	.byte		N11   , An3
	.byte	W12
	.byte		N44   , Bn2
	.byte		N44   , Bn3
	.byte	W01
	.byte		PEND
mus_flapper_girl_4_008:
	.byte	W44
	.byte	W03
	.byte		N23   , Cs3 , v104
	.byte		N23   , Cs4
	.byte	W24
	.byte		        Dn3 , v112
	.byte		N23   , Dn4 , v104
	.byte	W24
	.byte		N44   , En3
	.byte		N44   , En4
	.byte	W01
	.byte		PEND
mus_flapper_girl_4_009:
	.byte	W44
	.byte	W03
	.byte		N23   , An2 , v104
	.byte		N23   , An3
	.byte	W24
	.byte		        An3 , v116
	.byte		N23   , An4 , v124
	.byte	W24
	.byte		N56   , Fs3 , v104
	.byte		N56   , Fs4 , v124
	.byte	W01
	.byte		PEND
mus_flapper_girl_4_010:
	.byte	W56
	.byte	W03
	.byte		N11   , En3 , v104
	.byte		N11   , En4 , v096
	.byte	W12
	.byte		        Dn3 , v104
	.byte		N11   , Dn4 , v108
	.byte	W12
	.byte		N80   , Fs3 , v112
	.byte		N80   , Fs4 , v124
	.byte	W13
	.byte		PEND
mus_flapper_girl_4_011:
	.byte	W68
	.byte	W03
	.byte		N11   , Gn2 , v112
	.byte		N11   , Gn3
	.byte		N11   , Gn4
	.byte	W12
	.byte		        An2
	.byte		N11   , An3
	.byte		N11   , An4
	.byte	W12
	.byte		N68   , Bn2
	.byte		N68   , Bn3
	.byte		N68   , Bn4
	.byte	W01
	.byte		PEND
mus_flapper_girl_4_012:
	.byte	W68
	.byte	W03
	.byte		N23   , Dn3 , v112
	.byte		N23   , Dn4
	.byte		N23   , Dn5
	.byte	W24
	.byte		N44   , Cs3
	.byte		N44   , Cs4
	.byte		N44   , Cs5
	.byte	W01
	.byte		PEND
	.byte	W44
	.byte	W03
	.byte		N23   , Dn3 , v100
	.byte		N23   , Dn4
	.byte		N23   , Dn5
	.byte	W24
	.byte		        En3 , v096
	.byte		N23   , En4
	.byte		N23   , En5
	.byte	W24
	.byte		TIE   , Fs3
	.byte		TIE   , Fs5 , v084
	.byte	W01
	.byte	W96
	.byte	W92
	.byte	W01
	.byte		EOT   , Fs3
	.byte		        Fs5
	.byte	W02
	.byte		N92   , Fs2 , v048
	.byte		N92   , Bn2 , v056
	.byte	W01
	.byte	W92
	.byte	W03
	.byte		        En3 , v048
	.byte		N22   , Gn3 , v056
	.byte	W01
	.byte	W23
	.byte		        An3
	.byte	W24
	.byte		        Bn3
	.byte	W24
	.byte		        Gn3
	.byte	W24
	.byte		N92   , En3 , v048
	.byte		N92   , An3 , v056
	.byte	W01
	.byte	W92
	.byte	W03
	.byte		N44   , Dn3 , v048
	.byte		N44   , An3 , v056
	.byte	W01
	.byte	W44
	.byte	W03
	.byte		        Cs4 , v048
	.byte		N44   , En4 , v056
	.byte	W48
	.byte		N92   , Fs3 , v048
	.byte		N56   , Dn4 , v056
	.byte	W01
	.byte	W56
	.byte	W03
	.byte		N10   , Cs4
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		N36   , En3 , v048
	.byte		N36   , Gn3 , v056
	.byte	W01
	.byte	W44
	.byte	W03
	.byte		        Bn3 , v048
	.byte		N36   , Dn4 , v056
	.byte	W48
	.byte		        An3 , v048
	.byte		N36   , Cs4 , v056
	.byte	W01
	.byte	W44
	.byte	W03
	.byte		        Cs3 , v048
	.byte		N36   , As3 , v056
	.byte	W48
	.byte		N92   , Fs3 , v048
	.byte		N92   , Bn3 , v056
	.byte	W01
	.byte	W92
	.byte	W03
	.byte		        Gn3 , v048
	.byte		N92   , Bn3 , v056
	.byte	W01
mus_flapper_girl_4_013:
	.byte	W92
	.byte	W03
	.byte		N92   , En3 , v048
	.byte		N92   , An3 , v056
	.byte	W01
	.byte		PEND
	.byte	W92
	.byte	W03
	.byte		        Fs3 , v048
	.byte		N92   , Bn3 , v056
	.byte	W01
	.byte	W92
	.byte	W03
	.byte		N44   , Fs3 , v048
	.byte		N22   , Cs4 , v056
	.byte	W01
	.byte	W23
	.byte		        As3
	.byte	W24
	.byte		N44   , Cs3 , v048
	.byte		N44   , Fs3 , v056
	.byte	W48
	.byte		N92   , Gn3 , v048
	.byte		N92   , Bn3 , v056
	.byte	W01
	.byte	PATT
	 .word	mus_flapper_girl_4_013
	.byte	W92
	.byte	W03
	.byte		TIE   , An3 , v048
	.byte		N68   , Dn4 , v056
	.byte	W01
	.byte	W68
	.byte	W03
	.byte		N22   , Cs4
	.byte	W24
	.byte		N92   , Cn4
	.byte	W01
	.byte	W22
	.byte		EOT   , An3
	.byte	W72
	.byte	W01
	.byte		N92   , Gn3 , v048
	.byte		N92   , Bn4 , v056
	.byte	W01
	.byte	W92
	.byte	W03
	.byte		N44   , Gn3 , v048
	.byte		N92   , Cs5 , v056
	.byte	W01
	.byte	W44
	.byte	W03
	.byte		N23   , Fs3 , v048
	.byte	W24
	.byte		        Gn3
	.byte	W24
	.byte		N80   , Fs3
	.byte		N80   , An4 , v056
	.byte	W01
	.byte	W80
	.byte	W03
	.byte		TIE   , Fs3 , v048
	.byte		N44   , Bn4 , v056
	.byte	W13
	.byte	W32
	.byte	W03
	.byte		N23   , Gn4
	.byte	W13
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		        c_v+5
	.byte	W03
	.byte		        c_v+0
	.byte	W05
	.byte		N11   , Fs4
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		        Ds4
	.byte	W10
	.byte		EOT   , Fs3
	.byte	W02
	.byte		N92   , Gn3 , v048
	.byte		TIE   , Bn4 , v056
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W80
	.byte	W02
	.byte		EOT   
	.byte	W01
	.byte		N48   , Bn4 , v068
	.byte	W13
	.byte	W32
	.byte	W03
	.byte		N10   , Fs3 , v048
	.byte		N12   , As4 , v068
	.byte	W48
	.byte		N32   , Fs3
	.byte	W13
	.byte	W23
	.byte		N23   , En3
	.byte	W24
	.byte		N24   , Fs3
	.byte	W36
	.byte		N68   , Bn3
	.byte	W13
	.byte	PATT
	 .word	mus_flapper_girl_4_001
	.byte	W11
	.byte		N09   , Cs4 , v076
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N23   , Cs4 , v068
	.byte	W24
	.byte		N09   , Cs4 , v076
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N44   , Cs4 , v068
	.byte	W13
	.byte	PATT
	 .word	mus_flapper_girl_4_002
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT
	 .word	mus_flapper_girl_4_003
	.byte	PATT
	 .word	mus_flapper_girl_4_004
	.byte	PATT
	 .word	mus_flapper_girl_4_005
	.byte	PATT
	 .word	mus_flapper_girl_4_006
	.byte	W23
	.byte		N11   , An4 , v068
	.byte	W12
	.byte		N32   , Fs4
	.byte	W60
	.byte		N12   , Bn3 , v104
	.byte	W01
	.byte	W11
	.byte		        Gn3 , v108
	.byte	W12
	.byte		        An3 , v100
	.byte	W12
	.byte		N24   , Bn3 , v104
	.byte	W24
	.byte		N12   , Cs4 , v108
	.byte	W12
	.byte		        Dn4 , v104
	.byte	W12
	.byte		        En4 , v108
	.byte	W12
	.byte		N24   , Fs4 , v100
	.byte	W01
	.byte	W23
	.byte		N12   , Gn4 , v096
	.byte	W12
	.byte		        An4 , v100
	.byte	W24
	.byte		N23   , Fs4 , v096
	.byte	W24
	.byte		N96   , En4 , v108
	.byte	W01
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte	W80
	.byte	W03
	.byte		N84   , Dn4
	.byte	W13
	.byte	PATT
	 .word	mus_flapper_girl_4_007
	.byte	PATT
	 .word	mus_flapper_girl_4_008
	.byte	PATT
	 .word	mus_flapper_girl_4_009
	.byte	PATT
	 .word	mus_flapper_girl_4_010
	.byte	PATT
	 .word	mus_flapper_girl_4_011
	.byte	PATT
	 .word	mus_flapper_girl_4_012
	.byte	W44
	.byte	W03
	.byte		N23   , Dn3 , v100
	.byte		N23   , Dn4
	.byte		N23   , Dn5
	.byte	W24
	.byte		        En3 , v096
	.byte		N23   , En4
	.byte		N23   , En5
	.byte	W24
	.byte		TIE   , Fs3 , v084
	.byte		TIE   , Fs4
	.byte		TIE   , Fs5
	.byte	W01
	.byte	W96
	.byte	W68
	.byte	W02
	.byte		EOT   , Fs3
	.byte		        Fs4
	.byte		        Fs5
	.byte	W24
	.byte	W02
	.byte	GOTO
	 .word	mus_flapper_girl_4_000
	.byte		FINE

@**************** Track 5 ****************@

mus_flapper_girl_5:
	.byte		KEYSH , mus_flapper_girl_key+0
	.byte		VOICE , 61
	.byte		VOL   , 55*mus_flapper_girl_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W11
	.byte	W48
mus_flapper_girl_5_000:
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
mus_flapper_girl_5_001:
	.byte	W92
	.byte	W03
	.byte		N36   , Gn1 , v108
	.byte	W01
	.byte		PEND
mus_flapper_girl_5_002:
	.byte	W44
	.byte	W03
	.byte		N36   , Bn1 , v108
	.byte	W48
	.byte		N11   , Cs2
	.byte	W01
	.byte		PEND
mus_flapper_girl_5_003:
	.byte	W23
	.byte		N11   , Dn2 , v108
	.byte	W24
	.byte		        Cs2
	.byte	W24
	.byte		        An1
	.byte	W24
	.byte		N68   , Fs2
	.byte	W01
	.byte		PEND
mus_flapper_girl_5_004:
	.byte	W80
	.byte	W03
	.byte		N16   , As2 , v108
	.byte	W13
	.byte		PEND
mus_flapper_girl_5_005:
	.byte	W11
	.byte		N05   , As2 , v108
	.byte	W12
	.byte		N11   , Bn2
	.byte	W24
	.byte		        Cs3
	.byte	W24
	.byte		N05   , Fs2
	.byte	W12
	.byte		N68   , Dn3
	.byte	W13
	.byte		PEND
mus_flapper_girl_5_006:
	.byte	W56
	.byte	W03
	.byte		N05   , Cs3 , v108
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		N48   , An2
	.byte	W13
	.byte		PEND
mus_flapper_girl_5_007:
	.byte	W44
	.byte	W03
	.byte		N23   , An2 , v108
	.byte	W24
	.byte		N05   , Bn2
	.byte	W12
	.byte		N56   , Fs2
	.byte	W13
	.byte		PEND
mus_flapper_girl_5_008:
	.byte	W56
	.byte	W03
	.byte		N11   , En2 , v108
	.byte	W24
	.byte		        Fs2
	.byte	W13
	.byte		PEND
mus_flapper_girl_5_009:
	.byte	W11
	.byte		N05   , Dn2 , v108
	.byte	W12
	.byte		N11
	.byte	W24
	.byte		        En2
	.byte	W24
	.byte		        Fs2
	.byte	W24
	.byte		N44   , Gn1
	.byte	W01
	.byte		PEND
	.byte	W44
	.byte	W03
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		N84   , An1
	.byte	W13
mus_flapper_girl_5_010:
	.byte	W80
	.byte	W03
	.byte		N56   , Dn2 , v108
	.byte	W13
	.byte		PEND
mus_flapper_girl_5_011:
	.byte	W44
	.byte	W03
	.byte		N08   , Dn2 , v108
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		TIE   , Bn1
	.byte	W13
	.byte		PEND
	.byte	W92
	.byte	W02
	.byte		EOT   
	.byte	W01
	.byte		N09   , En2
	.byte	W01
mus_flapper_girl_5_012:
	.byte	W11
	.byte		N09   , En2 , v108
	.byte	W12
	.byte		N18
	.byte	W24
	.byte		N09
	.byte	W12
	.byte		N18
	.byte	W24
	.byte		        Dn2
	.byte	W13
	.byte		PEND
	.byte	W11
	.byte		N09
	.byte	W12
	.byte		N18
	.byte	W24
	.byte		N09
	.byte	W12
	.byte		N18
	.byte	W24
	.byte		N24   , Cs2
	.byte	W13
	.byte	W11
	.byte		N12
	.byte	W24
	.byte		N24   , Gn2
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N44   , Fs2
	.byte	W13
mus_flapper_girl_5_013:
	.byte	W32
	.byte	W03
	.byte		N12   , Fs2 , v108
	.byte	W60
	.byte	W01
	.byte		PEND
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT
	 .word	mus_flapper_girl_5_001
	.byte	PATT
	 .word	mus_flapper_girl_5_002
	.byte	PATT
	 .word	mus_flapper_girl_5_003
	.byte	PATT
	 .word	mus_flapper_girl_5_004
	.byte	PATT
	 .word	mus_flapper_girl_5_005
	.byte	PATT
	 .word	mus_flapper_girl_5_006
	.byte	PATT
	 .word	mus_flapper_girl_5_007
	.byte	PATT
	 .word	mus_flapper_girl_5_008
	.byte	PATT
	 .word	mus_flapper_girl_5_009
	.byte	W44
	.byte	W03
	.byte		N08   , Gn1 , v108
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		N84
	.byte	W13
	.byte	PATT
	 .word	mus_flapper_girl_5_010
	.byte	PATT
	 .word	mus_flapper_girl_5_011
	.byte	W92
	.byte	W02
	.byte		EOT   , Bn1
	.byte	W01
	.byte		N09   , En2 , v108
	.byte	W01
	.byte	PATT
	 .word	mus_flapper_girl_5_012
	.byte	W11
	.byte		N09   , Dn2 , v108
	.byte	W12
	.byte		N11   , Dn2 , v116
	.byte	W24
	.byte		N09   , Dn2 , v108
	.byte		N11   , En2 , v116
	.byte	W12
	.byte		N18   , Dn2 , v108
	.byte	W12
	.byte		N05   , Fs2 , v116
	.byte	W12
	.byte		N24   , Cs2 , v108
	.byte		N32   , Gn2 , v116
	.byte	W13
	.byte	W11
	.byte		N12   , Cs2 , v108
	.byte	W24
	.byte		N23   , Gn2 , v116
	.byte	W24
	.byte		N05   , Fs2
	.byte	W12
	.byte		        En2
	.byte	W12
	.byte		N44   , Fs2 , v108
	.byte	W13
	.byte	PATT
	 .word	mus_flapper_girl_5_013
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
	 .word	mus_flapper_girl_5_000
	.byte		FINE

@**************** Track 7 ****************@

mus_flapper_girl_7:
	.byte		KEYSH , mus_flapper_girl_key+0
	.byte		VOICE , 58
	.byte		VOL   , 55*mus_flapper_girl_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W11
	.byte	W48
mus_flapper_girl_7_000:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W12
	.byte		MOD   , 2
	.byte		N11   , Dn3 , v100
	.byte	W12
	.byte		N11
	.byte	W24
	.byte		N11
	.byte	W24
	.byte		N04
	.byte	W12
	.byte		N32   , En3
	.byte	W12
	.byte	W96
	.byte	W96
	.byte		N44   , Dn3 , v108
	.byte	W48
	.byte		N10
	.byte	W12
	.byte		        Cs3
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		        An2
	.byte	W12
mus_flapper_girl_7_001:
	.byte		N23   , Gn2 , v108
	.byte	W24
	.byte		        An2
	.byte	W24
	.byte		        Bn2
	.byte	W24
	.byte		        Dn3
	.byte	W24
	.byte		PEND
	.byte		N92   , Cs3
	.byte	W96
mus_flapper_girl_7_002:
	.byte		N44   , Fs2 , v108
	.byte	W48
	.byte		        As2
	.byte	W48
	.byte		PEND
mus_flapper_girl_7_003:
	.byte		N56   , Bn2 , v108
	.byte	W60
	.byte		N11   , An2
	.byte	W12
	.byte		        Gn2
	.byte	W12
	.byte		        Fs2
	.byte	W12
	.byte		PEND
mus_flapper_girl_7_004:
	.byte		N44   , Bn2 , v108
	.byte	W48
	.byte		        Dn3
	.byte	W48
	.byte		PEND
	.byte		        En3
	.byte	W48
	.byte		        Fs3
	.byte	W48
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
	.byte		N56   , Dn3
	.byte	W60
	.byte		N11   , Cs3
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		        An2
	.byte	W12
	.byte	PATT
	 .word	mus_flapper_girl_7_001
	.byte		N92   , Cs3 , v108
	.byte	W96
	.byte	PATT
	 .word	mus_flapper_girl_7_002
	.byte	PATT
	 .word	mus_flapper_girl_7_003
	.byte	PATT
	 .word	mus_flapper_girl_7_004
	.byte		N44   , En3 , v108
	.byte	W48
	.byte		        Fs3
	.byte	W48
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
	 .word	mus_flapper_girl_7_000
	.byte		FINE

@**************** Track 8 ****************@

mus_flapper_girl_8:
	.byte		KEYSH , mus_flapper_girl_key-12
	.byte		VOICE , 108
	.byte		VOL   , 66*mus_flapper_girl_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W11
	.byte	W48
mus_flapper_girl_8_000:
	.byte		N56   , Bn1 , v120
	.byte	W60
	.byte		N10   , An1
	.byte	W24
	.byte		N52   , En1
	.byte	W12
	.byte	W42
	.byte		N05   , En2
	.byte	W06
	.byte		N05
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		N23   , Gn1
	.byte	W24
	.byte		N56   , An1
	.byte	W60
	.byte		N10
	.byte	W24
	.byte		N23   , As1
	.byte	W12
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N23   , Cs2
	.byte	W24
	.byte		N11   , Fs2
	.byte	W12
	.byte		        En2
	.byte	W12
	.byte		        Dn2
	.byte	W12
	.byte		N23   , Bn1
	.byte	W12
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N12   , An1
	.byte	W24
	.byte		N23   , Gn1
	.byte	W12
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N12
	.byte	W24
	.byte		N23   , Cs2
	.byte	W12
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		N12   , Fs1
	.byte	W12
	.byte	W12
	.byte		N11   , Fs2
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		BEND  , c_v-6
	.byte		N11
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W09
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		        As1
	.byte	W12
mus_flapper_girl_8_001:
	.byte		N11   , Bn1 , v120
	.byte	W12
	.byte		N12
	.byte	W24
	.byte		N11   , An1
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		N12
	.byte	W24
	.byte		N18   , En1
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_002:
	.byte	W12
	.byte		N03   , En2 , v120
	.byte	W12
	.byte		N11   , Fs1
	.byte	W12
	.byte		N03   , Fs2
	.byte	W12
	.byte		N11   , Gn1
	.byte	W12
	.byte		N03   , Gn2
	.byte	W12
	.byte		N11   , En1
	.byte	W12
	.byte		N03   , En2
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_003:
	.byte		N11   , An1 , v120
	.byte	W12
	.byte		N24   , An2
	.byte	W30
	.byte		N05   , Gn1
	.byte	W06
	.byte		BEND  , c_v-11
	.byte		N24   , An1
	.byte	W02
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W32
	.byte	W01
	.byte		N23   , Dn2
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_004:
	.byte	W12
	.byte		N03   , Dn3 , v120
	.byte	W12
	.byte		N12   , Dn2
	.byte	W18
	.byte		N05
	.byte	W06
	.byte		N03   , Cs2
	.byte	W12
	.byte		N18
	.byte	W24
	.byte		N09
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_005:
	.byte		N24   , Bn1 , v120
	.byte	W30
	.byte		N05   , Fs1
	.byte	W06
	.byte		N11   , An1
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_006:
	.byte		N11   , En1 , v120
	.byte	W12
	.byte		        En2
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		        Fs2
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		        Gn2
	.byte	W12
	.byte		N03   , En1
	.byte	W12
	.byte		N11   , An1
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_007:
	.byte		N11   , An1 , v120
	.byte	W12
	.byte		        An2
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        As2
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N23   , Bn1
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_008:
	.byte	W12
	.byte		N11   , Bn2 , v120
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		        Cs3
	.byte	W12
	.byte		        Dn2
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_009:
	.byte		N17   , Gn1 , v120
	.byte	W18
	.byte		N05
	.byte	W06
	.byte		N17
	.byte	W18
	.byte		N11   , Gn2
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N11   , Gn1
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_010:
	.byte		N17   , An1 , v120
	.byte	W18
	.byte		N05
	.byte	W06
	.byte		N17
	.byte	W18
	.byte		N11   , An2
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N11   , An1
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_011:
	.byte		N17   , Bn1 , v120
	.byte	W18
	.byte		N05
	.byte	W06
	.byte		N17
	.byte	W18
	.byte		N11
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N11   , An1
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		N10   , As1
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_012:
	.byte	W12
	.byte		N10   , Cs2 , v120
	.byte	W24
	.byte		        As1
	.byte	W18
	.byte		N04
	.byte	W06
	.byte		N11   , Fs1
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_013:
	.byte		N11   , Gn1 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N17
	.byte	W18
	.byte		N11   , Gn2
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N11   , Gn1
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_014:
	.byte		N11   , An1 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N17
	.byte	W18
	.byte		N11   , An2
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N11   , An1
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_015:
	.byte		N17   , Dn2 , v120
	.byte	W18
	.byte		N05
	.byte	W06
	.byte		N17
	.byte	W18
	.byte		N11
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_016:
	.byte		N17   , Cn2 , v120
	.byte	W18
	.byte		N05
	.byte	W06
	.byte		N17
	.byte	W18
	.byte		N11
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N11   , Fs1
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		        Dn2
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_017:
	.byte		N11   , Gn1 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_018:
	.byte		N11   , Gn1 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N23   , Dn2
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_019:
	.byte	W12
	.byte		N11   , Dn2 , v120
	.byte	W12
	.byte		BEND  , c_v-6
	.byte		N23
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W18
	.byte		        c_v-6
	.byte		N11
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W09
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N12   , Ds1
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_020:
	.byte	W12
	.byte		N11   , Ds1 , v120
	.byte	W12
	.byte		BEND  , c_v-6
	.byte		N23
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W18
	.byte		        c_v-6
	.byte		N11
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W09
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		BEND  , c_v-6
	.byte		N11
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W09
	.byte		PEND
mus_flapper_girl_8_021:
	.byte		N11   , En1 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		BEND  , c_v-11
	.byte		N11
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W09
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_022:
	.byte		N11   , Dn1 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		BEND  , c_v-6
	.byte		N11
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W08
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N23   , Cs1
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_023:
	.byte	W12
	.byte		N10   , Cs1 , v120
	.byte	W24
	.byte		N23   , Gn1
	.byte	W24
	.byte		N10   , Bn1
	.byte	W24
	.byte		N23   , Fs2
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_024:
	.byte	W12
	.byte		N11   , Fs1 , v120
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		N10   , Fs2
	.byte	W48
	.byte		N23   , Bn1
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_025:
	.byte	W12
	.byte		N05   , Bn2 , v120
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11   , Bn1
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		N23   , En1
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_026:
	.byte	W12
	.byte		N05   , En2 , v120
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N17   , En1
	.byte	W18
	.byte		N05   , En2
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		        En2
	.byte	W12
	.byte		N23   , An1
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_027:
	.byte	W12
	.byte		N11   , An2 , v120
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		N23   , Gn1
	.byte	W24
	.byte		N23
	.byte	W24
	.byte		        Dn1
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_028:
	.byte	W12
	.byte		N11   , Dn2 , v120
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		N23   , Ds1
	.byte	W24
	.byte		N11   , En1
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		PEND
	.byte		        Cn2
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		N17   , Cn2
	.byte	W18
	.byte		N05   , Gn1
	.byte	W06
	.byte		N11   , Bn1
	.byte	W12
	.byte		N12   , Cn2
	.byte	W24
	.byte		N22   , Bn1
	.byte	W12
mus_flapper_girl_8_029:
	.byte	W12
	.byte		N11   , Bn2 , v120
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		        Cs3
	.byte	W12
	.byte		        Dn2
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		N23   , En1
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_030:
	.byte	W12
	.byte		N23   , En1 , v120
	.byte	W24
	.byte		        Gn1
	.byte	W24
	.byte		N23
	.byte	W24
	.byte		        Fs1
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_031:
	.byte	W12
	.byte		N11   , Bn1 , v120
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		N23   , Fs2
	.byte	W24
	.byte		N11   , Fs1
	.byte	W12
	.byte		        Fs2
	.byte	W12
	.byte		N23   , Bn1
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_032:
	.byte	W12
	.byte		N04   , Bn1 , v120
	.byte	W12
	.byte		N12
	.byte	W18
	.byte		N05
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N23   , En2
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_033:
	.byte	W12
	.byte		N11   , En2 , v120
	.byte	W12
	.byte		N12   , En1
	.byte	W18
	.byte		N05
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		        En2
	.byte	W12
	.byte		        Dn2
	.byte	W12
	.byte		N23   , An1
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_034:
	.byte	W12
	.byte		N11   , En2 , v120
	.byte	W12
	.byte		        An2
	.byte	W12
	.byte		N23   , Gn1
	.byte	W24
	.byte		N11   , Dn2
	.byte	W12
	.byte		        Gn2
	.byte	W12
	.byte		N12   , Dn1
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_035:
	.byte	W12
	.byte		N23   , Dn1 , v120
	.byte	W24
	.byte		N08   , Ds1
	.byte	W24
	.byte		N23
	.byte	W24
	.byte		N11
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_036:
	.byte		N11   , En1 , v120
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		N12   , En1
	.byte	W18
	.byte		N05
	.byte	W06
	.byte		N11   , Dn1
	.byte	W12
	.byte		N12   , En1
	.byte	W24
	.byte		N23   , Cs1
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_037:
	.byte	W12
	.byte		N11   , Cs1 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		        Bn0
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_038:
	.byte	W12
	.byte		N12   , Bn1 , v120
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N05
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_039:
	.byte		N11   , An1 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N17
	.byte	W18
	.byte		N05
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_flapper_girl_8_017
mus_flapper_girl_8_040:
	.byte		N11   , An1 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_041:
	.byte		N11   , Bn1 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		PEND
mus_flapper_girl_8_042:
	.byte		N11   , As1 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N17
	.byte	W18
	.byte		N05
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_flapper_girl_8_017
	.byte	PATT
	 .word	mus_flapper_girl_8_040
mus_flapper_girl_8_043:
	.byte	W24
	.byte		N12   , Fs1 , v120
	.byte	W48
	.byte		N12
	.byte	W24
	.byte		PEND
mus_flapper_girl_8_044:
	.byte		N11   , Fs2 , v120
	.byte	W12
	.byte		        En2
	.byte	W12
	.byte		        Dn2
	.byte	W12
	.byte		N10   , Cs2
	.byte	W24
	.byte		N11   , Bn1
	.byte	W12
	.byte		N23   , An1
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_flapper_girl_8_001
	.byte	PATT
	 .word	mus_flapper_girl_8_002
	.byte	PATT
	 .word	mus_flapper_girl_8_003
	.byte	PATT
	 .word	mus_flapper_girl_8_004
	.byte	PATT
	 .word	mus_flapper_girl_8_005
	.byte	PATT
	 .word	mus_flapper_girl_8_006
	.byte	PATT
	 .word	mus_flapper_girl_8_007
	.byte	PATT
	 .word	mus_flapper_girl_8_008
	.byte	PATT
	 .word	mus_flapper_girl_8_009
	.byte	PATT
	 .word	mus_flapper_girl_8_010
	.byte	PATT
	 .word	mus_flapper_girl_8_011
	.byte	PATT
	 .word	mus_flapper_girl_8_012
	.byte	PATT
	 .word	mus_flapper_girl_8_013
	.byte	PATT
	 .word	mus_flapper_girl_8_014
	.byte	PATT
	 .word	mus_flapper_girl_8_015
	.byte	PATT
	 .word	mus_flapper_girl_8_016
	.byte	PATT
	 .word	mus_flapper_girl_8_017
	.byte	PATT
	 .word	mus_flapper_girl_8_018
	.byte	PATT
	 .word	mus_flapper_girl_8_019
	.byte	PATT
	 .word	mus_flapper_girl_8_020
	.byte	PATT
	 .word	mus_flapper_girl_8_021
	.byte	PATT
	 .word	mus_flapper_girl_8_022
	.byte	PATT
	 .word	mus_flapper_girl_8_023
	.byte	PATT
	 .word	mus_flapper_girl_8_024
	.byte	PATT
	 .word	mus_flapper_girl_8_025
	.byte	PATT
	 .word	mus_flapper_girl_8_026
	.byte	PATT
	 .word	mus_flapper_girl_8_027
	.byte	PATT
	 .word	mus_flapper_girl_8_028
	.byte		N11   , Cn2 , v120
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		N17   , Cn2
	.byte	W18
	.byte		N05   , Gn1
	.byte	W06
	.byte		N11   , Bn1
	.byte	W12
	.byte		N12   , Cn2
	.byte	W24
	.byte		N23   , Bn1
	.byte	W12
	.byte	PATT
	 .word	mus_flapper_girl_8_029
	.byte	PATT
	 .word	mus_flapper_girl_8_030
	.byte	PATT
	 .word	mus_flapper_girl_8_031
	.byte	PATT
	 .word	mus_flapper_girl_8_032
	.byte	PATT
	 .word	mus_flapper_girl_8_033
	.byte	PATT
	 .word	mus_flapper_girl_8_034
	.byte	PATT
	 .word	mus_flapper_girl_8_035
	.byte	PATT
	 .word	mus_flapper_girl_8_036
	.byte	PATT
	 .word	mus_flapper_girl_8_037
	.byte	PATT
	 .word	mus_flapper_girl_8_038
	.byte	PATT
	 .word	mus_flapper_girl_8_039
	.byte	PATT
	 .word	mus_flapper_girl_8_017
	.byte	PATT
	 .word	mus_flapper_girl_8_040
	.byte	PATT
	 .word	mus_flapper_girl_8_041
	.byte	PATT
	 .word	mus_flapper_girl_8_042
	.byte	PATT
	 .word	mus_flapper_girl_8_017
	.byte	PATT
	 .word	mus_flapper_girl_8_040
	.byte	PATT
	 .word	mus_flapper_girl_8_043
	.byte	PATT
	 .word	mus_flapper_girl_8_044
	.byte	GOTO
	 .word	mus_flapper_girl_8_000
	.byte		FINE

@**************** Track 9 ****************@

mus_flapper_girl_9:
	.byte		KEYSH , mus_flapper_girl_key+0
	.byte		VOICE , 81
	.byte		BENDR , 12
	.byte		VOL   , 44*mus_flapper_girl_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		BEND  , c_v+0
	.byte	W11
	.byte	W48
mus_flapper_girl_9_000:
	.byte		MOD   , 2
	.byte		N56   , Bn3 , v076
	.byte	W60
	.byte		N12   , An3
	.byte	W12
	.byte		        As3
	.byte	W12
	.byte		TIE   , Bn3
	.byte	W12
	.byte	W92
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		N56   , An3
	.byte	W60
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N80   , As3
	.byte	W12
	.byte	W72
	.byte		N11   , As3 , v032
	.byte	W12
	.byte		N22   , Fs3 , v076
	.byte	W12
	.byte	W12
	.byte		N02   , Bn2 , v096
	.byte	W02
	.byte		        Cs3 , v100
	.byte	W02
	.byte		N01   , Dn3
	.byte	W02
	.byte		        En3 , v104
	.byte	W01
	.byte		        Fs3
	.byte	W02
	.byte		        Gn3 , v108
	.byte	W01
	.byte		        An3
	.byte	W02
	.byte		N12   , Bn3 , v112
	.byte	W12
	.byte		N11   , Bn3 , v040
	.byte	W12
	.byte		N10   , Bn3 , v076
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		N11   , An3 , v032
	.byte	W12
	.byte		N22   , Bn3 , v076
	.byte	W12
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N11   , Bn3 , v032
	.byte	W12
	.byte		N10   , Bn3 , v076
	.byte	W12
	.byte		N11   , Bn3 , v032
	.byte	W12
	.byte		N04   , Bn3 , v076
	.byte	W06
	.byte		N05   , Bn3 , v032
	.byte	W06
	.byte		N32   , Cs4 , v076
	.byte	W12
	.byte	W24
	.byte		N11   , Cs4 , v032
	.byte	W72
	.byte	W96
	.byte		N92   , Bn2 , v088
	.byte	W96
	.byte		N22   , Gn3
	.byte	W24
	.byte		        An3
	.byte	W24
	.byte		        Bn3
	.byte	W24
	.byte		        Gn3
	.byte	W24
	.byte		N92   , An3
	.byte	W96
	.byte		N44
	.byte	W48
	.byte		        En4
	.byte	W48
	.byte		N56   , Dn4
	.byte	W60
	.byte		N10   , Cs4
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		N36   , Gn3
	.byte	W42
	.byte		N05   , Gn3 , v040
	.byte	W06
	.byte		N36   , Dn4 , v088
	.byte	W42
	.byte		N05   , Dn4 , v040
	.byte	W06
	.byte		N36   , Cs4 , v088
	.byte	W42
	.byte		N05   , Cs4 , v040
	.byte	W06
	.byte		N36   , As3 , v088
	.byte	W42
	.byte		N05   , As3 , v040
	.byte	W06
	.byte		N92   , Bn3 , v088
	.byte	W96
	.byte		N92
	.byte	W96
	.byte		        An3
	.byte	W96
	.byte		        Bn3
	.byte	W96
	.byte		N22   , Cs4
	.byte	W24
	.byte		        As3
	.byte	W24
	.byte		N44   , Fs3
	.byte	W48
	.byte		N92   , Bn3
	.byte	W96
	.byte		        An3
	.byte	W96
	.byte		N68   , Dn4
	.byte	W72
	.byte		N22   , Cs4
	.byte	W24
	.byte		N92   , Cn4
	.byte	W96
	.byte		        Gn3
	.byte	W96
	.byte		N44
	.byte	W48
	.byte		N24   , Fs3
	.byte	W24
	.byte		N23   , Gn3
	.byte	W24
	.byte		N80   , Fs3
	.byte	W84
	.byte		TIE
	.byte	W12
	.byte	W92
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		N92   , Gn3
	.byte	W96
	.byte		N22
	.byte	W23
	.byte		VOICE , 82
	.byte	W01
	.byte		N08   , Gn4
	.byte	W08
	.byte		        An4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		N11   , Fs4
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		N92   , Cs4
	.byte	W12
	.byte	W84
	.byte		N44
	.byte	W12
	.byte	W36
	.byte		N11   , Cs4 , v040
	.byte	W23
	.byte		VOICE , 81
	.byte	W24
	.byte	W01
	.byte		N23   , Fs3 , v100
	.byte	W12
mus_flapper_girl_9_001:
	.byte	W12
	.byte		N04   , Fs3 , v100
	.byte	W06
	.byte		N05   , Fs3 , v040
	.byte	W06
	.byte		N11   , En3 , v100
	.byte	W12
	.byte		        En3 , v040
	.byte	W12
	.byte		        Fs3 , v100
	.byte	W12
	.byte		        Fs3 , v040
	.byte	W12
	.byte		N04   , Fs3 , v100
	.byte	W06
	.byte		N05   , Fs3 , v040
	.byte	W06
	.byte		N23   , Gn3 , v100
	.byte	W12
	.byte		PEND
mus_flapper_girl_9_002:
	.byte	W12
	.byte		N04   , Gn3 , v100
	.byte	W06
	.byte		N05   , Gn3 , v040
	.byte	W06
	.byte		N11   , Fs3 , v100
	.byte	W12
	.byte		        Fs3 , v040
	.byte	W12
	.byte		        Gn3 , v100
	.byte	W12
	.byte		        Gn3 , v040
	.byte	W12
	.byte		N04   , Gn3 , v100
	.byte	W06
	.byte		N05   , Gn3 , v040
	.byte	W06
	.byte		N23   , Gn3 , v100
	.byte	W12
	.byte		PEND
mus_flapper_girl_9_003:
	.byte	W12
	.byte		N03   , Gn3 , v100
	.byte	W06
	.byte		N05   , Gn3 , v040
	.byte	W06
	.byte		N03   , Gn3 , v100
	.byte	W06
	.byte		N05   , Gn3 , v040
	.byte	W06
	.byte		N23   , Gn3 , v100
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N05   , Gn3 , v040
	.byte	W06
	.byte		N03   , Gn3 , v100
	.byte	W06
	.byte		N05   , Gn3 , v040
	.byte	W06
	.byte		N23   , Fs3 , v100
	.byte	W12
	.byte		PEND
mus_flapper_girl_9_004:
	.byte	W12
	.byte		N11   , Fs3 , v100
	.byte	W12
	.byte		        Fs3 , v040
	.byte	W12
	.byte		N32   , Fs3 , v100
	.byte	W36
	.byte		N11   , Fs3 , v040
	.byte	W24
	.byte		PEND
mus_flapper_girl_9_005:
	.byte		N56   , Gn3 , v100
	.byte	W60
	.byte		N11
	.byte	W12
	.byte		        Gn3 , v040
	.byte	W12
	.byte		N23   , Fs3 , v100
	.byte	W12
	.byte		PEND
mus_flapper_girl_9_006:
	.byte	W12
	.byte		N04   , Fs3 , v100
	.byte	W06
	.byte		N05   , Fs3 , v040
	.byte	W06
	.byte		N11   , Fs3 , v100
	.byte	W12
	.byte		N23   , En3
	.byte	W24
	.byte		N11   , Dn3
	.byte	W12
	.byte		        Dn3 , v040
	.byte	W12
	.byte		N23   , En3 , v100
	.byte	W12
	.byte		PEND
mus_flapper_girl_9_007:
	.byte	W12
	.byte		N11   , En3 , v100
	.byte	W12
	.byte		        En3 , v040
	.byte	W12
	.byte		N23   , Gn3 , v100
	.byte	W24
	.byte		N11
	.byte	W12
	.byte		        Gn3 , v040
	.byte	W12
	.byte		N36   , Fs3 , v100
	.byte	W12
	.byte		PEND
mus_flapper_girl_9_008:
	.byte	W24
	.byte		N11   , Fs3 , v040
	.byte	W12
	.byte		N36   , Fs3 , v100
	.byte	W36
	.byte		N11   , Fs3 , v040
	.byte	W12
	.byte		N23   , Fs3 , v100
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_flapper_girl_9_001
	.byte	PATT
	 .word	mus_flapper_girl_9_002
	.byte	PATT
	 .word	mus_flapper_girl_9_003
mus_flapper_girl_9_009:
	.byte	W12
	.byte		N11   , Fs3 , v100
	.byte	W12
	.byte		        Fs3 , v040
	.byte	W12
	.byte		N56   , An3 , v100
	.byte	W60
	.byte		PEND
mus_flapper_girl_9_010:
	.byte		N80   , Bn3 , v100
	.byte	W84
	.byte		N23   , Cs3
	.byte	W12
	.byte		PEND
mus_flapper_girl_9_011:
	.byte	W12
	.byte		N11   , Cs3 , v100
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N05   , Cs3 , v040
	.byte	W06
	.byte		N11   , Cs3 , v100
	.byte	W12
	.byte		        Cs3 , v040
	.byte	W12
	.byte		        Cs3 , v100
	.byte	W12
	.byte		        Cs3 , v040
	.byte	W12
	.byte		N23   , Fs3 , v100
	.byte	W12
	.byte		PEND
mus_flapper_girl_9_012:
	.byte	W12
	.byte		N04   , Fs3 , v100
	.byte	W06
	.byte		N05   , Fs3 , v040
	.byte	W06
	.byte		N11   , Fs3 , v100
	.byte	W12
	.byte		        Fs3 , v040
	.byte	W12
	.byte		        Fs3 , v100
	.byte	W12
	.byte		        Fs3 , v040
	.byte	W12
	.byte		N04   , Fs3 , v100
	.byte	W06
	.byte		N05   , Fs3 , v040
	.byte	W06
	.byte		N11   , Fs3 , v100
	.byte	W12
	.byte		PEND
mus_flapper_girl_9_013:
	.byte		N11   , Fs3 , v040
	.byte	W12
	.byte		        Fs3 , v100
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Fs3 , v040
	.byte	W12
	.byte		        Fs3 , v100
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Fs3 , v040
	.byte	W12
	.byte		        Fs3 , v100
	.byte	W12
	.byte		PEND
mus_flapper_girl_9_014:
	.byte		N84   , Bn3 , v088
	.byte	W84
	.byte	W03
	.byte		N09   , Bn3 , v040
	.byte	W09
	.byte		PEND
mus_flapper_girl_9_015:
	.byte		N84   , Cs4 , v088
	.byte	W84
	.byte	W03
	.byte		N09   , Cs4 , v040
	.byte	W09
	.byte		PEND
mus_flapper_girl_9_016:
	.byte		N84   , Dn4 , v088
	.byte	W84
	.byte	W03
	.byte		N09   , Dn4 , v040
	.byte	W09
	.byte		PEND
	.byte	PATT
	 .word	mus_flapper_girl_9_015
	.byte	PATT
	 .word	mus_flapper_girl_9_014
	.byte	PATT
	 .word	mus_flapper_girl_9_015
	.byte		TIE   , Cs4 , v088
	.byte	W96
	.byte	W80
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N06   , Dn4 , v120
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		N48   , Fs4
	.byte	W48
	.byte		N12   , En4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        Cs4
	.byte	W12
	.byte		N56   , Bn3
	.byte	W12
	.byte	W48
	.byte		N12
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		N24   , An3
	.byte	W12
	.byte	W12
	.byte		N04   , Bn3
	.byte	W06
	.byte		N05   , Bn3 , v040
	.byte	W06
	.byte		N12   , Cs4 , v120
	.byte	W12
	.byte		N04   , Dn4
	.byte	W06
	.byte		N05   , Dn4 , v040
	.byte	W06
	.byte		N04   , En4 , v120
	.byte	W06
	.byte		N05   , En4 , v040
	.byte	W06
	.byte		N24   , Fs4 , v120
	.byte	W24
	.byte		N48   , Gn4
	.byte	W12
	.byte	W36
	.byte		N24   , An4
	.byte	W24
	.byte		N04   , Bn4
	.byte	W06
	.byte		N05   , Bn4 , v040
	.byte	W06
	.byte		N04   , Cs5 , v120
	.byte	W06
	.byte		N05   , Cs5 , v040
	.byte	W06
	.byte		N03   , Cs5 , v080
	.byte	W03
	.byte		N68   , Dn5 , v120
	.byte	W09
	.byte	W60
	.byte		N12   , Cs5
	.byte	W12
	.byte		N04   , Bn4
	.byte	W04
	.byte		        Cs5 , v100
	.byte	W04
	.byte		        Bn4
	.byte	W04
	.byte		N12   , An4 , v120
	.byte	W12
	.byte		N60   , Gn4
	.byte	W60
	.byte		N04   , Bn4
	.byte	W06
	.byte		N05   , Bn4 , v040
	.byte	W06
	.byte		N04   , Dn5 , v120
	.byte	W06
	.byte		N05   , Dn5 , v060
	.byte	W06
	.byte		N03   , Cs5 , v120
	.byte	W03
	.byte		        Dn5 , v100
	.byte	W03
	.byte		N30   , Cs5 , v120
	.byte	W06
	.byte	W24
	.byte		N19   , Bn4
	.byte	W20
	.byte		N03   , Bn4 , v100
	.byte	W03
	.byte		N24   , As4 , v120
	.byte	W24
	.byte		N16   , Bn4
	.byte	W16
	.byte		N03   , As4 , v100
	.byte	W03
	.byte		N72   , Bn4 , v120
	.byte	W06
	.byte	W66
	.byte		N11   , Bn4 , v040
	.byte	W18
	.byte		VOICE , 82
	.byte	W06
	.byte		BEND  , c_v-11
	.byte		N54   , Bn3 , v120
	.byte	W02
	.byte		BEND  , c_v-10
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte	W02
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v+0
	.byte	W44
	.byte		N11   , Bn3 , v040
	.byte	W12
	.byte		        Bn3 , v120
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N48   , Cs4
	.byte	W12
	.byte	W30
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-11
	.byte	W03
	.byte		N09   , Cs4 , v040
	.byte	W09
	.byte		BEND  , c_v-10
	.byte		N12   , En4 , v120
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N12   , Fs4
	.byte	W12
	.byte		        Gn4
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		N32   , Dn4
	.byte	W05
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-5
	.byte	W28
	.byte		        c_v-5
	.byte		N60
	.byte	W03
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W54
	.byte		N11   , Dn4 , v040
	.byte	W24
	.byte		BEND  , c_v-10
	.byte		N12   , En4 , v120
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N12   , Dn4
	.byte	W12
	.byte		        Cs4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		N06   , Cs4
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		N11   , An3
	.byte	W12
	.byte		BEND  , c_v-10
	.byte		N22   , Bn3
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W21
	.byte		N12
	.byte	W12
	.byte		N48   , En4
	.byte	W42
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-11
	.byte	W03
	.byte		N09   , En4 , v040
	.byte	W09
	.byte	W12
	.byte		BEND  , c_v-10
	.byte		N12   , An3 , v120
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N12   , Bn3
	.byte	W12
	.byte		N11   , Cs4
	.byte	W12
	.byte		BEND  , c_v-10
	.byte		N12   , Dn4
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N05   , Dn4 , v040
	.byte	W06
	.byte		N08   , En4 , v120
	.byte	W12
	.byte		N05   , En4 , v040
	.byte	W06
	.byte		        Fs4 , v120
	.byte	W06
	.byte		        Fs4 , v040
	.byte	W06
	.byte		BEND  , c_v-5
	.byte		N36   , Gn4 , v120
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W32
	.byte	W01
	.byte		N78   , An4
	.byte	W60
	.byte	W10
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-11
	.byte	W02
	.byte		N11   , An4 , v040
	.byte	W18
	.byte		BEND  , c_v-5
	.byte		N10   , Dn4 , v120
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		        c_v-10
	.byte		N11   , Fs4
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N06   , Dn4
	.byte	W09
	.byte		N03   , Dn4 , v040
	.byte	W03
	.byte		BEND  , c_v-5
	.byte		N10   , Gn4 , v120
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N06   , Dn4
	.byte	W09
	.byte		N03   , Dn4 , v040
	.byte	W03
	.byte		BEND  , c_v-10
	.byte		N24   , Bn4 , v120
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W21
	.byte		N10   , Dn4
	.byte	W12
	.byte		N11   , Dn4 , v040
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		N24   , Dn4 , v120
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W21
	.byte		N11   , Cs4
	.byte	W12
	.byte		N24
	.byte	W12
	.byte	W12
	.byte		N23   , Bn3
	.byte	W09
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-11
	.byte	W08
	.byte		        c_v+0
	.byte		N24   , An3
	.byte	W24
	.byte		N11   , An3 , v040
	.byte	W12
	.byte		N12   , Dn4 , v120
	.byte	W12
	.byte		N11   , En4
	.byte	W11
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-10
	.byte		N24   , Fs4
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W21
	.byte		N12   , Gn4
	.byte	W12
	.byte		N24   , Fs4
	.byte	W24
	.byte		        Gn4
	.byte	W24
	.byte		        Fs4
	.byte	W12
	.byte	W12
	.byte		N23   , En4
	.byte	W09
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte	W08
	.byte		        c_v+0
	.byte		N24   , Ds4
	.byte	W24
	.byte	W03
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		N15   , Cn5
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		N15   , Bn4
	.byte	W16
	.byte		N32   , An4
	.byte	W36
	.byte		BEND  , c_v-6
	.byte		N23   , Gn4
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W21
	.byte		N12
	.byte	W12
	.byte		N11   , Fs4
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		N36   , Gn4
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte	W24
	.byte		N11   , An4
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		N36   , Gn4
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W32
	.byte	W01
	.byte		N12   , Fs4
	.byte	W12
	.byte		N24   , Cs4
	.byte	W12
	.byte	W12
	.byte		N12   , Dn4
	.byte	W12
	.byte		N04   , En4
	.byte	W12
	.byte		N23   , Fs4
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N11   , Gn4
	.byte	W12
	.byte		BEND  , c_v-10
	.byte		N24   , Fs4
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte	W12
	.byte		N12   , En4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		N24   , Cs4
	.byte	W10
	.byte		BEND  , c_v-1
	.byte	W03
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v+0
	.byte		N17   , Cs4 , v040
	.byte	W18
	.byte		VOICE , 81
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N23   , Fs3 , v100
	.byte	W12
	.byte	PATT
	 .word	mus_flapper_girl_9_001
	.byte	PATT
	 .word	mus_flapper_girl_9_002
	.byte	PATT
	 .word	mus_flapper_girl_9_003
	.byte	PATT
	 .word	mus_flapper_girl_9_004
	.byte	PATT
	 .word	mus_flapper_girl_9_005
	.byte	PATT
	 .word	mus_flapper_girl_9_006
	.byte	PATT
	 .word	mus_flapper_girl_9_007
	.byte	PATT
	 .word	mus_flapper_girl_9_008
	.byte	PATT
	 .word	mus_flapper_girl_9_001
	.byte	PATT
	 .word	mus_flapper_girl_9_002
	.byte	PATT
	 .word	mus_flapper_girl_9_003
	.byte	PATT
	 .word	mus_flapper_girl_9_009
	.byte	PATT
	 .word	mus_flapper_girl_9_010
	.byte	PATT
	 .word	mus_flapper_girl_9_011
	.byte	PATT
	 .word	mus_flapper_girl_9_012
	.byte	PATT
	 .word	mus_flapper_girl_9_013
	.byte	PATT
	 .word	mus_flapper_girl_9_014
	.byte	PATT
	 .word	mus_flapper_girl_9_015
	.byte	PATT
	 .word	mus_flapper_girl_9_016
	.byte	PATT
	 .word	mus_flapper_girl_9_015
	.byte	PATT
	 .word	mus_flapper_girl_9_014
	.byte	PATT
	 .word	mus_flapper_girl_9_015
	.byte		TIE   , Cs4 , v088
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte	GOTO
	 .word	mus_flapper_girl_9_000
	.byte		FINE

@**************** Track 10 ****************@

mus_flapper_girl_10:
	.byte		KEYSH , mus_flapper_girl_key+0
	.byte		VOICE , 86
	.byte		BENDR , 12
	.byte		VOL   , 44*mus_flapper_girl_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+63
	.byte		BEND  , c_v+0
	.byte	W11
	.byte	W48
mus_flapper_girl_10_000:
	.byte		MOD   , 2
	.byte		N56   , Dn3 , v068
	.byte	W60
	.byte		N12
	.byte	W12
	.byte		        Ds3
	.byte	W12
	.byte		N80   , En3
	.byte	W12
	.byte	W72
	.byte		N22   , Gn3
	.byte	W24
	.byte		N56   , En3
	.byte	W60
	.byte		N10   , Cs3
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N80
	.byte	W12
	.byte	W72
	.byte		N11   , Dn3 , v032
	.byte	W12
	.byte		N22   , Dn3 , v068
	.byte	W12
	.byte	W12
	.byte		N02   , Fs2 , v088
	.byte	W02
	.byte		        Gn2
	.byte	W02
	.byte		N01   , An2 , v092
	.byte	W02
	.byte		        Bn2
	.byte	W01
	.byte		        Cs3 , v096
	.byte	W02
	.byte		        Dn3
	.byte	W01
	.byte		        En3 , v100
	.byte	W02
	.byte		N12   , Fs3
	.byte	W12
	.byte		N11   , Fs3 , v032
	.byte	W12
	.byte		N10   , Fs3 , v068
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		N11   , En3 , v032
	.byte	W12
	.byte		N22   , Gn3 , v076
	.byte	W12
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		N04   , Gn3
	.byte	W06
	.byte		N05   , Gn3 , v032
	.byte	W06
	.byte		N32   , Bn3 , v068
	.byte	W12
	.byte	W24
	.byte		N11   , Bn3 , v032
	.byte	W72
	.byte	W96
	.byte		N92   , Fs2 , v076
	.byte	W96
	.byte		        En3
	.byte	W96
	.byte		N92
	.byte	W96
	.byte		N44   , Dn3
	.byte	W48
	.byte		        Cs4
	.byte	W48
	.byte		N92   , Fs3
	.byte	W96
	.byte		N36   , En3
	.byte	W42
	.byte		N05   , En3 , v040
	.byte	W06
	.byte		N36   , Bn3 , v076
	.byte	W42
	.byte		N05   , Bn3 , v040
	.byte	W06
	.byte		N36   , An3 , v076
	.byte	W42
	.byte		N05   , An3 , v040
	.byte	W06
	.byte		N36   , Cs3 , v076
	.byte	W42
	.byte		N05   , Cs3 , v040
	.byte	W06
	.byte		N92   , Fs3 , v076
	.byte	W96
	.byte		        Gn3
	.byte	W96
	.byte		        En3
	.byte	W96
	.byte		        Fs3
	.byte	W96
	.byte		N44
	.byte	W48
	.byte		        Cs3
	.byte	W48
	.byte		N92   , Gn3
	.byte	W96
	.byte		        En3
	.byte	W96
	.byte		TIE   , An3
	.byte	W96
	.byte	W92
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		N92   , Dn3
	.byte	W96
	.byte		        En3
	.byte	W96
	.byte		N80   , Dn3
	.byte	W84
	.byte		TIE   , Ds3
	.byte	W12
	.byte	W92
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		N92   , En3
	.byte	W96
	.byte		N22   , Dn3
	.byte	W23
	.byte		VOICE , 87
	.byte	W01
	.byte		N08   , Bn3 , v068
	.byte	W08
	.byte		        Dn4
	.byte	W08
	.byte		N07   , Bn3
	.byte	W07
	.byte		VOICE , 86
	.byte	W01
	.byte		N44   , Dn3 , v076
	.byte	W48
	.byte		N80   , Gn3
	.byte	W84
	.byte		N44   , Fs3
	.byte	W12
	.byte	W36
	.byte		N07
	.byte	W48
	.byte		N23   , Dn3 , v092
	.byte	W12
mus_flapper_girl_10_001:
	.byte	W12
	.byte		N04   , Dn3 , v092
	.byte	W06
	.byte		N05   , Dn3 , v040
	.byte	W06
	.byte		N11   , Cs3 , v092
	.byte	W12
	.byte		        Cs3 , v040
	.byte	W12
	.byte		        Dn3 , v092
	.byte	W12
	.byte		        Dn3 , v040
	.byte	W12
	.byte		N04   , Dn3 , v092
	.byte	W06
	.byte		N05   , Dn3 , v040
	.byte	W06
	.byte		N23   , Dn3 , v092
	.byte	W12
	.byte		PEND
mus_flapper_girl_10_002:
	.byte	W12
	.byte		N04   , Dn3 , v092
	.byte	W06
	.byte		N05   , Dn3 , v040
	.byte	W06
	.byte		N11   , Cs3 , v092
	.byte	W12
	.byte		        Cs3 , v040
	.byte	W12
	.byte		        Dn3 , v092
	.byte	W12
	.byte		        Dn3 , v040
	.byte	W12
	.byte		N04   , Dn3 , v092
	.byte	W06
	.byte		N05   , Dn3 , v040
	.byte	W06
	.byte		N23   , Cs3 , v092
	.byte	W12
	.byte		PEND
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N05   , Cs3 , v040
	.byte	W06
	.byte		N03   , Cs3 , v092
	.byte	W12
	.byte		N23   , En3
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N05   , En3 , v040
	.byte	W06
	.byte		N03   , En3 , v092
	.byte	W06
	.byte		N05   , En3 , v040
	.byte	W06
	.byte		N23   , Dn3 , v092
	.byte	W12
mus_flapper_girl_10_003:
	.byte	W12
	.byte		N11   , Dn3 , v092
	.byte	W12
	.byte		        Dn3 , v040
	.byte	W12
	.byte		N32   , Ds3 , v092
	.byte	W36
	.byte		N11   , Ds3 , v040
	.byte	W24
	.byte		PEND
mus_flapper_girl_10_004:
	.byte		N56   , En3 , v092
	.byte	W60
	.byte		N11
	.byte	W12
	.byte		        En3 , v040
	.byte	W12
	.byte		N23   , Dn3 , v092
	.byte	W12
	.byte		PEND
mus_flapper_girl_10_005:
	.byte	W12
	.byte		N04   , Dn3 , v092
	.byte	W06
	.byte		N05   , Dn3 , v040
	.byte	W06
	.byte		N11   , Dn3 , v092
	.byte	W12
	.byte		N23   , Bn2
	.byte	W24
	.byte		N11
	.byte	W12
	.byte		        Bn2 , v040
	.byte	W12
	.byte		N23   , Bn2 , v092
	.byte	W12
	.byte		PEND
mus_flapper_girl_10_006:
	.byte	W12
	.byte		N11   , Bn2 , v092
	.byte	W12
	.byte		        Bn2 , v040
	.byte	W12
	.byte		N23   , Dn3 , v092
	.byte	W24
	.byte		N11
	.byte	W12
	.byte		        Dn3 , v040
	.byte	W12
	.byte		N36   , Cs3 , v092
	.byte	W12
	.byte		PEND
mus_flapper_girl_10_007:
	.byte	W24
	.byte		N11   , Cs3 , v040
	.byte	W12
	.byte		N36   , Cs3 , v092
	.byte	W36
	.byte		N11   , Cs3 , v040
	.byte	W12
	.byte		N23   , Dn3 , v092
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_flapper_girl_10_001
	.byte	PATT
	 .word	mus_flapper_girl_10_002
mus_flapper_girl_10_008:
	.byte	W12
	.byte		N03   , Cs3 , v092
	.byte	W06
	.byte		N05   , Cs3 , v040
	.byte	W06
	.byte		N03   , Cs3 , v092
	.byte	W06
	.byte		N05   , Cs3 , v040
	.byte	W06
	.byte		N23   , En3 , v092
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N05   , En3 , v040
	.byte	W06
	.byte		N03   , En3 , v092
	.byte	W06
	.byte		N05   , En3 , v040
	.byte	W06
	.byte		N23   , Dn3 , v092
	.byte	W12
	.byte		PEND
mus_flapper_girl_10_009:
	.byte	W12
	.byte		N11   , Dn3 , v092
	.byte	W12
	.byte		        Dn3 , v040
	.byte	W12
	.byte		N56   , Fs3 , v092
	.byte	W60
	.byte		PEND
mus_flapper_girl_10_010:
	.byte		N80   , Gn3 , v092
	.byte	W84
	.byte		N23   , As2
	.byte	W12
	.byte		PEND
mus_flapper_girl_10_011:
	.byte	W12
	.byte		N11   , As2 , v092
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N05   , As2 , v040
	.byte	W06
	.byte		N11   , As2 , v092
	.byte	W12
	.byte		        As2 , v040
	.byte	W12
	.byte		        As2 , v092
	.byte	W12
	.byte		        As2 , v040
	.byte	W12
	.byte		N23   , Dn3 , v092
	.byte	W12
	.byte		PEND
mus_flapper_girl_10_012:
	.byte	W12
	.byte		N04   , Dn3 , v092
	.byte	W06
	.byte		N05   , Dn3 , v040
	.byte	W06
	.byte		N11   , Cs3 , v092
	.byte	W12
	.byte		        Cs3 , v040
	.byte	W12
	.byte		        En3 , v092
	.byte	W12
	.byte		        En3 , v040
	.byte	W12
	.byte		N04   , Cs3 , v092
	.byte	W06
	.byte		N05   , Cs3 , v040
	.byte	W06
	.byte		N11   , Dn3 , v092
	.byte	W12
	.byte		PEND
	.byte		        Dn3 , v040
	.byte	W12
	.byte		        Dn3 , v092
	.byte	W12
	.byte		        Cs3
	.byte	W12
	.byte		        Cs3 , v040
	.byte	W12
	.byte		        En3 , v092
	.byte	W12
	.byte		        Cs3
	.byte		N11   , En3 , v040
	.byte	W12
	.byte		        Cs3
	.byte	W12
	.byte		        Dn3 , v092
	.byte	W12
mus_flapper_girl_10_013:
	.byte		N84   , Gn3 , v076
	.byte	W84
	.byte	W03
	.byte		N09   , Gn3 , v040
	.byte	W09
	.byte		PEND
mus_flapper_girl_10_014:
	.byte		N84   , An3 , v076
	.byte	W84
	.byte	W03
	.byte		N09   , An3 , v040
	.byte	W09
	.byte		PEND
mus_flapper_girl_10_015:
	.byte		N84   , Bn3 , v076
	.byte	W84
	.byte	W03
	.byte		N09   , Bn3 , v040
	.byte	W09
	.byte		PEND
mus_flapper_girl_10_016:
	.byte		N84   , As3 , v076
	.byte	W84
	.byte	W03
	.byte		N09   , As3 , v040
	.byte	W09
	.byte		PEND
	.byte	PATT
	 .word	mus_flapper_girl_10_013
	.byte	PATT
	 .word	mus_flapper_girl_10_014
	.byte		N92   , Bn3 , v076
	.byte	W96
	.byte		N80   , As3
	.byte	W96
	.byte		BEND  , c_v+1
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N06   , Dn4 , v052
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		N48   , Fs4
	.byte	W48
	.byte		N12   , En4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        Cs4
	.byte	W09
	.byte	W03
	.byte		N56   , Bn3
	.byte	W60
	.byte		N12
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		        Gn3
	.byte	W09
	.byte	W03
	.byte		N24   , An3
	.byte	W24
	.byte		N04   , Bn3
	.byte	W12
	.byte		N12   , Cs4
	.byte	W12
	.byte		N04   , Dn4
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		N24   , Fs4
	.byte	W21
	.byte	W03
	.byte		N48   , Gn4
	.byte	W48
	.byte		N24   , An4
	.byte	W24
	.byte		N04   , Bn4
	.byte	W12
	.byte		        Cs5
	.byte	W09
	.byte	W03
	.byte		N03   , Cs5 , v028
	.byte	W03
	.byte		N68   , Dn5 , v052
	.byte	W68
	.byte	W01
	.byte		N12   , Cs5
	.byte	W12
	.byte		N04   , Bn4
	.byte	W04
	.byte		        Cs5 , v028
	.byte	W04
	.byte		        Bn4
	.byte	W01
	.byte	W03
	.byte		N12   , An4 , v052
	.byte	W12
	.byte		N60   , Gn4
	.byte	W60
	.byte		N04   , Bn4
	.byte	W12
	.byte		        Dn5
	.byte	W09
	.byte	W03
	.byte		N03   , Cs5
	.byte	W03
	.byte		        Dn5 , v028
	.byte	W03
	.byte		N30   , Cs5 , v052
	.byte	W30
	.byte		N19   , Bn4
	.byte	W20
	.byte		N03   , Bn4 , v028
	.byte	W03
	.byte		N24   , As4 , v052
	.byte	W24
	.byte		N16   , Bn4
	.byte	W10
	.byte	W06
	.byte		N03   , As4 , v028
	.byte	W03
	.byte		N72   , Bn4 , v052
	.byte	W84
	.byte	W03
	.byte	W03
	.byte		VOICE , 87
	.byte	W06
	.byte		BEND  , c_v-10
	.byte		N54   , Bn3
	.byte	W02
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-7
	.byte	W02
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+1
	.byte	W56
	.byte		N11
	.byte	W12
	.byte		N12
	.byte	W09
	.byte	W03
	.byte		N48   , Cs4
	.byte	W42
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-10
	.byte	W12
	.byte		        c_v-9
	.byte		N12   , En4
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v+1
	.byte	W09
	.byte		N12   , Fs4
	.byte	W12
	.byte		        Gn4
	.byte	W09
	.byte	W03
	.byte		        En4
	.byte	W12
	.byte		N32   , Dn4
	.byte	W05
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-4
	.byte	W28
	.byte		        c_v-4
	.byte		N60
	.byte	W03
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+1
	.byte	W36
	.byte	W03
	.byte	W36
	.byte	W03
	.byte		        c_v-9
	.byte		N12   , En4
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v+1
	.byte	W09
	.byte		N12   , Dn4
	.byte	W12
	.byte		        Cs4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		N06   , Cs4
	.byte	W06
	.byte		        Bn3
	.byte	W03
	.byte	W03
	.byte		N11   , An3
	.byte	W12
	.byte		BEND  , c_v-9
	.byte		N22   , Bn3
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v+1
	.byte	W21
	.byte		N12
	.byte	W12
	.byte		N48   , En4
	.byte	W42
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-10
	.byte	W24
	.byte		        c_v-9
	.byte		N12   , An3
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v+1
	.byte	W09
	.byte		N12   , Bn3
	.byte	W12
	.byte		N11   , Cs4
	.byte	W12
	.byte		BEND  , c_v-9
	.byte		N12   , Dn4
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v+1
	.byte	W15
	.byte		N08   , En4
	.byte	W15
	.byte	W03
	.byte		N05   , Fs4
	.byte	W12
	.byte		BEND  , c_v-4
	.byte		N36   , Gn4
	.byte	W01
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+1
	.byte	W32
	.byte	W01
	.byte		N78   , An4
	.byte	W44
	.byte	W01
	.byte	W24
	.byte	W01
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-10
	.byte	W20
	.byte		        c_v-4
	.byte		N10   , Dn4
	.byte	W01
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+1
	.byte	W09
	.byte		        c_v-9
	.byte		N11   , Fs4
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v+1
	.byte	W09
	.byte		N06   , Dn4
	.byte	W12
	.byte		BEND  , c_v-4
	.byte		N10   , Gn4
	.byte	W01
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+1
	.byte	W06
	.byte	W03
	.byte		N06   , Dn4
	.byte	W12
	.byte		BEND  , c_v-9
	.byte		N24   , Bn4
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v+1
	.byte	W21
	.byte		N10   , Dn4
	.byte	W24
	.byte		BEND  , c_v-4
	.byte		N24
	.byte	W01
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+1
	.byte	W21
	.byte		N11   , Cs4
	.byte	W09
	.byte	W03
	.byte		N24
	.byte	W24
	.byte		N23   , Bn3
	.byte	W09
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v-3
	.byte	W02
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-10
	.byte	W08
	.byte		        c_v+1
	.byte		N24   , An3
	.byte	W36
	.byte		N12   , Dn4
	.byte	W09
	.byte	W03
	.byte		N11   , En4
	.byte	W11
	.byte		BEND  , c_v-10
	.byte	W01
	.byte		        c_v-9
	.byte		N24   , Fs4
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v+1
	.byte	W21
	.byte		N12   , Gn4
	.byte	W12
	.byte		N24   , Fs4
	.byte	W24
	.byte		        Gn4
	.byte	W21
	.byte	W03
	.byte		        Fs4
	.byte	W24
	.byte		N23   , En4
	.byte	W09
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-1
	.byte	W02
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W08
	.byte		        c_v+1
	.byte		N24   , Ds4
	.byte	W24
	.byte	W03
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		N15   , Cn5
	.byte	W04
	.byte		BEND  , c_v+1
	.byte	W12
	.byte		N15   , Bn4
	.byte	W01
	.byte	W15
	.byte		N32   , An4
	.byte	W36
	.byte		BEND  , c_v-5
	.byte		N23   , Gn4
	.byte	W03
	.byte		BEND  , c_v+1
	.byte	W21
	.byte		N12
	.byte	W12
	.byte		N11   , Fs4
	.byte	W09
	.byte	W03
	.byte		BEND  , c_v-4
	.byte		N36   , Gn4
	.byte	W01
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+1
	.byte	W32
	.byte	W01
	.byte		N11   , An4
	.byte	W12
	.byte		BEND  , c_v-4
	.byte		N36   , Gn4
	.byte	W01
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+1
	.byte	W32
	.byte	W01
	.byte		N12   , Fs4
	.byte	W09
	.byte	W03
	.byte		N24   , Cs4
	.byte	W24
	.byte		N12   , Dn4
	.byte	W12
	.byte		N04   , En4
	.byte	W12
	.byte		N23   , Fs4
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N11   , Gn4
	.byte	W09
	.byte	W03
	.byte		BEND  , c_v-9
	.byte		N24   , Fs4
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v+1
	.byte	W21
	.byte		N12   , En4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		N24   , Cs4
	.byte	W10
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		        c_v-1
	.byte	W02
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v+1
	.byte	W03
	.byte		VOICE , 86
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		BEND  , c_v+0
	.byte		N23   , Dn3 , v092
	.byte	W12
	.byte	PATT
	 .word	mus_flapper_girl_10_001
	.byte	W12
	.byte		N04   , Dn3 , v092
	.byte	W06
	.byte		N05   , Dn3 , v040
	.byte	W06
	.byte		N11   , Cs3 , v092
	.byte	W12
	.byte		        Dn3 , v040
	.byte	W12
	.byte		        Dn3 , v092
	.byte	W12
	.byte		        Dn3 , v040
	.byte	W12
	.byte		N04   , Dn3 , v092
	.byte	W06
	.byte		N05   , Dn3 , v040
	.byte	W06
	.byte		N23   , Cs3 , v092
	.byte	W12
	.byte	PATT
	 .word	mus_flapper_girl_10_008
	.byte	PATT
	 .word	mus_flapper_girl_10_003
	.byte	PATT
	 .word	mus_flapper_girl_10_004
	.byte	PATT
	 .word	mus_flapper_girl_10_005
	.byte	PATT
	 .word	mus_flapper_girl_10_006
	.byte	PATT
	 .word	mus_flapper_girl_10_007
	.byte	PATT
	 .word	mus_flapper_girl_10_001
	.byte	PATT
	 .word	mus_flapper_girl_10_002
	.byte	PATT
	 .word	mus_flapper_girl_10_008
	.byte	PATT
	 .word	mus_flapper_girl_10_009
	.byte	PATT
	 .word	mus_flapper_girl_10_010
	.byte	PATT
	 .word	mus_flapper_girl_10_011
	.byte	PATT
	 .word	mus_flapper_girl_10_012
	.byte		N11   , Dn3 , v040
	.byte	W12
	.byte		        Dn3 , v092
	.byte	W12
	.byte		        Cs3
	.byte	W12
	.byte		        Cs3 , v040
	.byte	W12
	.byte		        En3 , v092
	.byte	W12
	.byte		        Cs3
	.byte	W12
	.byte		        Cs3 , v040
	.byte	W12
	.byte		        Dn3 , v092
	.byte	W12
	.byte	PATT
	 .word	mus_flapper_girl_10_013
	.byte	PATT
	 .word	mus_flapper_girl_10_014
	.byte	PATT
	 .word	mus_flapper_girl_10_015
	.byte	PATT
	 .word	mus_flapper_girl_10_016
	.byte	PATT
	 .word	mus_flapper_girl_10_013
	.byte	PATT
	 .word	mus_flapper_girl_10_014
	.byte		N92   , Bn3 , v076
	.byte	W96
	.byte		        As3
	.byte	W96
	.byte	GOTO
	 .word	mus_flapper_girl_10_000
	.byte		FINE

@**************** Track 11 ****************@

mus_flapper_girl_11:
	.byte		KEYSH , mus_flapper_girl_key+0
	.byte		VOL   , 55*mus_flapper_girl_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W11
	.byte		VOICE , 120
	.byte		N03   , Cn4 , v004
	.byte	W03
	.byte		        Cn4 , v012
	.byte	W03
	.byte		        Cs4 , v020
	.byte	W03
	.byte		        Cs4 , v028
	.byte	W03
	.byte		        Dn4 , v036
	.byte	W03
	.byte		        Dn4 , v040
	.byte	W03
	.byte		        Ds4 , v048
	.byte	W03
	.byte		        Ds4 , v056
	.byte	W03
	.byte		        En4 , v064
	.byte	W03
	.byte		        En4 , v072
	.byte	W03
	.byte		        Fn4 , v080
	.byte	W03
	.byte		        Fn4 , v088
	.byte	W03
	.byte		        Fs4 , v092
	.byte	W03
	.byte		        Fs4 , v100
	.byte	W03
	.byte		        Gn4 , v108
	.byte	W03
	.byte		        Gn4 , v112
	.byte	W02
	.byte		VOICE , 122
	.byte	W01
mus_flapper_girl_11_000:
	.byte		N32   , Cn8 , v127
	.byte	W60
	.byte		N23   , Cn8 , v100
	.byte	W24
	.byte		N32
	.byte	W12
	.byte	W96
	.byte		N32
	.byte	W84
	.byte		        Cs8 , v127
	.byte	W12
	.byte	W24
	.byte		N23
	.byte	W24
	.byte		N32
	.byte	W36
	.byte		        Cn8 , v100
	.byte	W12
	.byte	W24
	.byte		N23
	.byte	W23
	.byte		VOICE , 123
	.byte	W01
	.byte		N23   , As7 , v052
	.byte	W24
	.byte		N23
	.byte	W24
	.byte	W24
	.byte		N23
	.byte	W24
	.byte		N23
	.byte	W24
	.byte		N11
	.byte	W12
	.byte		N32   , Cn8 , v100
	.byte	W12
	.byte	W23
	.byte		VOICE , 123
	.byte	W01
	.byte		N23   , As7 , v052
	.byte	W24
	.byte		N23
	.byte	W24
	.byte		N11
	.byte	W11
	.byte		VOICE , 122
	.byte	W01
	.byte		N32   , Cn8 , v100
	.byte	W12
	.byte	W36
	.byte		N32
	.byte	W60
mus_flapper_girl_11_001:
	.byte		N23   , Cn8 , v100
	.byte	W23
	.byte		VOICE , 123
	.byte	W01
	.byte		N23   , As7 , v052
	.byte	W24
	.byte		N23
	.byte	W24
	.byte		N23
	.byte	W24
	.byte		PEND
mus_flapper_girl_11_002:
	.byte		N23   , As7 , v052
	.byte	W24
	.byte		N23
	.byte	W24
	.byte		N23
	.byte	W24
	.byte		N23
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_flapper_girl_11_002
	.byte	PATT
	 .word	mus_flapper_girl_11_002
	.byte	PATT
	 .word	mus_flapper_girl_11_002
	.byte	PATT
	 .word	mus_flapper_girl_11_002
	.byte	PATT
	 .word	mus_flapper_girl_11_002
mus_flapper_girl_11_003:
	.byte		N23   , As7 , v052
	.byte	W23
	.byte		VOICE , 122
	.byte	W01
	.byte		N23   , Cn8 , v100
	.byte	W23
	.byte		VOICE , 123
	.byte	W01
	.byte		N23   , As7 , v052
	.byte	W44
	.byte	W03
	.byte		VOICE , 122
	.byte	W01
	.byte		PEND
mus_flapper_girl_11_004:
	.byte		N23   , Cn8 , v100
	.byte	W23
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , As7 , v052
	.byte	W12
	.byte		        As7 , v036
	.byte	W12
	.byte		        As7 , v052
	.byte	W12
	.byte		        As7 , v036
	.byte	W12
	.byte		        As7 , v052
	.byte	W12
	.byte		        As7 , v036
	.byte	W12
	.byte		PEND
mus_flapper_girl_11_005:
	.byte		N11   , As7 , v052
	.byte	W12
	.byte		        As7 , v036
	.byte	W12
	.byte		        As7 , v052
	.byte	W12
	.byte		        As7 , v036
	.byte	W12
	.byte		        As7 , v052
	.byte	W12
	.byte		        As7 , v036
	.byte	W12
	.byte		        As7 , v052
	.byte	W12
	.byte		        As7 , v036
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_flapper_girl_11_005
	.byte	PATT
	 .word	mus_flapper_girl_11_005
	.byte	PATT
	 .word	mus_flapper_girl_11_005
	.byte	PATT
	 .word	mus_flapper_girl_11_005
mus_flapper_girl_11_006:
	.byte		N11   , As7 , v052
	.byte	W12
	.byte		        As7 , v036
	.byte	W12
	.byte		        As7 , v052
	.byte	W12
	.byte		        As7 , v036
	.byte	W12
	.byte		        As7 , v052
	.byte	W11
	.byte		VOICE , 122
	.byte	W01
	.byte		N23   , Cn8 , v100
	.byte	W24
	.byte		N23
	.byte	W12
	.byte		PEND
mus_flapper_girl_11_007:
	.byte	W11
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , As7 , v036
	.byte	W12
	.byte		        As7 , v052
	.byte	W12
	.byte		        As7 , v036
	.byte	W12
	.byte		        As7 , v052
	.byte	W12
	.byte		N23   , As7 , v036
	.byte	W32
	.byte	W03
	.byte		VOICE , 122
	.byte	W01
	.byte		PEND
	.byte	PATT
	 .word	mus_flapper_girl_11_001
	.byte	PATT
	 .word	mus_flapper_girl_11_002
	.byte	PATT
	 .word	mus_flapper_girl_11_002
	.byte	PATT
	 .word	mus_flapper_girl_11_002
	.byte	PATT
	 .word	mus_flapper_girl_11_002
	.byte	PATT
	 .word	mus_flapper_girl_11_002
mus_flapper_girl_11_008:
	.byte		N23   , As7 , v052
	.byte	W24
	.byte		N23
	.byte	W24
	.byte		N23
	.byte	W32
	.byte	W03
	.byte		VOICE , 122
	.byte	W01
	.byte		N32   , Cn8 , v100
	.byte	W12
	.byte		PEND
mus_flapper_girl_11_009:
	.byte	W36
	.byte		N32   , Cn8 , v100
	.byte	W48
	.byte		N32
	.byte	W12
	.byte		PEND
mus_flapper_girl_11_010:
	.byte	W24
	.byte		N32   , Cn8 , v100
	.byte	W68
	.byte	W03
	.byte		VOICE , 124
	.byte	W01
	.byte		PEND
mus_flapper_girl_11_011:
	.byte		N09   , An7 , v060
	.byte	W24
	.byte		N09
	.byte	W24
	.byte		N09
	.byte	W24
	.byte		N09
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_flapper_girl_11_011
	.byte	PATT
	 .word	mus_flapper_girl_11_011
	.byte	PATT
	 .word	mus_flapper_girl_11_011
	.byte	PATT
	 .word	mus_flapper_girl_11_011
mus_flapper_girl_11_012:
	.byte		N09   , An7 , v060
	.byte	W24
	.byte		N09
	.byte	W24
	.byte		N09
	.byte	W24
	.byte		N09
	.byte	W11
	.byte		VOICE , 122
	.byte	W01
	.byte		N32   , Cn8 , v100
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_flapper_girl_11_009
	.byte	W24
	.byte		N32   , Cn8 , v100
	.byte	W32
	.byte	W03
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , An7 , v032
	.byte	W06
	.byte		        An7 , v044
	.byte	W06
	.byte		N09   , An7 , v068
	.byte	W12
	.byte		N03   , An7 , v032
	.byte	W06
	.byte		        An7 , v044
	.byte	W06
mus_flapper_girl_11_013:
	.byte		N09   , An7 , v068
	.byte	W12
	.byte		N03   , An7 , v032
	.byte	W06
	.byte		        An7 , v044
	.byte	W06
	.byte		N09   , An7 , v068
	.byte	W12
	.byte		N03   , An7 , v032
	.byte	W06
	.byte		        An7 , v044
	.byte	W06
	.byte		N09   , An7 , v068
	.byte	W12
	.byte		N03   , An7 , v032
	.byte	W06
	.byte		        An7 , v044
	.byte	W06
	.byte		N09   , An7 , v068
	.byte	W12
	.byte		N03   , An7 , v032
	.byte	W06
	.byte		        An7 , v044
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_flapper_girl_11_013
	.byte	PATT
	 .word	mus_flapper_girl_11_013
	.byte	PATT
	 .word	mus_flapper_girl_11_013
	.byte	PATT
	 .word	mus_flapper_girl_11_013
	.byte		N09   , An7 , v068
	.byte	W12
	.byte		N03   , An7 , v032
	.byte	W06
	.byte		        An7 , v044
	.byte	W06
	.byte		N09   , An7 , v068
	.byte	W12
	.byte		N03   , An7 , v032
	.byte	W06
	.byte		        An7 , v044
	.byte	W06
	.byte		N09   , An7 , v068
	.byte	W12
	.byte		N03   , An7 , v032
	.byte	W06
	.byte		        An7 , v044
	.byte	W06
	.byte		N09   , An7 , v068
	.byte	W11
	.byte		VOICE , 122
	.byte	W01
	.byte		N23   , Cn8 , v100
	.byte	W12
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , An7 , v032
	.byte	W06
	.byte		        An7 , v044
	.byte	W06
	.byte		N09   , An7 , v068
	.byte	W12
	.byte		        An7 , v036
	.byte	W56
	.byte	W03
	.byte		VOICE , 122
	.byte	W01
mus_flapper_girl_11_014:
	.byte		N23   , Cn8 , v100
	.byte	W23
	.byte		VOICE , 124
	.byte	W01
	.byte		N09   , An7 , v060
	.byte	W24
	.byte		N09
	.byte	W24
	.byte		N09
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_flapper_girl_11_011
	.byte	PATT
	 .word	mus_flapper_girl_11_011
	.byte	PATT
	 .word	mus_flapper_girl_11_011
	.byte	PATT
	 .word	mus_flapper_girl_11_011
	.byte	PATT
	 .word	mus_flapper_girl_11_011
	.byte		N09   , An7 , v060
	.byte	W23
	.byte		VOICE , 122
	.byte	W01
	.byte		N23   , Cn8 , v100
	.byte	W48
	.byte		N23
	.byte	W24
	.byte	W24
	.byte		N23
	.byte	W72
	.byte	PATT
	 .word	mus_flapper_girl_11_001
	.byte	PATT
	 .word	mus_flapper_girl_11_002
	.byte	PATT
	 .word	mus_flapper_girl_11_002
	.byte	PATT
	 .word	mus_flapper_girl_11_002
	.byte	PATT
	 .word	mus_flapper_girl_11_002
	.byte	PATT
	 .word	mus_flapper_girl_11_002
	.byte	PATT
	 .word	mus_flapper_girl_11_002
	.byte	PATT
	 .word	mus_flapper_girl_11_003
	.byte	PATT
	 .word	mus_flapper_girl_11_004
	.byte	PATT
	 .word	mus_flapper_girl_11_005
	.byte	PATT
	 .word	mus_flapper_girl_11_005
	.byte	PATT
	 .word	mus_flapper_girl_11_005
	.byte	PATT
	 .word	mus_flapper_girl_11_005
	.byte	PATT
	 .word	mus_flapper_girl_11_005
	.byte	PATT
	 .word	mus_flapper_girl_11_006
	.byte	PATT
	 .word	mus_flapper_girl_11_007
	.byte	PATT
	 .word	mus_flapper_girl_11_001
	.byte	PATT
	 .word	mus_flapper_girl_11_002
	.byte	PATT
	 .word	mus_flapper_girl_11_002
	.byte	PATT
	 .word	mus_flapper_girl_11_002
	.byte	PATT
	 .word	mus_flapper_girl_11_002
	.byte	PATT
	 .word	mus_flapper_girl_11_002
	.byte	PATT
	 .word	mus_flapper_girl_11_008
	.byte	PATT
	 .word	mus_flapper_girl_11_009
	.byte	PATT
	 .word	mus_flapper_girl_11_010
	.byte	PATT
	 .word	mus_flapper_girl_11_011
	.byte	PATT
	 .word	mus_flapper_girl_11_011
	.byte	PATT
	 .word	mus_flapper_girl_11_011
	.byte	PATT
	 .word	mus_flapper_girl_11_011
	.byte	PATT
	 .word	mus_flapper_girl_11_011
	.byte	PATT
	 .word	mus_flapper_girl_11_012
	.byte	PATT
	 .word	mus_flapper_girl_11_009
	.byte	W24
	.byte		N32   , Cn8 , v100
	.byte	W32
	.byte	W03
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , An7 , v032
	.byte	W06
	.byte		        An7 , v044
	.byte	W06
	.byte		N09   , An7 , v064
	.byte	W12
	.byte		N03   , An7 , v032
	.byte	W06
	.byte		        An7 , v044
	.byte	W06
mus_flapper_girl_11_015:
	.byte		N09   , An7 , v064
	.byte	W12
	.byte		N03   , An7 , v032
	.byte	W06
	.byte		        An7 , v044
	.byte	W06
	.byte		N09   , An7 , v064
	.byte	W12
	.byte		N03   , An7 , v032
	.byte	W06
	.byte		        An7 , v044
	.byte	W06
	.byte		N09   , An7 , v064
	.byte	W12
	.byte		N03   , An7 , v032
	.byte	W06
	.byte		        An7 , v044
	.byte	W06
	.byte		N09   , An7 , v064
	.byte	W12
	.byte		N03   , An7 , v032
	.byte	W06
	.byte		        An7 , v044
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_flapper_girl_11_015
	.byte	PATT
	 .word	mus_flapper_girl_11_015
	.byte	PATT
	 .word	mus_flapper_girl_11_015
	.byte	PATT
	 .word	mus_flapper_girl_11_015
	.byte		N09   , An7 , v064
	.byte	W12
	.byte		N03   , An7 , v032
	.byte	W06
	.byte		        An7 , v044
	.byte	W06
	.byte		N09   , An7 , v064
	.byte	W12
	.byte		N03   , An7 , v032
	.byte	W06
	.byte		        An7 , v044
	.byte	W06
	.byte		N09   , An7 , v064
	.byte	W12
	.byte		N03   , An7 , v032
	.byte	W06
	.byte		        An7 , v044
	.byte	W06
	.byte		N09   , An7 , v064
	.byte	W12
	.byte		N03   , An7 , v072
	.byte	W06
	.byte		        An7 , v044
	.byte	W06
	.byte		N09   , An7 , v064
	.byte	W12
	.byte		N03   , An7 , v032
	.byte	W06
	.byte		        An7 , v044
	.byte	W06
	.byte		N09   , An7 , v064
	.byte	W12
	.byte		N03   , An7 , v036
	.byte	W56
	.byte	W03
	.byte		VOICE , 122
	.byte	W01
	.byte	PATT
	 .word	mus_flapper_girl_11_014
	.byte	PATT
	 .word	mus_flapper_girl_11_011
	.byte	PATT
	 .word	mus_flapper_girl_11_011
	.byte	PATT
	 .word	mus_flapper_girl_11_011
	.byte	PATT
	 .word	mus_flapper_girl_11_011
	.byte		N09   , An7 , v060
	.byte	W24
	.byte		N09
	.byte	W24
	.byte		N09
	.byte	W24
	.byte		N09
	.byte	W23
	.byte		VOICE , 122
	.byte	W01
	.byte		N23   , Cs8 , v127
	.byte	W24
	.byte		N44   , Cn8 , v100
	.byte	W48
	.byte		N44
	.byte	W24
	.byte	W24
	.byte		N44
	.byte	W72
	.byte	GOTO
	 .word	mus_flapper_girl_11_000
	.byte		FINE

@******************************************************@
	.align	2

mus_flapper_girl:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_flapper_girl_pri	@ Priority
	.byte	mus_flapper_girl_rev	@ Reverb.

	.word	mus_flapper_girl_grp

	.word	mus_flapper_girl_1
	.word	mus_flapper_girl_2
	.word	mus_flapper_girl_3
	.word	mus_flapper_girl_4
	.word	mus_flapper_girl_5
	.word	mus_flapper_girl_7
	.word	mus_flapper_girl_8
	.word	mus_flapper_girl_9
	.word	mus_flapper_girl_10
	.word	mus_flapper_girl_11

	.end
