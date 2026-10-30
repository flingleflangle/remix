@ "Trombe!" from Super Robot Taisen: Original Generation (song 0x1E), ported from sound/import.
@ Track numbers match the original. Tracks 2 (10 trumpet notes) and 12 (a quiet doubling layer) were cut to fit Emerald's 10 tracks and 5 sampled channels.
@ Track 11 is shifted down an octave because Emerald's waves repeat twice.
@ Track 5 uses the tuba (slot 58) instead of slot 61, whose Emerald trumpet can't play its low notes.
@ Track 5 also uses the tubular bells (slot 14, like the start of Slateport) instead of the electric piano (slot 100), which sounded harsh on long notes.
@ Track 3 (the trumpet lead) is louder than the original (72 instead of 49) to stand out in the mix.
@ Track 3 plays the trumpet (slot 28, volume 82) in the intro, then the french horn (slot 60, volume 72)
@ from the loop point on. The lead rests from the loop point until the everything-quiet pause at tick 2243-2268. The bells in track 5 are quieter than the original (40 instead of 57).

	.include "MPlayDef.s"

	.equ	mus_trombe_grp, voicegroup_srt_og
	.equ	mus_trombe_pri, 0
	.equ	mus_trombe_rev, reverb_set+48
	.equ	mus_trombe_mvl, 127
	.equ	mus_trombe_key, 0
	.equ	mus_trombe_tbs, 1
	.equ	mus_trombe_exg, 0
	.equ	mus_trombe_cmp, 1

	.section .rodata
	.global	mus_trombe
	.align	2

@**************** Track 1 ****************@

mus_trombe_1:
	.byte		KEYSH , mus_trombe_key+0
	.byte		TEMPO , 240*mus_trombe_tbs/2
	.byte	W01
	.byte		VOICE , 119
	.byte		VOL   , 66*mus_trombe_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W21
	.byte		TEMPO , 150*mus_trombe_tbs/2
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		TEMPO , 170*mus_trombe_tbs/2
	.byte	W96
mus_trombe_1_000:
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		N17   , Dn1 , v108
	.byte	W24
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N17   , Dn1 , v108
	.byte	W24
	.byte		PEND
mus_trombe_1_001:
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		N17   , Dn1 , v108
	.byte	W12
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		N11
	.byte	W12
	.byte		N17   , Dn1 , v108
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_trombe_1_000
	.byte	PATT
	 .word	mus_trombe_1_001
	.byte	PATT
	 .word	mus_trombe_1_000
	.byte	PATT
	 .word	mus_trombe_1_001
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		N17   , Dn1 , v108
	.byte	W24
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N17   , Dn1 , v108
	.byte	W12
	.byte	W36
	.byte		N23   , Cn2 , v120
	.byte	W24
	.byte		N11   , An1
	.byte	W12
	.byte		        Bn0
	.byte		N11   , Fn1
	.byte	W12
	.byte		        Bn0
	.byte		N11   , Dn1 , v108
	.byte	W12
	.byte	PATT
	 .word	mus_trombe_1_000
mus_trombe_1_002:
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W24
	.byte		N11
	.byte	W12
	.byte		N17   , Dn1 , v108
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_trombe_1_000
	.byte	PATT
	 .word	mus_trombe_1_002
	.byte	PATT
	 .word	mus_trombe_1_000
	.byte	PATT
	 .word	mus_trombe_1_002
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		        Bn0
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte	W60
	.byte		N10   , Bn0
	.byte	W10
	.byte		N01   , Dn1 , v088
	.byte	W02
	.byte		N23   , Dn1 , v108
	.byte	W24
mus_trombe_1_003:
	.byte		N11   , Bn0 , v120
	.byte	W36
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N05   , Fs2 , v080
	.byte	W06
	.byte		        Fs2 , v092
	.byte	W06
	.byte		N17   , Fs2 , v100
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_trombe_1_003
	.byte	PATT
	 .word	mus_trombe_1_003
	.byte	PATT
	 .word	mus_trombe_1_003
	.byte	PATT
	 .word	mus_trombe_1_003
	.byte	PATT
	 .word	mus_trombe_1_003
mus_trombe_1_004:
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W24
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		PEND
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte	PATT
	 .word	mus_trombe_1_002
	.byte	PATT
	 .word	mus_trombe_1_002
	.byte	PATT
	 .word	mus_trombe_1_002
	.byte	PATT
	 .word	mus_trombe_1_002
	.byte	PATT
	 .word	mus_trombe_1_002
	.byte	PATT
	 .word	mus_trombe_1_002
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N05   , Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		N17   , Dn1 , v108
	.byte	W12
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte	W68
	.byte	W02
	.byte		N01   , Dn1 , v088
	.byte	W02
	.byte		N11   , Bn0 , v120
	.byte		N23   , Dn1 , v108
	.byte		N17   , An1 , v120
	.byte	W24
mus_trombe_1_005:
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W24
	.byte		N11
	.byte	W12
	.byte		N17   , Dn1 , v108
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_trombe_1_002
	.byte	PATT
	 .word	mus_trombe_1_005
	.byte	PATT
	 .word	mus_trombe_1_002
	.byte	PATT
	 .word	mus_trombe_1_005
	.byte	PATT
	 .word	mus_trombe_1_002
	.byte	PATT
	 .word	mus_trombe_1_005
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W24
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
mus_trombe_1_006:
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W24
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_trombe_1_004
	.byte	PATT
	 .word	mus_trombe_1_006
	.byte	PATT
	 .word	mus_trombe_1_004
	.byte	PATT
	 .word	mus_trombe_1_005
	.byte		N11   , Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W24
	.byte		        Bn1
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		        Bn0
	.byte	W12
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte	W96
	.byte	GOTO
	 .word	mus_trombe_1_000
	.byte		FINE

@**************** Track 3 ****************@

mus_trombe_3:
	.byte		KEYSH , mus_trombe_key+0
	.byte	W01
	.byte		VOICE , 28
	.byte		VOL   , 82*mus_trombe_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		MOD   , 2
	.byte	W20
	.byte		N06   , Bn3 , v120
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		BEND  , c_v-28
	.byte		N80   , Dn4
	.byte	W03
	.byte		BEND  , c_v-24
	.byte	W03
	.byte		        c_v-20
	.byte	W03
	.byte		        c_v-16
	.byte	W03
	.byte		        c_v-12
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v+0
	.byte	W60
	.byte	W03
	.byte		N06   , Cs4
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		N44   , Cs4
	.byte	W48
	.byte		        An3
	.byte	W48
	.byte		N11   , Fs3
	.byte	W12
	.byte		BEND  , c_v-28
	.byte		TIE   , Bn3
	.byte	W03
	.byte		BEND  , c_v-24
	.byte	W03
	.byte		        c_v-20
	.byte	W03
	.byte		        c_v-16
	.byte	W03
	.byte		        c_v-12
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v+0
	.byte	W60
	.byte	W03
	.byte	W23
	.byte		EOT   
	.byte	W13
	.byte		N11   , Cs3 , v092
	.byte		N11   , Fs3 , v120
	.byte	W12
	.byte		N17   , Fs3 , v092
	.byte		N17   , Bn3 , v120
	.byte	W18
	.byte		        En3 , v092
	.byte		N17   , An3 , v120
	.byte	W18
	.byte		N40   , Bn2 , v092
	.byte		N40   , En3 , v120
	.byte	W12
	.byte	W36
	.byte		N11   , Cs3 , v092
	.byte		N11   , Fs3 , v120
	.byte	W12
	.byte		N17   , Fs3 , v092
	.byte		N17   , Bn3 , v120
	.byte	W18
	.byte		        En3 , v092
	.byte		N17   , An3 , v120
	.byte	W18
	.byte		BEND  , c_v-28
	.byte		N92   , An3 , v092
	.byte		N92   , Cs4 , v120
	.byte	W03
	.byte		BEND  , c_v-24
	.byte	W03
	.byte		        c_v-20
	.byte	W03
	.byte		        c_v-16
	.byte	W03
	.byte		        c_v-12
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v+0
	.byte	W72
	.byte	W03
	.byte		N05   , Bn3 , v092
	.byte		N05   , Dn4 , v120
	.byte	W06
	.byte		        Cs4 , v092
	.byte		N05   , En4 , v120
	.byte	W06
	.byte		BEND  , c_v-28
	.byte		N92   , Dn4 , v092
	.byte		N92   , Fs4 , v120
	.byte	W03
	.byte		BEND  , c_v-24
	.byte	W03
	.byte		        c_v-20
	.byte	W03
	.byte		        c_v-16
	.byte	W03
	.byte		        c_v-12
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v+0
	.byte	W72
	.byte	W03
	.byte	W96
mus_trombe_3_000:
	.byte		VOICE , 60
	.byte		VOL   , 72*mus_trombe_mvl/mxv
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
	.byte		N23   , Bn3 , v120
	.byte	W24
	.byte		        An3
	.byte	W24
	.byte		        Fs3
	.byte	W24
	.byte		BEND  , c_v-28
	.byte		N52   , Gn3
	.byte	W03
	.byte		BEND  , c_v-24
	.byte	W03
	.byte		        c_v-20
	.byte	W03
	.byte		        c_v-16
	.byte	W03
	.byte		        c_v-12
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v+0
	.byte	W36
	.byte	W03
	.byte		N11
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		N32   , An3
	.byte	W12
	.byte	W24
	.byte		N11   , Bn3
	.byte	W12
	.byte		N23   , Cs4
	.byte	W24
	.byte		        An3
	.byte	W24
	.byte		N64   , Fs3
	.byte	W12
	.byte	W60
	.byte		N11
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		N64   , Dn3
	.byte	W12
	.byte	W60
	.byte		N11
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		N56   , En3
	.byte	W60
	.byte		N11
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		N32   , Fs3
	.byte	W36
	.byte		        En3
	.byte	W36
	.byte		N23   , Cs3
	.byte	W24
	.byte		N32   , Dn3
	.byte	W36
	.byte		        En3
	.byte	W36
	.byte		N44   , Fs3
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_trombe_3_001:
	.byte	W36
	.byte		N11   , An3 , v116
	.byte	W12
	.byte		N17   , Dn4
	.byte	W18
	.byte		        Cn4
	.byte	W18
	.byte		N32   , Gn3
	.byte	W12
	.byte		PEND
	.byte	W36
	.byte		N11   , An3
	.byte	W12
	.byte		N17   , Dn4
	.byte	W18
	.byte		        Cn4
	.byte	W18
	.byte		N56   , Gn3
	.byte	W12
	.byte	W60
	.byte		N11   , Fn3
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		N23   , An3
	.byte	W24
	.byte		N11   , As3
	.byte	W12
	.byte		N23   , An3
	.byte	W24
	.byte		        Gn3
	.byte	W24
	.byte		N44   , Fn3
	.byte	W12
	.byte	W48
	.byte		N17   , An3 , v080
	.byte		N17   , Dn4 , v112
	.byte	W18
	.byte		        Gn3 , v080
	.byte		N17   , Cn4 , v112
	.byte	W18
	.byte		N44   , Dn3 , v080
	.byte		N44   , Gn3 , v112
	.byte	W12
	.byte	W48
	.byte		N17   , An3 , v080
	.byte		N17   , Dn4 , v112
	.byte	W18
	.byte		        Gn3 , v080
	.byte		N17   , Cn4 , v112
	.byte	W18
	.byte		BEND  , c_v-28
	.byte		N76   , Cn4 , v080
	.byte		N76   , En4 , v112
	.byte	W03
	.byte		BEND  , c_v-24
	.byte	W03
	.byte		        c_v-20
	.byte	W03
	.byte		        c_v-16
	.byte	W03
	.byte		        c_v-12
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v+0
	.byte	W60
	.byte	W03
	.byte		N11
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		N23   , Gn4
	.byte	W24
	.byte		N11   , Fn4
	.byte	W12
	.byte		N23   , Gn4
	.byte	W24
	.byte		        An4
	.byte	W24
	.byte		N32   , En4
	.byte	W12
	.byte	PATT
	 .word	mus_trombe_3_001
	.byte	W36
	.byte		N11   , An3 , v116
	.byte	W12
	.byte		N17   , Dn4
	.byte	W18
	.byte		        Cn4
	.byte	W18
	.byte		BEND  , c_v-28
	.byte		N56   , En4
	.byte	W03
	.byte		BEND  , c_v-24
	.byte	W03
	.byte		        c_v-20
	.byte	W03
	.byte		        c_v-16
	.byte	W03
	.byte		        c_v-12
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v+0
	.byte	W48
	.byte	W03
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		N32   , Gn4
	.byte	W36
	.byte		N11
	.byte	W12
	.byte		N23   , As4
	.byte	W24
	.byte		N11   , An4
	.byte	W12
	.byte		N23   , Gn4
	.byte	W12
	.byte	W12
	.byte		N11   , An4
	.byte	W12
	.byte		N23   , Fn4
	.byte	W24
	.byte		N17   , Cn4 , v096
	.byte		N17   , En4 , v112
	.byte	W18
	.byte		        As3 , v096
	.byte		N17   , Dn4 , v112
	.byte	W18
	.byte		N11   , An3 , v096
	.byte		N11   , Cn4 , v112
	.byte	W12
	.byte		BEND  , c_v-28
	.byte		N56   , As3 , v096
	.byte		N56   , Dn4 , v112
	.byte	W03
	.byte		BEND  , c_v-24
	.byte	W03
	.byte		        c_v-20
	.byte	W03
	.byte		        c_v-16
	.byte	W03
	.byte		        c_v-12
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v+0
	.byte	W36
	.byte	W03
	.byte		N11   , As3 , v096
	.byte		N11   , Dn4 , v112
	.byte	W12
	.byte		        Dn4 , v096
	.byte		N11   , Gn4 , v112
	.byte	W12
	.byte		N44   , Cn4 , v096
	.byte		N44   , En4 , v112
	.byte	W12
	.byte	W36
	.byte		N11   , Cn4 , v096
	.byte		N11   , En4 , v112
	.byte	W12
	.byte		N23   , As3 , v096
	.byte		N23   , Dn4 , v112
	.byte	W24
	.byte		N11   , An3 , v096
	.byte		N11   , Cn4 , v112
	.byte	W12
	.byte		BEND  , c_v-28
	.byte		N92   , As3 , v096
	.byte		TIE   , Dn4 , v112
	.byte	W03
	.byte		BEND  , c_v-24
	.byte	W03
	.byte		        c_v-20
	.byte	W03
	.byte		        c_v-16
	.byte	W03
	.byte		        c_v-12
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v+0
	.byte	W84
	.byte	W02
	.byte		EOT   
	.byte	W01
	.byte	W96
	.byte	GOTO
	 .word	mus_trombe_3_000
	.byte		FINE

@**************** Track 4 ****************@

mus_trombe_4:
	.byte		KEYSH , mus_trombe_key+0
	.byte	W01
	.byte		VOICE , 48
	.byte		VOL   , 55*mus_trombe_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W21
	.byte		N05   , Bn4 , v080
	.byte	W06
	.byte		        Cs5
	.byte	W06
mus_trombe_4_000:
	.byte		N80   , Dn5 , v080
	.byte	W84
	.byte		N05   , Cs5
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		PEND
	.byte		N44   , Cs5
	.byte	W48
	.byte		        An4
	.byte	W48
	.byte		N11   , Fs4
	.byte	W12
	.byte		TIE   , Bn4
	.byte	W84
	.byte	W23
	.byte		EOT   
	.byte	W60
	.byte	W01
	.byte		N05
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte	PATT
	 .word	mus_trombe_4_000
	.byte		N32   , Cs5 , v080
	.byte	W36
	.byte		        An4
	.byte	W36
	.byte		TIE   , Bn4
	.byte	W24
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte	W30
	.byte		VOICE , 61
	.byte		VOL   , 68*mus_trombe_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W04
	.byte		N11   , Fs2 , v120
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		        Cs3
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		        Bn2
	.byte	W12
mus_trombe_4_001:
	.byte		N23   , Fs3 , v120
	.byte	W24
	.byte		N11   , En3
	.byte	W12
	.byte		N68   , Dn3
	.byte	W60
	.byte		PEND
mus_trombe_4_002:
	.byte	W36
	.byte		N11   , Fs2 , v120
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		        Cs3
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		PEND
mus_trombe_4_003:
	.byte		N23   , Fs3 , v120
	.byte	W24
	.byte		N11   , En3
	.byte	W12
	.byte		N92   , Dn3
	.byte	W60
	.byte		PEND
mus_trombe_4_004:
	.byte	W60
	.byte		N11   , Dn3 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N56   , Cs3
	.byte	W12
	.byte		PEND
mus_trombe_4_005:
	.byte	W60
	.byte		N11   , Cs3 , v120
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		PEND
	.byte		N32   , En3
	.byte	W36
	.byte		        Cs3
	.byte	W36
	.byte		N23   , An2
	.byte	W24
	.byte		N56   , Gn2
	.byte	W60
	.byte		N11   , An2
	.byte	W12
	.byte		        Gn2
	.byte	W12
	.byte		        Fs2
	.byte	W12
	.byte	PATT
	 .word	mus_trombe_4_002
	.byte	PATT
	 .word	mus_trombe_4_001
	.byte	PATT
	 .word	mus_trombe_4_002
	.byte	PATT
	 .word	mus_trombe_4_003
	.byte	PATT
	 .word	mus_trombe_4_004
	.byte	PATT
	 .word	mus_trombe_4_005
	.byte		N32   , En3 , v120
	.byte	W36
	.byte		        Dn3
	.byte	W36
	.byte		        Cs3
	.byte	W24
	.byte	W12
	.byte		N11   , Bn2
	.byte	W12
	.byte		N68
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		N23   , Bn3
	.byte	W24
	.byte		        An3
	.byte	W24
	.byte		        Fs3
	.byte	W24
	.byte		N44   , Gn3
	.byte	W60
	.byte		N11
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		N32   , Cs4
	.byte	W12
	.byte	W24
	.byte		N11   , Dn4
	.byte	W12
	.byte		N23   , En4
	.byte	W24
	.byte		        An3
	.byte	W24
	.byte		N32   , Fs4
	.byte	W12
	.byte	W24
	.byte		N11   , Gn4
	.byte	W12
	.byte		N23   , Fs4
	.byte	W24
	.byte		        En4
	.byte	W24
	.byte		N32   , Dn4
	.byte	W12
	.byte	W36
	.byte		N11
	.byte	W12
	.byte		N17   , Cs4
	.byte	W18
	.byte		        Bn3
	.byte	W18
	.byte		N11   , An3
	.byte	W12
	.byte		TIE   , Bn3
	.byte	W96
	.byte	W11
	.byte		EOT   
	.byte	W13
	.byte		N23
	.byte	W24
	.byte		N17
	.byte	W18
	.byte		        Fs4
	.byte	W18
	.byte		N11   , Dn4
	.byte	W12
	.byte		N56   , En4
	.byte	W60
	.byte		N11
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        Cs4
	.byte	W12
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
	 .word	mus_trombe_4_002
	.byte	GOTO
	 .word	mus_trombe_4_001
	.byte		FINE

@**************** Track 5 ****************@

mus_trombe_5:
	.byte		KEYSH , mus_trombe_key+0
	.byte	W01
	.byte		VOICE , 14
	.byte		VOL   , 40*mus_trombe_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W21
	.byte	W12
	.byte		N44   , Fs4 , v112
	.byte	W96
mus_trombe_5_000:
	.byte	W48
	.byte		N23   , Bn4 , v112
	.byte	W24
	.byte		        Cs5
	.byte	W24
	.byte		PEND
	.byte		N44   , Dn5
	.byte	W96
	.byte	W48
	.byte		        Fs5
	.byte	W48
mus_trombe_5_001:
	.byte		N44   , En5 , v112
	.byte	W72
	.byte		N23   , Cs5
	.byte	W24
	.byte		PEND
mus_trombe_5_002:
	.byte		N32   , An4 , v112
	.byte	W36
	.byte		        Fs4
	.byte	W36
	.byte		N44   , Bn4
	.byte	W24
	.byte		PEND
	.byte	W96
	.byte	W96
mus_trombe_5_003:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W90
	.byte		VOICE , 14
	.byte		VOL   , 40*mus_trombe_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W04
	.byte		N44   , Fs4 , v112
	.byte	W96
	.byte	PATT
	 .word	mus_trombe_5_000
	.byte		N44   , Dn5 , v112
	.byte	W96
	.byte	W48
	.byte		        Fs5
	.byte	W48
	.byte	PATT
	 .word	mus_trombe_5_001
	.byte	PATT
	 .word	mus_trombe_5_002
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N32   , Bn4 , v112
	.byte	W36
	.byte		        Cs5
	.byte	W36
	.byte		N44   , Dn5
	.byte	W24
	.byte	W90
	.byte		VOICE , 58
	.byte		VOL   , 49*mus_trombe_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		N92   , En1 , v092
	.byte	W02
	.byte	W92
	.byte	W02
	.byte		        An0
	.byte	W02
	.byte	W92
	.byte	W02
	.byte		        As0
	.byte	W02
	.byte	W92
	.byte	W02
	.byte		N44   , Bn0
	.byte	W02
	.byte	W44
	.byte	W02
	.byte		        An0
	.byte	W48
	.byte		TIE   , Gn0
	.byte	W02
	.byte	W96
	.byte	W90
	.byte		EOT   
	.byte	W04
	.byte		N56   , An0
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
	.byte	W44
	.byte	W02
	.byte		N44   , As0 , v112
	.byte	W48
	.byte		N92   , Cn1
	.byte	W02
	.byte	W92
	.byte	W02
	.byte		        Cs1
	.byte	W02
	.byte	W92
	.byte	W02
	.byte		N44   , Dn1
	.byte	W02
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_trombe_5_003
	.byte		FINE

@**************** Track 6 ****************@

mus_trombe_6:
	.byte		KEYSH , mus_trombe_key+0
	.byte	W01
	.byte		VOICE , 30
	.byte		VOL   , 52*mus_trombe_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W21
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_trombe_6_000:
	.byte	W84
	.byte		N05   , Bn1 , v076
	.byte		N05   , Fs2 , v052
	.byte	W06
	.byte		        Bn1 , v076
	.byte		N05   , Fs2 , v052
	.byte	W06
	.byte		PEND
mus_trombe_6_001:
	.byte		TIE   , Bn1 , v076
	.byte		TIE   , Fs2 , v052
	.byte	W96
	.byte	W80
	.byte	W03
	.byte		EOT   , Bn1
	.byte		        Fs2
	.byte	W01
	.byte		N05   , Gn1 , v076
	.byte		N05   , Dn2 , v052
	.byte	W06
	.byte		        Gn1 , v076
	.byte		N05   , Dn2 , v052
	.byte	W06
	.byte		TIE   , Gn1 , v076
	.byte		TIE   , Dn2 , v052
	.byte	W96
	.byte	W80
	.byte	W03
	.byte		EOT   , Gn1
	.byte		        Dn2
	.byte	W01
	.byte		N05   , An1 , v076
	.byte		N05   , En2 , v052
	.byte	W06
	.byte		        An1 , v076
	.byte		N05   , En2 , v052
	.byte	W06
	.byte		TIE   , An1 , v076
	.byte		TIE   , En2 , v052
	.byte	W96
	.byte	W80
	.byte	W03
	.byte		EOT   , An1
	.byte		        En2
	.byte	W01
	.byte		N05   , Dn2 , v076
	.byte		N05   , An2 , v052
	.byte	W06
	.byte		        Dn2 , v076
	.byte		N05   , An2 , v052
	.byte	W06
	.byte		N56   , Dn2 , v076
	.byte		N56   , An2 , v052
	.byte	W60
	.byte		N11   , Dn1 , v076
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte	W96
	.byte		N05   , Bn1
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		N11   , Fs2 , v068
	.byte		N11   , Cs3 , v052
	.byte	W12
	.byte		N05   , Bn1 , v076
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		N11   , Fs2 , v068
	.byte		N11   , Cs3 , v052
	.byte	W12
	.byte		N05   , Bn1 , v076
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		N11   , Fs2 , v068
	.byte		N11   , Cs3 , v052
	.byte	W12
	.byte		N05   , Bn1 , v076
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		N05   , Gn1
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		N11   , Dn2 , v068
	.byte		N11   , An2 , v052
	.byte	W12
	.byte		N05   , Gn1 , v076
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		N11   , Dn2 , v068
	.byte		N11   , An2 , v052
	.byte	W12
	.byte		N05   , Gn1 , v076
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		N11   , Dn2 , v068
	.byte		N11   , An2 , v052
	.byte	W12
	.byte		N05   , Gn1 , v076
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		N05   , En1
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		N11   , Bn1 , v068
	.byte		N11   , Fs2 , v052
	.byte	W12
	.byte		N05   , En1 , v076
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		N11   , Bn1 , v068
	.byte		N11   , Fs2 , v052
	.byte	W12
	.byte		N05   , En1 , v076
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		N11   , Cs2 , v068
	.byte		N11   , Gs2 , v052
	.byte	W12
	.byte		N05   , Fs1 , v076
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		N11   , Cs2 , v068
	.byte		N11   , Gs2 , v052
	.byte	W12
	.byte		N05   , Fs1 , v076
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		N11   , Fs2 , v068
	.byte		N11   , Cs3 , v052
	.byte	W12
	.byte		N05   , Bn1 , v076
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N92   , En1 , v068
	.byte	W96
	.byte		        An1
	.byte	W96
	.byte		        As1
	.byte	W96
	.byte		N44   , Bn1
	.byte	W48
	.byte		        An1
	.byte	W48
	.byte		TIE   , Gn1
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N56   , An1
	.byte	W60
	.byte		N11   , En1
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte	W84
	.byte		N05   , As1 , v076
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N80
	.byte	W84
	.byte		N05   , Cn2
	.byte		N05   , Gn2 , v052
	.byte	W06
	.byte		        Cn2 , v076
	.byte		N05   , Gn2 , v052
	.byte	W06
	.byte		N80   , Cn2 , v076
	.byte		N80   , Gn2 , v052
	.byte	W84
	.byte		N05   , Dn2 , v076
	.byte		N05   , An2 , v052
	.byte	W06
	.byte		        Dn2 , v076
	.byte		N05   , An2 , v052
	.byte	W06
	.byte		N80   , Dn2 , v076
	.byte		N80   , An2 , v052
	.byte	W84
	.byte		N05   , Cn2 , v076
	.byte		N05   , Gn2 , v052
	.byte	W06
	.byte		        Cn2 , v076
	.byte		N05   , Gn2 , v052
	.byte	W06
	.byte		N80   , Cn2 , v076
	.byte		N44   , Gn2 , v052
	.byte	W84
	.byte		N05   , As1 , v076
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N80
	.byte	W84
	.byte		N05   , Cn2
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N80
	.byte	W84
	.byte		N05   , Fn1
	.byte		N05   , Cn2 , v052
	.byte	W06
	.byte		        Fn1 , v076
	.byte		N05   , Cn2 , v052
	.byte	W06
	.byte		N80   , Fn1 , v076
	.byte		N80   , Cn2 , v052
	.byte	W84
	.byte		N05   , An1 , v076
	.byte		N05   , En2 , v052
	.byte	W06
	.byte		        An1 , v076
	.byte		N05   , En2 , v052
	.byte	W06
	.byte		N80   , An1 , v076
	.byte		N80   , En2 , v052
	.byte	W84
	.byte		N05   , As1 , v076
	.byte	W06
	.byte		N05
	.byte	W06
mus_trombe_6_002:
	.byte		N32   , As1 , v076
	.byte	W36
	.byte		N23
	.byte	W24
	.byte		N11   , Fn1
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		N05   , Dn2
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		PEND
	.byte		N32   , Cn2
	.byte	W36
	.byte		N23
	.byte	W24
	.byte		N11   , Gn1
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N32   , Cs2
	.byte	W36
	.byte		N23
	.byte	W24
	.byte		N11   , An1
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		N05   , En2
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N44   , Dn2
	.byte	W48
	.byte		N32   , Cn2
	.byte	W36
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte	PATT
	 .word	mus_trombe_6_002
	.byte		N32   , Cn2 , v076
	.byte	W36
	.byte		N23
	.byte	W24
	.byte		N11   , Gn1
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte		N68   , Ds2
	.byte	W12
	.byte	W60
	.byte		N11   , Ds1
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte	PATT
	 .word	mus_trombe_6_000
	.byte	GOTO
	 .word	mus_trombe_6_001
	.byte		FINE

@**************** Track 7 ****************@

mus_trombe_7:
	.byte		KEYSH , mus_trombe_key+0
	.byte	W01
	.byte		VOICE , 52
	.byte		VOL   , 55*mus_trombe_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W21
	.byte	W12
	.byte		N92   , Bn2 , v072
	.byte	W96
	.byte		N88   , Cs3
	.byte	W96
	.byte		TIE   , Dn3
	.byte	W96
	.byte	W23
	.byte		EOT   
	.byte	W72
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_trombe_7_000:
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
	.byte	W90
	.byte		VOICE , 52
	.byte		VOL   , 55*mus_trombe_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W04
	.byte		N92   , Gn2 , v056
	.byte		N92   , Bn2 , v072
	.byte	W96
	.byte		        Gn2 , v056
	.byte		N92   , An2 , v072
	.byte	W96
	.byte		        Fs2 , v056
	.byte		N92   , An2 , v072
	.byte	W96
	.byte		N68   , Fs2 , v056
	.byte		N23   , Gn2 , v072
	.byte	W24
	.byte		        An2
	.byte	W24
	.byte		        Bn2
	.byte	W24
	.byte		        Bn2 , v056
	.byte		N23   , Dn3 , v072
	.byte	W24
	.byte		N68   , Gn2 , v056
	.byte		N68   , Bn2 , v072
	.byte	W72
	.byte		N23   , En2 , v056
	.byte		N23   , Gn2 , v072
	.byte	W24
	.byte		N92   , Cs2 , v056
	.byte		N32   , Fs2 , v072
	.byte	W36
	.byte		        Gs2
	.byte	W36
	.byte		N23   , As2
	.byte	W24
	.byte		N32   , Dn2
	.byte	W36
	.byte		        En2
	.byte	W36
	.byte		N44   , Fs2
	.byte	W24
	.byte	W24
	.byte		N68   , An2 , v068
	.byte		N68   , Cn3 , v080
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W78
	.byte		VOICE , 47
	.byte		VOL   , 70*mus_trombe_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W04
	.byte		N05   , As1 , v127
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N23
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N23
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_trombe_7_000
	.byte		FINE

@**************** Track 8 ****************@

mus_trombe_8:
	.byte		KEYSH , mus_trombe_key+0
	.byte	W01
	.byte		VOL   , 66*mus_trombe_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W21
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_trombe_8_000:
	.byte	W92
	.byte	W03
	.byte		VOICE , 122
	.byte	W01
	.byte		PEND
mus_trombe_8_001:
	.byte		N23   , Cn8 , v120
	.byte	W23
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , As7 , v052
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
mus_trombe_8_002:
	.byte		N03   , As7 , v060
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
	.byte	W11
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Bn7 , v056
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		PEND
mus_trombe_8_003:
	.byte		N03   , As7 , v060
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
	 .word	mus_trombe_8_002
	.byte	PATT
	 .word	mus_trombe_8_003
	.byte	PATT
	 .word	mus_trombe_8_002
mus_trombe_8_004:
	.byte		N03   , As7 , v060
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
	.byte	W11
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Bn7 , v056
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_trombe_8_000
	.byte	PATT
	 .word	mus_trombe_8_001
	.byte	PATT
	 .word	mus_trombe_8_002
	.byte	PATT
	 .word	mus_trombe_8_003
	.byte	PATT
	 .word	mus_trombe_8_002
	.byte	PATT
	 .word	mus_trombe_8_003
	.byte	PATT
	 .word	mus_trombe_8_002
	.byte	PATT
	 .word	mus_trombe_8_004
	.byte	PATT
	 .word	mus_trombe_8_000
	.byte	PATT
	 .word	mus_trombe_8_001
	.byte	PATT
	 .word	mus_trombe_8_003
	.byte	PATT
	 .word	mus_trombe_8_003
	.byte	PATT
	 .word	mus_trombe_8_002
	.byte	PATT
	 .word	mus_trombe_8_003
	.byte	PATT
	 .word	mus_trombe_8_002
	.byte		N03   , As7 , v060
	.byte	W12
	.byte		        As7 , v036
	.byte	W11
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Bn7 , v056
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , As7 , v036
	.byte	W12
	.byte		        As7 , v052
	.byte	W11
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Bn7 , v056
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , As7 , v052
	.byte	W12
	.byte		        As7 , v036
	.byte	W12
	.byte		        As7 , v060
	.byte	W11
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Bn7 , v056
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , As7 , v052
	.byte	W12
	.byte		        As7 , v036
	.byte	W12
	.byte		        As7 , v052
	.byte	W12
	.byte		        As7 , v036
	.byte	W12
	.byte		        As7 , v052
	.byte	W11
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Bn7 , v056
	.byte	W11
	.byte		VOICE , 122
	.byte	W01
	.byte	PATT
	 .word	mus_trombe_8_001
	.byte	PATT
	 .word	mus_trombe_8_002
	.byte	PATT
	 .word	mus_trombe_8_003
	.byte	PATT
	 .word	mus_trombe_8_002
	.byte	PATT
	 .word	mus_trombe_8_003
	.byte	PATT
	 .word	mus_trombe_8_002
	.byte	PATT
	 .word	mus_trombe_8_004
	.byte	PATT
	 .word	mus_trombe_8_000
	.byte	PATT
	 .word	mus_trombe_8_001
	.byte	PATT
	 .word	mus_trombe_8_002
	.byte	PATT
	 .word	mus_trombe_8_003
	.byte	PATT
	 .word	mus_trombe_8_002
	.byte	PATT
	 .word	mus_trombe_8_003
	.byte	PATT
	 .word	mus_trombe_8_002
	.byte	PATT
	 .word	mus_trombe_8_003
	.byte		N03   , As7 , v060
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
	.byte	W11
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Bn7 , v056
	.byte	W11
	.byte		VOICE , 122
	.byte	W01
	.byte	PATT
	 .word	mus_trombe_8_001
	.byte	PATT
	 .word	mus_trombe_8_002
	.byte	PATT
	 .word	mus_trombe_8_003
	.byte	PATT
	 .word	mus_trombe_8_002
	.byte	PATT
	 .word	mus_trombe_8_003
	.byte		N03   , As7 , v060
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
	.byte	W11
	.byte		VOICE , 122
	.byte	W01
	.byte		N23   , Cn8 , v120
	.byte	W12
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , As7 , v036
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
	.byte	W11
	.byte		VOICE , 122
	.byte	W01
	.byte		N23   , Cn8 , v120
	.byte	W12
	.byte	W96
	.byte	GOTO
	 .word	mus_trombe_8_001
	.byte		FINE

@**************** Track 9 ****************@

mus_trombe_9:
	.byte		KEYSH , mus_trombe_key+0
	.byte	W01
	.byte		VOICE , 82
	.byte		VOL   , 33*mus_trombe_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		MOD   , 2
	.byte	W20
	.byte	W12
mus_trombe_9_000:
	.byte		N05   , Gn2 , v108
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		PEND
mus_trombe_9_001:
	.byte		N05   , An2 , v108
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte		        En5
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		PEND
	.byte		        Bn2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		        Fs5
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte	PATT
	 .word	mus_trombe_9_001
	.byte	PATT
	 .word	mus_trombe_9_000
	.byte	PATT
	 .word	mus_trombe_9_001
	.byte		PAN   , c_v+63
	.byte		N06   , Cn2 , v108
	.byte	W06
	.byte		        En2
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		        Bn2
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N06   , Cn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        Bn3
	.byte	W05
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N06   , Cn4
	.byte	W06
	.byte		        En4
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N06   , Gn4
	.byte	W06
	.byte		        Bn4
	.byte	W05
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N06   , Cn5
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N06   , En5
	.byte	W05
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N06   , Gn5
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N06   , Gn5 , v080
	.byte	W05
	.byte		PAN   , c_v+0
	.byte	W01
	.byte	W96
mus_trombe_9_002:
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N06   , Fs3 , v080
	.byte	W36
	.byte		N06
	.byte	W36
mus_trombe_9_003:
	.byte	W24
	.byte		N06   , Fs3 , v080
	.byte	W36
	.byte		N06
	.byte	W36
	.byte		PEND
	.byte	PATT
	 .word	mus_trombe_9_003
	.byte	PATT
	 .word	mus_trombe_9_003
mus_trombe_9_004:
	.byte	W24
	.byte		N06   , En3 , v080
	.byte	W36
	.byte		N06
	.byte	W36
	.byte		PEND
	.byte	PATT
	 .word	mus_trombe_9_004
	.byte	W24
	.byte		N06   , Fs3 , v080
	.byte	W36
	.byte		        Dn3
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte	W96
	.byte		TIE
	.byte	W96
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N23   , Dn3
	.byte	W24
	.byte		        En3
	.byte	W24
	.byte		N92   , Fs3
	.byte	W96
	.byte		N44   , Bn3
	.byte	W48
	.byte		        Dn3
	.byte	W48
	.byte		N68   , En3
	.byte	W72
	.byte		N23   , Dn3
	.byte	W24
	.byte		N32   , Cs3
	.byte	W36
	.byte		        Dn3
	.byte	W36
	.byte		N23   , En3
	.byte	W24
	.byte		N56   , Fs3
	.byte	W60
	.byte		N06   , En3
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte	W92
	.byte	W03
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Dn4
	.byte	W12
	.byte		        Bn3
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        Gn3 , v080
	.byte	W06
	.byte		        Bn3 , v056
	.byte	W06
	.byte		        Dn4 , v080
	.byte	W06
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Bn3 , v080
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        Gn3 , v080
	.byte	W06
	.byte		        Bn3 , v056
	.byte	W06
	.byte		        Dn4 , v080
	.byte	W06
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Bn3 , v080
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        Cs4 , v080
	.byte	W06
	.byte		        Bn3 , v056
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		        Gn3 , v080
	.byte	W06
	.byte		        An3 , v056
	.byte	W06
	.byte		        Cs4 , v080
	.byte	W06
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		        Gn3 , v080
	.byte	W06
	.byte		        An3 , v056
	.byte	W06
	.byte		        Cs4 , v080
	.byte	W06
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		        Cs4 , v080
	.byte	W06
	.byte		        An3 , v056
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		        Fs3 , v080
	.byte	W06
	.byte		        An3 , v056
	.byte	W06
	.byte		        Cs4 , v080
	.byte	W06
	.byte		        Fs3 , v056
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		        Fs3 , v080
	.byte	W06
	.byte		        An3 , v056
	.byte	W06
	.byte		        Cs4 , v080
	.byte	W06
	.byte		        Fs3 , v056
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		        Bn3 , v080
	.byte	W06
	.byte		        An3 , v056
	.byte	W06
	.byte		        Gn3 , v080
	.byte	W06
	.byte		        Bn3 , v056
	.byte	W06
	.byte		        Fs3 , v080
	.byte	W06
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Bn3 , v080
	.byte	W06
	.byte		        Fs3 , v056
	.byte	W06
	.byte		        Gn3 , v080
	.byte	W06
	.byte		        Bn3 , v056
	.byte	W06
	.byte		        Fs3 , v080
	.byte	W06
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Bn3 , v080
	.byte	W06
	.byte		        Fs3 , v056
	.byte	W06
	.byte		        Gn3 , v080
	.byte	W06
	.byte		        Bn3 , v056
	.byte	W06
	.byte		        Bn3 , v080
	.byte	W06
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Gn3 , v080
	.byte	W06
	.byte		        Bn3 , v056
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Bn3 , v080
	.byte	W06
	.byte		        En3 , v056
	.byte	W06
	.byte		        Gn3 , v080
	.byte	W06
	.byte		        Bn3 , v056
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Bn3 , v080
	.byte	W06
	.byte		        En3 , v056
	.byte	W06
	.byte		        Gn3 , v080
	.byte	W06
	.byte		        Bn3 , v056
	.byte	W06
	.byte		        Cs4 , v080
	.byte	W06
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        As3 , v080
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		        Fs3 , v080
	.byte	W06
	.byte		        As3 , v056
	.byte	W06
	.byte		        Cs4 , v080
	.byte	W06
	.byte		        Fs3 , v056
	.byte	W06
	.byte		        As3 , v080
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		        Fs3 , v080
	.byte	W06
	.byte		        As3 , v056
	.byte	W06
	.byte		        Cs4 , v080
	.byte	W06
	.byte		        Fs3 , v056
	.byte	W06
	.byte		        As3 , v080
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		        Dn4 , v080
	.byte	W06
	.byte		        As3 , v056
	.byte	W06
	.byte		        Bn3 , v080
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        Fs3 , v080
	.byte	W06
	.byte		        Bn3 , v056
	.byte	W06
	.byte		        En4 , v080
	.byte	W06
	.byte		        Fs3 , v056
	.byte	W06
	.byte		        Cs4 , v080
	.byte	W06
	.byte		        En4 , v056
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		        Fs4 , v080
	.byte	W06
	.byte		        An3 , v056
	.byte	W06
	.byte		        Dn4 , v080
	.byte	W06
	.byte		        Fs4 , v056
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        Fs4 , v080
	.byte	W06
	.byte		        An3 , v056
	.byte	W06
	.byte		        Ds4 , v080
	.byte	W06
	.byte		        Fs4 , v056
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        Ds4 , v056
	.byte	W06
	.byte		        Fs4 , v080
	.byte	W06
	.byte		        An3 , v056
	.byte	W06
	.byte		        Ds4 , v080
	.byte	W06
	.byte		        Fs4 , v056
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        Ds4 , v056
	.byte	W06
	.byte		        Fs4 , v080
	.byte	W06
	.byte		        An3 , v056
	.byte	W06
	.byte		        En4 , v080
	.byte	W06
	.byte		        Fs4 , v056
	.byte	W06
	.byte		        Dn4 , v080
	.byte	W06
	.byte		        En4 , v056
	.byte	W06
	.byte		        Bn3 , v080
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        En4 , v080
	.byte	W06
	.byte		        Bn3 , v056
	.byte	W06
	.byte		        Dn4 , v080
	.byte	W06
	.byte		        En4 , v056
	.byte	W06
	.byte		        Bn3 , v080
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        En4 , v080
	.byte	W06
	.byte		        Bn3 , v056
	.byte	W06
	.byte		        Dn4 , v080
	.byte	W06
	.byte		        En4 , v056
	.byte	W06
	.byte		        En4 , v080
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        Cs4 , v080
	.byte	W06
	.byte		        En4 , v056
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		        En4 , v080
	.byte	W06
	.byte		        An3 , v056
	.byte	W06
	.byte		        Cs4 , v080
	.byte	W06
	.byte		        En4 , v056
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		        En4 , v080
	.byte	W06
	.byte		        An3 , v056
	.byte	W06
	.byte		        Cs4 , v080
	.byte	W06
	.byte		        En4 , v056
	.byte	W06
	.byte		        En4 , v080
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		        Cs4 , v080
	.byte	W06
	.byte		        En4 , v056
	.byte	W06
	.byte		        As3 , v080
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		        En4 , v080
	.byte	W06
	.byte		        As3 , v056
	.byte	W06
	.byte		        Cs4 , v080
	.byte	W06
	.byte		        En4 , v056
	.byte	W06
	.byte		        As3 , v080
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		        Gn4 , v080
	.byte	W06
	.byte		        As3 , v056
	.byte	W06
	.byte		        En4 , v080
	.byte	W06
	.byte		        Gn4 , v056
	.byte	W06
	.byte		        Fs4 , v080
	.byte	W06
	.byte		        En4 , v056
	.byte	W06
	.byte		        Dn4 , v080
	.byte	W06
	.byte		        Fs4 , v056
	.byte	W06
	.byte		        Bn3 , v080
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        Fs4 , v080
	.byte	W06
	.byte		        Bn3 , v056
	.byte	W06
	.byte		        Dn4 , v080
	.byte	W06
	.byte		        Fs4 , v056
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        Fs4 , v080
	.byte	W06
	.byte		        An3 , v056
	.byte	W06
	.byte		        Dn4 , v080
	.byte	W06
	.byte		        Fs4 , v056
	.byte	W06
	.byte		        Fs4 , v080
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        Dn4 , v080
	.byte	W06
	.byte		        Fs4 , v056
	.byte	W06
	.byte		        Bn3 , v080
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        Fs4 , v080
	.byte	W06
	.byte		        Bn3 , v056
	.byte	W06
	.byte		        Dn4 , v080
	.byte	W06
	.byte		        Fs4 , v056
	.byte	W06
	.byte		        Bn3 , v080
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        Fs4 , v080
	.byte	W06
	.byte		        Bn3 , v056
	.byte	W06
	.byte		        Dn4 , v080
	.byte	W06
	.byte		        Fs4 , v056
	.byte	W06
	.byte		        Bn3 , v080
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        Fs4 , v080
	.byte	W06
	.byte		        Bn3 , v056
	.byte	W06
	.byte		        Dn4 , v080
	.byte	W06
	.byte		        Fs4 , v056
	.byte	W06
	.byte		        Bn3 , v080
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        Fs4 , v080
	.byte	W06
	.byte		        Bn3 , v056
	.byte	W06
	.byte		        Dn4 , v080
	.byte	W06
	.byte		        Fs4 , v056
	.byte	W06
	.byte		        Bn3 , v080
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        Fs4 , v080
	.byte	W06
	.byte		        Bn3 , v056
	.byte	W06
	.byte		        En4 , v080
	.byte	W06
	.byte		        Fs4 , v056
	.byte	W06
	.byte		        Cs4 , v080
	.byte	W06
	.byte		        En4 , v056
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		        En4 , v080
	.byte	W06
	.byte		        An3 , v056
	.byte	W06
	.byte		        An4 , v080
	.byte	W06
	.byte		        En4 , v056
	.byte	W06
	.byte		        Cs5 , v080
	.byte	W06
	.byte		        An4 , v056
	.byte	W06
	.byte		        En5 , v080
	.byte	W06
	.byte		        Cs5 , v056
	.byte	W06
	.byte		        An5 , v080
	.byte	W06
	.byte		        En5 , v056
	.byte	W06
	.byte		        Cs5 , v032
	.byte	W06
	.byte		        An5 , v056
	.byte	W06
	.byte		        En5 , v032
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte		        An5
	.byte	W06
	.byte		        En5
	.byte	W12
	.byte		        An5
	.byte	W18
	.byte		N05
	.byte	W32
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte	W12
	.byte		N05   , Dn4 , v080
	.byte	W12
	.byte		        Cn4
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        Cn4 , v056
	.byte	W06
	.byte		        Dn4 , v080
	.byte	W06
	.byte		        An3 , v056
	.byte	W12
	.byte		        Dn4
	.byte	W06
	.byte		        Cn4 , v080
	.byte	W12
	.byte		        An3
	.byte	W06
	.byte		        Cn4 , v056
	.byte	W05
	.byte		PAN   , c_v+63
	.byte	W01
mus_trombe_9_005:
	.byte	W06
	.byte		N05   , An3 , v056
	.byte	W06
	.byte		        Dn4 , v080
	.byte	W12
	.byte		        Cn4
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        Cn4 , v056
	.byte	W06
	.byte		        Dn4 , v080
	.byte	W06
	.byte		        An3 , v056
	.byte	W12
	.byte		        Dn4
	.byte	W06
	.byte		        Cn4 , v080
	.byte	W12
	.byte		        An3
	.byte	W06
	.byte		        Cn4 , v056
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		PEND
mus_trombe_9_006:
	.byte	W06
	.byte		N05   , An3 , v056
	.byte	W06
	.byte		        Dn4 , v080
	.byte	W12
	.byte		        Cn4
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        Cn4 , v056
	.byte	W06
	.byte		        Dn4 , v080
	.byte	W06
	.byte		        An3 , v056
	.byte	W12
	.byte		        Dn4
	.byte	W06
	.byte		        Cn4 , v080
	.byte	W12
	.byte		        An3
	.byte	W06
	.byte		        Cn4 , v056
	.byte	W05
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		PEND
	.byte	PATT
	 .word	mus_trombe_9_005
	.byte	PATT
	 .word	mus_trombe_9_006
	.byte	PATT
	 .word	mus_trombe_9_005
	.byte	PATT
	 .word	mus_trombe_9_006
	.byte	W06
	.byte		N05   , An3 , v056
	.byte	W06
	.byte		        Dn4 , v080
	.byte	W12
	.byte		        Cs4
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		        Dn4 , v080
	.byte	W06
	.byte		        An3 , v056
	.byte	W12
	.byte		        Dn4
	.byte	W06
	.byte		        Cs4 , v080
	.byte	W12
	.byte		        An3
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N05   , Dn3 , v108
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        An2
	.byte	W05
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , Cn3
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Cn5
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gn2
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N05   , Cs3
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Gn2
	.byte	W05
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , Dn3
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        An4
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N05   , Cn5
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gn2
	.byte	W05
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , Dn3
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        An4
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N05   , Dn5
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        An2
	.byte	W05
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , Cn3
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Gn4
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N05   , Cn5
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gn2
	.byte	W05
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N06   , Ds2
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Dn3
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N06   , Ds3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Dn4
	.byte	W05
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N06   , Ds4
	.byte	W06
	.byte		        Gn4
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N06   , As4
	.byte	W06
	.byte		        Dn5
	.byte	W05
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N06   , Ds5
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N06   , Gn5
	.byte	W05
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N06   , As5
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N06   , As5 , v080
	.byte	W05
	.byte		PAN   , c_v+0
	.byte	W01
	.byte	W96
	.byte	GOTO
	 .word	mus_trombe_9_002
	.byte		FINE

@**************** Track 10 ****************@

mus_trombe_10:
	.byte		KEYSH , mus_trombe_key+0
	.byte	W01
	.byte		VOICE , 87
	.byte		VOL   , 33*mus_trombe_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		MOD   , 2
	.byte	W20
	.byte	W12
	.byte		BEND  , c_v-14
	.byte		N92   , Bn3 , v080
	.byte	W03
	.byte		BEND  , c_v-12
	.byte	W03
	.byte		        c_v-10
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v-2
	.byte	W03
	.byte		        c_v+0
	.byte	W72
	.byte	W03
	.byte		        c_v-14
	.byte		N92   , An3
	.byte	W03
	.byte		BEND  , c_v-12
	.byte	W03
	.byte		        c_v-10
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v-2
	.byte	W03
	.byte		        c_v+0
	.byte	W72
	.byte	W03
	.byte		        c_v-14
	.byte		TIE   , Fs3
	.byte	W03
	.byte		BEND  , c_v-12
	.byte	W03
	.byte		        c_v-10
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v-2
	.byte	W03
	.byte		        c_v+0
	.byte	W72
	.byte	W03
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		BEND  , c_v-14
	.byte		N92   , Bn3
	.byte	W06
	.byte		BEND  , c_v-12
	.byte	W06
	.byte		        c_v-10
	.byte	W06
	.byte		        c_v-8
	.byte	W06
	.byte		        c_v-6
	.byte	W06
	.byte		        c_v-4
	.byte	W06
	.byte		        c_v-2
	.byte	W06
	.byte		        c_v+0
	.byte	W54
	.byte		        c_v-14
	.byte		N92   , Cs4
	.byte	W06
	.byte		BEND  , c_v-12
	.byte	W06
	.byte		        c_v-10
	.byte	W06
	.byte		        c_v-8
	.byte	W06
	.byte		        c_v-6
	.byte	W06
	.byte		        c_v-4
	.byte	W06
	.byte		        c_v-2
	.byte	W06
	.byte		        c_v+0
	.byte	W54
	.byte		        c_v-14
	.byte		N92   , Dn4
	.byte	W06
	.byte		BEND  , c_v-12
	.byte	W06
	.byte		        c_v-10
	.byte	W06
	.byte		        c_v-8
	.byte	W06
	.byte		        c_v-6
	.byte	W06
	.byte		        c_v-4
	.byte	W06
	.byte		        c_v-2
	.byte	W06
	.byte		        c_v+0
	.byte	W54
	.byte	W92
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
mus_trombe_10_000:
	.byte	W24
	.byte		N06   , Dn3 , v080
	.byte	W36
	.byte		N06
	.byte	W36
	.byte		PEND
	.byte	PATT
	 .word	mus_trombe_10_000
	.byte	PATT
	 .word	mus_trombe_10_000
	.byte	PATT
	 .word	mus_trombe_10_000
mus_trombe_10_001:
	.byte	W24
	.byte		N06   , Cs3 , v080
	.byte	W36
	.byte		N06
	.byte	W36
	.byte		PEND
	.byte	PATT
	 .word	mus_trombe_10_001
	.byte	W24
	.byte		N06   , Dn3 , v080
	.byte	W36
	.byte		        An2
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		        Cs3
	.byte	W12
	.byte	W96
	.byte		TIE   , Dn3
	.byte	W96
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N23   , Bn2
	.byte	W24
	.byte		        Cs3
	.byte	W24
	.byte		N92   , Dn3
	.byte	W96
	.byte		N44   , Fs3
	.byte	W48
	.byte		        Bn2
	.byte	W48
	.byte		N68   , Cs3
	.byte	W72
	.byte		N23   , Bn2
	.byte	W24
	.byte		N32   , An2
	.byte	W36
	.byte		        Bn2
	.byte	W36
	.byte		N23   , Cs3
	.byte	W24
	.byte		N56   , Dn3
	.byte	W60
	.byte		N06   , Cs3
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte	W92
	.byte	W03
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N92
	.byte	W96
	.byte		        Cs3
	.byte	W96
	.byte		N92
	.byte	W96
	.byte		N23   , Bn2
	.byte	W24
	.byte		        Cs3
	.byte	W24
	.byte		        Dn3
	.byte	W24
	.byte		        Fs3
	.byte	W24
mus_trombe_10_002:
	.byte		N68   , En3 , v080
	.byte	W72
	.byte		N23   , Bn2
	.byte	W24
	.byte		PEND
	.byte		N32   , As2
	.byte	W36
	.byte		        Bn2
	.byte	W36
	.byte		N23   , Cs3
	.byte	W24
	.byte		N32   , Bn2
	.byte	W36
	.byte		        Cs3
	.byte	W36
	.byte		N44   , Dn3
	.byte	W24
	.byte	W24
	.byte		N68   , Ds3
	.byte	W72
	.byte	PATT
	 .word	mus_trombe_10_002
	.byte		N80   , An2 , v080
	.byte	W84
	.byte		N05   , Gs2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		N32   , As2
	.byte	W36
	.byte		N23   , Fs3
	.byte	W24
	.byte		        Cs3
	.byte	W24
	.byte		N44   , Dn3
	.byte	W12
	.byte	W36
	.byte		N11
	.byte	W12
	.byte		N17   , En3
	.byte	W18
	.byte		N28   , Fs3
	.byte	W30
	.byte		TIE   , Gn3
	.byte	W96
	.byte	W23
	.byte		EOT   
	.byte	W01
	.byte		N23
	.byte	W24
	.byte		N17
	.byte	W18
	.byte		        An3
	.byte	W18
	.byte		N11   , Bn3
	.byte	W12
	.byte		N56   , Cs4
	.byte	W60
	.byte		N11
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte	W96
mus_trombe_10_003:
	.byte		BEND  , c_v-14
	.byte		N92   , Dn3 , v080
	.byte	W03
	.byte		BEND  , c_v-12
	.byte	W03
	.byte		        c_v-10
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v-2
	.byte	W03
	.byte		        c_v+0
	.byte	W72
	.byte	W03
	.byte		PEND
mus_trombe_10_004:
	.byte		BEND  , c_v-14
	.byte		N92   , En3 , v080
	.byte	W03
	.byte		BEND  , c_v-12
	.byte	W03
	.byte		        c_v-10
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v-2
	.byte	W03
	.byte		        c_v+0
	.byte	W72
	.byte	W03
	.byte		PEND
	.byte		        c_v-14
	.byte		TIE   , Fn3
	.byte	W03
	.byte		BEND  , c_v-12
	.byte	W03
	.byte		        c_v-10
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v-2
	.byte	W03
	.byte		        c_v+0
	.byte	W72
	.byte	W03
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		BEND  , c_v-14
	.byte		N44   , An3
	.byte	W03
	.byte		BEND  , c_v-12
	.byte	W03
	.byte		        c_v-10
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v-2
	.byte	W03
	.byte		        c_v+0
	.byte	W24
	.byte	W03
	.byte	PATT
	 .word	mus_trombe_10_003
	.byte	PATT
	 .word	mus_trombe_10_004
	.byte		BEND  , c_v-14
	.byte		N80   , Fn3 , v080
	.byte	W03
	.byte		BEND  , c_v-12
	.byte	W03
	.byte		        c_v-10
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v-2
	.byte	W03
	.byte		        c_v+0
	.byte	W60
	.byte	W03
	.byte		        c_v-14
	.byte		N44   , An3
	.byte	W03
	.byte		BEND  , c_v-12
	.byte	W03
	.byte		        c_v-10
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v-2
	.byte	W03
	.byte		        c_v+0
	.byte	W24
	.byte	W03
	.byte		N11   , En3 , v108
	.byte	W12
	.byte		N17   , An3
	.byte	W18
	.byte		        Gn3
	.byte	W18
	.byte		N32   , Dn3
	.byte	W12
	.byte	W36
	.byte		N11   , En3
	.byte	W12
	.byte		N17   , An3
	.byte	W18
	.byte		        Gn3
	.byte	W18
	.byte		BEND  , c_v-28
	.byte		N56   , Cn4
	.byte	W03
	.byte		BEND  , c_v-24
	.byte	W03
	.byte		        c_v-20
	.byte	W03
	.byte		        c_v-16
	.byte	W03
	.byte		        c_v-12
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v+0
	.byte	W48
	.byte	W03
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		N32   , En4
	.byte	W36
	.byte		N11
	.byte	W12
	.byte		N23   , Gn4
	.byte	W24
	.byte		N11   , Fn4
	.byte	W12
	.byte		N23   , En4
	.byte	W12
	.byte	W12
	.byte		N11   , Fn4
	.byte	W12
	.byte		N23   , Dn4
	.byte	W68
	.byte	W03
	.byte		VOICE , 86
	.byte	W01
	.byte		BEND  , c_v-14
	.byte		N92   , An4
	.byte	W06
	.byte		BEND  , c_v-12
	.byte	W06
	.byte		        c_v-10
	.byte	W06
	.byte		        c_v-8
	.byte	W06
	.byte		        c_v-6
	.byte	W06
	.byte		        c_v-4
	.byte	W06
	.byte		        c_v-2
	.byte	W06
	.byte		        c_v+0
	.byte	W54
	.byte		        c_v-14
	.byte		N80   , Gn4
	.byte	W06
	.byte		BEND  , c_v-12
	.byte	W06
	.byte		        c_v-10
	.byte	W06
	.byte		        c_v-8
	.byte	W06
	.byte		        c_v-6
	.byte	W06
	.byte		        c_v-4
	.byte	W06
	.byte		        c_v-2
	.byte	W06
	.byte		        c_v+0
	.byte	W42
	.byte		        c_v-14
	.byte		TIE   , Dn5
	.byte	W06
	.byte		BEND  , c_v-12
	.byte	W06
	.byte		        c_v-10
	.byte	W06
	.byte		        c_v-8
	.byte	W06
	.byte		        c_v-6
	.byte	W06
	.byte		        c_v-4
	.byte	W06
	.byte		        c_v-2
	.byte	W06
	.byte		        c_v+0
	.byte	W64
	.byte	W01
	.byte		EOT   
	.byte		VOICE , 87
	.byte	W01
	.byte	W96
	.byte	GOTO
	 .word	mus_trombe_10_000
	.byte		FINE

@**************** Track 11 ****************@

mus_trombe_11:
	.byte		KEYSH , mus_trombe_key-12
	.byte	W01
	.byte		VOICE , 108
	.byte		VOL   , 66*mus_trombe_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W21
	.byte	W12
	.byte		N96   , Gn1 , v100
	.byte	W96
	.byte		        An1
	.byte	W96
	.byte		        Bn1
	.byte	W96
	.byte		        An1
	.byte	W96
	.byte		        Gn1
	.byte	W96
	.byte		        An1
	.byte	W96
	.byte		        Cn1
	.byte	W96
	.byte	W96
mus_trombe_11_000:
	.byte		N07   , Bn1 , v120
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		PEND
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		        An1
	.byte	W12
mus_trombe_11_001:
	.byte		N07   , Gn1 , v120
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		PEND
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		        Gs1
	.byte	W12
mus_trombe_11_002:
	.byte		N07   , An1 , v120
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		PEND
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		        Dn2
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte	W96
	.byte	PATT
	 .word	mus_trombe_11_000
	.byte	PATT
	 .word	mus_trombe_11_000
	.byte	PATT
	 .word	mus_trombe_11_001
	.byte	PATT
	 .word	mus_trombe_11_001
mus_trombe_11_003:
	.byte		N07   , En1 , v120
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		PEND
	.byte		        Fs1
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte	W96
	.byte		        En1
	.byte	W36
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W48
	.byte		        An1
	.byte	W36
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W48
	.byte		        Dn1
	.byte	W36
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W48
	.byte		        Gn1
	.byte	W36
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W48
	.byte		        Cs1
	.byte	W36
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W48
	.byte		        Fs1
	.byte	W36
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W48
	.byte		        Bn0
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		        Cs1
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		        Ds1
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte	PATT
	 .word	mus_trombe_11_003
	.byte	PATT
	 .word	mus_trombe_11_002
mus_trombe_11_004:
	.byte		N07   , As1 , v120
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		PEND
	.byte		        Bn1
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte	PATT
	 .word	mus_trombe_11_001
	.byte	PATT
	 .word	mus_trombe_11_001
	.byte		N07   , An1 , v120
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte	W96
	.byte	PATT
	 .word	mus_trombe_11_004
mus_trombe_11_005:
	.byte		N07   , Cn2 , v120
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		PEND
	.byte		        Dn2
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte	PATT
	 .word	mus_trombe_11_005
	.byte	PATT
	 .word	mus_trombe_11_004
	.byte	PATT
	 .word	mus_trombe_11_005
	.byte		N07   , Fn1 , v120
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte	PATT
	 .word	mus_trombe_11_002
	.byte	PATT
	 .word	mus_trombe_11_004
	.byte	PATT
	 .word	mus_trombe_11_005
	.byte		N07   , Cs2 , v120
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		        Dn2
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte	PATT
	 .word	mus_trombe_11_004
	.byte		N07   , Cn2 , v120
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		        Ds1
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte	W96
	.byte	GOTO
	 .word	mus_trombe_11_000
	.byte		FINE

@******************************************************@
	.align	2

mus_trombe:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_trombe_pri	@ Priority
	.byte	mus_trombe_rev	@ Reverb.

	.word	mus_trombe_grp

	.word	mus_trombe_1
	.word	mus_trombe_3
	.word	mus_trombe_4
	.word	mus_trombe_5
	.word	mus_trombe_6
	.word	mus_trombe_7
	.word	mus_trombe_8
	.word	mus_trombe_9
	.word	mus_trombe_10
	.word	mus_trombe_11

	.end
