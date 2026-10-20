@ "Marionette Messiah" from Super Robot Taisen: Original Generation (song 0x18), ported from sound/import.
@ Track numbers match the original. Track 10 (a quiet doubling layer) was cut to fit Emerald's 5 sampled channels; up to 6 still overlap very briefly (0.1% of the song).
@ Track 7 is shifted down an octave because Emerald's waves repeat twice.
@ The synth brass slots are swapped (62 plays the french horn and 63 the trumpet here), by request.
@ Track 1 opens with the guitar from MUS_T_MARIONETTE (slot 25) instead of slot 29.

	.include "MPlayDef.s"

	.equ	mus_marionette_messiah_grp, voicegroup_srt_og
	.equ	mus_marionette_messiah_pri, 0
	.equ	mus_marionette_messiah_rev, reverb_set+48
	.equ	mus_marionette_messiah_mvl, 127
	.equ	mus_marionette_messiah_key, 0
	.equ	mus_marionette_messiah_tbs, 1
	.equ	mus_marionette_messiah_exg, 0
	.equ	mus_marionette_messiah_cmp, 1

	.section .rodata
	.global	mus_marionette_messiah
	.align	2

@**************** Track 1 ****************@

mus_marionette_messiah_1:
	.byte		KEYSH , mus_marionette_messiah_key+0
	.byte		TEMPO , 250*mus_marionette_messiah_tbs/2
	.byte		VOICE , 25
	.byte	W01
	.byte		VOL   , 70*mus_marionette_messiah_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		TEMPO , 140*mus_marionette_messiah_tbs/2
	.byte		N78   , Gn3 , v127
	.byte	W12
	.byte		MOD   , 2
	.byte	W66
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N12   , An3
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte		N78   , As3
	.byte	W78
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N12   , Cn4
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte		N30   , Dn4
	.byte	W36
	.byte		N10   , Cn4
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W03
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N21
	.byte	W18
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-26
	.byte		N21   , Dn4
	.byte	W01
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v+0
	.byte	W18
	.byte		N30   , Ds4
	.byte	W36
	.byte		N10   , Dn4
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W03
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N21
	.byte	W24
	.byte		        Ds4
	.byte	W18
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-58
	.byte		N68   , Gn4 , v100
	.byte	W01
	.byte		BEND  , c_v-51
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-9
	.byte	W02
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-3
	.byte	W02
	.byte		        c_v+0
	.byte	W84
	.byte	W96
mus_marionette_messiah_1_000:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W90
	.byte		VOICE , 62
	.byte		VOL   , 67*mus_marionette_messiah_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		        c_v+0
	.byte	W84
	.byte		N05   , Dn3 , v112
	.byte	W06
	.byte		        Fn3 , v100
	.byte	W06
	.byte		N09   , Gn3 , v108
	.byte	W12
	.byte		N05   , Fn3 , v100
	.byte	W06
	.byte		N09   , Gn3 , v096
	.byte	W18
	.byte		N28   , Dn3 , v104
	.byte	W48
	.byte		N05   , Dn3 , v112
	.byte	W06
	.byte		        Fn3 , v100
	.byte	W06
	.byte		N09   , Gn3 , v108
	.byte	W12
	.byte		N05   , Fn3 , v100
	.byte	W06
	.byte		N09   , Gn3 , v096
	.byte	W18
	.byte		N17   , As3 , v104
	.byte	W18
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-28
	.byte		N11
	.byte	W01
	.byte		BEND  , c_v-24
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N11   , An3
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		N05   , As3 , v096
	.byte	W06
	.byte		N80   , Dn3 , v104
	.byte	W78
	.byte	W36
	.byte		N09   , Dn3 , v112
	.byte	W11
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v-28
	.byte		N11   , Fn3 , v108
	.byte	W01
	.byte		BEND  , c_v-24
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N09   , Dn3
	.byte	W12
	.byte		        Fn3
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		        Ds3 , v116
	.byte	W12
	.byte		N05   , Fn3 , v100
	.byte	W06
	.byte		N17   , Gn3
	.byte	W30
	.byte		N09   , Gn3 , v108
	.byte	W12
	.byte		N05   , Fn3 , v100
	.byte	W06
	.byte		N17   , Gn3
	.byte	W30
	.byte		N09   , Ds3 , v116
	.byte	W12
	.byte		N05   , Fn3 , v100
	.byte	W06
	.byte		N17   , Gn3
	.byte	W42
	.byte		N08   , An3 , v104
	.byte	W12
	.byte		N05   , Cn4 , v108
	.byte	W06
	.byte		N17   , An3 , v104
	.byte	W18
	.byte		N23   , Dn3
	.byte	W68
	.byte	W03
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v-28
	.byte		N11   , Fn3 , v108
	.byte	W01
	.byte		BEND  , c_v-24
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N32   , Dn3 , v104
	.byte	W12
mus_marionette_messiah_1_001:
	.byte	W72
	.byte		N10   , Ds3 , v112
	.byte	W12
	.byte		        Fn3 , v100
	.byte	W12
	.byte		PEND
	.byte		N52   , Gn3 , v096
	.byte	W72
	.byte		N10   , Ds3 , v112
	.byte	W12
	.byte		        Fn3 , v100
	.byte	W12
	.byte		N17   , Gn3 , v104
	.byte	W24
	.byte		        An3 , v096
	.byte	W24
	.byte		        As3
	.byte	W23
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v-28
	.byte		N17   , Cn4
	.byte	W01
	.byte		BEND  , c_v-24
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W18
	.byte		N80   , Gn3
	.byte	W96
	.byte	PATT
	 .word	mus_marionette_messiah_1_001
	.byte		N52   , Gn3 , v096
	.byte	W72
	.byte		N10   , Ds3 , v112
	.byte	W12
	.byte		        Gn3 , v100
	.byte	W12
	.byte		N17   , An3 , v108
	.byte	W24
	.byte		N17
	.byte	W24
	.byte		        As3
	.byte	W24
	.byte		        Gn3
	.byte	W24
	.byte		N40   , An3 , v100
	.byte	W44
	.byte	W03
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		        c_v+63
	.byte		N21   , Gn3 , v108
	.byte	W15
	.byte		BEND  , c_v+50
	.byte	W01
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N08   , Dn3 , v104
	.byte	W10
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-56
	.byte		TIE   , Dn4 , v100
	.byte	W01
	.byte		BEND  , c_v-48
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte	W88
	.byte	W01
	.byte		EOT   
	.byte	W07
	.byte	W28
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N09   , Dn3 , v116
	.byte	W12
	.byte		N11   , As3
	.byte	W12
	.byte		N09   , An3
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		N03   , An3
	.byte	W07
	.byte		N32   , Dn3
	.byte	W05
mus_marionette_messiah_1_002:
	.byte	W36
	.byte		N09   , Dn3 , v116
	.byte	W12
	.byte		N11   , As3
	.byte	W12
	.byte		N09   , An3
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		N03   , An3
	.byte	W07
	.byte		N32   , Dn3
	.byte	W05
	.byte		PEND
mus_marionette_messiah_1_003:
	.byte	W36
	.byte		N09   , Dn3 , v116
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		        As3
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		PEND
	.byte		N17   , Cn4
	.byte	W24
	.byte		        Dn4
	.byte	W24
	.byte		        Cn4
	.byte	W24
	.byte		N08   , Gn3
	.byte	W12
	.byte		N17   , Cn4
	.byte	W12
	.byte	W12
	.byte		N09   , As3
	.byte	W12
	.byte		N23
	.byte	W36
	.byte		N09   , Gn3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		N05   , As3
	.byte	W07
	.byte		N11   , Ds4
	.byte	W05
mus_marionette_messiah_1_004:
	.byte	W07
	.byte		N03   , Dn4 , v116
	.byte	W05
	.byte		N32   , Cn4
	.byte	W48
	.byte		N09   , Gn3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		N05   , As3
	.byte	W06
	.byte		N11   , Ds4
	.byte	W06
	.byte		PEND
mus_marionette_messiah_1_005:
	.byte	W07
	.byte		N03   , Dn4 , v116
	.byte	W05
	.byte		N28   , Cn4
	.byte	W36
	.byte		N09   , Gn3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		        As3
	.byte	W12
	.byte		N28   , Ds4
	.byte	W12
	.byte		PEND
	.byte	W24
	.byte		N17   , Cn4
	.byte	W24
	.byte		N23   , Gn4
	.byte	W24
	.byte		N11   , An4
	.byte	W12
	.byte		N40   , Dn4 , v120
	.byte	W12
	.byte	PATT
	 .word	mus_marionette_messiah_1_002
	.byte	PATT
	 .word	mus_marionette_messiah_1_002
	.byte	PATT
	 .word	mus_marionette_messiah_1_003
	.byte		N17   , Cn4 , v116
	.byte	W24
	.byte		        Dn4
	.byte	W24
	.byte		        Cn4
	.byte	W23
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v-24
	.byte		N05   , Gn4 , v112
	.byte	W01
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N17   , Cn4 , v116
	.byte	W12
	.byte	W12
	.byte		N09   , As3
	.byte	W12
	.byte		N23
	.byte	W36
	.byte		N09   , Gn3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		N05   , As3
	.byte	W06
	.byte		N11   , Ds4
	.byte	W06
	.byte	PATT
	 .word	mus_marionette_messiah_1_004
	.byte	PATT
	 .word	mus_marionette_messiah_1_005
	.byte	W24
	.byte		N17   , Cn4 , v116
	.byte	W24
	.byte		N23   , Ds4
	.byte	W24
	.byte		N10   , Gn4 , v112
	.byte	W11
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v-28
	.byte		TIE   , An4 , v108
	.byte	W01
	.byte		BEND  , c_v-24
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte	W60
	.byte		N09   , Dn4 , v104
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		N10   , Dn4 , v100
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_marionette_messiah_1_000
	.byte		FINE

@**************** Track 2 ****************@

mus_marionette_messiah_2:
	.byte		KEYSH , mus_marionette_messiah_key+0
	.byte		VOICE , 126
	.byte	W01
	.byte		VOL   , 64*mus_marionette_messiah_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N06   , Dn1 , v068
	.byte	W07
	.byte		N04   , Dn1 , v048
	.byte	W05
	.byte		N06   , Dn1 , v068
	.byte	W07
	.byte		N04   , Dn1 , v048
	.byte	W05
	.byte		N06   , Dn1 , v076
	.byte	W07
	.byte		N04   , Dn1 , v056
	.byte	W05
	.byte		N06   , Dn1 , v076
	.byte	W07
	.byte		N04   , Dn1 , v056
	.byte	W05
	.byte		N06   , Dn1 , v088
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N06   , Dn1 , v088
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N06   , Dn1 , v096
	.byte	W07
	.byte		N04   , Dn1 , v076
	.byte	W05
	.byte		N06   , Dn1 , v108
	.byte	W07
	.byte		N04   , Dn1 , v088
	.byte	W05
	.byte	W12
	.byte		N06   , Bn0 , v104
	.byte	W12
	.byte		N17   , Dn1 , v108
	.byte	W19
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N06   , Bn0 , v127
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N03   , Fs1 , v028
	.byte	W04
	.byte		        Fs1 , v012
	.byte	W04
	.byte		        Fs1 , v040
	.byte	W04
	.byte		N06   , Bn0 , v127
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		N10   , Dn1 , v108
	.byte	W12
	.byte		N04   , Fs1 , v028
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N04   , Fs1 , v028
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte		N04   , As1 , v056
	.byte	W05
mus_marionette_messiah_2_000:
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N04   , Fs1 , v028
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte	W05
	.byte		N06   , Bn0 , v127
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N03   , Fs1 , v028
	.byte	W04
	.byte		        Fs1 , v012
	.byte	W04
	.byte		        Fs1 , v040
	.byte	W04
	.byte		N06   , Bn0 , v127
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N04   , Fs1 , v028
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W19
	.byte		N03   , Dn1 , v068
	.byte	W05
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		N11   , Bn0 , v104
	.byte	W30
	.byte	W01
	.byte		N03   , Dn1 , v068
	.byte	W12
	.byte		N03
	.byte	W05
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N03   , Fs1 , v028
	.byte	W04
	.byte		        Fs1 , v012
	.byte	W04
	.byte		        Fs1 , v040
	.byte	W04
	.byte		N06   , Bn0 , v127
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N04   , Fs1 , v028
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte	W17
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W19
	.byte		N03   , Dn1 , v068
	.byte		N04   , As1 , v056
	.byte	W05
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		N10   , Dn1 , v108
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W12
	.byte		N04
	.byte	W05
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N03   , Fs1 , v028
	.byte	W04
	.byte		        Fs1 , v012
	.byte	W04
	.byte		N05   , Fs1 , v040
	.byte	W04
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N05   , Fs1 , v028
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte	W17
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W03
	.byte		        Dn1 , v076
	.byte	W03
	.byte		        Dn1 , v088
	.byte	W03
	.byte		N17   , Dn1 , v108
	.byte	W19
	.byte		N05   , Dn1 , v068
	.byte	W05
	.byte	W12
	.byte		N06   , Bn0 , v104
	.byte	W24
	.byte		N05   , Fs1 , v028
	.byte	W12
	.byte		N11   , Dn1 , v068
	.byte	W12
	.byte		N05   , Fs1 , v028
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte	W17
	.byte		N11   , Bn0 , v127
	.byte		N03   , Dn1 , v068
	.byte	W04
	.byte		        Fs1 , v012
	.byte	W04
	.byte		        Fs1 , v040
	.byte	W04
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		N11   , Dn1 , v068
	.byte	W19
	.byte		N03
	.byte	W05
	.byte		N05   , Fs1 , v028
	.byte	W12
	.byte		N06   , Bn0 , v127
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte	W05
	.byte		N06   , Bn0 , v104
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte	W17
	.byte		N05
	.byte		N05   , Fs1 , v028
	.byte	W07
	.byte		N04   , As1 , v056
	.byte	W05
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		N12   , Bn0 , v104
	.byte		N05   , Dn1 , v068
	.byte	W24
	.byte		        Fs1 , v028
	.byte	W12
	.byte		N11   , Dn1 , v068
	.byte	W12
	.byte		N05   , Fs1 , v028
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte	W17
	.byte		N11   , Bn0 , v127
	.byte		N03   , Dn1 , v068
	.byte	W04
	.byte		        Fs1 , v012
	.byte	W04
	.byte		        Fs1 , v040
	.byte	W04
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v068
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte	W05
	.byte		N04   , Fs1 , v028
	.byte	W12
	.byte		N05   , Bn0 , v127
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte	W05
	.byte		N05   , Bn0 , v104
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte	W12
	.byte		N04   , Dn1 , v088
	.byte	W05
	.byte		N05
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		N06   , Bn0 , v104
	.byte		N11   , Dn1 , v068
	.byte	W36
	.byte		N11
	.byte	W12
	.byte		N05   , Fs1 , v028
	.byte	W07
	.byte		        Dn1 , v068
	.byte	W17
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		N11   , Dn1 , v068
	.byte	W36
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		N02   , Bn0 , v104
	.byte		N02   , Dn1 , v076
	.byte	W03
	.byte		        Dn1 , v056
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W03
	.byte		        Dn1 , v076
	.byte	W03
	.byte		N11   , Dn1 , v096
	.byte	W12
	.byte		N05   , Dn1 , v080
	.byte	W07
	.byte		N03
	.byte		N04   , As1 , v056
	.byte	W05
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		N06   , Bn0 , v104
	.byte		N11   , Dn1 , v068
	.byte	W24
	.byte		N05   , Fs1 , v028
	.byte	W12
	.byte		N11   , Dn1 , v068
	.byte	W12
	.byte		N05   , Fs1 , v028
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte	W17
	.byte		N05   , Bn0 , v127
	.byte		N03   , Dn1 , v068
	.byte	W04
	.byte		        Fs1 , v012
	.byte	W04
	.byte		        Fs1 , v040
	.byte	W04
	.byte		N06   , Dn1 , v088
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte	W05
	.byte		N11
	.byte	W12
	.byte		N06   , Dn1 , v096
	.byte	W07
	.byte		N03   , Dn1 , v076
	.byte	W05
	.byte		N11
	.byte	W12
	.byte		N06   , Dn1 , v088
	.byte	W07
	.byte		N03   , Dn1 , v076
	.byte	W05
	.byte		N10   , Bn0 , v104
	.byte		N06   , Dn1 , v088
	.byte	W07
	.byte		N03   , Dn1 , v076
	.byte	W05
	.byte		N06   , Dn1 , v096
	.byte	W07
	.byte		N03   , Dn1 , v076
	.byte	W05
	.byte		N06   , Dn1 , v096
	.byte	W07
	.byte		N03   , Dn1 , v076
	.byte	W05
	.byte	W12
	.byte		N12   , Bn0 , v104
	.byte	W48
	.byte		N05   , Fs1 , v028
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		        Bn0 , v127
	.byte		N02   , Dn1 , v068
	.byte	W04
	.byte		        Fs1 , v012
	.byte	W04
	.byte		        Fs1 , v040
	.byte	W04
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v068
	.byte	W12
	.byte		N05   , Fs1 , v060
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte	W05
	.byte		N05   , Fs1 , v028
	.byte	W19
	.byte		N03   , Dn1 , v068
	.byte	W05
	.byte		N06   , Bn0 , v104
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte	W05
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		        Dn1 , v068
	.byte	W07
	.byte		N04   , As1 , v056
	.byte	W05
mus_marionette_messiah_2_001:
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		N06   , Bn0 , v104
	.byte		N11   , Dn1 , v068
	.byte	W12
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W24
	.byte		N05
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		        Bn0 , v127
	.byte		N03   , Dn1 , v068
	.byte	W04
	.byte		        Fs1 , v012
	.byte	W04
	.byte		        Fs1 , v040
	.byte	W04
	.byte		PEND
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v068
	.byte	W12
	.byte		N05   , Fs1 , v060
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte	W05
	.byte		N05   , Fs1 , v028
	.byte	W19
	.byte		N03   , Dn1 , v068
	.byte	W05
	.byte		N06   , Bn0 , v104
	.byte	W07
	.byte		N03   , Dn1 , v068
	.byte	W05
	.byte		N05   , Fs1 , v060
	.byte	W07
	.byte		N04   , Dn1 , v088
	.byte	W05
	.byte		N05
	.byte	W07
	.byte		N04
	.byte	W05
	.byte	PATT
	 .word	mus_marionette_messiah_2_001
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v068
	.byte	W12
	.byte		N05   , Fs1 , v060
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N05   , Fs1 , v028
	.byte	W19
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N06   , Bn0 , v104
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		        Dn1 , v068
	.byte	W07
	.byte		N04   , As1 , v056
	.byte	W05
	.byte	PATT
	 .word	mus_marionette_messiah_2_001
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		N11   , Dn1 , v068
	.byte	W12
	.byte		N05   , Fs1 , v060
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N05   , Fs1 , v028
	.byte	W19
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N06   , Bn0 , v104
	.byte		N05   , Fs1 , v028
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N05   , Fs1 , v060
	.byte	W07
	.byte		N04   , Dn1 , v088
	.byte	W05
	.byte		N05
	.byte		N11   , As1 , v068
	.byte	W07
	.byte		N05   , Dn1 , v088
	.byte	W05
	.byte	W12
	.byte		N06   , Bn0 , v104
	.byte	W12
	.byte		N11   , Dn1 , v108
	.byte	W12
	.byte		N05   , Fs1 , v028
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N06   , Bn0 , v127
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N06   , Bn0 , v104
	.byte	W12
	.byte		N11   , Dn1 , v108
	.byte	W12
	.byte		N03   , Fs1 , v028
	.byte	W04
	.byte		        Fs1 , v012
	.byte	W04
	.byte		N05   , Fs1 , v040
	.byte	W04
mus_marionette_messiah_2_002:
	.byte	W12
	.byte		N06   , Bn0 , v104
	.byte	W12
	.byte		N11   , Dn1 , v108
	.byte	W12
	.byte		N05   , Fs1 , v028
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N05   , Fs1 , v060
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N03   , Fs1 , v028
	.byte	W04
	.byte		        Fs1 , v012
	.byte	W04
	.byte		        Fs1 , v040
	.byte	W04
	.byte		PEND
	.byte		N05   , Fs1 , v060
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N05   , Fs1 , v028
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N05   , Fs1 , v028
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte		N04   , As1 , v056
	.byte	W05
mus_marionette_messiah_2_003:
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N05   , Fs1 , v028
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N05   , Fs1 , v060
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N03   , Fs1 , v028
	.byte	W04
	.byte		        Fs1 , v012
	.byte	W04
	.byte		        Fs1 , v040
	.byte	W04
	.byte		PEND
	.byte		N05   , Fs1 , v060
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N05   , Fs1 , v028
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W19
	.byte		N05   , Dn1 , v068
	.byte	W05
mus_marionette_messiah_2_004:
	.byte	W12
	.byte		N06   , Bn0 , v104
	.byte	W30
	.byte	W01
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N05   , Fs1 , v060
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N03   , Fs1 , v028
	.byte	W04
	.byte		        Fs1 , v012
	.byte	W04
	.byte		        Fs1 , v040
	.byte	W04
	.byte		PEND
	.byte		N05   , Fs1 , v060
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v104
	.byte	W30
	.byte	W01
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W19
	.byte		N04   , Dn1 , v068
	.byte		N04   , As1 , v056
	.byte	W05
	.byte	PATT
	 .word	mus_marionette_messiah_2_003
	.byte		N05   , Fs1 , v060
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W03
	.byte		        Dn1 , v076
	.byte	W03
	.byte		        Dn1 , v088
	.byte	W03
	.byte		N11   , Dn1 , v108
	.byte	W12
	.byte		N06   , Bn0 , v104
	.byte	W07
	.byte		N05   , Dn1 , v068
	.byte	W17
	.byte		N11   , Dn1 , v108
	.byte	W12
	.byte	PATT
	 .word	mus_marionette_messiah_2_002
	.byte		N05   , Fs1 , v060
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N05   , Fs1 , v028
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W19
	.byte		N04   , Dn1 , v068
	.byte		N04   , As1 , v056
	.byte	W05
	.byte	PATT
	 .word	mus_marionette_messiah_2_003
	.byte		N05   , Fs1 , v060
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N05   , Fs1 , v028
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		N11   , Bn0 , v104
	.byte		N05   , Fs1 , v028
	.byte	W12
	.byte		N11   , Dn1 , v108
	.byte	W19
	.byte		N05   , Dn1 , v068
	.byte	W05
	.byte	PATT
	 .word	mus_marionette_messiah_2_004
	.byte		N05   , Fs1 , v060
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v104
	.byte	W30
	.byte	W01
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W19
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte	PATT
	 .word	mus_marionette_messiah_2_003
	.byte		N05   , Fs1 , v060
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W03
	.byte		        Dn1 , v076
	.byte	W03
	.byte		        Dn1 , v088
	.byte	W03
	.byte		N11   , Dn1 , v108
	.byte	W12
	.byte		N06   , Bn0 , v104
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		N11   , Dn1 , v108
	.byte	W12
	.byte	W12
	.byte		N06   , Bn0 , v104
	.byte	W12
	.byte		N11   , Dn1 , v108
	.byte	W12
	.byte		N05   , Fs1 , v028
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N06   , Bn0 , v127
	.byte		N05   , Fs1 , v060
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N06   , Bn0 , v104
	.byte	W12
	.byte		N11   , Dn1 , v108
	.byte	W12
	.byte		N03   , Fs1 , v028
	.byte	W04
	.byte		        Fs1 , v012
	.byte	W04
	.byte		N05   , Fs1 , v040
	.byte	W04
	.byte	PATT
	 .word	mus_marionette_messiah_2_002
	.byte		N05   , Fs1 , v060
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N05   , Fs1 , v028
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N05   , Fs1 , v060
	.byte	W12
	.byte		N11   , Bn0 , v104
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W19
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte	GOTO
	 .word	mus_marionette_messiah_2_000
	.byte		FINE

@**************** Track 3 ****************@

mus_marionette_messiah_3:
	.byte		KEYSH , mus_marionette_messiah_key+0
	.byte		VOICE , 125
	.byte	W01
	.byte		VOL   , 64*mus_marionette_messiah_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		N11   , Bn0 , v112
	.byte		N24   , Cs2 , v127
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N11   , En1
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N11   , En1
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N11   , En1
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N11   , En1
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte		        Bn0 , v112
	.byte	W19
	.byte		N04   , En1 , v092
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N03   , En1 , v092
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		N06   , Bn0 , v112
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N06   , En1 , v112
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N24   , Cs2 , v127
	.byte	W24
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N05
	.byte	W12
mus_marionette_messiah_3_000:
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N03   , En1 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N05
	.byte		N11   , En1 , v112
	.byte	W12
	.byte		        Bn0
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte		N11   , En1 , v100
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte		N11   , En1 , v100
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N05
	.byte		N04   , Fs1 , v060
	.byte	W12
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N05   , Bn0 , v092
	.byte		N11   , En1 , v100
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N05   , Bn0 , v092
	.byte		N10   , En1 , v112
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N10   , En1 , v112
	.byte	W12
	.byte		N11   , Bn0 , v092
	.byte		N10   , En1 , v112
	.byte	W12
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v112
	.byte	W07
	.byte		N11   , Bn0 , v080
	.byte	W12
	.byte		N04
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N24   , Cs2 , v127
	.byte	W19
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N10   , En1
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        En1 , v072
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N05   , Bn0 , v112
	.byte	W07
	.byte		N04   , En1 , v072
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N10   , En1
	.byte	W24
	.byte		N11   , Bn0
	.byte	W07
	.byte		N04   , En1 , v072
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N05   , Bn0 , v112
	.byte		N10   , En1
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        En1 , v072
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N10   , En1
	.byte	W12
	.byte		N11   , Bn0 , v080
	.byte	W07
	.byte		N04   , En1 , v072
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W19
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N10   , En1
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        En1 , v072
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N05   , Bn0 , v112
	.byte	W07
	.byte		N04   , En1 , v072
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N10   , En1
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N05   , Bn0 , v112
	.byte	W07
	.byte		N04   , En1 , v072
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N10   , En1
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        En1 , v072
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N06   , En1
	.byte	W12
	.byte		N11   , Bn0 , v080
	.byte	W12
	.byte		        Bn0 , v112
	.byte	W19
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        En1 , v072
	.byte	W05
	.byte		N05   , Bn0 , v112
	.byte	W07
	.byte		N04   , En1 , v072
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W24
	.byte		N05
	.byte	W07
	.byte		N04   , En1 , v072
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        En1 , v072
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W19
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N05   , Bn0 , v080
	.byte	W12
	.byte		N11   , Bn0 , v112
	.byte	W19
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N10   , En1
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        En1 , v072
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N05   , Bn0 , v112
	.byte	W07
	.byte		N04   , En1 , v072
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N04   , En1
	.byte	W19
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N06   , Bn0 , v112
	.byte	W07
	.byte		N04   , En1 , v072
	.byte	W05
	.byte		N06   , Fs1 , v060
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N06   , Fs1 , v060
	.byte	W07
	.byte		N04   , En1 , v072
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N06   , Fs1 , v060
	.byte	W07
	.byte		N04   , En1 , v112
	.byte	W05
	.byte		N06   , Bn0
	.byte	W07
	.byte		N04   , En1
	.byte	W05
	.byte		N06   , Bn0 , v080
	.byte	W07
	.byte		N04   , En1 , v072
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N24   , Cs2 , v127
	.byte	W24
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N10   , En1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W19
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N05   , Bn0 , v112
	.byte		N10   , En1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        En1 , v088
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W07
	.byte		N04   , En1 , v088
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W07
	.byte		        En1 , v088
	.byte	W05
mus_marionette_messiah_3_001:
	.byte		N11   , Bn0 , v112
	.byte	W19
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N10   , En1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W19
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		PEND
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N05   , Bn0 , v112
	.byte		N10   , En1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		        Bn0 , v080
	.byte	W12
	.byte	PATT
	 .word	mus_marionette_messiah_3_001
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N05   , Bn0 , v112
	.byte		N10   , En1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        En1 , v088
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W07
	.byte		N04   , En1 , v088
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W07
	.byte		        En1 , v088
	.byte	W05
	.byte	PATT
	 .word	mus_marionette_messiah_3_001
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N05   , Bn0 , v112
	.byte		N10   , En1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		        Bn0 , v080
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
mus_marionette_messiah_3_002:
	.byte		N11   , Bn0 , v112
	.byte		N10   , En1 , v120
	.byte	W12
	.byte		N10
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W17
	.byte		N06   , En1 , v120
	.byte	W07
	.byte		N04
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N06   , En1 , v120
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N06
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		PEND
mus_marionette_messiah_3_003:
	.byte		N11   , Bn0 , v112
	.byte		N24   , Cs2 , v127
	.byte	W19
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		PEND
mus_marionette_messiah_3_004:
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N05
	.byte		N06   , En1 , v076
	.byte	W12
	.byte		PEND
mus_marionette_messiah_3_005:
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		PEND
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N03   , En1
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		N11   , Bn0
	.byte	W12
	.byte		N05
	.byte		N04   , En1 , v120
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
mus_marionette_messiah_3_006:
	.byte		N11   , Bn0 , v112
	.byte		N24   , Cs2 , v127
	.byte	W19
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W12
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		PEND
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W12
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N05
	.byte		N06   , En1 , v076
	.byte	W12
	.byte	PATT
	 .word	mus_marionette_messiah_3_005
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N05   , Bn0 , v092
	.byte	W07
	.byte		N04   , En1 , v120
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte	PATT
	 .word	mus_marionette_messiah_3_003
	.byte	PATT
	 .word	mus_marionette_messiah_3_004
	.byte	PATT
	 .word	mus_marionette_messiah_3_005
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W19
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N03   , En1
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		N11   , Bn0
	.byte	W12
	.byte		N05
	.byte		N04   , En1 , v120
	.byte	W07
	.byte		        En1 , v092
	.byte	W05
	.byte	PATT
	 .word	mus_marionette_messiah_3_006
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W12
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N05
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte	PATT
	 .word	mus_marionette_messiah_3_005
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N05   , Bn0 , v092
	.byte	W07
	.byte		N04   , En1 , v112
	.byte	W05
	.byte		N05   , Bn0 , v092
	.byte	W07
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte	PATT
	 .word	mus_marionette_messiah_3_002
	.byte		N11   , Bn0 , v112
	.byte		N24   , Cs2 , v127
	.byte	W19
	.byte		N04   , Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		N05
	.byte		N04   , Fs1 , v060
	.byte	W07
	.byte		        Fs1 , v016
	.byte	W05
	.byte	GOTO
	 .word	mus_marionette_messiah_3_000
	.byte		FINE

@**************** Track 4 ****************@

mus_marionette_messiah_4:
	.byte		KEYSH , mus_marionette_messiah_key+0
	.byte		VOICE , 63
	.byte	W01
	.byte		VOL   , 75*mus_marionette_messiah_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		MOD   , 2
	.byte		N16   , Dn4 , v127
	.byte	W24
	.byte		N06   , Cn4
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		N21   , Gn3 , v072
	.byte		N21   , As3 , v127
	.byte	W24
mus_marionette_messiah_4_000:
	.byte		N06   , As3 , v072
	.byte		N06   , Dn4 , v124
	.byte	W12
	.byte		        Cn4 , v072
	.byte		N06   , Fn4 , v124
	.byte	W12
	.byte		N16   , Cn4 , v072
	.byte		N16   , Ds4 , v124
	.byte	W24
	.byte		N11   , An3 , v072
	.byte		N06   , Cn4 , v124
	.byte	W06
	.byte		N05   , As3
	.byte	W06
	.byte		N08   , Fn3 , v072
	.byte		N08   , An3 , v124
	.byte	W12
	.byte		N06   , Gn3 , v072
	.byte		N06   , As3 , v124
	.byte	W12
	.byte		N10   , Cn3 , v072
	.byte		N10   , Fn3 , v124
	.byte	W12
	.byte		PEND
mus_marionette_messiah_4_001:
	.byte		N16   , Dn3 , v072
	.byte		N16   , Gn3 , v120
	.byte	W24
	.byte		        Dn4
	.byte	W24
	.byte		N06   , Cn4
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		N21   , As3
	.byte	W24
	.byte		N06   , Cn4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		N12   , As3 , v072
	.byte		N12   , Dn4 , v120
	.byte	W48
mus_marionette_messiah_4_002:
	.byte		N16   , Dn3 , v072
	.byte		N16   , Gn3 , v120
	.byte	W24
	.byte		        As3 , v072
	.byte		N16   , Dn4 , v120
	.byte	W24
	.byte		N06   , An3 , v072
	.byte		N06   , Cn4 , v120
	.byte	W12
	.byte		        Fn3 , v072
	.byte		N06   , An3 , v120
	.byte	W12
	.byte		N21   , Gn3 , v072
	.byte		N21   , As3 , v120
	.byte	W24
	.byte		PEND
	.byte		N06   , As3 , v072
	.byte		N06   , Dn4 , v120
	.byte	W12
	.byte		        Cn4 , v072
	.byte		N06   , Fn4 , v120
	.byte	W12
	.byte		N16   , Cn4 , v072
	.byte		N16   , Ds4 , v120
	.byte	W24
	.byte		N11   , An3 , v072
	.byte		N06   , Cn4 , v120
	.byte	W06
	.byte		N05   , As3
	.byte	W06
	.byte		N08   , Fn3 , v072
	.byte		N08   , An3 , v120
	.byte	W12
	.byte		N06   , Gn3 , v072
	.byte		N06   , As3 , v120
	.byte	W12
	.byte		N10   , Cn3 , v072
	.byte		N10   , Fn3 , v120
	.byte	W12
	.byte	PATT
	 .word	mus_marionette_messiah_4_002
	.byte		MOD   , 0
	.byte		N05   , Cn3 , v112
	.byte	W12
	.byte		        Dn3
	.byte	W06
	.byte		        Cn3 , v060
	.byte	W06
	.byte		        Ds3 , v112
	.byte	W06
	.byte		        Dn3 , v060
	.byte	W06
	.byte		        Fn3 , v112
	.byte	W06
	.byte		        Ds3 , v060
	.byte	W06
	.byte		        Gn3 , v112
	.byte	W06
	.byte		        Fn3 , v060
	.byte	W12
	.byte		        Gn3
	.byte	W30
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W18
	.byte		VOICE , 100
	.byte		VOL   , 62*mus_marionette_messiah_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W05
	.byte		N23   , Dn5 , v084
	.byte	W24
	.byte		        Gn4 , v080
	.byte	W48
	.byte	W24
	.byte		        As4 , v084
	.byte	W24
	.byte		        Dn4 , v080
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W36
	.byte		N06   , Fn4 , v064
	.byte	W07
	.byte		N04   , Gn4
	.byte	W05
	.byte		N23   , As4 , v084
	.byte	W36
	.byte		N06   , An4 , v064
	.byte	W07
	.byte		N04   , As4
	.byte	W05
	.byte		N23   , Dn5 , v076
	.byte	W24
	.byte		        As4 , v084
	.byte	W24
	.byte		        Gn5 , v076
	.byte	W24
	.byte		        Fn5
	.byte	W24
	.byte		N11   , Ds5 , v064
	.byte	W96
	.byte	W96
	.byte	W36
	.byte		N06   , Ds5 , v080
	.byte	W07
	.byte		N04   , Fn5
	.byte	W05
	.byte		N23   , Gn5 , v092
	.byte	W36
	.byte		N06   , An5 , v080
	.byte	W07
	.byte		N04   , Gn5
	.byte	W05
	.byte		N23   , Fs5 , v092
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W12
	.byte		N11   , Dn5 , v076
	.byte	W12
	.byte		        En5
	.byte	W12
	.byte		        Fs5
	.byte	W12
	.byte		        An5
	.byte	W12
	.byte		        Dn5
	.byte	W12
	.byte		        Dn6
	.byte	W12
	.byte		        An5
	.byte	W12
	.byte		N23   , Gn5
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W90
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W05
	.byte	W24
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+63
	.byte	W06
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-64
	.byte	W24
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v+0
	.byte	W18
	.byte		VOICE , 63
	.byte		VOL   , 75*mus_marionette_messiah_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		MOD   , 2
	.byte		N16   , Gn3 , v127
	.byte	W24
	.byte		        As3 , v072
	.byte		N16   , Dn4 , v127
	.byte	W24
	.byte		N06   , An3 , v072
	.byte		N06   , Cn4 , v127
	.byte	W12
	.byte		        Fn3 , v072
	.byte		N06   , An3 , v127
	.byte	W12
	.byte		N21   , Gn3 , v072
	.byte		N21   , As3 , v127
	.byte	W24
	.byte	PATT
	 .word	mus_marionette_messiah_4_000
	.byte	GOTO
	 .word	mus_marionette_messiah_4_001
	.byte		FINE

@**************** Track 5 ****************@

mus_marionette_messiah_5:
	.byte		KEYSH , mus_marionette_messiah_key+0
	.byte		VOICE , 120
	.byte	W01
	.byte		VOL   , 53*mus_marionette_messiah_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		N02   , Dn3 , v127
	.byte	W02
	.byte		        Gn2
	.byte	W02
	.byte		        Cn2
	.byte	W02
	.byte		        Cs3 , v112
	.byte	W02
	.byte		        Fs2
	.byte	W02
	.byte		        Bn1
	.byte	W02
	.byte		        Cn3 , v100
	.byte	W02
	.byte		        Fs2
	.byte	W02
	.byte		        Bn1
	.byte	W02
	.byte		        Cn3 , v092
	.byte	W02
	.byte		        Fs2
	.byte	W02
	.byte		        Bn1
	.byte	W02
	.byte		        Bn2 , v080
	.byte	W02
	.byte		        Fn2
	.byte	W02
	.byte		        As1
	.byte	W02
	.byte		        Bn2 , v072
	.byte	W02
	.byte		        Fn2
	.byte	W02
	.byte		        As1
	.byte	W02
	.byte		        As2 , v060
	.byte	W02
	.byte		        En2
	.byte	W02
	.byte		        An1
	.byte	W02
	.byte		        As2 , v052
	.byte	W02
	.byte		        En2
	.byte	W02
	.byte		        An1
	.byte	W02
	.byte		        An2 , v040
	.byte	W48
	.byte	W96
	.byte		VOICE , 55
	.byte	W01
	.byte		VOL   , 75*mus_marionette_messiah_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W92
	.byte	W02
	.byte	W96
	.byte		N23   , Gn3 , v127
	.byte	W96
	.byte	W96
mus_marionette_messiah_5_000:
	.byte	W96
	.byte	W60
	.byte		N10   , Dn3 , v127
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N04   , Ds3
	.byte	W06
	.byte		N11   , Fn3
	.byte	W12
	.byte	W24
	.byte		N23   , Gn3
	.byte	W72
	.byte	W96
	.byte	W96
	.byte		N10   , Cn3
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		        Ds3
	.byte	W12
	.byte		        Fn3
	.byte	W12
	.byte		N23   , Gn3
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		        Gn3 , v120
	.byte	W48
	.byte		N23
	.byte	W24
	.byte	W24
	.byte		N23
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N10   , Dn3
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N11
	.byte	W68
	.byte	W02
	.byte		VOICE , 120
	.byte	W01
	.byte		VOL   , 53*mus_marionette_messiah_mvl/mxv
	.byte	W01
	.byte		N02   , Dn3 , v127
	.byte	W02
	.byte		        Gn2
	.byte	W02
	.byte		        Cn2
	.byte	W02
	.byte		        Cs3 , v112
	.byte	W02
	.byte		        Gn2
	.byte	W02
	.byte		        Bn1
	.byte	W02
	.byte		        Cn3 , v100
	.byte	W02
	.byte		        Fs2
	.byte	W02
	.byte		        Bn1
	.byte	W02
	.byte		        Cn3 , v092
	.byte	W02
	.byte		        Fs2
	.byte	W02
	.byte		        Bn1
	.byte	W02
	.byte		        Bn2 , v080
	.byte	W02
	.byte		        Fn2
	.byte	W02
	.byte		        As1
	.byte	W02
	.byte		        Bn2 , v072
	.byte	W02
	.byte		        Fn2
	.byte	W02
	.byte		        As1
	.byte	W02
	.byte		        As2 , v060
	.byte	W02
	.byte		        En2
	.byte	W02
	.byte		        An1
	.byte	W02
	.byte		        As2 , v052
	.byte	W02
	.byte		        En2
	.byte	W02
	.byte		        An1
	.byte	W02
	.byte		        An2 , v040
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W18
	.byte		VOICE , 55
	.byte		VOL   , 75*mus_marionette_messiah_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		N23   , Gn3 , v120
	.byte	W72
	.byte	W24
	.byte		N23
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		N23
	.byte	W72
	.byte	W24
	.byte		N23
	.byte	W72
	.byte	W96
	.byte	W96
	.byte		N10   , Dn3
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N23
	.byte	W72
	.byte		        Gn3 , v127
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_marionette_messiah_5_000
	.byte		FINE

@**************** Track 6 ****************@

mus_marionette_messiah_6:
	.byte		KEYSH , mus_marionette_messiah_key+0
	.byte		VOICE , 27
	.byte	W01
	.byte		VOL   , 53*mus_marionette_messiah_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		N11   , Gn1 , v100
	.byte	W12
	.byte		N05   , As1 , v092
	.byte	W06
	.byte		        Gn1 , v060
	.byte	W06
	.byte		        Dn2 , v092
	.byte	W06
	.byte		        As1 , v052
	.byte	W06
	.byte		N17   , Gn2 , v100
	.byte	W18
	.byte		N05   , Gn2 , v060
	.byte	W06
	.byte		N11   , Dn3 , v088
	.byte	W12
	.byte		N05   , As2 , v092
	.byte	W06
	.byte		        Dn3 , v048
	.byte	W06
	.byte		N03   , Dn2 , v092
	.byte	W06
	.byte		N05   , As2 , v052
	.byte	W06
	.byte		        Fn1 , v100
	.byte	W06
	.byte		N03   , Dn2 , v052
	.byte	W06
	.byte		N05   , As1 , v092
	.byte	W06
	.byte		        Fn1 , v060
	.byte	W06
	.byte		        Dn2 , v092
	.byte	W06
	.byte		        As1 , v052
	.byte	W06
	.byte		N17   , As2 , v100
	.byte	W18
	.byte		N05   , As2 , v060
	.byte	W06
	.byte		N11   , Dn3 , v088
	.byte	W12
	.byte		N05   , As2 , v092
	.byte	W06
	.byte		        Dn3 , v048
	.byte	W06
	.byte		N03   , Dn2 , v092
	.byte	W06
	.byte		N05   , As2 , v052
	.byte	W06
	.byte		        En1 , v100
	.byte	W06
	.byte		N03   , Dn2 , v052
	.byte	W06
	.byte		N05   , Cn2 , v092
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N17   , Gn2 , v092
	.byte	W18
	.byte		N05   , Gn2 , v052
	.byte	W06
	.byte		N11   , As1 , v100
	.byte	W12
	.byte		N05   , Ds2 , v092
	.byte	W06
	.byte		        As1 , v060
	.byte	W06
	.byte		N17   , Gn2 , v092
	.byte	W06
	.byte		N05   , Ds2 , v052
	.byte	W12
	.byte		        Gn2
	.byte	W06
	.byte		N11   , Dn2 , v100
	.byte	W12
	.byte		N05   , An2 , v092
	.byte	W06
	.byte		        Dn2 , v060
	.byte	W06
	.byte		N17   , Gn2 , v080
	.byte	W18
	.byte		N05   , Gn2 , v044
	.byte	W06
	.byte		N17   , Dn2 , v100
	.byte	W18
	.byte		N05   , Dn2 , v060
	.byte	W06
	.byte		N17   , Fs2 , v080
	.byte	W18
	.byte		N05   , Fs2 , v044
	.byte	W05
	.byte		VOICE , 120
	.byte		VOL   , 53*mus_marionette_messiah_mvl/mxv
	.byte	W01
mus_marionette_messiah_6_000:
	.byte		N02   , Dn3 , v127
	.byte	W02
	.byte		        Gn2
	.byte	W02
	.byte		        Cn2
	.byte	W02
	.byte		        Cs3 , v112
	.byte	W02
	.byte		        Gn2
	.byte	W02
	.byte		        Bn1
	.byte	W02
	.byte		        Cn3 , v100
	.byte	W02
	.byte		        Fs2
	.byte	W02
	.byte		        Bn1
	.byte	W02
	.byte		        Cn3 , v092
	.byte	W02
	.byte		        Fs2
	.byte	W02
	.byte		        Bn1
	.byte	W02
	.byte		        Bn2 , v080
	.byte	W02
	.byte		        Fn2
	.byte	W02
	.byte		        As1
	.byte	W02
	.byte		        Bn2 , v072
	.byte	W02
	.byte		        Fn2
	.byte	W02
	.byte		        As1
	.byte	W02
	.byte		        As2 , v060
	.byte	W02
	.byte		        En2
	.byte	W02
	.byte		        An1
	.byte	W02
	.byte		        As2 , v052
	.byte	W02
	.byte		        En2
	.byte	W02
	.byte		        An1
	.byte	W02
	.byte		        An2 , v040
	.byte	W48
	.byte		PEND
	.byte	W96
mus_marionette_messiah_6_001:
	.byte	W18
	.byte		VOICE , 50
	.byte		VOL   , 47*mus_marionette_messiah_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		N17   , Gn3 , v112
	.byte	W24
	.byte		        Fn3
	.byte	W24
	.byte		        As3
	.byte	W24
	.byte		N44   , Dn3 , v100
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W90
	.byte		VOICE , 27
	.byte		VOL   , 53*mus_marionette_messiah_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W05
mus_marionette_messiah_6_002:
	.byte		N03   , Gn2 , v076
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N05   , Fn2 , v096
	.byte	W07
	.byte		N03   , Gn2 , v076
	.byte	W12
	.byte		        Dn2
	.byte	W05
	.byte		N05   , As2 , v096
	.byte	W07
	.byte		N03   , An2 , v076
	.byte	W12
	.byte		N11   , Gn2 , v096
	.byte	W12
	.byte		N04   , An2 , v076
	.byte	W05
	.byte		N06   , Dn2 , v096
	.byte	W07
	.byte		N04   , Fn2 , v076
	.byte	W05
	.byte		PEND
mus_marionette_messiah_6_003:
	.byte		N03   , Gn2 , v076
	.byte	W12
	.byte		        As2
	.byte	W12
	.byte		N05   , Fn2 , v096
	.byte	W07
	.byte		N03   , Gn2 , v076
	.byte	W12
	.byte		        Dn2
	.byte	W05
	.byte		N05   , Cn2 , v096
	.byte	W07
	.byte		N03   , Dn2 , v076
	.byte	W12
	.byte		N11   , Fn2 , v096
	.byte	W12
	.byte		N04   , Gn2 , v076
	.byte	W05
	.byte		N06   , As2 , v096
	.byte	W07
	.byte		N04   , Dn2 , v076
	.byte	W05
	.byte		PEND
	.byte	PATT
	 .word	mus_marionette_messiah_6_002
	.byte	PATT
	 .word	mus_marionette_messiah_6_003
	.byte		N11   , Cn2 , v092
	.byte	W12
	.byte		N06   , Ds2 , v100
	.byte	W07
	.byte		N11   , Gn2 , v088
	.byte	W12
	.byte		N10   , Ds3 , v096
	.byte	W12
	.byte		N04   , Cn3 , v088
	.byte	W05
	.byte		N11   , Bn1 , v092
	.byte	W12
	.byte		N06   , Dn2 , v100
	.byte	W07
	.byte		N11   , Gn2 , v088
	.byte	W12
	.byte		N10   , Dn3 , v096
	.byte	W12
	.byte		N04   , Bn2 , v088
	.byte	W05
	.byte		N11   , As1 , v092
	.byte	W12
	.byte		N06   , Ds2 , v100
	.byte	W07
	.byte		N11   , Gn2 , v088
	.byte	W12
	.byte		N10   , Ds3 , v096
	.byte	W12
	.byte		N04   , As2 , v088
	.byte	W05
	.byte		N11   , An1 , v092
	.byte	W12
	.byte		N06   , Dn2
	.byte	W07
	.byte		N10   , An2 , v076
	.byte	W12
	.byte		        Dn3 , v088
	.byte	W12
	.byte		N04   , An2 , v076
	.byte	W05
	.byte	PATT
	 .word	mus_marionette_messiah_6_002
	.byte		N11   , Gn1 , v100
	.byte	W12
	.byte		N05   , As1 , v092
	.byte	W06
	.byte		        Gn1 , v060
	.byte	W06
	.byte		        Dn2 , v092
	.byte	W06
	.byte		        As1 , v052
	.byte	W06
	.byte		N56   , Gn2 , v100
	.byte	W60
	.byte		N11   , Cn2
	.byte	W12
	.byte		N05   , Ds2 , v092
	.byte	W06
	.byte		        Cn2 , v060
	.byte	W06
	.byte		        Gn2 , v092
	.byte	W06
	.byte		        Ds2 , v052
	.byte	W06
	.byte		N17   , Cn3 , v100
	.byte	W18
	.byte		N05   , Cn3 , v060
	.byte	W06
	.byte		N09   , Ds3 , v100
	.byte	W12
	.byte		N05   , Cn3 , v092
	.byte	W06
	.byte		        Ds3 , v060
	.byte	W06
	.byte		        Gn2 , v092
	.byte	W06
	.byte		        Cn3 , v052
	.byte	W04
	.byte		VOICE , 50
	.byte	W01
	.byte		VOL   , 47*mus_marionette_messiah_mvl/mxv
	.byte	W01
	.byte		N23   , Ds4 , v100
	.byte	W24
	.byte		N21   , Cn4
	.byte	W24
	.byte		N23   , Cn4 , v112
	.byte	W24
	.byte		N21   , Gs3 , v100
	.byte	W22
	.byte		VOICE , 27
	.byte		VOL   , 53*mus_marionette_messiah_mvl/mxv
	.byte	W02
	.byte		N10   , Dn2 , v092
	.byte	W12
	.byte		N05   , Gn1 , v100
	.byte	W06
	.byte		        Dn2 , v052
	.byte	W06
	.byte		N06   , Dn3 , v092
	.byte	W06
	.byte		N05   , Gn1 , v060
	.byte	W42
	.byte		N11   , As1 , v100
	.byte	W12
	.byte		N05   , Dn3 , v092
	.byte	W06
	.byte		        As1 , v064
	.byte	W06
	.byte		        Dn2 , v092
	.byte	W06
	.byte		        Dn3 , v052
	.byte	W06
	.byte		        Gn1 , v100
	.byte	W06
	.byte		        Dn2 , v052
	.byte	W06
	.byte		N06   , Dn3 , v092
	.byte	W06
	.byte		N05   , Gn1 , v060
	.byte	W06
	.byte		N06   , Dn2 , v092
	.byte	W07
	.byte		N11   , Gn1
	.byte	W12
	.byte		N04   , Dn2
	.byte	W05
	.byte		N10   , Gn2 , v100
	.byte	W13
	.byte		N04   , Dn2 , v052
	.byte	W05
	.byte		N05   , Gn1 , v060
	.byte	W18
	.byte	W12
	.byte		N11   , Ds2 , v100
	.byte	W12
	.byte		N05   , Gn2 , v092
	.byte	W06
	.byte		        Ds2 , v064
	.byte	W06
	.byte		N17   , Cn3 , v100
	.byte	W18
	.byte		N05   , Cn3 , v060
	.byte	W06
	.byte		N09   , Ds3 , v100
	.byte	W12
	.byte		N05   , Cn3 , v092
	.byte	W06
	.byte		        Ds3 , v060
	.byte	W06
	.byte		        Gn2 , v092
	.byte	W06
	.byte		        Cn3 , v052
	.byte	W04
	.byte		VOICE , 50
	.byte	W01
	.byte		VOL   , 47*mus_marionette_messiah_mvl/mxv
	.byte	W01
	.byte		N23   , Cn4 , v100
	.byte	W24
	.byte		N21   , An3
	.byte	W24
	.byte		N23   , As3
	.byte	W24
	.byte		N21   , Gn4
	.byte	W24
	.byte		N22
	.byte	W23
	.byte		VOICE , 27
	.byte		VOL   , 53*mus_marionette_messiah_mvl/mxv
	.byte	W01
	.byte		N11   , Ds3 , v092
	.byte	W48
	.byte		N10   , Gn2
	.byte	W24
	.byte	W24
	.byte		        Fs3 , v080
	.byte	W12
	.byte		N06   , An2 , v092
	.byte	W07
	.byte		N11   , An1
	.byte	W12
	.byte		N04   , An2
	.byte	W05
	.byte		N10   , Cn3 , v100
	.byte	W12
	.byte		N05   , An2 , v092
	.byte	W06
	.byte		        Cn3 , v060
	.byte	W06
	.byte		N04   , Fs3 , v072
	.byte	W06
	.byte		N05   , An2 , v040
	.byte	W06
	.byte		N04   , Cn3 , v092
	.byte	W06
	.byte		N05   , Fs3 , v032
	.byte	W06
	.byte		N04   , An2 , v092
	.byte	W06
	.byte		        Cn3 , v072
	.byte	W06
	.byte		        Cn3 , v092
	.byte	W06
	.byte		        An2 , v072
	.byte	W12
	.byte		        Cn3
	.byte	W06
	.byte		VOICE , 48
	.byte		VOL   , 35*mus_marionette_messiah_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W06
	.byte		N06   , Gn3 , v120
	.byte	W05
	.byte		        An3 , v112
	.byte	W07
	.byte		        As3
	.byte	W05
	.byte		        Cn4 , v120
	.byte	W07
	.byte		        Dn4 , v112
	.byte	W05
	.byte		        En4
	.byte	W07
	.byte		        Fs4
	.byte	W05
	.byte		N32   , Gn4 , v080
	.byte	W36
	.byte		N06   , Fn4 , v076
	.byte	W07
	.byte		        Gn4
	.byte	W05
	.byte		N21   , Dn4
	.byte	W24
	.byte		        As4
	.byte	W24
	.byte		        An4
	.byte	W24
	.byte		        Dn4
	.byte	W24
	.byte		        Dn5
	.byte	W24
	.byte		        Cn5
	.byte	W24
	.byte		N12   , An4
	.byte	W12
	.byte		N06   , Gn4
	.byte	W07
	.byte		        Fn4
	.byte	W05
	.byte		N32   , Cn4
	.byte	W36
	.byte		N09   , Cn5
	.byte	W12
	.byte		        As4
	.byte	W12
	.byte		        Cn5
	.byte	W12
	.byte		N23   , Gn4
	.byte	W24
	.byte		N09   , Ds5
	.byte	W12
	.byte		N21   , As4
	.byte	W24
	.byte		N06   , Dn4
	.byte	W07
	.byte		        Ds4
	.byte	W05
	.byte		        Fn4
	.byte	W07
	.byte		        Gn4
	.byte	W05
	.byte		        An4
	.byte	W07
	.byte		        As4
	.byte	W05
	.byte		N32   , Cn5
	.byte	W36
	.byte		N06   , As4
	.byte	W07
	.byte		        Cn5
	.byte	W05
	.byte		N21   , Ds4
	.byte	W24
	.byte		        Gn4
	.byte	W24
	.byte		        An4
	.byte	W24
	.byte		        Gn4
	.byte	W24
	.byte		N21
	.byte	W24
	.byte		        Ds4
	.byte	W24
	.byte		N06   , An3 , v100
	.byte	W07
	.byte		N05   , As3
	.byte	W05
	.byte		N09   , Cn4
	.byte	W12
	.byte		N06
	.byte	W07
	.byte		N05   , Dn4
	.byte	W05
	.byte		N09   , Ds4
	.byte	W12
	.byte		N06
	.byte	W07
	.byte		N05   , Fn4
	.byte	W05
	.byte		N09   , Gn4
	.byte	W12
	.byte		N06   , An4
	.byte	W07
	.byte		N05   , Gn4
	.byte	W05
	.byte		N06   , Ds4
	.byte	W07
	.byte		N05   , Cn4 , v076
	.byte	W05
	.byte		N11   , Cn4 , v080
	.byte	W96
	.byte	W18
	.byte		VOICE , 29
	.byte		VOL   , 67*mus_marionette_messiah_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N10   , Cn4 , v084
	.byte	W06
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		        c_v+0
	.byte	W03
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-29
	.byte		N66   , Dn4
	.byte	W01
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v+0
	.byte	W48
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-64
	.byte	W08
	.byte		        c_v-64
	.byte		N11
	.byte	W06
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte		N21   , An3
	.byte	W24
	.byte		N32   , Dn4
	.byte	W36
	.byte		N10   , Fs4 , v064
	.byte	W10
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-29
	.byte		N32   , An4 , v076
	.byte	W01
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v+0
	.byte	W09
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-64
	.byte	W03
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-62
	.byte	W02
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W07
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-53
	.byte		N11   , An4 , v072
	.byte	W01
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v+0
	.byte	W08
	.byte		        c_v+8
	.byte		N52   , Bn3 , v084
	.byte	W01
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+32
	.byte	W36
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-64
	.byte	W06
	.byte		        c_v-64
	.byte	W02
	.byte		        c_v-64
	.byte		N23   , An3 , v092
	.byte	W12
	.byte		BEND  , c_v-40
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+32
	.byte	W06
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		N10   , Gn3 , v076
	.byte	W10
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-24
	.byte		N54   , Dn4 , v084
	.byte	W01
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+32
	.byte	W05
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+32
	.byte	W24
	.byte	W02
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-64
	.byte	W03
	.byte		        c_v-64
	.byte		N11   , Cn4
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W07
	.byte		N04   , Ds4 , v072
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N11   , Cn4 , v084
	.byte	W06
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte		N06   , Ds4 , v080
	.byte	W07
	.byte		N03   , As3 , v076
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N11   , Fn4 , v084
	.byte	W06
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		        c_v+63
	.byte	W04
	.byte		        c_v+63
	.byte	W01
	.byte		        c_v+0
	.byte		N05   , As4 , v060
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N11   , Fn4 , v076
	.byte	W04
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		        c_v+63
	.byte	W06
	.byte		        c_v+0
	.byte	W01
	.byte		N05   , As4 , v056
	.byte	W05
	.byte		N06   , Ds4 , v072
	.byte	W07
	.byte		N04   , Gn4
	.byte	W05
	.byte		N18   , Ds4 , v084
	.byte	W12
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-49
	.byte		N17   , Gn4 , v076
	.byte	W01
	.byte		BEND  , c_v-34
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N11   , An4 , v060
	.byte	W12
	.byte		BEND  , c_v+7
	.byte		N23   , Gs4 , v064
	.byte	W01
	.byte		BEND  , c_v+15
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+63
	.byte	W09
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-64
	.byte		N22   , Cn4 , v092
	.byte	W22
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-32
	.byte		N11   , As3 , v084
	.byte	W06
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte		N10   , Cn4 , v076
	.byte	W10
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N11   , Dn4 , v084
	.byte	W06
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte		N10   , Ds4 , v076
	.byte	W10
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N11   , Fn4
	.byte	W06
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte		N10   , Gn4 , v064
	.byte	W12
	.byte		BEND  , c_v+15
	.byte		N11   , Gn4 , v076
	.byte	W01
	.byte		BEND  , c_v+31
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte		N06   , Ds4
	.byte	W07
	.byte		N03   , Cn4
	.byte	W05
	.byte		BEND  , c_v+15
	.byte		N17   , Cn4 , v092
	.byte	W01
	.byte		BEND  , c_v+31
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+63
	.byte	W07
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		N16   , An3 , v076
	.byte	W15
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-48
	.byte		N10   , Dn4 , v072
	.byte	W01
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-58
	.byte		N44   , An4
	.byte	W01
	.byte		BEND  , c_v-51
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-9
	.byte	W02
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-3
	.byte	W02
	.byte		        c_v+0
	.byte	W36
	.byte	W92
	.byte	W02
	.byte		VOICE , 120
	.byte	W01
	.byte		VOL   , 53*mus_marionette_messiah_mvl/mxv
	.byte	W01
	.byte	PATT
	 .word	mus_marionette_messiah_6_000
	.byte	W96
	.byte	GOTO
	 .word	mus_marionette_messiah_6_001
	.byte		FINE

@**************** Track 7 ****************@

mus_marionette_messiah_7:
	.byte		KEYSH , mus_marionette_messiah_key-12
	.byte		VOICE , 108
	.byte	W01
	.byte		VOL   , 70*mus_marionette_messiah_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		N90   , Gn1 , v116
	.byte	W96
	.byte		        Fn1
	.byte	W96
	.byte		N42   , En1
	.byte	W48
	.byte		        Ds1
	.byte	W48
	.byte		        Dn1
	.byte	W48
	.byte		N18
	.byte	W24
	.byte		N18
	.byte	W24
mus_marionette_messiah_7_000:
	.byte		N06   , Gn1 , v116
	.byte	W12
	.byte		N11
	.byte	W11
	.byte		VOICE , 107
	.byte	W01
	.byte		N16   , As4 , v028
	.byte	W24
	.byte		N06   , An4
	.byte	W06
	.byte		VOICE , 108
	.byte	W01
	.byte		N04   , Dn1 , v116
	.byte	W05
	.byte		N10   , Dn2
	.byte	W12
	.byte		N06   , Cn2
	.byte	W07
	.byte		N04   , Dn2
	.byte	W05
	.byte		N06   , An1
	.byte	W07
	.byte		N04   , Fn1
	.byte	W05
	.byte		PEND
mus_marionette_messiah_7_001:
	.byte		N06   , Gn1 , v116
	.byte	W12
	.byte		N11
	.byte	W11
	.byte		VOICE , 107
	.byte	W01
	.byte		N16   , Gn4 , v028
	.byte	W24
	.byte		VOICE , 108
	.byte		N06   , Fn1 , v116
	.byte	W07
	.byte		N04   , Dn1
	.byte	W05
	.byte		N06   , Fn1
	.byte	W07
	.byte		N04   , Gn1
	.byte	W12
	.byte		        Fn1
	.byte	W05
	.byte		N10   , As1
	.byte	W12
	.byte		PEND
mus_marionette_messiah_7_002:
	.byte	PATT
	 .word	mus_marionette_messiah_7_000
	.byte		N06   , Gn1 , v116
	.byte	W12
	.byte		N11
	.byte	W11
	.byte		VOICE , 107
	.byte	W01
	.byte		N06   , As4 , v028
	.byte	W12
	.byte		        Cn5
	.byte	W12
	.byte		VOICE , 108
	.byte		N06   , Fn1 , v116
	.byte	W07
	.byte		N04   , Dn1
	.byte	W05
	.byte		N06   , Fn1
	.byte	W07
	.byte		N04   , Gn1
	.byte	W12
	.byte		        Fn1
	.byte	W05
	.byte		N10   , As1
	.byte	W12
mus_marionette_messiah_7_003:
	.byte		N06   , Gn1 , v116
	.byte	W12
	.byte		N11
	.byte	W11
	.byte		VOICE , 107
	.byte	W01
	.byte		N16   , Gn4 , v028
	.byte	W24
	.byte		N06   , Fn4
	.byte	W06
	.byte		VOICE , 108
	.byte	W01
	.byte		N04   , Dn1 , v116
	.byte	W05
	.byte		N10   , Dn2
	.byte	W12
	.byte		N06   , Cn2
	.byte	W07
	.byte		N04   , Dn2
	.byte	W05
	.byte		N06   , An1
	.byte	W07
	.byte		N04   , Fn1
	.byte	W05
	.byte		PEND
	.byte	PATT
	 .word	mus_marionette_messiah_7_001
	.byte	PATT
	 .word	mus_marionette_messiah_7_003
	.byte		N06   , Cn1 , v116
	.byte	W12
	.byte		N10   , Dn1
	.byte	W12
	.byte		N06   , Ds1
	.byte	W12
	.byte		N10   , Fn1
	.byte	W12
	.byte		N12   , Gn1
	.byte	W48
mus_marionette_messiah_7_004:
	.byte		N06   , Gn1 , v116
	.byte	W12
	.byte		N12
	.byte	W42
	.byte	W01
	.byte		N04   , Dn1
	.byte	W05
	.byte		N10   , Dn2
	.byte	W12
	.byte		N06   , Cn2
	.byte	W07
	.byte		N04   , Dn2
	.byte	W05
	.byte		N06   , An1
	.byte	W07
	.byte		N04   , Fn1
	.byte	W05
	.byte		PEND
mus_marionette_messiah_7_005:
	.byte		N06   , Gn1 , v116
	.byte	W12
	.byte		N12
	.byte	W36
	.byte		N06   , Fn1
	.byte	W07
	.byte		N04   , Dn1
	.byte	W05
	.byte		N06   , Fn1
	.byte	W07
	.byte		N04   , Gn1
	.byte	W12
	.byte		        Fn1
	.byte	W05
	.byte		N10   , As1
	.byte	W12
	.byte		PEND
	.byte		N06   , Gn1
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		VOICE , 107
	.byte		PAN   , c_v+63
	.byte		N21   , Dn4 , v092
	.byte	W23
	.byte		VOICE , 108
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W07
	.byte		N04   , Dn1 , v116
	.byte	W05
	.byte		N10   , Dn2
	.byte	W12
	.byte		N06   , Cn2
	.byte	W07
	.byte		N04   , Dn2
	.byte	W05
	.byte		N06   , An1
	.byte	W07
	.byte		N04   , Fn1
	.byte	W05
	.byte	PATT
	 .word	mus_marionette_messiah_7_005
	.byte		N06   , Cn2 , v116
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Gn5 , v100
	.byte	W07
	.byte		N04   , Gn1 , v116
	.byte	W05
	.byte		N10   , Cn2
	.byte	W12
	.byte		N06   , Bn1
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Gn5 , v100
	.byte	W07
	.byte		N04   , Gn1 , v116
	.byte	W05
	.byte		N10   , Bn1
	.byte	W12
	.byte		N06   , As1
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Gn5 , v100
	.byte	W07
	.byte		N04   , Gn1 , v116
	.byte	W05
	.byte		N10   , As1
	.byte	W12
	.byte		N06   , An1
	.byte	W12
	.byte		N12
	.byte	W19
	.byte		N04   , Dn1
	.byte	W05
	.byte		N10   , Dn2
	.byte	W12
	.byte	PATT
	 .word	mus_marionette_messiah_7_004
	.byte	PATT
	 .word	mus_marionette_messiah_7_005
mus_marionette_messiah_7_006:
	.byte		N06   , Cn2 , v116
	.byte	W12
	.byte		N12
	.byte	W36
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W19
	.byte		N04   , Gn1
	.byte	W05
	.byte		N10   , Cn2
	.byte	W12
	.byte		PEND
	.byte		N06   , An1
	.byte	W12
	.byte		N12
	.byte	W36
	.byte		N06   , Gs1
	.byte	W12
	.byte		N12
	.byte	W19
	.byte		N04   , Ds1
	.byte	W05
	.byte		N10   , Gs1
	.byte	W12
	.byte	PATT
	 .word	mus_marionette_messiah_7_004
	.byte	PATT
	 .word	mus_marionette_messiah_7_005
	.byte	PATT
	 .word	mus_marionette_messiah_7_006
	.byte		N06   , Dn2 , v116
	.byte	W12
	.byte		N12
	.byte	W36
	.byte		N06   , Ds2
	.byte	W12
	.byte		N12
	.byte	W19
	.byte		N04   , As1
	.byte	W05
	.byte		N10   , Ds2
	.byte	W12
	.byte		N06   , An1
	.byte	W12
	.byte		N12
	.byte	W36
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W19
	.byte		N04   , En1
	.byte	W05
	.byte		N10   , An1
	.byte	W12
	.byte		N06   , Dn2
	.byte	W12
	.byte		N12
	.byte	W36
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W19
	.byte		N04   , An1
	.byte	W05
	.byte		N10   , Dn2
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		BEND  , c_v+15
	.byte		N14   , Cn2
	.byte	W01
	.byte		BEND  , c_v+31
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+63
	.byte	W06
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-64
	.byte	W03
	.byte		        c_v+0
	.byte	W48
mus_marionette_messiah_7_007:
	.byte		N06   , Gn1 , v116
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		PEND
mus_marionette_messiah_7_008:
	.byte		N06   , Fs1 , v116
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		PEND
mus_marionette_messiah_7_009:
	.byte		N06   , Fn1 , v116
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06   , En1
	.byte	W12
	.byte		N10   , En2
	.byte	W12
	.byte		N06   , En1
	.byte	W12
	.byte		N10   , En2
	.byte	W12
	.byte		PEND
mus_marionette_messiah_7_010:
	.byte		N06   , Ds2 , v116
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06   , Dn2
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06   , Cs2
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		PEND
mus_marionette_messiah_7_011:
	.byte		N06   , Cn2 , v116
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06   , As1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		PEND
mus_marionette_messiah_7_012:
	.byte		N06   , An1 , v116
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06   , Gn1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06   , Cn2
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		PEND
mus_marionette_messiah_7_013:
	.byte		N06   , An1 , v116
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		PEND
mus_marionette_messiah_7_014:
	.byte		N06   , Dn2 , v116
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_marionette_messiah_7_007
	.byte	PATT
	 .word	mus_marionette_messiah_7_008
	.byte	PATT
	 .word	mus_marionette_messiah_7_009
	.byte	PATT
	 .word	mus_marionette_messiah_7_010
	.byte	PATT
	 .word	mus_marionette_messiah_7_011
	.byte	PATT
	 .word	mus_marionette_messiah_7_012
	.byte	PATT
	 .word	mus_marionette_messiah_7_013
	.byte	PATT
	 .word	mus_marionette_messiah_7_014
	.byte		N06   , Dn2 , v116
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		BEND  , c_v+15
	.byte		N14   , Cn2
	.byte	W01
	.byte		BEND  , c_v+31
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+63
	.byte	W06
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-64
	.byte	W24
	.byte	W03
	.byte		        c_v+0
	.byte	W24
	.byte	PATT
	 .word	mus_marionette_messiah_7_003
	.byte	PATT
	 .word	mus_marionette_messiah_7_001
	.byte	GOTO
	 .word	mus_marionette_messiah_7_002
	.byte		FINE

@**************** Track 8 ****************@

mus_marionette_messiah_8:
	.byte		KEYSH , mus_marionette_messiah_key+0
	.byte		VOICE , 82
	.byte	W01
	.byte		VOL   , 41*mus_marionette_messiah_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		N12   , As2 , v080
	.byte	W12
	.byte		VOICE , 81
	.byte		N04   , Gn3
	.byte	W07
	.byte		        As3
	.byte	W05
	.byte		N06   , Dn4
	.byte	W07
	.byte		N04   , As3
	.byte	W05
	.byte		        Dn4
	.byte	W07
	.byte		        Gn4
	.byte	W05
	.byte		N44   , As4 , v072
	.byte	W12
	.byte		MOD   , 2
	.byte	W36
	.byte		VOICE , 82
	.byte		N12   , Dn3 , v080
	.byte	W12
	.byte		VOICE , 81
	.byte		N04   , Fn3
	.byte	W07
	.byte		        As3
	.byte	W05
	.byte		N06   , Dn4
	.byte	W07
	.byte		N04   , As3
	.byte	W05
	.byte		        Dn4
	.byte	W07
	.byte		        Fn4
	.byte	W05
	.byte		N44   , As4 , v072
	.byte	W48
	.byte		VOICE , 82
	.byte		N12   , Gn3 , v080
	.byte	W12
	.byte		VOICE , 81
	.byte		N04   , En3
	.byte	W07
	.byte		        Gn3
	.byte	W05
	.byte		N06   , Cn4
	.byte	W07
	.byte		N04   , Gn3
	.byte	W05
	.byte		        Cn4
	.byte	W07
	.byte		        En4
	.byte	W05
	.byte		N44   , Gn4 , v072
	.byte	W48
	.byte		VOICE , 82
	.byte		N12   , Gn3 , v080
	.byte	W12
	.byte		VOICE , 81
	.byte		N04   , Ds3
	.byte	W07
	.byte		        An3
	.byte	W05
	.byte		N06   , Ds4
	.byte	W07
	.byte		N04   , An3
	.byte	W05
	.byte		        Ds4
	.byte	W07
	.byte		        Gn4
	.byte	W05
	.byte		N17   , Dn4 , v072
	.byte	W24
	.byte		        Ds4
	.byte	W23
	.byte		VOICE , 81
	.byte	W01
	.byte		N16   , Gn3 , v120
	.byte	W23
	.byte		VOICE , 90
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N16   , Dn4 , v080
	.byte	W19
	.byte		N04
	.byte	W17
	.byte		        Cn4
	.byte	W12
	.byte		N06   , Dn4
	.byte	W07
	.byte		N10   , Cn4
	.byte	W11
	.byte		N06   , Dn4 , v052
	.byte	W06
	.byte	W01
	.byte		N09   , Cn4
	.byte	W11
	.byte		N04   , Cn4 , v080
	.byte	W12
	.byte		N16   , Ds4
	.byte	W18
	.byte		N05   , Ds4 , v052
	.byte	W06
	.byte		N16   , Cn4 , v080
	.byte	W19
	.byte		N04
	.byte	W12
	.byte		        Dn4
	.byte	W05
	.byte		N10   , Fn4
	.byte	W12
mus_marionette_messiah_8_000:
	.byte	W01
	.byte		N03   , Dn4 , v052
	.byte	W05
	.byte		N05   , Fn4
	.byte	W06
	.byte		N04   , Dn4 , v080
	.byte	W12
	.byte		N16
	.byte	W19
	.byte		N04
	.byte	W17
	.byte		        Cn4
	.byte	W12
	.byte		N06   , Dn4
	.byte	W07
	.byte		N10   , Cn4
	.byte	W11
	.byte		N05   , Dn4 , v052
	.byte	W05
	.byte		VOICE , 82
	.byte	W01
	.byte		PEND
	.byte		PAN   , c_v+0
	.byte		N06   , Fn3 , v072
	.byte	W11
	.byte		VOICE , 90
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N04   , Dn4 , v080
	.byte	W12
	.byte		N16   , Ds4
	.byte	W24
	.byte		        Dn4
	.byte	W19
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W05
	.byte		N10   , Fn4
	.byte	W12
	.byte	W01
	.byte		N03   , Dn4 , v052
	.byte	W05
	.byte		N05   , Fn4
	.byte	W06
	.byte		N04   , Dn4 , v080
	.byte	W12
	.byte		N16
	.byte	W19
	.byte		N04
	.byte	W17
	.byte		        Cn4
	.byte	W12
	.byte		N06   , Dn4
	.byte	W07
	.byte		N10   , Cn4
	.byte	W11
	.byte		N06   , Dn4 , v052
	.byte	W06
mus_marionette_messiah_8_001:
	.byte	W01
	.byte		N09   , Cn4 , v052
	.byte	W11
	.byte		N04   , Cn4 , v080
	.byte	W12
	.byte		N16   , Ds4
	.byte	W24
	.byte		        Cn4
	.byte	W19
	.byte		N04
	.byte	W12
	.byte		        Dn4
	.byte	W05
	.byte		N10   , Fn4
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_marionette_messiah_8_000
	.byte		PAN   , c_v+0
	.byte		N06   , An3 , v072
	.byte	W12
	.byte		        As3
	.byte	W06
	.byte		N05   , An3 , v040
	.byte	W06
	.byte		N06   , As3 , v072
	.byte	W06
	.byte		N05   , As3 , v040
	.byte	W06
	.byte		N06   , An3 , v072
	.byte	W06
	.byte		N05   , As3 , v040
	.byte	W06
	.byte		N06   , As3 , v072
	.byte	W06
	.byte		N05   , An3 , v040
	.byte	W12
	.byte		        As3
	.byte	W30
	.byte	W11
	.byte		VOICE , 90
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N04   , Dn4 , v080
	.byte	W12
	.byte		N16
	.byte	W19
	.byte		N04
	.byte	W17
	.byte		N04
	.byte	W12
	.byte		N06
	.byte	W07
	.byte		N10   , Cn4
	.byte	W11
	.byte		N06   , Dn4 , v052
	.byte	W06
	.byte	W01
	.byte		N09   , Cn4
	.byte	W11
	.byte		N04   , Dn4 , v080
	.byte	W12
	.byte		N16
	.byte	W24
	.byte		N16
	.byte	W19
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W05
	.byte		N10   , Fn4
	.byte	W12
	.byte	W01
	.byte		N03   , Dn4 , v052
	.byte	W05
	.byte		N05   , Fn4
	.byte	W06
	.byte		N04   , Dn4 , v080
	.byte	W12
	.byte		N16
	.byte	W19
	.byte		N04
	.byte	W04
	.byte		VOICE , 82
	.byte	W01
	.byte		PAN   , c_v+63
	.byte		N11   , Dn3
	.byte	W11
	.byte		VOICE , 90
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N04   , Dn4
	.byte	W12
	.byte		N06
	.byte	W07
	.byte		N10   , Cn4
	.byte	W11
	.byte		N05   , Dn4 , v052
	.byte	W06
	.byte		VOICE , 82
	.byte		PAN   , c_v+63
	.byte		BEND  , c_v-56
	.byte		N44   , As3 , v056
	.byte	W01
	.byte		BEND  , c_v-48
	.byte	W02
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-32
	.byte	W02
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-16
	.byte	W02
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+0
	.byte	W36
	.byte	W02
	.byte		VOICE , 90
	.byte		PAN   , c_v-64
	.byte		N16   , Dn4 , v080
	.byte	W19
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W05
	.byte		N10   , Cn4
	.byte	W12
	.byte		VOICE , 82
	.byte		PAN   , c_v+63
	.byte		N44   , Ds3 , v076
	.byte	W48
	.byte		        Gn3
	.byte	W48
	.byte		N44
	.byte	W48
	.byte		N23   , Gn3 , v064
	.byte	W24
	.byte		N22   , Fs3 , v076
	.byte	W24
	.byte	W12
	.byte		VOICE , 90
	.byte		PAN   , c_v-64
	.byte		N04   , Dn4 , v080
	.byte	W12
	.byte		N16
	.byte	W19
	.byte		N04
	.byte	W17
	.byte		N04
	.byte	W12
	.byte		N06
	.byte	W07
	.byte		N10   , Cn4
	.byte	W11
	.byte		N06   , Dn4 , v052
	.byte	W06
	.byte	W01
	.byte		N09   , Cn4
	.byte	W11
	.byte		N04   , Dn4 , v080
	.byte	W12
	.byte		N16
	.byte	W24
	.byte		N16
	.byte	W19
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W05
	.byte		N10   , Fn4
	.byte	W11
	.byte		VOICE , 82
	.byte	W01
	.byte		PAN   , c_v+63
	.byte		N44   , Cn4
	.byte	W44
	.byte	W01
	.byte		N03   , Cn4 , v032
	.byte	W03
	.byte		N44   , Ds4 , v080
	.byte	W44
	.byte	W01
	.byte		N03   , Ds4 , v032
	.byte	W03
	.byte		N44   , An3 , v072
	.byte	W44
	.byte	W01
	.byte		N03   , An3 , v032
	.byte	W03
	.byte		N44   , Gn3 , v072
	.byte	W44
	.byte	W01
	.byte		N03   , Gn3 , v032
	.byte	W03
	.byte		N32   , Gn3 , v080
	.byte	W32
	.byte	W01
	.byte		N03   , Gn3 , v032
	.byte	W03
	.byte		N06   , Fn3 , v080
	.byte	W07
	.byte		        Gn3
	.byte	W05
	.byte		N32   , As3
	.byte	W36
	.byte		N06   , An3
	.byte	W07
	.byte		        As3
	.byte	W05
	.byte		N21   , Dn4
	.byte	W21
	.byte		N03   , Dn4 , v032
	.byte	W03
	.byte		N21   , As3 , v080
	.byte	W21
	.byte		N03   , As3 , v032
	.byte	W03
	.byte		N21   , Gn4 , v080
	.byte	W21
	.byte		N03   , Gn4 , v032
	.byte	W03
	.byte		N21   , Fn4 , v080
	.byte	W21
	.byte		N03   , Fn4 , v032
	.byte	W03
	.byte		N44   , Ds4 , v080
	.byte	W44
	.byte	W01
	.byte		N03   , Ds4 , v032
	.byte	W03
	.byte		N21   , Gn3 , v080
	.byte	W21
	.byte		N03   , Gn3 , v032
	.byte	W03
	.byte		N24   , Cn4 , v080
	.byte	W24
	.byte		N44   , Fs3 , v072
	.byte	W44
	.byte	W01
	.byte		N03   , Fs3 , v032
	.byte	W03
	.byte		N21   , Gn3 , v072
	.byte	W21
	.byte		N03   , Gn3 , v032
	.byte	W03
	.byte		N21   , As3 , v072
	.byte	W21
	.byte		N03   , As3 , v032
	.byte	W03
	.byte		N96   , An3 , v068
	.byte	W92
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		VOICE , 80
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-56
	.byte		N15   , Fs3 , v092
	.byte	W01
	.byte		BEND  , c_v-48
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N03   , Dn3 , v080
	.byte	W07
	.byte		N15   , Fs3 , v092
	.byte	W12
	.byte		N03   , Dn3 , v080
	.byte	W05
	.byte		N06   , Fs3 , v092
	.byte	W07
	.byte		N03   , Dn3 , v080
	.byte	W05
	.byte		BEND  , c_v+5
	.byte		N44   , Cn4 , v088
	.byte	W01
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+63
	.byte	W24
	.byte	W03
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-64
	.byte	W03
	.byte		VOICE , 82
	.byte		BEND  , c_v+0
	.byte		N04   , Cn3 , v080
	.byte	W06
	.byte		        Cn3 , v052
	.byte	W06
	.byte		        An2 , v080
	.byte	W06
	.byte		        An2 , v052
	.byte	W06
	.byte		        Cn3 , v080
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N04   , Cn3 , v052
	.byte	W06
	.byte		N09   , An2 , v072
	.byte	W12
	.byte		N11   , Dn3
	.byte	W12
	.byte		N09   , Cn3
	.byte	W12
	.byte		        As2
	.byte	W12
	.byte		N03   , Cn3
	.byte	W07
	.byte		N32   , As2
	.byte	W05
mus_marionette_messiah_8_002:
	.byte	W36
	.byte		N09   , As2 , v072
	.byte	W12
	.byte		N11   , Dn3
	.byte	W12
	.byte		N09   , Cn3
	.byte	W12
	.byte		        As2
	.byte	W12
	.byte		N03   , Cn3
	.byte	W07
	.byte		N32   , An2
	.byte	W05
	.byte		PEND
mus_marionette_messiah_8_003:
	.byte	W36
	.byte		N09   , An2 , v072
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		PEND
	.byte		N17   , An3
	.byte	W24
	.byte		N17
	.byte	W24
	.byte		        Gn3
	.byte	W24
	.byte		N08   , En3
	.byte	W12
	.byte		N17   , Gn3
	.byte	W12
mus_marionette_messiah_8_004:
	.byte	W12
	.byte		N09   , Gn3 , v072
	.byte	W12
	.byte		N23
	.byte	W36
	.byte		N09   , Ds3
	.byte	W12
	.byte		        Fn3
	.byte	W12
	.byte		N05   , Gn3
	.byte	W07
	.byte		N09
	.byte	W05
	.byte		PEND
mus_marionette_messiah_8_005:
	.byte	W07
	.byte		N03   , Fn3 , v072
	.byte	W05
	.byte		N32   , Ds3
	.byte	W48
	.byte		N09   , Dn3
	.byte	W12
	.byte		        Fn3
	.byte	W12
	.byte		N05   , Gn3
	.byte	W07
	.byte		N09
	.byte	W05
	.byte		PEND
mus_marionette_messiah_8_006:
	.byte	W07
	.byte		N03   , Fn3 , v072
	.byte	W05
	.byte		N28   , Ds3
	.byte	W36
	.byte		N09   , Dn3
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		N28   , An3
	.byte	W12
	.byte		PEND
	.byte	W24
	.byte		N17
	.byte	W24
	.byte		N32   , Cn4
	.byte	W36
	.byte		N40   , An3
	.byte	W12
	.byte	W36
	.byte		N09   , An2
	.byte	W12
	.byte		N11   , Dn3
	.byte	W12
	.byte		N09   , Cn3
	.byte	W12
	.byte		        As2
	.byte	W12
	.byte		N03   , Cn3
	.byte	W07
	.byte		N32   , As2
	.byte	W05
	.byte	PATT
	 .word	mus_marionette_messiah_8_002
	.byte	PATT
	 .word	mus_marionette_messiah_8_003
	.byte		N17   , An3 , v072
	.byte	W24
	.byte		N17
	.byte	W24
	.byte		        Gn3
	.byte	W23
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v-24
	.byte		N05   , Cn4
	.byte	W01
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N17   , Gn3
	.byte	W12
	.byte	PATT
	 .word	mus_marionette_messiah_8_004
	.byte	PATT
	 .word	mus_marionette_messiah_8_005
	.byte	PATT
	 .word	mus_marionette_messiah_8_006
	.byte	W24
	.byte		N17   , An3 , v072
	.byte	W24
	.byte		N23   , Cn4
	.byte	W24
	.byte		N10   , Dn4
	.byte	W11
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v-28
	.byte		TIE
	.byte	W01
	.byte		BEND  , c_v-24
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte		VOICE , 82
	.byte	W01
	.byte		N04   , An3 , v080
	.byte	W06
	.byte		        An3 , v052
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        An3 , v052
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        An3 , v052
	.byte	W66
	.byte		N11   , As2 , v072
	.byte	W11
	.byte		VOICE , 90
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , Dn4 , v080
	.byte	W12
	.byte		N16
	.byte	W19
	.byte		N04
	.byte	W17
	.byte		        Cn4
	.byte	W12
	.byte		N06   , Dn4
	.byte	W07
	.byte		N10   , Cn4
	.byte	W11
	.byte		N06   , Dn4 , v052
	.byte	W06
	.byte	PATT
	 .word	mus_marionette_messiah_8_001
	.byte	GOTO
	 .word	mus_marionette_messiah_8_000
	.byte		FINE

@**************** Track 9 ****************@

mus_marionette_messiah_9:
	.byte		KEYSH , mus_marionette_messiah_key+0
	.byte		VOICE , 97
	.byte	W01
	.byte		VOL   , 41*mus_marionette_messiah_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		N30   , Gn2 , v092
	.byte	W30
	.byte		N04   , Gn3 , v052
	.byte	W07
	.byte		        As3
	.byte	W05
	.byte		N06   , Dn4
	.byte	W07
	.byte		N04   , As3
	.byte	W05
	.byte		        Dn4
	.byte	W07
	.byte		        Gn4
	.byte	W05
	.byte		N28   , As4
	.byte	W12
	.byte		MOD   , 2
	.byte	W18
	.byte		N30   , Fn2 , v092
	.byte	W30
	.byte		N04   , Fn3 , v052
	.byte	W07
	.byte		        As3
	.byte	W05
	.byte		N06   , Dn4
	.byte	W07
	.byte		N04   , As3
	.byte	W05
	.byte		        Dn4
	.byte	W07
	.byte		        Fn4
	.byte	W05
	.byte		N28   , As4
	.byte	W30
	.byte		N30   , En2 , v092
	.byte	W30
	.byte		N04   , En3 , v052
	.byte	W07
	.byte		        Gn3
	.byte	W05
	.byte		N06   , Cn4
	.byte	W07
	.byte		N04   , Gn3
	.byte	W05
	.byte		        Cn4
	.byte	W07
	.byte		        En4
	.byte	W05
	.byte		N28   , Gn4
	.byte	W30
	.byte		N30   , Dn2 , v092
	.byte	W30
	.byte		N04   , Ds3 , v052
	.byte	W07
	.byte		        An3
	.byte	W05
	.byte		N06   , Ds4
	.byte	W07
	.byte		N04   , An3
	.byte	W05
	.byte		        Ds4
	.byte	W07
	.byte		        Gn4
	.byte	W05
	.byte		N17   , Dn4
	.byte	W24
	.byte		N05   , Ds4
	.byte	W05
	.byte		VOICE , 87
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N11   , Dn3 , v072
	.byte	W11
	.byte		VOICE , 95
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N04   , Dn4
	.byte	W12
	.byte		N16   , As3
	.byte	W19
	.byte		N04
	.byte	W04
	.byte		VOICE , 87
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N06   , Fn3
	.byte	W11
	.byte		VOICE , 95
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N04   , An3
	.byte	W12
	.byte		N16   , As3
	.byte	W23
	.byte		VOICE , 87
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N06   , Gn3
	.byte	W11
	.byte		VOICE , 95
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N04   , An3
	.byte	W12
	.byte		N16   , Cn4
	.byte	W24
	.byte		        An3
	.byte	W19
	.byte		N04
	.byte	W04
	.byte		VOICE , 87
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N06   , Dn3
	.byte	W06
	.byte		VOICE , 95
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N16   , As3
	.byte	W16
	.byte		VOICE , 87
	.byte	W01
mus_marionette_messiah_9_000:
	.byte		PAN   , c_v+0
	.byte		N11   , As2 , v072
	.byte	W11
	.byte		VOICE , 95
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N04   , As3
	.byte	W12
	.byte		N16
	.byte	W19
	.byte		N04
	.byte	W04
	.byte		VOICE , 87
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N06   , Fn3
	.byte	W11
	.byte		VOICE , 95
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N04   , An3
	.byte	W12
	.byte		N16   , As3
	.byte	W23
	.byte		VOICE , 87
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N06   , An3
	.byte	W11
	.byte		VOICE , 95
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N04   , As3
	.byte	W12
	.byte		N11
	.byte	W11
	.byte		VOICE , 87
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N06   , An3
	.byte	W11
	.byte		VOICE , 95
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N16   , As3
	.byte	W19
	.byte		N04
	.byte	W12
	.byte		N16
	.byte	W16
	.byte		VOICE , 87
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N11   , As2
	.byte	W11
	.byte		VOICE , 95
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N04   , As3
	.byte	W12
	.byte		N16
	.byte	W19
	.byte		N04
	.byte	W17
	.byte		        An3
	.byte	W12
	.byte		N16   , As3
	.byte	W23
	.byte		VOICE , 87
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N06   , Gn3
	.byte	W11
	.byte		VOICE , 95
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N04   , An3
	.byte	W12
	.byte		N16   , Cn4
	.byte	W24
	.byte		N11   , An3
	.byte	W11
	.byte		VOICE , 87
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N05   , Cn3
	.byte	W05
	.byte		VOICE , 95
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , An3
	.byte	W04
	.byte		VOICE , 87
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N06   , Dn3
	.byte	W05
	.byte		VOICE , 95
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N16   , As3
	.byte	W16
	.byte		VOICE , 87
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N11   , As2
	.byte	W11
	.byte		VOICE , 95
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N04   , As3
	.byte	W12
	.byte		N16
	.byte	W19
	.byte		N04
	.byte	W17
	.byte		        An3
	.byte	W12
	.byte		N16   , As3
	.byte	W24
	.byte	W12
	.byte		N04   , Dn4 , v080
	.byte	W36
	.byte		N04
	.byte	W48
	.byte	W12
	.byte		        As3 , v072
	.byte	W12
	.byte		N16
	.byte	W19
	.byte		N04
	.byte	W17
	.byte		N04
	.byte	W12
	.byte		N16
	.byte	W24
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N16
	.byte	W24
	.byte		N16
	.byte	W19
	.byte		N04
	.byte	W12
	.byte		N16
	.byte	W17
	.byte	W12
	.byte		N04
	.byte	W05
	.byte		VOICE , 87
	.byte	W07
	.byte		PAN   , c_v+63
	.byte		N21   , As2 , v080
	.byte	W24
	.byte		        Fn3 , v088
	.byte	W24
	.byte		        Dn3
	.byte	W24
	.byte		BEND  , c_v-56
	.byte		N56   , Dn4 , v072
	.byte	W01
	.byte		BEND  , c_v-48
	.byte	W02
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-32
	.byte	W02
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-16
	.byte	W02
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+0
	.byte	W48
	.byte	W02
	.byte		N06   , Dn3 , v100
	.byte	W07
	.byte		        Ds3
	.byte	W05
	.byte		        Fn3
	.byte	W07
	.byte		        Gn3
	.byte	W05
	.byte		        An3
	.byte	W07
	.byte		        As3
	.byte	W05
	.byte		N44   , Cn4 , v080
	.byte	W48
	.byte		        Dn4
	.byte	W48
	.byte		        Ds4
	.byte	W48
	.byte		        Cn4 , v072
	.byte	W48
	.byte		N12   , As3
	.byte	W11
	.byte		VOICE , 95
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N04
	.byte	W12
	.byte		N16
	.byte	W19
	.byte		N04
	.byte	W17
	.byte		N04
	.byte	W12
	.byte		N16
	.byte	W24
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N16
	.byte	W24
	.byte		N16
	.byte	W19
	.byte		N04
	.byte	W12
	.byte		N16
	.byte	W16
	.byte		VOICE , 87
	.byte	W01
	.byte		PAN   , c_v+63
	.byte		N44   , Ds3
	.byte	W44
	.byte	W01
	.byte		N03   , Ds3 , v032
	.byte	W03
	.byte		N44   , Gn3 , v072
	.byte	W44
	.byte	W01
	.byte		N03   , Gn3 , v032
	.byte	W03
	.byte		N44   , Ds3 , v072
	.byte	W44
	.byte	W01
	.byte		N03   , Ds3 , v032
	.byte	W03
	.byte		N44   , Cn3 , v072
	.byte	W44
	.byte	W01
	.byte		N03   , Cn3 , v032
	.byte	W03
	.byte		N44   , As2 , v072
	.byte	W44
	.byte	W01
	.byte		N03   , As2 , v032
	.byte	W03
	.byte		N44   , Dn3 , v072
	.byte	W44
	.byte	W01
	.byte		N03   , Dn3 , v032
	.byte	W03
	.byte		N21   , As2 , v072
	.byte	W21
	.byte		N03   , As2 , v032
	.byte	W03
	.byte		N21   , Dn3 , v072
	.byte	W21
	.byte		N03   , Dn3 , v032
	.byte	W03
	.byte		N44   , As3 , v072
	.byte	W44
	.byte	W01
	.byte		N03   , As3 , v032
	.byte	W03
	.byte		N44   , Gn3 , v072
	.byte	W44
	.byte	W01
	.byte		N03   , Gn3 , v032
	.byte	W03
	.byte		N44   , Ds3 , v072
	.byte	W44
	.byte	W01
	.byte		N03   , Ds3 , v032
	.byte	W03
	.byte		N44   , Dn3 , v072
	.byte	W44
	.byte	W01
	.byte		N03   , Dn3 , v032
	.byte	W03
	.byte		N44   , Ds3 , v072
	.byte	W44
	.byte	W01
	.byte		N03   , Ds3 , v032
	.byte	W03
	.byte		N96   , Cn3 , v064
	.byte	W96
	.byte		VOICE , 86
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-56
	.byte		N15   , Fs2 , v127
	.byte	W01
	.byte		BEND  , c_v-48
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N03   , Dn2 , v120
	.byte	W07
	.byte		N15   , Fs2 , v127
	.byte	W12
	.byte		N03   , Dn2 , v120
	.byte	W05
	.byte		N06   , Fs2 , v127
	.byte	W07
	.byte		N03   , Dn2 , v120
	.byte	W05
	.byte		BEND  , c_v+5
	.byte		N44   , Cn3 , v112
	.byte	W01
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+63
	.byte	W24
	.byte	W03
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		VOICE , 87
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N04   , Fs2 , v076
	.byte	W06
	.byte		        Fs2 , v040
	.byte	W06
	.byte		        Fs2 , v076
	.byte	W06
	.byte		        Fs2 , v040
	.byte	W06
	.byte		        Fs2 , v076
	.byte	W06
	.byte		        Fs2 , v040
	.byte	W66
	.byte	W11
	.byte		VOICE , 95
	.byte		PAN   , c_v-64
	.byte		N01   , As3 , v100
	.byte	W01
	.byte		N04   , Dn4
	.byte	W11
	.byte		N01   , As3
	.byte	W01
	.byte		N16   , Dn4
	.byte	W18
	.byte		N05   , Dn4 , v052
	.byte	W05
	.byte		N01   , As3 , v100
	.byte	W01
	.byte		N16   , Dn4
	.byte	W18
	.byte		N01   , As3
	.byte	W01
	.byte		N04   , Dn4
	.byte	W16
	.byte		N01   , As3
	.byte	W01
	.byte		N10   , Dn4
	.byte	W12
mus_marionette_messiah_9_001:
	.byte	W06
	.byte		N05   , Dn4 , v052
	.byte	W05
	.byte		N01   , An3 , v100
	.byte	W01
	.byte		N04   , Dn4
	.byte	W11
	.byte		N01   , An3
	.byte	W01
	.byte		N04   , Cn4
	.byte	W06
	.byte		N01   , An3
	.byte	W01
	.byte		N09   , Dn4
	.byte	W11
	.byte		N03   , Cn4 , v052
	.byte	W05
	.byte		N01   , An3 , v100
	.byte	W01
	.byte		N04   , Dn4
	.byte	W11
	.byte		N01   , An3
	.byte	W01
	.byte		N04   , Dn4
	.byte	W06
	.byte		N03   , Dn4 , v052
	.byte	W05
	.byte		N01   , An3 , v100
	.byte	W01
	.byte		N16   , Dn4
	.byte	W18
	.byte		N01   , An3
	.byte	W01
	.byte		N04   , Dn4
	.byte	W05
	.byte		PEND
mus_marionette_messiah_9_002:
	.byte	W11
	.byte		N01   , An3 , v100
	.byte	W01
	.byte		N04   , Cn4
	.byte	W11
	.byte		N01   , An3
	.byte	W01
	.byte		N16   , Cn4
	.byte	W18
	.byte		N05   , Cn4 , v052
	.byte	W05
	.byte		N01   , Gn3 , v100
	.byte	W01
	.byte		N16   , Cn4
	.byte	W18
	.byte		N01   , Gn3
	.byte	W01
	.byte		N04   , Cn4
	.byte	W16
	.byte		N01   , Gn3
	.byte	W01
	.byte		N10   , Cn4
	.byte	W12
	.byte		PEND
	.byte	W06
	.byte		N05   , Cn4 , v052
	.byte	W05
	.byte		N01   , As3 , v100
	.byte	W01
	.byte		N04   , Ds4
	.byte	W11
	.byte		N01   , As3
	.byte	W01
	.byte		N04   , Dn4
	.byte	W06
	.byte		N01   , As3
	.byte	W01
	.byte		N09   , Ds4
	.byte	W11
	.byte		N03   , Dn4 , v052
	.byte	W05
	.byte		N01   , As3 , v100
	.byte	W01
	.byte		N04   , Ds4
	.byte	W11
	.byte		N01   , As3
	.byte	W01
	.byte		N04   , Ds4
	.byte	W06
	.byte		N03   , Ds4 , v052
	.byte	W05
	.byte		N01   , As3 , v100
	.byte	W01
	.byte		N16   , Ds4
	.byte	W18
	.byte		N01   , As3
	.byte	W01
	.byte		N04   , Ds4
	.byte	W05
mus_marionette_messiah_9_003:
	.byte	W11
	.byte		N01   , Cn4 , v100
	.byte	W01
	.byte		N04   , Ds4
	.byte	W11
	.byte		N01   , Cn4
	.byte	W01
	.byte		N16   , Ds4
	.byte	W18
	.byte		N05   , Ds4 , v052
	.byte	W05
	.byte		N01   , As3 , v100
	.byte	W01
	.byte		N16   , Ds4
	.byte	W18
	.byte		N01   , As3
	.byte	W01
	.byte		N04   , Ds4
	.byte	W16
	.byte		N01   , As3
	.byte	W01
	.byte		N10   , Ds4
	.byte	W12
	.byte		PEND
mus_marionette_messiah_9_004:
	.byte	W06
	.byte		N05   , Ds4 , v052
	.byte	W05
	.byte		N01   , Cn4 , v100
	.byte	W01
	.byte		N04   , Ds4
	.byte	W11
	.byte		N01   , Cn4
	.byte	W01
	.byte		N04   , Dn4
	.byte	W06
	.byte		N01   , Cn4
	.byte	W01
	.byte		N09   , Ds4
	.byte	W11
	.byte		N03   , Dn4 , v052
	.byte	W05
	.byte		N01   , As3 , v100
	.byte	W01
	.byte		N04   , Dn4
	.byte	W11
	.byte		N01   , As3
	.byte	W01
	.byte		N04   , Dn4
	.byte	W06
	.byte		N03   , Dn4 , v052
	.byte	W05
	.byte		N01   , As3 , v100
	.byte	W01
	.byte		N16   , Ds4
	.byte	W18
	.byte		N01   , As3
	.byte	W01
	.byte		N04   , Ds4
	.byte	W05
	.byte		PEND
	.byte	W11
	.byte		N01   , Cn4
	.byte	W01
	.byte		N04   , Ds4
	.byte	W11
	.byte		N01   , Cn4
	.byte	W01
	.byte		N16   , Ds4
	.byte	W18
	.byte		N05   , Ds4 , v052
	.byte	W05
	.byte		N01   , Cn4 , v100
	.byte	W01
	.byte		N16   , Ds4
	.byte	W18
	.byte		N01   , Cn4
	.byte	W01
	.byte		N04   , Ds4
	.byte	W16
	.byte		N01   , Cn4
	.byte	W01
	.byte		N10   , Ds4
	.byte	W12
	.byte	W06
	.byte		N05   , Ds4 , v052
	.byte	W05
	.byte		N01   , An3 , v100
	.byte	W01
	.byte		N04   , Dn4
	.byte	W11
	.byte		N01   , An3
	.byte	W01
	.byte		N04   , Cn4
	.byte	W06
	.byte		N01   , An3
	.byte	W01
	.byte		N09   , Dn4
	.byte	W11
	.byte		N03   , Cn4 , v052
	.byte	W05
	.byte		N01   , An3 , v100
	.byte	W01
	.byte		N04   , Dn4
	.byte	W11
	.byte		N01   , An3
	.byte	W01
	.byte		N04   , Dn4
	.byte	W06
	.byte		N03   , Dn4 , v052
	.byte	W05
	.byte		N01   , An3 , v100
	.byte	W01
	.byte		N16   , Dn4
	.byte	W18
	.byte		N01   , An3
	.byte	W01
	.byte		N04   , Dn4
	.byte	W05
	.byte	W11
	.byte		N01   , As3
	.byte	W01
	.byte		N04   , Dn4
	.byte	W11
	.byte		N01   , As3
	.byte	W01
	.byte		N16   , Dn4
	.byte	W18
	.byte		N05   , Dn4 , v052
	.byte	W05
	.byte		N01   , As3 , v100
	.byte	W01
	.byte		N16   , Dn4
	.byte	W18
	.byte		N01   , As3
	.byte	W01
	.byte		N04   , Dn4
	.byte	W16
	.byte		N01   , As3
	.byte	W01
	.byte		N10   , Dn4
	.byte	W12
	.byte	PATT
	 .word	mus_marionette_messiah_9_001
	.byte	PATT
	 .word	mus_marionette_messiah_9_002
	.byte	W06
	.byte		N05   , Cn4 , v052
	.byte	W05
	.byte		N01   , As3 , v100
	.byte	W01
	.byte		N04   , Ds4
	.byte	W11
	.byte		N01   , As3
	.byte	W01
	.byte		N04   , Dn4
	.byte	W07
	.byte		N09   , Ds4
	.byte	W11
	.byte		N03   , Dn4 , v052
	.byte	W05
	.byte		N01   , As3 , v100
	.byte	W01
	.byte		N04   , Ds4
	.byte	W11
	.byte		N01   , As3
	.byte	W01
	.byte		N04   , Ds4
	.byte	W06
	.byte		N03   , Ds4 , v052
	.byte	W05
	.byte		N01   , As3 , v100
	.byte	W01
	.byte		N16   , Ds4
	.byte	W18
	.byte		N01   , As3
	.byte	W01
	.byte		N04   , Ds4
	.byte	W05
	.byte	PATT
	 .word	mus_marionette_messiah_9_003
	.byte	PATT
	 .word	mus_marionette_messiah_9_004
	.byte	W11
	.byte		N01   , Cn4 , v100
	.byte	W01
	.byte		N04   , Ds4
	.byte	W11
	.byte		N01   , Cn4
	.byte	W01
	.byte		N16   , Ds4
	.byte	W18
	.byte		N05   , Ds4 , v052
	.byte	W05
	.byte		N01   , Cn4 , v100
	.byte	W01
	.byte		N16   , Ds4
	.byte	W18
	.byte		N01   , Cn4
	.byte	W01
	.byte		N04   , Ds4
	.byte	W16
	.byte		N01   , Cn4
	.byte	W01
	.byte		        Ds4
	.byte	W01
	.byte		N09   , Ds4 , v052
	.byte	W11
	.byte	W06
	.byte		N05
	.byte	W05
	.byte		N01   , An3 , v100
	.byte	W01
	.byte		N04   , Dn4
	.byte	W11
	.byte		N01   , An3
	.byte	W01
	.byte		N04   , Cn4
	.byte	W06
	.byte		N01   , An3
	.byte	W01
	.byte		N09   , Dn4
	.byte	W11
	.byte		N03   , Cn4 , v052
	.byte	W05
	.byte		N01   , An3 , v100
	.byte	W01
	.byte		N04   , Dn4
	.byte	W11
	.byte		N01   , An3
	.byte	W01
	.byte		N04   , Dn4
	.byte	W06
	.byte		N03   , Dn4 , v052
	.byte	W05
	.byte		N01   , An3 , v100
	.byte	W01
	.byte		N16   , Dn4
	.byte	W18
	.byte		N01   , An3
	.byte	W01
	.byte		N04   , Dn4
	.byte	W04
	.byte		VOICE , 87
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N04   , Fs3 , v076
	.byte	W06
	.byte		        Fs3 , v040
	.byte	W06
	.byte		        Fs3 , v076
	.byte	W06
	.byte		        Fs3 , v040
	.byte	W06
	.byte		        Fs3 , v076
	.byte	W06
	.byte		        Fs3 , v040
	.byte	W64
	.byte	W01
	.byte		VOICE , 87
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N16   , Dn3 , v072
	.byte	W11
	.byte		VOICE , 95
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W12
	.byte		N16   , As3
	.byte	W19
	.byte		N04
	.byte	W17
	.byte		        An3
	.byte	W12
	.byte		N16   , As3
	.byte	W23
	.byte		VOICE , 87
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N06   , Gn3
	.byte	W11
	.byte		VOICE , 95
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N04   , An3
	.byte	W12
	.byte		N16   , Cn4
	.byte	W24
	.byte		N11   , An3
	.byte	W11
	.byte		VOICE , 87
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N06   , Cn3
	.byte	W05
	.byte		VOICE , 95
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , An3
	.byte	W04
	.byte		VOICE , 87
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N06   , Dn3
	.byte	W05
	.byte		VOICE , 95
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N16   , As3
	.byte	W17
	.byte	GOTO
	 .word	mus_marionette_messiah_9_000
	.byte		FINE

@******************************************************@
	.align	2

mus_marionette_messiah:
	.byte	9	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_marionette_messiah_pri	@ Priority
	.byte	mus_marionette_messiah_rev	@ Reverb.

	.word	mus_marionette_messiah_grp

	.word	mus_marionette_messiah_1
	.word	mus_marionette_messiah_2
	.word	mus_marionette_messiah_3
	.word	mus_marionette_messiah_4
	.word	mus_marionette_messiah_5
	.word	mus_marionette_messiah_6
	.word	mus_marionette_messiah_7
	.word	mus_marionette_messiah_8
	.word	mus_marionette_messiah_9

	.end
