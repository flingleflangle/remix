@ "For the Day that Must Come" from Super Robot Taisen: Original Generation (song 0x24), ported from sound/import.
@ Track numbers match the original. Track 11 (a quiet doubling layer) was cut to fit Emerald's 10 tracks and 5 sampled channels.
@ Track 10 is shifted down an octave because Emerald's waves repeat twice.

	.include "MPlayDef.s"

	.equ	mus_for_the_day_that_must_come_grp, voicegroup_srt_og
	.equ	mus_for_the_day_that_must_come_pri, 0
	.equ	mus_for_the_day_that_must_come_rev, reverb_set+48
	.equ	mus_for_the_day_that_must_come_mvl, 127
	.equ	mus_for_the_day_that_must_come_key, 0
	.equ	mus_for_the_day_that_must_come_tbs, 1
	.equ	mus_for_the_day_that_must_come_exg, 0
	.equ	mus_for_the_day_that_must_come_cmp, 1

	.section .rodata
	.global	mus_for_the_day_that_must_come
	.align	2

@**************** Track 1 ****************@

mus_for_the_day_that_must_come_1:
	.byte		KEYSH , mus_for_the_day_that_must_come_key+0
	.byte		TEMPO , 240*mus_for_the_day_that_must_come_tbs/2
	.byte	W01
	.byte		VOICE , 127
	.byte		VOL   , 70*mus_for_the_day_that_must_come_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W21
	.byte		TEMPO , 120*mus_for_the_day_that_must_come_tbs/2
	.byte	W12
mus_for_the_day_that_must_come_1_000:
	.byte		N11   , Dn1 , v088
	.byte	W96
	.byte		N11
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		TEMPO , 154*mus_for_the_day_that_must_come_tbs/2
	.byte		N11
	.byte	W84
	.byte		N03   , Dn1 , v072
	.byte	W04
	.byte		        Dn1 , v068
	.byte	W04
	.byte		        Dn1 , v076
	.byte	W04
mus_for_the_day_that_must_come_1_001:
	.byte		N11   , Dn1 , v088
	.byte	W84
	.byte		N03   , Dn1 , v072
	.byte	W04
	.byte		        Dn1 , v068
	.byte	W04
	.byte		        Dn1 , v076
	.byte	W04
	.byte		PEND
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
mus_for_the_day_that_must_come_1_002:
	.byte	W84
	.byte		N03   , Dn1 , v072
	.byte	W04
	.byte		        Dn1 , v068
	.byte	W04
	.byte		        Dn1 , v076
	.byte	W04
	.byte		PEND
mus_for_the_day_that_must_come_1_003:
	.byte		N11   , Dn1 , v088
	.byte	W36
	.byte		N03   , Fs2 , v072
	.byte	W04
	.byte		        Fs2 , v068
	.byte	W04
	.byte		        Fs2 , v076
	.byte	W04
	.byte		N05   , Fs2 , v088
	.byte	W36
	.byte		N03   , Dn1 , v072
	.byte	W04
	.byte		        Dn1 , v068
	.byte	W04
	.byte		        Dn1 , v076
	.byte	W04
	.byte		PEND
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_002
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_003
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_003
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_003
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_003
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_003
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_003
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_001
	.byte		N11   , Dn1 , v088
	.byte	W24
	.byte		N05   , Dn1 , v072
	.byte	W24
	.byte		        Dn1 , v088
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v068
	.byte	W12
	.byte		N11   , Dn1 , v088
	.byte	W12
	.byte		N03   , Dn1 , v072
	.byte	W04
	.byte		        Dn1 , v068
	.byte	W04
	.byte		        Dn1 , v076
	.byte	W04
mus_for_the_day_that_must_come_1_004:
	.byte		N11   , Dn1 , v088
	.byte	W12
	.byte		        Dn1 , v068
	.byte	W24
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v068
	.byte	W06
	.byte		N11   , Dn1 , v076
	.byte	W24
	.byte		        Dn1 , v068
	.byte	W12
	.byte		N03   , Dn1 , v072
	.byte	W04
	.byte		        Dn1 , v068
	.byte	W04
	.byte		        Dn1 , v076
	.byte	W04
	.byte		PEND
mus_for_the_day_that_must_come_1_005:
	.byte		N11   , Dn1 , v088
	.byte	W24
	.byte		        Dn1 , v068
	.byte	W24
	.byte		N05   , Dn1 , v076
	.byte	W06
	.byte		        Dn1 , v068
	.byte	W06
	.byte		N11   , Dn1 , v072
	.byte	W12
	.byte		        Dn1 , v076
	.byte	W12
	.byte		N03   , Dn1 , v072
	.byte	W04
	.byte		        Dn1 , v068
	.byte	W04
	.byte		        Dn1 , v076
	.byte	W04
	.byte		PEND
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_004
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_005
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_004
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_005
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_004
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_1_005
	.byte		TEMPO , 120*mus_for_the_day_that_must_come_tbs/2
	.byte		N11   , Dn1 , v088
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_for_the_day_that_must_come_1_000
	.byte		FINE

@**************** Track 2 ****************@

mus_for_the_day_that_must_come_2:
	.byte		KEYSH , mus_for_the_day_that_must_come_key+0
	.byte	W01
	.byte		VOICE , 47
	.byte		VOL   , 70*mus_for_the_day_that_must_come_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W21
	.byte		N03   , As1 , v116
	.byte	W04
	.byte		        As1 , v096
	.byte	W04
	.byte		        As1 , v108
	.byte	W04
mus_for_the_day_that_must_come_2_000:
	.byte		N23   , As1 , v127
	.byte	W84
	.byte		N03   , As1 , v116
	.byte	W04
	.byte		        As1 , v096
	.byte	W04
	.byte		        As1 , v108
	.byte	W04
	.byte		PEND
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_2_000
	.byte		N23   , As1 , v127
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_for_the_day_that_must_come_2_001:
	.byte	W84
	.byte		N03   , As1 , v116
	.byte	W04
	.byte		        As1 , v096
	.byte	W04
	.byte		        As1 , v108
	.byte	W04
	.byte		PEND
	.byte		N23   , As1 , v127
	.byte	W96
	.byte	W96
	.byte	W96
mus_for_the_day_that_must_come_2_002:
	.byte	W84
	.byte		N03   , Fs1 , v116
	.byte	W04
	.byte		        Fs1 , v096
	.byte	W04
	.byte		        Fs1 , v108
	.byte	W04
	.byte		PEND
	.byte		N23   , Fs1 , v127
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
	 .word	mus_for_the_day_that_must_come_2_002
	.byte		N23   , Fs1 , v127
	.byte	W96
	.byte	W84
	.byte		N03   , Gn1 , v116
	.byte	W04
	.byte		        Gn1 , v096
	.byte	W04
	.byte		        Gn1 , v108
	.byte	W04
	.byte		N23   , Gn1 , v127
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
	 .word	mus_for_the_day_that_must_come_2_001
	.byte		N11   , Fn1 , v116
	.byte	W12
	.byte		        Cn1
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		        Cn1
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		        Cn1
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		        Cn1
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		        Cn1
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		        Cn1
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		        Cn1
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		N03   , As1
	.byte	W04
	.byte		        As1 , v096
	.byte	W04
	.byte		        As1 , v108
	.byte	W04
mus_for_the_day_that_must_come_2_003:
	.byte		N11   , As1 , v116
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		PEND
mus_for_the_day_that_must_come_2_004:
	.byte		N11   , As1 , v116
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		N03   , Fn1
	.byte	W04
	.byte		        Fn1 , v096
	.byte	W04
	.byte		        Fn1 , v108
	.byte	W04
	.byte		PEND
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_2_003
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_2_004
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_2_003
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_2_004
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_2_003
	.byte		N11   , As1 , v116
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		N03   , Fn1
	.byte		N03   , As1
	.byte	W04
	.byte		        Fn1 , v096
	.byte		N03   , As1
	.byte	W04
	.byte		        Fn1 , v108
	.byte		N03   , As1
	.byte	W04
	.byte		N23   , As1 , v127
	.byte	W96
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_2_001
	.byte	GOTO
	 .word	mus_for_the_day_that_must_come_2_000
	.byte		FINE

@**************** Track 3 ****************@

mus_for_the_day_that_must_come_3:
	.byte		KEYSH , mus_for_the_day_that_must_come_key+0
	.byte	W01
	.byte		VOICE , 48
	.byte		VOL   , 62*mus_for_the_day_that_must_come_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W21
	.byte	W12
mus_for_the_day_that_must_come_3_000:
	.byte	W24
	.byte		N17   , As2 , v080
	.byte		N17   , Fn3 , v116
	.byte	W24
	.byte		N05   , Cn3 , v080
	.byte		N05   , Fs3 , v116
	.byte	W12
	.byte		N32   , As2 , v080
	.byte		N32   , Ds3 , v116
	.byte	W36
	.byte	W24
	.byte		N17   , As2 , v080
	.byte		N17   , Fn3 , v116
	.byte	W24
	.byte		N05   , Bn2 , v080
	.byte		N05   , Fs3 , v116
	.byte	W12
	.byte		N28   , Ds3 , v080
	.byte		N28   , Cs4 , v116
	.byte	W36
	.byte		TIE   , Gs3 , v080
	.byte		TIE   , Cn4 , v116
	.byte	W96
	.byte	W68
	.byte	W03
	.byte		EOT   , Gs3
	.byte		        Cn4
	.byte	W24
	.byte	W01
mus_for_the_day_that_must_come_3_001:
	.byte	W24
	.byte		N17   , As2 , v080
	.byte		N17   , Fn3 , v116
	.byte	W24
	.byte		N05   , Cn3 , v080
	.byte		N05   , Fs3 , v116
	.byte	W12
	.byte		TIE   , As2 , v080
	.byte		TIE   , Ds3 , v116
	.byte	W36
	.byte		PEND
	.byte	W80
	.byte	W03
	.byte		EOT   , As2
	.byte		        Ds3
	.byte	W13
mus_for_the_day_that_must_come_3_002:
	.byte	W24
	.byte		N17   , Gs2 , v080
	.byte		N17   , Ds3 , v116
	.byte	W24
	.byte		N05   , As2 , v080
	.byte		N05   , Fn3 , v116
	.byte	W12
	.byte		TIE   , Fn2 , v080
	.byte		TIE   , Cs3 , v116
	.byte	W36
	.byte		PEND
	.byte	W80
	.byte	W03
	.byte		EOT   , Fn2
	.byte		        Cs3
	.byte	W13
	.byte		N64   , Fn2 , v072
	.byte		N64   , Cs3 , v108
	.byte	W72
	.byte		N17   , Fn2 , v072
	.byte		N17   , Cs3 , v108
	.byte	W24
	.byte		N40   , Gs2 , v072
	.byte		N40   , Ds3 , v108
	.byte	W48
	.byte		N32   , Ds2 , v072
	.byte		N40   , Cn3 , v108
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_for_the_day_that_must_come_3_003:
	.byte		TIE   , Cn3 , v052
	.byte		TIE   , Ds3 , v080
	.byte	W96
	.byte		PEND
	.byte	W44
	.byte	W03
	.byte		EOT   , Cn3
	.byte		        Ds3
	.byte	W01
	.byte		N23   , As2 , v052
	.byte		N23   , Cs3 , v080
	.byte	W24
	.byte		        Cn3 , v052
	.byte		N23   , Ds3 , v080
	.byte	W24
	.byte		N68   , Cs3 , v052
	.byte		N68   , Fn3 , v080
	.byte	W72
	.byte		N23   , Cn3 , v052
	.byte		N23   , Ds3 , v080
	.byte	W24
	.byte		N68   , As2 , v052
	.byte		N68   , Cs3 , v080
	.byte	W72
	.byte		N23   , Cs3 , v052
	.byte		N23   , Fn3 , v080
	.byte	W24
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_3_003
	.byte	W23
	.byte		EOT   , Cn3
	.byte		        Ds3
	.byte	W01
	.byte		N23   , Gs2 , v052
	.byte		N23   , Cn3 , v080
	.byte	W24
	.byte		N17   , Cn3 , v052
	.byte		N17   , Ds3 , v080
	.byte	W18
	.byte		        Ds3 , v052
	.byte		N17   , Gs3 , v080
	.byte	W18
	.byte		N11   , Gs3 , v052
	.byte		N11   , Cn4 , v080
	.byte	W12
	.byte		N68   , Gs3 , v052
	.byte		N68   , Cn4 , v080
	.byte	W72
	.byte		N11   , Fn3 , v052
	.byte		N11   , As3 , v080
	.byte	W12
	.byte		        Gs3 , v052
	.byte		N11   , Cn4 , v080
	.byte	W12
	.byte		N80   , Fn3 , v052
	.byte		N80   , Cs4 , v080
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
	 .word	mus_for_the_day_that_must_come_3_001
	.byte	W80
	.byte	W03
	.byte		EOT   , As2
	.byte		        Ds3
	.byte	W13
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_3_002
	.byte	W80
	.byte	W03
	.byte		EOT   , Fn2
	.byte		        Cs3
	.byte	W13
	.byte		TIE   , Fs2 , v052
	.byte		TIE   , An2 , v068
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT   , Fs2
	.byte		        An2
	.byte	W01
	.byte		N92   , Gs2 , v052
	.byte		N92   , Cs3 , v068
	.byte	W96
	.byte		        Cs3 , v052
	.byte		N92   , Fn3 , v068
	.byte	W96
	.byte		        As2 , v052
	.byte		N92   , Ds3 , v068
	.byte	W96
	.byte		        Cs3 , v052
	.byte		N92   , Fs3 , v068
	.byte	W96
	.byte		TIE   , Ds3 , v052
	.byte		TIE   , Gs3 , v068
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT   , Ds3
	.byte		        Gs3
	.byte	W01
	.byte		TIE   , Fn4 , v060
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N08   , Fn3 , v096
	.byte	W24
	.byte		        Ds3 , v080
	.byte		N08   , Fn3 , v096
	.byte	W36
	.byte		        Ds3 , v080
	.byte		N08   , Fn3 , v096
	.byte	W24
	.byte		N08
	.byte	W12
	.byte	W12
	.byte		        Ds3 , v080
	.byte		N08   , Fn3 , v096
	.byte	W24
	.byte		        Ds3 , v080
	.byte		N08   , Fn3 , v096
	.byte	W12
	.byte		N08
	.byte	W24
	.byte		N08
	.byte	W24
mus_for_the_day_that_must_come_3_004:
	.byte		N08   , Fs3 , v096
	.byte	W24
	.byte		        Ds3 , v080
	.byte		N08   , Fs3 , v096
	.byte	W36
	.byte		        Ds3 , v080
	.byte		N08   , Fs3 , v096
	.byte	W24
	.byte		N08
	.byte	W12
	.byte		PEND
mus_for_the_day_that_must_come_3_005:
	.byte	W12
	.byte		N08   , Ds3 , v080
	.byte		N08   , Fs3 , v096
	.byte	W24
	.byte		        Ds3 , v080
	.byte		N08   , Fs3 , v096
	.byte	W12
	.byte		N08
	.byte	W24
	.byte		N08
	.byte	W24
	.byte		PEND
	.byte		        Gn3
	.byte	W24
	.byte		        En3 , v080
	.byte		N08   , Gn3 , v096
	.byte	W36
	.byte		        En3 , v080
	.byte		N08   , Gn3 , v096
	.byte	W24
	.byte		N08
	.byte	W12
	.byte	W12
	.byte		        En3 , v080
	.byte		N08   , Gn3 , v096
	.byte	W24
	.byte		        En3 , v080
	.byte		N08   , Gn3 , v096
	.byte	W12
	.byte		N08
	.byte	W24
	.byte		N08
	.byte	W24
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_3_004
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_3_005
	.byte		TIE   , As0 , v088
	.byte	W96
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
	.byte	GOTO
	 .word	mus_for_the_day_that_must_come_3_000
	.byte		FINE

@**************** Track 4 ****************@

mus_for_the_day_that_must_come_4:
	.byte		KEYSH , mus_for_the_day_that_must_come_key+0
	.byte	W01
	.byte		VOICE , 60
	.byte		VOL   , 59*mus_for_the_day_that_must_come_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		MOD   , 1
	.byte	W20
	.byte	W12
mus_for_the_day_that_must_come_4_000:
	.byte	W24
	.byte		N17   , Cs3 , v088
	.byte	W24
	.byte		N05   , Ds3
	.byte	W12
	.byte		N32   , Cn3
	.byte	W36
	.byte	W24
	.byte		N17   , Cs3
	.byte	W24
	.byte		N05   , Ds3
	.byte	W12
	.byte		N28   , Fs3
	.byte	W36
	.byte		TIE   , Fn3
	.byte	W96
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
mus_for_the_day_that_must_come_4_001:
	.byte	W24
	.byte		N17   , Cs3 , v088
	.byte	W24
	.byte		N05   , Ds3
	.byte	W12
	.byte		TIE   , Cn3
	.byte	W36
	.byte		PEND
	.byte	W80
	.byte	W03
	.byte		EOT   
	.byte	W13
mus_for_the_day_that_must_come_4_002:
	.byte	W24
	.byte		N17   , Cn3 , v088
	.byte	W24
	.byte		N05   , Cs3
	.byte	W12
	.byte		TIE   , Gs2
	.byte	W36
	.byte		PEND
	.byte	W80
	.byte	W03
	.byte		EOT   
	.byte	W13
	.byte		N64   , As2
	.byte	W72
	.byte		N17
	.byte	W24
	.byte		N40   , Cn3
	.byte	W48
	.byte		        Gs2
	.byte	W48
mus_for_the_day_that_must_come_4_003:
	.byte		N88   , Cs3 , v080
	.byte		N88   , Fn3 , v104
	.byte	W96
	.byte		PEND
mus_for_the_day_that_must_come_4_004:
	.byte		N92   , Ds3 , v080
	.byte		N44   , As3 , v104
	.byte	W48
	.byte		N23   , Gs3
	.byte	W24
	.byte		        Fs3
	.byte	W24
	.byte		PEND
	.byte		N05   , Cs3 , v080
	.byte		N05   , Fn3 , v104
	.byte	W12
	.byte		TIE   , Fn2 , v080
	.byte		TIE   , As2 , v104
	.byte	W84
	.byte	W76
	.byte	W01
	.byte		EOT   , Fn2
	.byte		        As2
	.byte	W19
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_4_003
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_4_004
	.byte		N05   , Cs3 , v080
	.byte		N05   , Fn3 , v104
	.byte	W12
	.byte		TIE   , Fn3 , v080
	.byte		TIE   , As3 , v104
	.byte	W84
	.byte	W76
	.byte	W01
	.byte		EOT   , Fn3
	.byte		        As3
	.byte	W19
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		N23   , Cs2 , v088
	.byte		N23   , Fn2 , v104
	.byte	W24
	.byte		N17   , Fs2 , v088
	.byte		N17   , As2 , v104
	.byte	W18
	.byte		        As2 , v088
	.byte		N17   , Cs3 , v104
	.byte	W18
	.byte		N11   , Cs3 , v088
	.byte		N11   , Fn3 , v104
	.byte	W12
	.byte		N92   , Fs3 , v088
	.byte		N92   , As3 , v104
	.byte	W96
	.byte	W24
	.byte		N23   , Ds2 , v088
	.byte		N23   , Gs2 , v104
	.byte	W24
	.byte		N17   , Gs2 , v088
	.byte		N17   , Cn3 , v104
	.byte	W18
	.byte		        Cn3 , v088
	.byte		N17   , Ds3 , v104
	.byte	W18
	.byte		N11   , Ds3 , v088
	.byte		N11   , Gs3 , v104
	.byte	W12
	.byte		N92   , Gs3 , v088
	.byte		N92   , Cn4 , v104
	.byte	W96
	.byte		TIE   , Ds3 , v088
	.byte		TIE   , As3 , v104
	.byte	W96
	.byte	W44
	.byte	W03
	.byte		EOT   , Ds3
	.byte	W01
	.byte		N17   , Ds3 , v088
	.byte	W18
	.byte		        Fn3
	.byte	W18
	.byte		N11   , Ds3
	.byte	W12
	.byte		TIE   , Dn3
	.byte	W96
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte		EOT   , As3
	.byte	W24
	.byte	W01
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_4_001
	.byte	W80
	.byte	W03
	.byte		EOT   , Cn3
	.byte	W13
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_4_002
	.byte	W80
	.byte	W03
	.byte		EOT   , Gs2
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
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_for_the_day_that_must_come_4_000
	.byte		FINE

@**************** Track 5 ****************@

mus_for_the_day_that_must_come_5:
	.byte		KEYSH , mus_for_the_day_that_must_come_key+0
	.byte	W24
	.byte	W12
mus_for_the_day_that_must_come_5_000:
	.byte	W18
	.byte		VOICE , 52
	.byte		VOL   , 70*mus_for_the_day_that_must_come_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W04
	.byte		N56   , As2 , v092
	.byte	W72
	.byte	W24
	.byte		N56
	.byte	W72
	.byte	W18
	.byte		VOICE , 46
	.byte		VOL   , 64*mus_for_the_day_that_must_come_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W04
	.byte		N07   , As1 , v060
	.byte	W08
	.byte		        Fn2 , v064
	.byte	W08
	.byte		        As2
	.byte	W08
	.byte		        Cs3
	.byte	W08
	.byte		        Fn3
	.byte	W08
	.byte		        Gs3 , v068
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		        Fn4
	.byte	W08
	.byte		        Gs4
	.byte	W08
	.byte		N23   , Cn5 , v072
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W42
	.byte		VOICE , 52
	.byte		VOL   , 70*mus_for_the_day_that_must_come_mvl/mxv
	.byte	W06
	.byte		N44   , As2 , v092
	.byte	W48
	.byte		N92   , Bn2
	.byte	W96
	.byte		TIE   , As2
	.byte	W96
	.byte	W76
	.byte	W01
	.byte		EOT   
	.byte	W19
	.byte	W48
	.byte		N44
	.byte	W48
	.byte		N92   , Cn3
	.byte	W96
	.byte		TIE   , Cs3
	.byte	W96
	.byte	W76
	.byte	W01
	.byte		EOT   
	.byte	W19
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		TIE   , As2
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		TIE   , Cn3
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		TIE   , As2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W90
	.byte		VOICE , 61
	.byte		VOL   , 73*mus_for_the_day_that_must_come_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W04
	.byte		N92   , Cs3 , v127
	.byte	W96
	.byte		N68   , Ds3
	.byte	W72
	.byte		N05
	.byte	W08
	.byte		        Cs3
	.byte	W08
	.byte		        Ds3
	.byte	W08
	.byte		N44   , Fn3
	.byte	W48
	.byte		TIE   , Gs3
	.byte	W48
	.byte	W56
	.byte		EOT   
	.byte	W16
	.byte		N08   , Fn3
	.byte	W18
	.byte		N05
	.byte	W06
	.byte		N44   , Gn3
	.byte	W48
	.byte		N92   , As3
	.byte	W48
	.byte	W48
	.byte		N44   , Cn4
	.byte	W48
	.byte		N92   , Cs4
	.byte	W96
	.byte		        Cn4
	.byte	W96
	.byte		        As4
	.byte	W96
	.byte		        An4
	.byte	W96
mus_for_the_day_that_must_come_5_001:
	.byte		N08   , As3 , v120
	.byte	W24
	.byte		N08
	.byte	W36
	.byte		N08
	.byte	W24
	.byte		N08
	.byte	W12
	.byte		PEND
mus_for_the_day_that_must_come_5_002:
	.byte	W12
	.byte		N08   , As3 , v120
	.byte	W24
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W24
	.byte		N08
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_5_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_5_002
mus_for_the_day_that_must_come_5_003:
	.byte		N08   , As4 , v120
	.byte	W24
	.byte		N08
	.byte	W36
	.byte		N08
	.byte	W24
	.byte		N08
	.byte	W12
	.byte		PEND
mus_for_the_day_that_must_come_5_004:
	.byte	W12
	.byte		N08   , As4 , v120
	.byte	W24
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W24
	.byte		N08
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_5_003
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_5_004
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_for_the_day_that_must_come_5_000
	.byte		FINE

@**************** Track 6 ****************@

mus_for_the_day_that_must_come_6:
	.byte		KEYSH , mus_for_the_day_that_must_come_key+0
	.byte	W01
	.byte		VOICE , 14
	.byte		VOL   , 70*mus_for_the_day_that_must_come_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W21
	.byte	W12
mus_for_the_day_that_must_come_6_000:
	.byte		N23   , Fn3 , v108
	.byte		N23   , As3 , v127
	.byte	W96
	.byte		PEND
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_6_000
	.byte	W96
	.byte	W96
	.byte		N23   , As3 , v127
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N23
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		        As3 , v112
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W01
	.byte		VOICE , 67
	.byte		VOL   , 59*mus_for_the_day_that_must_come_mvl/mxv
	.byte	W03
	.byte		TIE   , Cn4
	.byte	W96
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N23   , As3
	.byte	W24
	.byte		        Cn4
	.byte	W24
	.byte		N68   , Cs4
	.byte	W72
	.byte		N23   , Cn4
	.byte	W24
	.byte		N64   , As3
	.byte	W72
	.byte		N23   , Cs4
	.byte	W24
	.byte		N92   , Cn4
	.byte	W96
	.byte		N44   , Gs4
	.byte	W48
	.byte		        Cn4
	.byte	W48
	.byte		N68   , Ds4
	.byte	W72
	.byte		N11   , Cs4
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		N80   , As3
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W01
	.byte		VOICE , 14
	.byte		VOL   , 70*mus_for_the_day_that_must_come_mvl/mxv
	.byte	W03
	.byte		N23   , As3 , v127
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
	.byte		N23
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_for_the_day_that_must_come_6_000
	.byte		FINE

@**************** Track 7 ****************@

mus_for_the_day_that_must_come_7:
	.byte		KEYSH , mus_for_the_day_that_must_come_key+0
	.byte	W01
	.byte		VOICE , 122
	.byte		VOL   , 70*mus_for_the_day_that_must_come_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W21
	.byte	W12
mus_for_the_day_that_must_come_7_000:
	.byte		N44   , Cn8 , v120
	.byte	W96
	.byte		N44
	.byte	W96
	.byte		N44
	.byte	W96
	.byte	W96
	.byte		N44
	.byte	W96
mus_for_the_day_that_must_come_7_001:
	.byte	W44
	.byte	W03
	.byte		VOICE , 124
	.byte	W01
	.byte		N11   , Gn4 , v080
	.byte	W48
	.byte		PEND
	.byte	W96
	.byte	W48
	.byte		N11
	.byte	W48
	.byte		N23   , Cn8 , v120
	.byte	W96
	.byte	W96
	.byte		N23
	.byte	W96
	.byte	W96
	.byte	W96
mus_for_the_day_that_must_come_7_002:
	.byte	W21
	.byte		VOICE , 46
	.byte		VOL   , 64*mus_for_the_day_that_must_come_mvl/mxv
	.byte	W03
	.byte		N07   , As1 , v072
	.byte	W08
	.byte		        Cs2
	.byte	W08
	.byte		        Fn2
	.byte	W08
	.byte		        As2
	.byte	W08
	.byte		        Cs3
	.byte	W08
	.byte		        Fn3
	.byte	W08
	.byte		        As3
	.byte	W08
	.byte		        Cs4
	.byte	W08
	.byte		        Fn4
	.byte	W07
	.byte		VOICE , 122
	.byte	W01
	.byte		PEND
mus_for_the_day_that_must_come_7_003:
	.byte		VOL   , 70*mus_for_the_day_that_must_come_mvl/mxv
	.byte		N23   , Cn8 , v120
	.byte	W96
	.byte		PEND
	.byte	W96
	.byte	W96
	.byte	W18
	.byte		VOICE , 46
	.byte		VOL   , 64*mus_for_the_day_that_must_come_mvl/mxv
	.byte	W06
	.byte		N07   , As1 , v072
	.byte	W08
	.byte		        Cs2
	.byte	W08
	.byte		        Fn2
	.byte	W08
	.byte		        As2
	.byte	W08
	.byte		        Cs3
	.byte	W08
	.byte		        Fn3
	.byte	W08
	.byte		        As3
	.byte	W08
	.byte		        Cs4
	.byte	W08
	.byte		        Fn4
	.byte	W07
	.byte		VOICE , 122
	.byte	W01
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_7_003
	.byte	W96
	.byte	W96
	.byte	W21
	.byte		VOICE , 46
	.byte		VOL   , 64*mus_for_the_day_that_must_come_mvl/mxv
	.byte	W03
	.byte		N07   , Fs1 , v072
	.byte	W08
	.byte		        As1
	.byte	W08
	.byte		        Cs2
	.byte	W08
	.byte		        Fs2
	.byte	W08
	.byte		        As2
	.byte	W08
	.byte		        Cs3
	.byte	W08
	.byte		        Fs3
	.byte	W08
	.byte		        As3
	.byte	W08
	.byte		        Cs4
	.byte	W07
	.byte		VOICE , 122
	.byte	W01
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_7_003
	.byte	W96
	.byte	W96
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_7_002
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_7_003
	.byte	W96
	.byte		N23   , Cn8 , v120
	.byte	W96
	.byte	W96
	.byte		N23
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W21
	.byte		VOICE , 46
	.byte		VOL   , 64*mus_for_the_day_that_must_come_mvl/mxv
	.byte	W03
	.byte		N07   , Fn5 , v072
	.byte	W08
	.byte		        Dn5
	.byte	W08
	.byte		        As4
	.byte	W08
	.byte		        Fn4
	.byte	W08
	.byte		        Dn4
	.byte	W08
	.byte		        As3
	.byte	W08
	.byte		        Fn3
	.byte	W08
	.byte		        Dn3
	.byte	W08
	.byte		        As2
	.byte	W07
	.byte		VOICE , 122
	.byte		VOL   , 70*mus_for_the_day_that_must_come_mvl/mxv
	.byte	W01
	.byte		N44   , Cn8 , v120
	.byte	W96
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_7_001
	.byte	W96
	.byte	W48
	.byte		N11   , Gn4 , v080
	.byte	W44
	.byte	W03
	.byte		VOICE , 122
	.byte	W01
	.byte		N44   , Cn8 , v120
	.byte	W96
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_7_001
	.byte	W96
	.byte	W48
	.byte		N11   , Gn4 , v080
	.byte	W48
	.byte	W96
	.byte	W48
	.byte		N11
	.byte	W48
	.byte	W96
	.byte	W48
	.byte		N11
	.byte	W48
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		VOICE , 122
	.byte	W01
	.byte		N44   , Cn8 , v120
	.byte	W96
	.byte	W96
	.byte		N44
	.byte	W96
	.byte	W96
	.byte		N44
	.byte	W96
	.byte	W96
	.byte		N44
	.byte	W96
	.byte	W96
	.byte		N44
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_for_the_day_that_must_come_7_000
	.byte		FINE

@**************** Track 8 ****************@

mus_for_the_day_that_must_come_8:
	.byte		KEYSH , mus_for_the_day_that_must_come_key+0
	.byte	W01
	.byte		VOICE , 82
	.byte		VOL   , 35*mus_for_the_day_that_must_come_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W21
	.byte	W12
mus_for_the_day_that_must_come_8_000:
	.byte	W72
	.byte		N03   , As2 , v088
	.byte	W06
	.byte		        As3
	.byte	W03
	.byte		        As1 , v056
	.byte	W03
	.byte		        As4 , v088
	.byte	W03
	.byte		        As2 , v056
	.byte	W03
	.byte		        As5 , v088
	.byte	W03
	.byte		        As3 , v056
	.byte	W03
	.byte	W03
	.byte		        As4
	.byte	W06
	.byte		        As5
	.byte	W60
	.byte	W02
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , As2 , v088
	.byte	W06
	.byte		        As3
	.byte	W03
	.byte		        As1 , v056
	.byte	W03
	.byte		        As4 , v088
	.byte	W03
	.byte		        As2 , v056
	.byte	W03
	.byte		        As5 , v088
	.byte	W03
	.byte		        As3 , v056
	.byte	W03
	.byte	W03
	.byte		        As4
	.byte	W06
	.byte		        As5
	.byte	W14
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , As1 , v076
	.byte	W07
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Fn2 , v080
	.byte	W04
	.byte		        As1 , v052
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , As2 , v080
	.byte	W04
	.byte		        Fn2 , v052
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Cs3 , v080
	.byte	W04
	.byte		        As2 , v056
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , Fn3 , v080
	.byte	W04
	.byte		        Cs3 , v056
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Gs3 , v084
	.byte	W04
	.byte		        Fn3 , v056
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , Cn4 , v084
	.byte	W04
	.byte		        Gs3 , v056
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Fn4 , v084
	.byte	W04
	.byte		        Cn4 , v060
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , Gs4 , v084
	.byte	W04
	.byte		        Fn4 , v060
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Cn5 , v088
	.byte	W04
	.byte		        Gs4 , v060
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W05
	.byte		N03   , Cn5
	.byte	W03
	.byte		PAN   , c_v+0
	.byte	W09
	.byte		N03   , Cn5 , v036
	.byte	W72
mus_for_the_day_that_must_come_8_001:
	.byte		N05   , Fs2 , v088
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		PEND
mus_for_the_day_that_must_come_8_002:
	.byte		N05   , Fs2 , v088
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N05   , Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        As4
	.byte	W05
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		PEND
mus_for_the_day_that_must_come_8_003:
	.byte		N05   , Fn2 , v088
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		PEND
mus_for_the_day_that_must_come_8_004:
	.byte		N05   , As2 , v088
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Cs3
	.byte	W05
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		        Cs5
	.byte	W05
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		PEND
	.byte		N05   , Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
mus_for_the_day_that_must_come_8_005:
	.byte		N06   , As2 , v088
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		PEND
	.byte		        Bn2
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_8_005
	.byte		N06   , As2 , v088
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , As1 , v076
	.byte	W07
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Cs2 , v080
	.byte	W04
	.byte		        As1 , v052
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , Fn2 , v080
	.byte	W04
	.byte		        Cs2 , v052
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , As2 , v080
	.byte	W04
	.byte		        Fn2 , v056
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , Cs3 , v080
	.byte	W04
	.byte		        As2 , v056
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Fn3 , v084
	.byte	W04
	.byte		        Cs3 , v056
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , As3 , v084
	.byte	W04
	.byte		        Fn3 , v056
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Cs4 , v084
	.byte	W04
	.byte		        As3 , v060
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , Fn4 , v084
	.byte	W04
	.byte		        Cs4 , v060
	.byte	W03
	.byte		PAN   , c_v+0
	.byte	W01
mus_for_the_day_that_must_come_8_006:
	.byte		N06   , As2 , v080
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		PEND
	.byte		        Cn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_8_006
	.byte		N06   , As2 , v080
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , As1 , v076
	.byte	W07
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Cs2 , v080
	.byte	W04
	.byte		        As1 , v052
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , Fn2 , v080
	.byte	W04
	.byte		        Cs2 , v052
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , As2 , v080
	.byte	W04
	.byte		        Fn2 , v056
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , Cs3 , v080
	.byte	W04
	.byte		        As2 , v056
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Fn3 , v084
	.byte	W04
	.byte		        Cs3 , v056
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , As3 , v084
	.byte	W04
	.byte		        Fn3 , v056
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Cs4 , v084
	.byte	W04
	.byte		        As3 , v060
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , Fn4 , v084
	.byte	W04
	.byte		        Cs4 , v060
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W03
mus_for_the_day_that_must_come_8_007:
	.byte		N06   , Gs2 , v088
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_8_007
mus_for_the_day_that_must_come_8_008:
	.byte		N06   , Fs2 , v088
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_8_008
mus_for_the_day_that_must_come_8_009:
	.byte		N06   , Fn2 , v088
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_8_009
	.byte		N06   , As2 , v088
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_8_008
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_8_008
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_8_007
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_8_007
mus_for_the_day_that_must_come_8_010:
	.byte		N06   , As2 , v088
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_8_010
mus_for_the_day_that_must_come_8_011:
	.byte		N06   , As2 , v088
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_8_011
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_8_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_8_002
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_8_003
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_8_004
	.byte		N05   , Fs2 , v088
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        An2
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N05   , Fs2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        An4
	.byte	W05
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Gs2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Cs3
	.byte	W05
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , Gs2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		        Cs5
	.byte	W05
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , As2
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Cs3
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N05   , As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		        Cs5
	.byte	W05
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Gs2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Cn3
	.byte	W05
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		        Cn5
	.byte	W05
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Fn3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        An3
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N05   , Fn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        Cn5
	.byte	W06
	.byte		        Fn5
	.byte	W06
	.byte		        An5
	.byte	W06
	.byte		N04   , As4
	.byte	W04
	.byte		        Fn4
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		        As3
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		N03   , Fn4
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N04   , As4
	.byte	W04
	.byte		        Fn4
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		        As3
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		N03   , Fn4
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , As4
	.byte	W04
	.byte		        Fn4
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		        As3
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		N03   , Fn4
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N04   , As4
	.byte	W04
	.byte		        Fn4
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		        As3
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		N03   , Fn4
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , As4
	.byte	W04
	.byte		        Fn4
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		        As3
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		N03   , Fn4
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N04   , As4
	.byte	W04
	.byte		        Fn4
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		        As3
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		N03   , Fn4
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , As4
	.byte	W04
	.byte		        Fn4
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		        As3
	.byte	W04
	.byte		        Fn3
	.byte	W04
	.byte		N03   , Cs3
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N04   , As2
	.byte	W04
	.byte		        Cs3
	.byte	W04
	.byte		        Fn3
	.byte	W04
	.byte		        As3
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		N03   , Fn4
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
mus_for_the_day_that_must_come_8_012:
	.byte		N04   , As4 , v088
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Ds4
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Ds4
	.byte	W04
	.byte		N03   , Fs4
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N04   , As4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Ds4
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Ds4
	.byte	W04
	.byte		N03   , Fs4
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , As4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Ds4
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Ds4
	.byte	W04
	.byte		N03   , Fs4
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N04   , As4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Ds4
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Ds4
	.byte	W04
	.byte		N03   , Fs4
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		PEND
mus_for_the_day_that_must_come_8_013:
	.byte		N04   , As4 , v088
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Ds4
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Ds4
	.byte	W04
	.byte		N03   , Fs4
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N04   , As4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Ds4
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Ds4
	.byte	W04
	.byte		N03   , Fs4
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , As4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Ds4
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		N03   , Ds3
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N04   , Bn2
	.byte	W04
	.byte		        Ds3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Ds4
	.byte	W04
	.byte		N03   , Fs4
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		PEND
	.byte		N04   , As4
	.byte	W04
	.byte		        Gn4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		N03   , Gn4
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N04   , As4
	.byte	W04
	.byte		        Gn4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		N03   , Gn4
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , As4
	.byte	W04
	.byte		        Gn4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		N03   , Gn4
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N04   , As4
	.byte	W04
	.byte		        Gn4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		N03   , Gn4
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , As4
	.byte	W04
	.byte		        Gn4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		N03   , Gn4
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N04   , As4
	.byte	W04
	.byte		        Gn4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		N03   , Gn4
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , As4
	.byte	W04
	.byte		        Gn4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        Gn3
	.byte	W04
	.byte		N03   , En3
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N04   , Cn3
	.byte	W04
	.byte		        En3
	.byte	W04
	.byte		        Gn3
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		N03   , Gn4
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_8_012
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_8_013
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_for_the_day_that_must_come_8_000
	.byte		FINE

@**************** Track 9 ****************@

mus_for_the_day_that_must_come_9:
	.byte		KEYSH , mus_for_the_day_that_must_come_key+0
	.byte	W01
	.byte		VOICE , 87
	.byte		VOL   , 35*mus_for_the_day_that_must_come_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		MOD   , 1
	.byte	W20
	.byte	W12
mus_for_the_day_that_must_come_9_000:
	.byte		N04   , As2 , v080
	.byte	W04
	.byte		        Fn2
	.byte	W04
	.byte		        Cs2
	.byte	W04
	.byte		        Fn2
	.byte	W04
	.byte		        As2
	.byte	W04
	.byte		        Cs3
	.byte	W04
	.byte		        Fn3
	.byte	W04
	.byte		        Cs3
	.byte	W04
	.byte		        As2
	.byte	W04
	.byte		        Cs3
	.byte	W04
	.byte		        Fn3
	.byte	W04
	.byte		        As3
	.byte	W04
	.byte		        Ds4
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        As3
	.byte	W04
	.byte		        Ds4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        As4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Ds4
	.byte	W04
	.byte		        As3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Ds3
	.byte	W04
	.byte		        As2
	.byte	W04
	.byte		        Fn2
	.byte	W04
	.byte		        Cs2
	.byte	W04
	.byte		        Fn2
	.byte	W04
	.byte		        As2
	.byte	W04
	.byte		        Cs3
	.byte	W04
	.byte		        Fn3
	.byte	W04
	.byte		        Cs3
	.byte	W04
	.byte		        As2
	.byte	W04
	.byte		        Cs3
	.byte	W04
	.byte		        Fn3
	.byte	W04
	.byte		        As3
	.byte	W04
	.byte		        Ds4
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		        Ds4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Bn4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Ds4
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Ds3
	.byte	W04
	.byte		TIE   , Cs3
	.byte	W96
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
	.byte		TIE   , As2
	.byte	W96
	.byte	W80
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N05   , Gs2
	.byte	W06
	.byte		        As2
	.byte	W06
mus_for_the_day_that_must_come_9_001:
	.byte		N80   , Cn3 , v080
	.byte	W84
	.byte		        Cs3
	.byte	W12
	.byte		PEND
	.byte	W68
	.byte	W03
	.byte		VOICE , 87
	.byte	W24
	.byte	W01
	.byte		N05   , Cs2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        Cs2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        Cs2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        Cs2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        Cs2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        Cs2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        Cs2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        Cs2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		        Gs2
	.byte	W06
mus_for_the_day_that_must_come_9_002:
	.byte		N06   , Cs3 , v080
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		PEND
	.byte		        Ds3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_9_002
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_9_002
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_9_002
	.byte		N06   , Ds3 , v080
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_9_002
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_9_002
mus_for_the_day_that_must_come_9_003:
	.byte		N06   , Ds2 , v080
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_9_003
	.byte		N06   , Cs2 , v080
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        Cs2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        Cs2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        Cs2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        Cs2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        Cs2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        Cs2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		VOICE , 87
	.byte		N23   , Fn5 , v060
	.byte	W24
	.byte		N92   , Ds5
	.byte	W96
	.byte		N44   , Cn6
	.byte	W48
	.byte		        Gs5
	.byte	W48
	.byte		N68   , Cn6
	.byte	W72
	.byte		N11   , As5
	.byte	W12
	.byte		        Cn6
	.byte	W12
	.byte		N80   , Cs6
	.byte	W96
	.byte		VOICE , 86
	.byte		N06   , Cs2 , v080
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        Cs2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        Cs2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        Cs2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        Cs2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_9_003
	.byte		N06   , Ds2 , v080
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		        Cn5
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Gs2
	.byte	W06
mus_for_the_day_that_must_come_9_004:
	.byte		N06   , Fn2 , v080
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_9_004
	.byte		N06   , Fn2 , v080
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		TIE
	.byte	W96
	.byte	W80
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N05   , Gs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_9_001
	.byte	W68
	.byte	W03
	.byte		VOICE , 86
	.byte	W01
	.byte		N11   , Fn3 , v100
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		N68   , Gs3
	.byte	W72
	.byte		N23   , Fs3
	.byte	W24
	.byte		N68   , Cs3
	.byte	W72
	.byte		N23   , Ds3
	.byte	W24
	.byte		TIE   , Fn3
	.byte	W96
	.byte	W23
	.byte		EOT   
	.byte	W01
	.byte		N23   , Cs3
	.byte	W24
	.byte		        Fn3
	.byte	W24
	.byte		        Gs3
	.byte	W24
	.byte		N92   , As3
	.byte	W96
	.byte		N44   , Cs4
	.byte	W48
	.byte		        Ds4
	.byte	W48
	.byte		N92   , Fn4
	.byte	W96
	.byte		        Ds4
	.byte	W96
	.byte		        As3 , v080
	.byte	W96
	.byte		        An3
	.byte	W92
	.byte	W03
	.byte		VOICE , 87
	.byte	W01
	.byte		N08   , As2
	.byte	W24
	.byte		N08
	.byte	W36
	.byte		N08
	.byte	W24
	.byte		N08
	.byte	W12
	.byte	W12
	.byte		N08
	.byte	W24
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W24
	.byte		N08
	.byte	W24
	.byte		        Bn2
	.byte	W24
	.byte		N08
	.byte	W36
	.byte		N08
	.byte	W24
	.byte		N08
	.byte	W12
	.byte	W12
	.byte		N08
	.byte	W24
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W24
	.byte		N08
	.byte	W24
	.byte		        Cn3
	.byte	W12
	.byte		        As5 , v056
	.byte	W12
	.byte		        Cn3 , v080
	.byte	W12
	.byte		        As5 , v056
	.byte	W12
	.byte		        As5 , v032
	.byte	W12
	.byte		        Cn3 , v080
	.byte	W12
	.byte		        As5 , v056
	.byte	W12
	.byte		        Cn3 , v080
	.byte	W12
	.byte		        As5 , v056
	.byte	W12
	.byte		        Cn3 , v080
	.byte	W12
	.byte		        As5 , v056
	.byte	W12
	.byte		        Cn3 , v080
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		        As5 , v056
	.byte	W12
	.byte		        Cn3 , v080
	.byte	W12
	.byte		        As5 , v056
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W12
	.byte		        As5 , v056
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W12
	.byte		        As5 , v056
	.byte	W12
	.byte		        As5 , v032
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W12
	.byte		        As5 , v056
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W12
	.byte		        As5 , v056
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W12
	.byte		        As5 , v056
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		        As5 , v056
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W12
	.byte		        As5 , v056
	.byte	W12
	.byte		TIE   , As2 , v080
	.byte	W96
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
	.byte	GOTO
	 .word	mus_for_the_day_that_must_come_9_000
	.byte		FINE

@**************** Track 10 ****************@

mus_for_the_day_that_must_come_10:
	.byte		KEYSH , mus_for_the_day_that_must_come_key-12
	.byte	W01
	.byte		VOICE , 108
	.byte		VOL   , 70*mus_for_the_day_that_must_come_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W21
	.byte	W12
mus_for_the_day_that_must_come_10_000:
	.byte		N92   , As1 , v112
	.byte	W96
	.byte		N92
	.byte	W96
	.byte		TIE
	.byte	W96
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
mus_for_the_day_that_must_come_10_001:
	.byte		N06   , Fs1 , v112
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_001
mus_for_the_day_that_must_come_10_002:
	.byte		N06   , Fn1 , v112
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		PEND
mus_for_the_day_that_must_come_10_003:
	.byte		N06   , As1 , v112
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		PEND
mus_for_the_day_that_must_come_10_004:
	.byte		N05   , Fs1 , v112
	.byte	W12
	.byte		N05
	.byte	W24
	.byte		N05
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		N05
	.byte	W24
	.byte		N05
	.byte	W12
	.byte		PEND
mus_for_the_day_that_must_come_10_005:
	.byte		N05   , Gs1 , v112
	.byte	W12
	.byte		N05
	.byte	W24
	.byte		N05
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		N05
	.byte	W24
	.byte		N05
	.byte	W12
	.byte		PEND
mus_for_the_day_that_must_come_10_006:
	.byte		N05   , As1 , v112
	.byte	W12
	.byte		N05
	.byte	W24
	.byte		N05
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		N05
	.byte	W24
	.byte		N05
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_006
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_006
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_006
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_004
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_005
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_006
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_006
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_005
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_005
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_004
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_004
mus_for_the_day_that_must_come_10_007:
	.byte		N05   , Fn1 , v112
	.byte	W12
	.byte		N05
	.byte	W24
	.byte		N05
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		N05
	.byte	W24
	.byte		N05
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_007
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_006
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_005
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_004
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_004
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_005
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_005
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_006
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_006
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_006
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_005
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_002
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_003
mus_for_the_day_that_must_come_10_008:
	.byte		N06   , An1 , v112
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_008
mus_for_the_day_that_must_come_10_009:
	.byte		N06   , Gs1 , v112
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_009
	.byte		N06   , Gn1 , v112
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_001
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_009
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_009
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_007
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_007
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_003
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_003
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_003
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_003
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_003
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_003
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_003
	.byte	PATT
	 .word	mus_for_the_day_that_must_come_10_003
	.byte		TIE   , As1 , v100
	.byte	W96
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
	.byte	GOTO
	 .word	mus_for_the_day_that_must_come_10_000
	.byte		FINE

@******************************************************@
	.align	2

mus_for_the_day_that_must_come:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_for_the_day_that_must_come_pri	@ Priority
	.byte	mus_for_the_day_that_must_come_rev	@ Reverb.

	.word	mus_for_the_day_that_must_come_grp

	.word	mus_for_the_day_that_must_come_1
	.word	mus_for_the_day_that_must_come_2
	.word	mus_for_the_day_that_must_come_3
	.word	mus_for_the_day_that_must_come_4
	.word	mus_for_the_day_that_must_come_5
	.word	mus_for_the_day_that_must_come_6
	.word	mus_for_the_day_that_must_come_7
	.word	mus_for_the_day_that_must_come_8
	.word	mus_for_the_day_that_must_come_9
	.word	mus_for_the_day_that_must_come_10

	.end
