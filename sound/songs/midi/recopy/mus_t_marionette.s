	.include "MPlayDef.s"

	.equ	mus_t_marionette_grp, voicegroup_vs_frontier_brain
	.equ	mus_t_marionette_pri, 1
	.equ	mus_t_marionette_rev, reverb_set+50
	.equ	mus_t_marionette_mvl, 100
	.equ	mus_t_marionette_key, 0
	.equ	mus_t_marionette_tbs, 1
	.equ	mus_t_marionette_exg, 1
	.equ	mus_t_marionette_cmp, 1

	.section .rodata
	.global	mus_t_marionette
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_t_marionette_1:
	.byte	KEYSH , mus_t_marionette_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 250*mus_t_marionette_tbs/2
	.byte		VOICE , 30
	.byte	W01
	.byte		VOL   , 127*mus_t_marionette_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte	TEMPO , 140*mus_t_marionette_tbs/2
	.byte		N78   , Gn2 , v127
	.byte	W72
@ 001   ----------------------------------------
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N12   , An2 
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte		N78   , As2 
	.byte	W72
@ 002   ----------------------------------------
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N12   , Cn3 
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte		N30   , Dn3 
	.byte	W36
	.byte		N09   , Cn3 
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
@ 003   ----------------------------------------
	.byte		        c_v-26
	.byte		N21   , Dn3 
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
	.byte		N30   , Ds3 
	.byte	W36
	.byte		N09   , Dn3 
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
@ 004   ----------------------------------------
	.byte		        Ds3 
	.byte	W18
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-58
	.byte		N66   , Gn3 , v112
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
	.byte	W60
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W24
mus_t_marionette_1_B1:
	.byte	W72
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W18
	.byte		VOICE , 56
	.byte		VOL   , 127*mus_t_marionette_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		        c_v+0
	.byte	W72
@ 012   ----------------------------------------
	.byte	W12
	.byte		N05   , Dn3 , v120
	.byte	W06
	.byte		        Fn3 , v112
	.byte	W06
	.byte		N09   , Gn3 , v120
	.byte	W12
	.byte		N05   , Fn3 , v112
	.byte	W06
	.byte		N09   , Gn3 
	.byte	W18
	.byte		N28   , Dn3 , v116
	.byte	W36
@ 013   ----------------------------------------
	.byte	W12
	.byte		N05   , Dn3 , v120
	.byte	W06
	.byte		        Fn3 , v112
	.byte	W06
	.byte		N09   , Gn3 , v120
	.byte	W12
	.byte		N05   , Fn3 , v112
	.byte	W06
	.byte		N09   , Gn3 
	.byte	W18
	.byte		N17   , As3 , v116
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
@ 014   ----------------------------------------
	.byte		N11   , An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N05   , As3 , v112
	.byte	W06
	.byte		N80   , Dn3 , v116
	.byte	W54
@ 015   ----------------------------------------
	.byte	W60
	.byte		N09   , Dn3 , v120
	.byte	W11
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v-28
	.byte		N11   , Fn3 
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
@ 016   ----------------------------------------
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Ds3 , v124
	.byte	W12
	.byte		N05   , Fn3 , v112
	.byte	W06
	.byte		N17   , Gn3 
	.byte	W30
	.byte		N09   , Gn3 , v120
	.byte	W12
	.byte		N05   , Fn3 , v112
	.byte	W06
	.byte		N17   , Gn3 
	.byte	W06
@ 017   ----------------------------------------
	.byte	W24
	.byte		N09   , Ds3 , v124
	.byte	W12
	.byte		N05   , Fn3 , v112
	.byte	W06
	.byte		N17   , Gn3 
	.byte	W42
	.byte		N08   , An3 , v116
	.byte	W12
@ 018   ----------------------------------------
	.byte		N05   , Cn4 , v120
	.byte	W06
	.byte		N17   , An3 , v116
	.byte	W18
	.byte		N23   , Dn3 
	.byte	W68
	.byte	W03
	.byte		BEND  , c_v-32
	.byte	W01
@ 019   ----------------------------------------
	.byte		        c_v-28
	.byte		N11   , Fn3 , v120
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
	.byte		N32   , Dn3 , v116
	.byte	W84
@ 020   ----------------------------------------
mus_t_marionette_1_020:
	.byte		N10   , Ds3 , v120
	.byte	W12
	.byte		        Fn3 , v112
	.byte	W12
	.byte		N52   , Gn3 
	.byte	W72
	.byte	PEND
@ 021   ----------------------------------------
	.byte		N10   , Ds3 , v120
	.byte	W12
	.byte		        Fn3 , v112
	.byte	W12
	.byte		N17   , Gn3 , v116
	.byte	W24
	.byte		        An3 , v112
	.byte	W24
	.byte		        As3 
	.byte	W23
	.byte		BEND  , c_v-32
	.byte	W01
@ 022   ----------------------------------------
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
	.byte	W72
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_1_020
@ 025   ----------------------------------------
	.byte		N10   , Ds3 , v120
	.byte	W12
	.byte		        Gn3 , v112
	.byte	W12
	.byte		N17   , An3 , v120
	.byte	W24
	.byte		N17   
	.byte	W24
	.byte		        As3 
	.byte	W24
@ 026   ----------------------------------------
	.byte		        Gn3 
	.byte	W24
	.byte		N40   , An3 , v112
	.byte	W44
	.byte	W03
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		        c_v+63
	.byte		N21   , Gn3 , v120
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
@ 027   ----------------------------------------
	.byte		        c_v+0
	.byte		N08   , Dn3 , v116
	.byte	W10
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-56
	.byte		TIE   , Dn4 , v112
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
	.byte	W78
@ 028   ----------------------------------------
	.byte	W17
	.byte		EOT   
	.byte	W36
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N09   , Dn3 , v124
	.byte	W12
	.byte		N11   , As3 
	.byte	W12
	.byte		N09   , An3 
	.byte	W12
@ 029   ----------------------------------------
mus_t_marionette_1_029:
	.byte		N09   , Gn3 , v124
	.byte	W12
	.byte		N03   , An3 
	.byte	W07
	.byte		N32   , Dn3 
	.byte	W40
	.byte	W01
	.byte		N09   
	.byte	W12
	.byte		N11   , As3 
	.byte	W12
	.byte		N09   , An3 
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
mus_t_marionette_1_030:
	.byte		N09   , Gn3 , v124
	.byte	W12
	.byte		N03   , An3 
	.byte	W07
	.byte		N32   , Dn3 
	.byte	W40
	.byte	W01
	.byte		N09   
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N17   , Cn4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
@ 032   ----------------------------------------
	.byte		N08   , Gn3 
	.byte	W12
	.byte		N17   , Cn4 
	.byte	W24
	.byte		N09   , As3 
	.byte	W12
	.byte		N23   
	.byte	W36
	.byte		N09   , Gn3 
	.byte	W12
@ 033   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		N05   , As3 
	.byte	W07
	.byte		N11   , Ds4 
	.byte	W12
	.byte		N03   , Dn4 
	.byte	W05
	.byte		N32   , Cn4 
	.byte	W48
	.byte		N09   , Gn3 
	.byte	W12
@ 034   ----------------------------------------
mus_t_marionette_1_034:
	.byte		N09   , An3 , v124
	.byte	W12
	.byte		N05   , As3 
	.byte	W06
	.byte		N11   , Ds4 
	.byte	W13
	.byte		N03   , Dn4 
	.byte	W05
	.byte		N28   , Cn4 
	.byte	W36
	.byte		N09   , Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		N28   , Ds4 
	.byte	W36
	.byte		N17   , Cn4 
	.byte	W24
	.byte		N23   , Gn4 
	.byte	W24
@ 036   ----------------------------------------
	.byte		N11   , An4 
	.byte	W12
	.byte		N40   , Dn4 
	.byte	W48
	.byte		N09   , Dn3 
	.byte	W12
	.byte		N11   , As3 
	.byte	W12
	.byte		N09   , An3 
	.byte	W12
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_1_029
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_1_030
@ 039   ----------------------------------------
	.byte		N09   , Cn4 , v124
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N17   , Cn4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Cn4 
	.byte	W23
	.byte		BEND  , c_v-32
	.byte	W01
@ 040   ----------------------------------------
	.byte		        c_v-24
	.byte		N05   , Gn4 , v120
	.byte	W01
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N17   , Cn4 , v124
	.byte	W24
	.byte		N09   , As3 
	.byte	W12
	.byte		N23   
	.byte	W36
	.byte		N09   , Gn3 
	.byte	W12
@ 041   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		N05   , As3 
	.byte	W06
	.byte		N11   , Ds4 
	.byte	W13
	.byte		N03   , Dn4 
	.byte	W05
	.byte		N32   , Cn4 
	.byte	W48
	.byte		N09   , Gn3 
	.byte	W12
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_1_034
@ 043   ----------------------------------------
	.byte		N09   , As3 , v124
	.byte	W12
	.byte		N28   , Ds4 
	.byte	W36
	.byte		N17   , Cn4 
	.byte	W24
	.byte		N23   , Ds4 
	.byte	W24
@ 044   ----------------------------------------
	.byte		N10   , Gn4 , v120
	.byte	W11
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v-28
	.byte		TIE   , An4 
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
	.byte	W78
@ 045   ----------------------------------------
	.byte	W23
	.byte		EOT   
	.byte	W60
	.byte	W01
	.byte		N09   , Dn4 , v116
	.byte	W12
@ 046   ----------------------------------------
	.byte		        Cn4 
	.byte	W12
	.byte		N10   , Dn4 , v112
	.byte	W12
	.byte		VOICE , 14
	.byte		VOL   , 90*mus_t_marionette_mvl/mxv
	.byte		N12   , Gn4 , v127, gtp1
	.byte	W72
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte		VOL   , 127*mus_t_marionette_mvl/mxv	
	.byte	W24
	.byte	GOTO
	 .word	mus_t_marionette_1_B1
mus_t_marionette_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_t_marionette_2:
	.byte	KEYSH , mus_t_marionette_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 24
	.byte	W01
	.byte		VOL   , 82*mus_t_marionette_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		N11   , Gn1 , v112
	.byte	W12
	.byte		N05   , As1 , v108
	.byte	W06
	.byte		        Gn1 , v088
	.byte	W06
	.byte		        Dn2 , v108
	.byte	W06
	.byte		        As1 , v084
	.byte	W06
	.byte		N17   , Gn2 , v112
	.byte	W18
	.byte		N05   , Gn2 , v088
	.byte	W06
	.byte		N11   , Dn3 , v108
	.byte	W12
@ 001   ----------------------------------------
	.byte		N05   , As2 
	.byte	W06
	.byte		        Dn3 , v080
	.byte	W06
	.byte		N03   , Dn2 , v108
	.byte	W06
	.byte		N05   , As2 , v084
	.byte	W06
	.byte		        Fn1 , v112
	.byte	W06
	.byte		N03   , Dn2 , v084
	.byte	W06
	.byte		N05   , As1 , v108
	.byte	W06
	.byte		        Fn1 , v088
	.byte	W06
	.byte		        Dn2 , v108
	.byte	W06
	.byte		        As1 , v084
	.byte	W06
	.byte		N17   , As2 , v112
	.byte	W18
	.byte		N05   , As2 , v088
	.byte	W06
	.byte		N11   , Dn3 , v108
	.byte	W12
@ 002   ----------------------------------------
	.byte		N05   , As2 
	.byte	W06
	.byte		        Dn3 , v080
	.byte	W06
	.byte		N03   , Dn2 , v108
	.byte	W06
	.byte		N05   , As2 , v084
	.byte	W06
	.byte		        En1 , v112
	.byte	W06
	.byte		N03   , Dn2 , v084
	.byte	W06
	.byte		N05   , Cn2 , v108
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		N17   , Gn2 , v108
	.byte	W18
	.byte		N05   , Gn2 , v084
	.byte	W06
	.byte		N11   , As1 , v112
	.byte	W12
	.byte		N05   , Ds2 , v108
	.byte	W06
	.byte		        As1 , v088
	.byte	W06
@ 003   ----------------------------------------
	.byte		N17   , Gn2 , v108
	.byte	W06
	.byte		N05   , Ds2 , v084
	.byte	W12
	.byte		        Gn2 
	.byte	W06
	.byte		N11   , Dn2 , v112
	.byte	W12
	.byte		N05   , An2 , v108
	.byte	W06
	.byte		        Dn2 , v088
	.byte	W06
	.byte		N17   , Gn2 , v100
	.byte	W18
	.byte		N05   , Gn2 , v076
	.byte	W06
	.byte		N17   , Dn2 , v112
	.byte	W18
	.byte		N05   , Dn2 , v088
	.byte	W06
@ 004   ----------------------------------------
	.byte		N17   , Fs2 , v100
	.byte	W18
	.byte		N05   , Fs2 , v076
	.byte	W05
	.byte		VOL   , 82*mus_t_marionette_mvl/mxv
	.byte	W01
	.byte		VOICE , 14
	.byte		N12   , Gn4 , v127
	.byte	W72
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W24
mus_t_marionette_2_B1:
	.byte	W18
	.byte		VOICE , 48
	.byte		VOL   , 77*mus_t_marionette_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		N17   , Gn3 , v120
	.byte	W24
	.byte		        Fn3 
	.byte	W24
@ 007   ----------------------------------------
	.byte		        As3 
	.byte	W24
	.byte		N44   , Dn3 , v112
	.byte	W60
	.byte		VOICE , 14
	.byte		N09   , Dn4 , v127
	.byte	W12
@ 008   ----------------------------------------
	.byte		N03   
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N12   , Fn4 
	.byte	W36
	.byte		N12   , Gn4 
	.byte	W48
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W24
	.byte		N09   , Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N12   , Gn4 
	.byte	W24
@ 012   ----------------------------------------
	.byte	W18
	.byte		VOICE , 24
	.byte		VOL   , 82*mus_t_marionette_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		N03   , Gn2 , v100
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		N05   , Fn2 , v112
	.byte	W07
	.byte		N03   , Gn2 , v100
	.byte	W12
	.byte		        Dn2 
	.byte	W05
	.byte		N05   , As2 , v112
	.byte	W07
	.byte		N03   , An2 , v100
	.byte	W12
	.byte		N11   , Gn2 , v112
	.byte	W05
@ 013   ----------------------------------------
mus_t_marionette_2_013:
	.byte	W07
	.byte		N04   , An2 , v100
	.byte	W05
	.byte		N06   , Dn2 , v112
	.byte	W07
	.byte		N04   , Fn2 , v100
	.byte	W05
	.byte		N03   , Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N05   , Fn2 , v112
	.byte	W07
	.byte		N03   , Gn2 , v100
	.byte	W12
	.byte		        Dn2 
	.byte	W05
	.byte		N05   , Cn2 , v112
	.byte	W07
	.byte		N03   , Dn2 , v100
	.byte	W12
	.byte		N11   , Fn2 , v112
	.byte	W05
	.byte	PEND
@ 014   ----------------------------------------
	.byte	W07
	.byte		N04   , Gn2 , v100
	.byte	W05
	.byte		N06   , As2 , v112
	.byte	W07
	.byte		N04   , Dn2 , v100
	.byte	W05
	.byte		N03   , Gn2 
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		N05   , Fn2 , v112
	.byte	W07
	.byte		N03   , Gn2 , v100
	.byte	W12
	.byte		        Dn2 
	.byte	W05
	.byte		N05   , As2 , v112
	.byte	W07
	.byte		N03   , An2 , v100
	.byte	W12
	.byte		N11   , Gn2 , v112
	.byte	W05
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_2_013
@ 016   ----------------------------------------
	.byte	W07
	.byte		N04   , Gn2 , v100
	.byte	W05
	.byte		N06   , As2 , v112
	.byte	W07
	.byte		N04   , Dn2 , v100
	.byte	W05
	.byte		N11   , Cn2 , v108
	.byte	W12
	.byte		N06   , Ds2 , v112
	.byte	W07
	.byte		N11   , Gn2 , v108
	.byte	W12
	.byte		N10   , Ds3 , v112
	.byte	W12
	.byte		N04   , Cn3 , v108
	.byte	W05
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N06   , Dn2 , v112
	.byte	W07
	.byte		N11   , Gn2 , v108
	.byte	W05
@ 017   ----------------------------------------
	.byte	W07
	.byte		N10   , Dn3 , v112
	.byte	W12
	.byte		N04   , Bn2 , v108
	.byte	W05
	.byte		N11   , As1 
	.byte	W12
	.byte		N06   , Ds2 , v112
	.byte	W07
	.byte		N11   , Gn2 , v108
	.byte	W12
	.byte		N10   , Ds3 , v112
	.byte	W12
	.byte		N04   , As2 , v108
	.byte	W05
	.byte		N11   , An1 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W07
	.byte		N10   , An2 , v100
	.byte	W05
@ 018   ----------------------------------------
	.byte	W07
	.byte		        Dn3 , v108
	.byte	W12
	.byte		N04   , An2 , v100
	.byte	W05
	.byte		N03   , Gn2 
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		N05   , Fn2 , v112
	.byte	W07
	.byte		N03   , Gn2 , v100
	.byte	W12
	.byte		        Dn2 
	.byte	W05
	.byte		N05   , As2 , v112
	.byte	W07
	.byte		N03   , An2 , v100
	.byte	W12
	.byte		N11   , Gn2 , v112
	.byte	W05
@ 019   ----------------------------------------
	.byte	W07
	.byte		N04   , An2 , v100
	.byte	W05
	.byte		N06   , Dn2 , v112
	.byte	W07
	.byte		N04   , Fn2 , v100
	.byte	W05
	.byte		N11   , Gn1 , v112
	.byte	W12
	.byte		N05   , As1 , v108
	.byte	W06
	.byte		        Gn1 , v088
	.byte	W06
	.byte		        Dn2 , v108
	.byte	W06
	.byte		        As1 , v084
	.byte	W06
	.byte		N56   , Gn2 , v112
	.byte	W36
@ 020   ----------------------------------------
	.byte	W24
	.byte		N11   , Cn2 
	.byte	W12
	.byte		N05   , Ds2 , v108
	.byte	W06
	.byte		        Cn2 , v088
	.byte	W06
	.byte		        Gn2 , v108
	.byte	W06
	.byte		        Ds2 , v084
	.byte	W06
	.byte		N17   , Cn3 , v112
	.byte	W18
	.byte		N05   , Cn3 , v088
	.byte	W06
	.byte		N09   , Ds3 , v112
	.byte	W12
@ 021   ----------------------------------------
	.byte		N05   , Cn3 , v108
	.byte	W06
	.byte		        Ds3 , v088
	.byte	W06
	.byte		        Gn2 , v108
	.byte	W06
	.byte		        Cn3 , v084
	.byte	W04
	.byte		VOICE , 48
	.byte	W01
	.byte		VOL   , 77*mus_t_marionette_mvl/mxv
	.byte	W01
	.byte		N23   , Ds4 , v112
	.byte	W24
	.byte		N21   , Cn4 
	.byte	W24
	.byte		N23   , Cn4 , v120
	.byte	W24
@ 022   ----------------------------------------
	.byte		N21   , Gs3 , v112
	.byte	W22
	.byte		VOICE , 24
	.byte		VOL   , 82*mus_t_marionette_mvl/mxv
	.byte	W02
	.byte		N10   , Dn2 , v108
	.byte	W12
	.byte		N05   , Gn1 , v112
	.byte	W06
	.byte		        Dn2 , v084
	.byte	W06
	.byte		N06   , Dn3 , v108
	.byte	W06
	.byte		N05   , Gn1 , v088
	.byte	W42
@ 023   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W12
	.byte		N05   , Dn3 , v108
	.byte	W06
	.byte		        As1 , v092
	.byte	W06
	.byte		        Dn2 , v108
	.byte	W06
	.byte		        Dn3 , v084
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		        Dn2 , v084
	.byte	W06
	.byte		N06   , Dn3 , v108
	.byte	W06
	.byte		N05   , Gn1 , v088
	.byte	W06
	.byte		N06   , Dn2 , v108
	.byte	W07
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N04   , Dn2 
	.byte	W05
	.byte		N10   , Gn2 , v112
	.byte	W12
@ 024   ----------------------------------------
	.byte	W01
	.byte		N04   , Dn2 , v084
	.byte	W05
	.byte		N05   , Gn1 , v088
	.byte	W30
	.byte		N11   , Ds2 , v112
	.byte	W12
	.byte		N05   , Gn2 , v108
	.byte	W06
	.byte		        Ds2 , v092
	.byte	W06
	.byte		N17   , Cn3 , v112
	.byte	W18
	.byte		N05   , Cn3 , v088
	.byte	W06
	.byte		N09   , Ds3 , v112
	.byte	W12
@ 025   ----------------------------------------
	.byte		N05   , Cn3 , v108
	.byte	W06
	.byte		        Ds3 , v088
	.byte	W06
	.byte		        Gn2 , v108
	.byte	W06
	.byte		        Cn3 , v084
	.byte	W04
	.byte		VOICE , 48
	.byte	W01
	.byte		VOL   , 77*mus_t_marionette_mvl/mxv
	.byte	W01
	.byte		N23   , Cn4 , v112
	.byte	W24
	.byte		N21   , An3 
	.byte	W24
	.byte		N23   , As3 
	.byte	W24
@ 026   ----------------------------------------
	.byte		N21   , Gn4 
	.byte	W24
	.byte		N22   
	.byte	W23
	.byte		VOICE , 24
	.byte		VOL   , 82*mus_t_marionette_mvl/mxv
	.byte	W01
	.byte		N11   , Ds3 , v108
	.byte	W48
@ 027   ----------------------------------------
	.byte		N10   , Gn2 
	.byte	W48
	.byte		        Fs3 , v100
	.byte	W12
	.byte		N06   , An2 , v108
	.byte	W07
	.byte		N11   , An1 
	.byte	W12
	.byte		N04   , An2 
	.byte	W05
	.byte		N10   , Cn3 , v112
	.byte	W12
@ 028   ----------------------------------------
	.byte		N05   , An2 , v108
	.byte	W06
	.byte		        Cn3 , v088
	.byte	W06
	.byte		N04   , Fs3 , v096
	.byte	W06
	.byte		N05   , An2 , v072
	.byte	W06
	.byte		N04   , Cn3 , v108
	.byte	W06
	.byte		N05   , Fs3 , v064
	.byte	W06
	.byte		N04   , An2 , v108
	.byte	W06
	.byte		        Cn3 , v096
	.byte	W06
	.byte		        Cn3 , v108
	.byte	W06
	.byte		        An2 , v096
	.byte	W12
	.byte		        Cn3 
	.byte	W06
	.byte		VOICE , 48
	.byte		VOL   , 66*mus_t_marionette_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W06
	.byte		N06   , Gn3 , v124
	.byte	W05
	.byte		        An3 , v120
	.byte	W07
	.byte		        As3 
	.byte	W05
@ 029   ----------------------------------------
	.byte		        Cn4 , v124
	.byte	W07
	.byte		        Dn4 , v120
	.byte	W05
	.byte		        En4 
	.byte	W07
	.byte		        Fs4 
	.byte	W05
	.byte		N32   , Gn4 , v100
	.byte	W36
	.byte		N06   , Fn4 
	.byte	W07
	.byte		        Gn4 
	.byte	W05
	.byte		N21   , Dn4 
	.byte	W24
@ 030   ----------------------------------------
	.byte		        As4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Dn5 
	.byte	W24
@ 031   ----------------------------------------
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
@ 032   ----------------------------------------
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
@ 033   ----------------------------------------
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
@ 034   ----------------------------------------
	.byte		        Gn4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		N21   
	.byte	W24
@ 035   ----------------------------------------
	.byte		        Ds4 
	.byte	W24
	.byte		N06   , An3 , v112
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
@ 036   ----------------------------------------
	.byte		N06   , An4 
	.byte	W07
	.byte		N05   , Gn4 
	.byte	W05
	.byte		N06   , Ds4 
	.byte	W07
	.byte		N05   , Cn4 , v100
	.byte	W05
	.byte		N11   
	.byte	W72
@ 037   ----------------------------------------
	.byte	W42
	.byte		VOICE , 29
	.byte		VOL   , 86*mus_t_marionette_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N10   , Cn4 , v104
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
	.byte	W24
@ 038   ----------------------------------------
	.byte	W24
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
	.byte	W24
@ 039   ----------------------------------------
	.byte	W12
	.byte		N10   , Fs4 , v092
	.byte	W10
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-29
	.byte		N32   , An4 , v100
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
	.byte		N11   , An4 , v096
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
	.byte		N52   , Bn3 , v104
	.byte	W01
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+32
	.byte	W21
@ 040   ----------------------------------------
	.byte	W15
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
	.byte		N23   , An3 , v108
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
	.byte		N10   , Gn3 , v100
	.byte	W10
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-24
	.byte		N54   , Dn4 , v104
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
	.byte	W05
@ 041   ----------------------------------------
	.byte	W21
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
	.byte		N04   , Ds4 , v096
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N11   , Cn4 , v104
	.byte	W06
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte		N06   , Ds4 , v100
	.byte	W07
	.byte		N03   , As3 
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N11   , Fn4 , v104
	.byte	W06
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		        c_v+63
	.byte	W04
	.byte		        c_v+63
	.byte	W01
	.byte		        c_v+0
	.byte		N05   , As4 , v088
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N11   , Fn4 , v100
	.byte	W04
	.byte		BEND  , c_v-64
	.byte	W01
@ 042   ----------------------------------------
	.byte		        c_v+63
	.byte	W06
	.byte		        c_v+0
	.byte	W01
	.byte		N05   , As4 , v084
	.byte	W05
	.byte		N06   , Ds4 , v096
	.byte	W07
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N18   , Ds4 , v104
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
	.byte		N17   , Gn4 , v100
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
	.byte		N11   , An4 , v088
	.byte	W12
	.byte		BEND  , c_v+7
	.byte		N23   , Gs4 , v092
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
@ 043   ----------------------------------------
	.byte		        c_v-64
	.byte		N22   , Cn4 , v108
	.byte	W22
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-32
	.byte		N11   , As3 , v104
	.byte	W06
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte		N10   , Cn4 , v100
	.byte	W10
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N11   , Dn4 , v104
	.byte	W06
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte		N10   , Ds4 , v100
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
	.byte		N10   , Gn4 , v092
	.byte	W12
@ 044   ----------------------------------------
	.byte		BEND  , c_v+15
	.byte		N11   , Gn4 , v100
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
	.byte		N17   , Cn4 , v108
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
	.byte		N16   , An3 , v100
	.byte	W15
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-48
	.byte		N10   , Dn4 , v096
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
	.byte	W12
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W22
	.byte	W01
	.byte		VOL   , 82*mus_t_marionette_mvl/mxv
	.byte	W72
	.byte	W01
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W24
	.byte	GOTO
	 .word	mus_t_marionette_2_B1
mus_t_marionette_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_t_marionette_3:
	.byte	KEYSH , mus_t_marionette_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 60
	.byte	W01
	.byte		VOL   , 97*mus_t_marionette_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W92
	.byte	W02
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W48
	.byte		N16   , Dn4 , v127
	.byte	W24
	.byte		N06   , Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N21   , As3 
	.byte	W24
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N16   , Ds4 
	.byte	W24
	.byte		N06   , Cn4 
	.byte	W06
	.byte		N05   , As3 
	.byte	W06
	.byte		N08   , An3 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N06   , As3 
	.byte	W12
	.byte		N10   , Fn3 
	.byte	W12
mus_t_marionette_3_B1:
	.byte		N16   , Gn3 , v124
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N06   , Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 007   ----------------------------------------
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
	.byte		N12   , Dn4 
	.byte	W24
@ 008   ----------------------------------------
	.byte	W24
	.byte		N16   , Gn3 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N06   , Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 009   ----------------------------------------
	.byte		N21   , As3 
	.byte	W24
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N16   , Ds4 
	.byte	W24
	.byte		N06   , Cn4 
	.byte	W06
	.byte		N05   , As3 
	.byte	W06
	.byte		N08   , An3 
	.byte	W12
@ 010   ----------------------------------------
	.byte		N06   , As3 
	.byte	W12
	.byte		N10   , Fn3 
	.byte	W12
	.byte		N16   , Gn3 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N06   , Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N21   , As3 
	.byte	W24
	.byte		MOD   , 0
	.byte		N05   , Cn3 , v120
	.byte	W05
	.byte		MOD   , 0
	.byte	W07
	.byte		N05   , Dn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W24
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W48
	.byte		VOICE , 14
	.byte		N21   , Gn4 , v124
	.byte	W48
@ 017   ----------------------------------------
	.byte		N21   
	.byte	W48
	.byte		N21   
	.byte	W48
@ 018   ----------------------------------------
	.byte	W42
	.byte		VOICE , 4
	.byte		VOL   , 88*mus_t_marionette_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W05
	.byte		N23   , Dn5 , v090
	.byte	W24
	.byte		        Gn4 , v086
	.byte	W24
@ 019   ----------------------------------------
	.byte	W48
	.byte		        As4 , v090
	.byte	W24
	.byte		        Dn4 , v086
	.byte	W24
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W60
	.byte		N06   , Fn4 , v076
	.byte	W07
	.byte		N04   , Gn4 
	.byte	W05
	.byte		N23   , As4 , v080
	.byte	W24
@ 023   ----------------------------------------
	.byte	W12
	.byte		N06   , An4 , v084
	.byte	W07
	.byte		N04   , As4 
	.byte	W05
	.byte		N23   , Dn5 , v086
	.byte	W24
	.byte		        As4 , v090
	.byte	W24
	.byte		        Gn5 , v086
	.byte	W24
@ 024   ----------------------------------------
	.byte		        Fn5 
	.byte	W24
	.byte		N11   , Ds5 , v080
	.byte	W72
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W60
	.byte		N06   , Ds5 , v086
	.byte	W07
	.byte		N04   , Fn5 
	.byte	W05
	.byte		N23   , Gn5 , v090
	.byte	W24
@ 027   ----------------------------------------
	.byte	W12
	.byte		N06   , An5 , v086
	.byte	W07
	.byte		N04   , Gn5 
	.byte	W05
	.byte		N23   , Fs5 , v090
	.byte	W72
@ 028   ----------------------------------------
	.byte	W24
	.byte		VOICE , 14
	.byte		N09   , Dn4 , v124
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W48
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W42
	.byte		VOL   , 97*mus_t_marionette_mvl/mxv
	.byte	W06
	.byte		N44   , Gn3 , v124, gtp1
	.byte	W48
@ 034   ----------------------------------------
	.byte	W48
	.byte		        Gn3 , v124, gtp1
	.byte	W48
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W36
	.byte		VOICE , 4
	.byte		N11   , Dn5 , v070
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
@ 037   ----------------------------------------
	.byte		        Dn6 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		N23   , Gn5 
	.byte	W72
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W48
	.byte		VOICE , 14
	.byte		N44   , Gn4 , v124, gtp1
	.byte	W48
@ 042   ----------------------------------------
	.byte	W48
	.byte		        Gn4 , v124, gtp1
	.byte	W48
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W24
	.byte		N09   , Dn4 
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N21   
	.byte	W48
@ 046   ----------------------------------------
	.byte	W18
	.byte		VOICE , 60
	.byte		VOL   , 97*mus_t_marionette_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W05
	.byte		N16   , Gn3 , v127
	.byte	W24
	.byte		N16   , Dn4 
	.byte	W24
	.byte		N06   , Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 047   ----------------------------------------
	.byte		N21   , As3 
	.byte	W24
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N16   , Cn4 , v096
	.byte		N16   , Ds4 , v127
	.byte	W24
	.byte		N11   , An3 , v096
	.byte		N06   , Cn4 , v127
	.byte	W06
	.byte		N05   , As3 
	.byte	W06
	.byte		N08   , Fn3 , v096
	.byte		N08   , An3 , v127
	.byte	W12
@ 048   ----------------------------------------
	.byte		N06   , Gn3 , v096
	.byte		N06   , As3 , v127
	.byte	W12
	.byte		N10   , Cn3 , v096
	.byte		N10   , Fn3 , v127
	.byte	W12
	.byte	GOTO
	 .word	mus_t_marionette_3_B1
mus_t_marionette_3_B2:
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_t_marionette_4:
	.byte	KEYSH , mus_t_marionette_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 85
	.byte	W01
	.byte		VOL   , 72*mus_t_marionette_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		N12   , As2 , v100
	.byte	W12
	.byte		VOICE , 80
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
	.byte		N44   , As4 , v096
	.byte	W24
@ 001   ----------------------------------------
	.byte	W24
	.byte		VOICE , 85
	.byte		N12   , Dn3 , v100
	.byte	W12
	.byte		VOICE , 80
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
	.byte		N44   , As4 , v096
	.byte	W24
@ 002   ----------------------------------------
	.byte	W24
	.byte		VOICE , 85
	.byte		N12   , Gn3 , v100
	.byte	W12
	.byte		VOICE , 80
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
	.byte		N44   , Gn4 , v096
	.byte	W24
@ 003   ----------------------------------------
	.byte	W24
	.byte		VOICE , 85
	.byte		N12   , Gn3 , v100
	.byte	W12
	.byte		VOICE , 80
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
	.byte		N17   , Dn4 , v096
	.byte	W24
@ 004   ----------------------------------------
	.byte		        Ds4 
	.byte	W23
	.byte		VOICE , 80
	.byte	W01
	.byte		N16   , Gn3 , v124
	.byte	W23
	.byte		VOICE , 85
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N16   , Dn4 , v100
	.byte	W19
	.byte		N04   
	.byte	W17
	.byte		        Cn4 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N06   , Dn4 
	.byte	W07
	.byte		N10   , Cn4 
	.byte	W11
	.byte		N06   , Dn4 , v084
	.byte	W07
	.byte		N09   , Cn4 
	.byte	W11
	.byte		N04   , Cn4 , v100
	.byte	W12
	.byte		N16   , Ds4 
	.byte	W18
	.byte		N05   , Ds4 , v084
	.byte	W06
	.byte		N16   , Cn4 , v100
	.byte	W19
	.byte		N04   
	.byte	W05
@ 006   ----------------------------------------
mus_t_marionette_4_006:
	.byte	W07
	.byte		N04   , Dn4 , v100
	.byte	W05
	.byte		N10   , Fn4 
	.byte	W12
	.byte	PEND
mus_t_marionette_4_B1:
	.byte	W01
	.byte		N03   , Dn4 , v084
	.byte	W05
	.byte		N05   , Fn4 
	.byte	W06
	.byte		N04   , Dn4 , v100
	.byte	W12
	.byte		N16   
	.byte	W19
	.byte		N04   
	.byte	W17
	.byte		        Cn4 
	.byte	W12
@ 007   ----------------------------------------
	.byte		N06   , Dn4 
	.byte	W07
	.byte		N10   , Cn4 
	.byte	W11
	.byte		N05   , Dn4 , v084
	.byte	W05
	.byte		VOICE , 85
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N06   , Fn3 , v096
	.byte	W11
	.byte		VOICE , 85
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N04   , Dn4 , v100
	.byte	W12
	.byte		N16   , Ds4 
	.byte	W24
	.byte		        Dn4 
	.byte	W19
	.byte		N04   
	.byte	W05
@ 008   ----------------------------------------
mus_t_marionette_4_008:
	.byte	W07
	.byte		N04   , Dn4 , v100
	.byte	W05
	.byte		N10   , Fn4 
	.byte	W13
	.byte		N03   , Dn4 , v084
	.byte	W05
	.byte		N05   , Fn4 
	.byte	W06
	.byte		N04   , Dn4 , v100
	.byte	W12
	.byte		N16   
	.byte	W19
	.byte		N04   
	.byte	W17
	.byte		        Cn4 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_t_marionette_4_009:
	.byte		N06   , Dn4 , v100
	.byte	W07
	.byte		N10   , Cn4 
	.byte	W11
	.byte		N06   , Dn4 , v084
	.byte	W07
	.byte		N09   , Cn4 
	.byte	W11
	.byte		N04   , Cn4 , v100
	.byte	W12
	.byte		N16   , Ds4 
	.byte	W24
	.byte		        Cn4 
	.byte	W19
	.byte		N04   
	.byte	W05
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_4_008
@ 011   ----------------------------------------
	.byte		N06   , Dn4 , v100
	.byte	W07
	.byte		N10   , Cn4 
	.byte	W11
	.byte		N05   , Dn4 , v084
	.byte	W05
	.byte		VOICE , 80
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N06   , An3 , v096
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		N05   , An3 , v072
	.byte	W06
	.byte		N06   , As3 , v096
	.byte	W06
	.byte		N05   , As3 , v072
	.byte	W06
	.byte		N06   , An3 , v096
	.byte	W06
	.byte		N05   , As3 , v072
	.byte	W06
	.byte		N06   , As3 , v096
	.byte	W06
	.byte		N05   , An3 , v072
	.byte	W12
	.byte		        As3 
	.byte	W06
@ 012   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		VOICE , 85
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N04   , Dn4 , v100
	.byte	W12
	.byte		N16   
	.byte	W19
	.byte		N04   
	.byte	W17
	.byte		N04   
	.byte	W12
@ 013   ----------------------------------------
mus_t_marionette_4_013:
	.byte		N06   , Dn4 , v100
	.byte	W07
	.byte		N10   , Cn4 
	.byte	W11
	.byte		N06   , Dn4 , v084
	.byte	W07
	.byte		N09   , Cn4 
	.byte	W11
	.byte		N04   , Dn4 , v100
	.byte	W12
	.byte		N16   
	.byte	W24
	.byte		N16   
	.byte	W19
	.byte		N04   
	.byte	W05
	.byte	PEND
@ 014   ----------------------------------------
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte		N10   , Fn4 
	.byte	W13
	.byte		N03   , Dn4 , v084
	.byte	W05
	.byte		N05   , Fn4 
	.byte	W06
	.byte		N04   , Dn4 , v100
	.byte	W12
	.byte		N16   
	.byte	W19
	.byte		N04   
	.byte	W04
	.byte		VOICE , 80
	.byte	W01
	.byte		PAN   , c_v+63
	.byte		N11   , Dn3 
	.byte	W11
	.byte		VOICE , 85
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N04   , Dn4 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N06   
	.byte	W07
	.byte		N10   , Cn4 
	.byte	W11
	.byte		N05   , Dn4 , v084
	.byte	W06
	.byte		VOICE , 80
	.byte		PAN   , c_v+63
	.byte		BEND  , c_v-56
	.byte		N44   , As3 
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
	.byte		VOICE , 85
	.byte		PAN   , c_v-64
	.byte		N16   , Dn4 , v100
	.byte	W19
	.byte		N04   
	.byte	W05
@ 016   ----------------------------------------
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte		N10   , Cn4 
	.byte	W12
	.byte		VOICE , 80
	.byte		PAN   , c_v+63
	.byte		N44   , Ds3 
	.byte	W48
	.byte		        Gn3 
	.byte	W24
@ 017   ----------------------------------------
	.byte	W24
	.byte		N44   
	.byte	W48
	.byte		N23   , Gn3 , v092
	.byte	W24
@ 018   ----------------------------------------
	.byte		N22   , Fs3 , v100
	.byte	W36
	.byte		VOICE , 85
	.byte		PAN   , c_v-64
	.byte		N04   , Dn4 
	.byte	W12
	.byte		N16   
	.byte	W19
	.byte		N04   
	.byte	W17
	.byte		N04   
	.byte	W12
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_4_013
@ 020   ----------------------------------------
	.byte	W07
	.byte		N04   , Dn4 , v100
	.byte	W05
	.byte		N10   , Fn4 
	.byte	W11
	.byte		VOICE , 80
	.byte	W01
	.byte		PAN   , c_v+63
	.byte		N44   , Cn4 
	.byte	W44
	.byte	W01
	.byte		N03   , Cn4 , v064
	.byte	W03
	.byte		N44   , Ds4 , v100
	.byte	W24
@ 021   ----------------------------------------
	.byte	W21
	.byte		N03   , Ds4 , v064
	.byte	W03
	.byte		N44   , An3 , v096
	.byte	W44
	.byte	W01
	.byte		N03   , An3 , v064
	.byte	W03
	.byte		N44   , Gn3 , v096
	.byte	W24
@ 022   ----------------------------------------
	.byte	W21
	.byte		N03   , Gn3 , v064
	.byte	W03
	.byte		N32   , Gn3 , v100
	.byte	W32
	.byte	W01
	.byte		N03   , Gn3 , v064
	.byte	W03
	.byte		N06   , Fn3 , v100
	.byte	W07
	.byte		        Gn3 
	.byte	W05
	.byte		N32   , As3 
	.byte	W24
@ 023   ----------------------------------------
	.byte	W12
	.byte		N06   , An3 
	.byte	W07
	.byte		        As3 
	.byte	W05
	.byte		N21   , Dn4 
	.byte	W21
	.byte		N03   , Dn4 , v064
	.byte	W03
	.byte		N21   , As3 , v100
	.byte	W21
	.byte		N03   , As3 , v064
	.byte	W03
	.byte		N21   , Gn4 , v100
	.byte	W21
	.byte		N03   , Gn4 , v064
	.byte	W03
@ 024   ----------------------------------------
	.byte		N21   , Fn4 , v100
	.byte	W21
	.byte		N03   , Fn4 , v064
	.byte	W03
	.byte		N44   , Ds4 , v100
	.byte	W44
	.byte	W01
	.byte		N03   , Ds4 , v064
	.byte	W03
	.byte		N21   , Gn3 , v100
	.byte	W21
	.byte		N03   , Gn3 , v064
	.byte	W03
@ 025   ----------------------------------------
	.byte		N24   , Cn4 , v100
	.byte	W24
	.byte		N44   , Fs3 , v096
	.byte	W44
	.byte	W01
	.byte		N03   , Fs3 , v064
	.byte	W03
	.byte		N21   , Gn3 , v096
	.byte	W21
	.byte		N03   , Gn3 , v064
	.byte	W03
@ 026   ----------------------------------------
	.byte		N21   , As3 , v096
	.byte	W21
	.byte		N03   , As3 , v064
	.byte	W03
	.byte		N96   , An3 , v092
	.byte	W72
@ 027   ----------------------------------------
	.byte	W22
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		VOICE , 80
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-56
	.byte		N15   , Fs3 , v108
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
	.byte		N03   , Dn3 , v100
	.byte	W07
	.byte		N15   , Fs3 , v108
	.byte	W12
	.byte		N03   , Dn3 , v100
	.byte	W05
	.byte		N06   , Fs3 , v108
	.byte	W07
	.byte		N03   , Dn3 , v100
	.byte	W05
	.byte		BEND  , c_v+5
	.byte		N44   , Cn4 , v108
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
	.byte	W15
@ 028   ----------------------------------------
	.byte	W12
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
	.byte		VOICE , 85
	.byte		BEND  , c_v+0
	.byte		N04   , Cn3 , v100
	.byte	W06
	.byte		        Cn3 , v084
	.byte	W06
	.byte		        An2 , v100
	.byte	W06
	.byte		        An2 , v084
	.byte	W06
	.byte		        Cn3 , v100
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N04   , Cn3 , v084
	.byte	W06
	.byte		N09   , An2 , v096
	.byte	W12
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N09   , Cn3 
	.byte	W12
@ 029   ----------------------------------------
mus_t_marionette_4_029:
	.byte		N09   , As2 , v096
	.byte	W12
	.byte		N03   , Cn3 
	.byte	W07
	.byte		N32   , As2 
	.byte	W40
	.byte	W01
	.byte		N09   
	.byte	W12
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N09   , Cn3 
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
mus_t_marionette_4_030:
	.byte		N09   , As2 , v096
	.byte	W12
	.byte		N03   , Cn3 
	.byte	W07
	.byte		N32   , An2 
	.byte	W40
	.byte	W01
	.byte		N09   
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N17   , An3 
	.byte	W24
	.byte		N17   
	.byte	W24
	.byte		        Gn3 
	.byte	W24
@ 032   ----------------------------------------
	.byte		N08   , En3 
	.byte	W12
	.byte		N17   , Gn3 
	.byte	W24
	.byte		N09   
	.byte	W12
	.byte		N23   
	.byte	W36
	.byte		N09   , Ds3 
	.byte	W12
@ 033   ----------------------------------------
mus_t_marionette_4_033:
	.byte		N09   , Fn3 , v096
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W07
	.byte		N09   
	.byte	W12
	.byte		N03   , Fn3 
	.byte	W05
	.byte		N32   , Ds3 
	.byte	W48
	.byte		N09   , Dn3 
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
mus_t_marionette_4_034:
	.byte		N09   , Fn3 , v096
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W07
	.byte		N09   
	.byte	W12
	.byte		N03   , Fn3 
	.byte	W05
	.byte		N28   , Ds3 
	.byte	W36
	.byte		N09   , Dn3 
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		N28   , An3 
	.byte	W36
	.byte		N17   
	.byte	W24
	.byte		N32   , Cn4 
	.byte	W24
@ 036   ----------------------------------------
	.byte	W12
	.byte		N40   , An3 
	.byte	W48
	.byte		N09   , An2 
	.byte	W12
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N09   , Cn3 
	.byte	W12
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_4_029
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_4_030
@ 039   ----------------------------------------
	.byte		N09   , Fs3 , v096
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N17   , An3 
	.byte	W24
	.byte		N17   
	.byte	W24
	.byte		        Gn3 
	.byte	W23
	.byte		BEND  , c_v-32
	.byte	W01
@ 040   ----------------------------------------
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
	.byte	W24
	.byte		N09   
	.byte	W12
	.byte		N23   
	.byte	W36
	.byte		N09   , Ds3 
	.byte	W12
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_4_033
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_4_034
@ 043   ----------------------------------------
	.byte		N09   , Gn3 , v096
	.byte	W12
	.byte		N28   , An3 
	.byte	W36
	.byte		N17   
	.byte	W24
	.byte		N23   , Cn4 
	.byte	W24
@ 044   ----------------------------------------
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
	.byte	W78
@ 045   ----------------------------------------
	.byte	W23
	.byte		EOT   
	.byte		VOICE , 80
	.byte	W01
	.byte		N04   , An3 , v100
	.byte	W06
	.byte		        An3 , v084
	.byte	W06
	.byte		        An3 , v100
	.byte	W06
	.byte		        An3 , v084
	.byte	W06
	.byte		        An3 , v100
	.byte	W06
	.byte		        An3 , v084
	.byte	W42
@ 046   ----------------------------------------
	.byte	W24
	.byte		N11   , As2 , v096
	.byte	W11
	.byte		VOICE , 85
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , Dn4 , v100
	.byte	W12
	.byte		N16   
	.byte	W19
	.byte		N04   
	.byte	W17
	.byte		        Cn4 
	.byte	W12
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_4_009
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_4_006
	.byte	GOTO
	 .word	mus_t_marionette_4_B1
mus_t_marionette_4_B2:
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_t_marionette_5:
	.byte	KEYSH , mus_t_marionette_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 83
	.byte	W01
	.byte		VOL   , 72*mus_t_marionette_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		N30   , Gn2 , v108
	.byte	W30
	.byte		N04   , Gn3 , v084
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
	.byte	W06
@ 001   ----------------------------------------
	.byte	W24
	.byte		N30   , Fn2 , v108
	.byte	W30
	.byte		N04   , Fn3 , v084
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
	.byte	W06
@ 002   ----------------------------------------
	.byte	W24
	.byte		N30   , En2 , v108
	.byte	W30
	.byte		N04   , En3 , v084
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
	.byte	W06
@ 003   ----------------------------------------
	.byte	W24
	.byte		N30   , Dn2 , v108
	.byte	W30
	.byte		N04   , Ds3 , v084
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
	.byte	W06
@ 004   ----------------------------------------
	.byte	W18
	.byte		N05   , Ds4 
	.byte	W05
	.byte		VOICE , 82
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N11   , Dn3 , v096
	.byte	W11
	.byte		VOICE , 83
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N04   , Dn4 
	.byte	W12
	.byte		N16   , As3 
	.byte	W19
	.byte		N04   
	.byte	W04
	.byte		VOICE , 82
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N06   , Fn3 
	.byte	W11
	.byte		VOICE , 83
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N04   , An3 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N16   , As3 
	.byte	W23
	.byte		VOICE , 82
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N06   , Gn3 
	.byte	W11
	.byte		VOICE , 83
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
	.byte		VOICE , 82
	.byte	W01
@ 006   ----------------------------------------
	.byte		PAN   , c_v+0
	.byte		N06   , Dn3 
	.byte	W06
	.byte		VOICE , 83
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N16   , As3 
	.byte	W16
	.byte		VOICE , 82
	.byte	W01
mus_t_marionette_5_B1:
	.byte		PAN   , c_v+0
	.byte		N11   , As2 , v096
	.byte	W11
	.byte		VOICE , 83
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N04   , As3 
	.byte	W12
	.byte		N16   
	.byte	W19
	.byte		N04   
	.byte	W04
	.byte		VOICE , 82
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N06   , Fn3 
	.byte	W11
	.byte		VOICE , 83
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N04   , An3 
	.byte	W12
@ 007   ----------------------------------------
	.byte		N16   , As3 
	.byte	W23
	.byte		VOICE , 82
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N06   , An3 
	.byte	W11
	.byte		VOICE , 83
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N04   , As3 
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		VOICE , 82
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N06   , An3 
	.byte	W11
	.byte		VOICE , 83
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N16   , As3 
	.byte	W19
	.byte		N04   
	.byte	W05
@ 008   ----------------------------------------
	.byte	W07
	.byte		N16   
	.byte	W16
	.byte		VOICE , 82
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N11   , As2 
	.byte	W11
	.byte		VOICE , 83
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
@ 009   ----------------------------------------
	.byte		N16   , As3 
	.byte	W23
	.byte		VOICE , 82
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N06   , Gn3 
	.byte	W11
	.byte		VOICE , 83
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N04   , An3 
	.byte	W12
	.byte		N16   , Cn4 
	.byte	W24
	.byte		N11   , An3 
	.byte	W11
	.byte		VOICE , 82
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N05   , Cn3 
	.byte	W05
	.byte		VOICE , 83
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , An3 
	.byte	W04
	.byte		VOICE , 82
	.byte	W01
@ 010   ----------------------------------------
	.byte		PAN   , c_v+0
	.byte		N06   , Dn3 
	.byte	W05
	.byte		VOICE , 83
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N16   , As3 
	.byte	W16
	.byte		VOICE , 82
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N11   , As2 
	.byte	W11
	.byte		VOICE , 82
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
@ 011   ----------------------------------------
	.byte		N16   , As3 
	.byte	W36
	.byte		N04   , Dn4 , v100
	.byte	W36
	.byte		N04   
	.byte	W24
@ 012   ----------------------------------------
	.byte	W36
	.byte		        As3 , v096
	.byte	W12
	.byte		N16   
	.byte	W19
	.byte		N04   
	.byte	W17
	.byte		N04   
	.byte	W12
@ 013   ----------------------------------------
mus_t_marionette_5_013:
	.byte		N16   , As3 , v096
	.byte	W36
	.byte		N04   
	.byte	W12
	.byte		N16   
	.byte	W24
	.byte		N16   
	.byte	W19
	.byte		N04   
	.byte	W05
	.byte	PEND
@ 014   ----------------------------------------
	.byte	W07
	.byte		N16   
	.byte	W28
	.byte	W01
	.byte		N04   
	.byte	W05
	.byte		VOICE , 83
	.byte	W07
	.byte		PAN   , c_v+63
	.byte		N21   , As2 , v100
	.byte	W24
	.byte		        Fn3 , v108
	.byte	W24
@ 015   ----------------------------------------
	.byte		        Dn3 
	.byte	W24
	.byte		BEND  , c_v-56
	.byte		N56   , Dn4 , v096
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
	.byte		N06   , Dn3 , v112
	.byte	W07
	.byte		        Ds3 
	.byte	W05
@ 016   ----------------------------------------
	.byte		        Fn3 
	.byte	W07
	.byte		        Gn3 
	.byte	W05
	.byte		        An3 
	.byte	W07
	.byte		        As3 
	.byte	W05
	.byte		N44   , Cn4 , v100
	.byte	W48
	.byte		        Dn4 
	.byte	W24
@ 017   ----------------------------------------
	.byte	W24
	.byte		        Ds4 
	.byte	W48
	.byte		        Cn4 , v096
	.byte	W24
@ 018   ----------------------------------------
	.byte	W24
	.byte		N12   , As3 
	.byte	W11
	.byte		VOICE , 82
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
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_5_013
@ 020   ----------------------------------------
	.byte	W07
	.byte		N16   , As3 , v096
	.byte	W16
	.byte		VOICE , 83
	.byte	W01
	.byte		PAN   , c_v+63
	.byte		N44   , Ds3 
	.byte	W44
	.byte	W01
	.byte		N03   , Ds3 , v064
	.byte	W03
	.byte		N44   , Gn3 , v096
	.byte	W24
@ 021   ----------------------------------------
	.byte	W21
	.byte		N03   , Gn3 , v064
	.byte	W03
	.byte		N44   , Ds3 , v096
	.byte	W44
	.byte	W01
	.byte		N03   , Ds3 , v064
	.byte	W03
	.byte		N44   , Cn3 , v096
	.byte	W24
@ 022   ----------------------------------------
	.byte	W21
	.byte		N03   , Cn3 , v064
	.byte	W03
	.byte		N44   , As2 , v096
	.byte	W44
	.byte	W01
	.byte		N03   , As2 , v064
	.byte	W03
	.byte		N44   , Dn3 , v096
	.byte	W24
@ 023   ----------------------------------------
	.byte	W21
	.byte		N03   , Dn3 , v064
	.byte	W03
	.byte		N21   , As2 , v096
	.byte	W21
	.byte		N03   , As2 , v064
	.byte	W03
	.byte		N21   , Dn3 , v096
	.byte	W21
	.byte		N03   , Dn3 , v064
	.byte	W03
	.byte		N44   , As3 , v096
	.byte	W24
@ 024   ----------------------------------------
	.byte	W21
	.byte		N03   , As3 , v064
	.byte	W03
	.byte		N44   , Gn3 , v096
	.byte	W44
	.byte	W01
	.byte		N03   , Gn3 , v064
	.byte	W03
	.byte		N44   , Ds3 , v096
	.byte	W24
@ 025   ----------------------------------------
	.byte	W21
	.byte		N03   , Ds3 , v064
	.byte	W03
	.byte		N44   , Dn3 , v096
	.byte	W44
	.byte	W01
	.byte		N03   , Dn3 , v064
	.byte	W03
	.byte		N44   , Ds3 , v096
	.byte	W24
@ 026   ----------------------------------------
	.byte	W21
	.byte		N03   , Ds3 , v064
	.byte	W03
	.byte		N96   , Cn3 , v092
	.byte	W72
@ 027   ----------------------------------------
	.byte	W24
	.byte		VOICE , 82
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
	.byte		N03   , Dn2 , v124
	.byte	W07
	.byte		N15   , Fs2 , v127
	.byte	W12
	.byte		N03   , Dn2 , v124
	.byte	W05
	.byte		N06   , Fs2 , v127
	.byte	W07
	.byte		N03   , Dn2 , v124
	.byte	W05
	.byte		BEND  , c_v+5
	.byte		N44   , Cn3 , v120
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
	.byte	W15
@ 028   ----------------------------------------
	.byte	W12
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
	.byte		VOICE , 83
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N04   , Fs2 , v100
	.byte	W06
	.byte		        Fs2 , v072
	.byte	W06
	.byte		        Fs2 , v100
	.byte	W06
	.byte		        Fs2 , v072
	.byte	W06
	.byte		        Fs2 , v100
	.byte	W06
	.byte		        Fs2 , v072
	.byte	W42
@ 029   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		VOICE , 82
	.byte		PAN   , c_v-64
	.byte		N01   , As3 , v112
	.byte	W01
	.byte		N04   , Dn4 
	.byte	W11
	.byte		N01   , As3 
	.byte	W01
	.byte		N16   , Dn4 
	.byte	W18
	.byte		N05   , Dn4 , v084
	.byte	W05
	.byte		N01   , As3 , v112
	.byte	W01
	.byte		N16   , Dn4 
	.byte	W18
	.byte		N01   , As3 
	.byte	W01
	.byte		N04   , Dn4 
	.byte	W05
@ 030   ----------------------------------------
mus_t_marionette_5_030:
	.byte	W11
	.byte		N01   , As3 , v112
	.byte	W01
	.byte		N10   , Dn4 
	.byte	W18
	.byte		N05   , Dn4 , v084
	.byte	W05
	.byte		N01   , An3 , v112
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
	.byte		N03   , Cn4 , v084
	.byte	W05
	.byte		N01   , An3 , v112
	.byte	W01
	.byte		N04   , Dn4 
	.byte	W11
	.byte		N01   , An3 
	.byte	W01
	.byte		N04   , Dn4 
	.byte	W06
	.byte		N03   , Dn4 , v084
	.byte	W05
	.byte		N01   , An3 , v112
	.byte	W01
	.byte	PEND
@ 031   ----------------------------------------
mus_t_marionette_5_031:
	.byte		N16   , Dn4 , v112
	.byte	W18
	.byte		N01   , An3 
	.byte	W01
	.byte		N04   , Dn4 
	.byte	W16
	.byte		N01   , An3 
	.byte	W01
	.byte		N04   , Cn4 
	.byte	W11
	.byte		N01   , An3 
	.byte	W01
	.byte		N16   , Cn4 
	.byte	W18
	.byte		N05   , Cn4 , v084
	.byte	W05
	.byte		N01   , Gn3 , v112
	.byte	W01
	.byte		N16   , Cn4 
	.byte	W18
	.byte		N01   , Gn3 
	.byte	W01
	.byte		N04   , Cn4 
	.byte	W05
	.byte	PEND
@ 032   ----------------------------------------
	.byte	W11
	.byte		N01   , Gn3 
	.byte	W01
	.byte		N10   , Cn4 
	.byte	W18
	.byte		N05   , Cn4 , v084
	.byte	W05
	.byte		N01   , As3 , v112
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
	.byte		N03   , Dn4 , v084
	.byte	W05
	.byte		N01   , As3 , v112
	.byte	W01
	.byte		N04   , Ds4 
	.byte	W11
	.byte		N01   , As3 
	.byte	W01
	.byte		N04   , Ds4 
	.byte	W06
	.byte		N03   , Ds4 , v084
	.byte	W05
	.byte		N01   , As3 , v112
	.byte	W01
@ 033   ----------------------------------------
mus_t_marionette_5_033:
	.byte		N16   , Ds4 , v112
	.byte	W18
	.byte		N01   , As3 
	.byte	W01
	.byte		N04   , Ds4 
	.byte	W16
	.byte		N01   , Cn4 
	.byte	W01
	.byte		N04   , Ds4 
	.byte	W11
	.byte		N01   , Cn4 
	.byte	W01
	.byte		N16   , Ds4 
	.byte	W18
	.byte		N05   , Ds4 , v084
	.byte	W05
	.byte		N01   , As3 , v112
	.byte	W01
	.byte		N16   , Ds4 
	.byte	W18
	.byte		N01   , As3 
	.byte	W01
	.byte		N04   , Ds4 
	.byte	W05
	.byte	PEND
@ 034   ----------------------------------------
mus_t_marionette_5_034:
	.byte	W11
	.byte		N01   , As3 , v112
	.byte	W01
	.byte		N10   , Ds4 
	.byte	W18
	.byte		N05   , Ds4 , v084
	.byte	W05
	.byte		N01   , Cn4 , v112
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
	.byte		N03   , Dn4 , v084
	.byte	W05
	.byte		N01   , As3 , v112
	.byte	W01
	.byte		N04   , Dn4 
	.byte	W11
	.byte		N01   , As3 
	.byte	W01
	.byte		N04   , Dn4 
	.byte	W06
	.byte		N03   , Dn4 , v084
	.byte	W05
	.byte		N01   , As3 , v112
	.byte	W01
	.byte	PEND
@ 035   ----------------------------------------
mus_t_marionette_5_035:
	.byte		N16   , Ds4 , v112
	.byte	W18
	.byte		N01   , As3 
	.byte	W01
	.byte		N04   , Ds4 
	.byte	W16
	.byte		N01   , Cn4 
	.byte	W01
	.byte		N04   , Ds4 
	.byte	W11
	.byte		N01   , Cn4 
	.byte	W01
	.byte		N16   , Ds4 
	.byte	W18
	.byte		N05   , Ds4 , v084
	.byte	W05
	.byte		N01   , Cn4 , v112
	.byte	W01
	.byte		N16   , Ds4 
	.byte	W18
	.byte		N01   , Cn4 
	.byte	W01
	.byte		N04   , Ds4 
	.byte	W05
	.byte	PEND
@ 036   ----------------------------------------
	.byte	W11
	.byte		N01   , Cn4 
	.byte	W01
	.byte		N10   , Ds4 
	.byte	W18
	.byte		N05   , Ds4 , v084
	.byte	W05
	.byte		N01   , An3 , v112
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
	.byte		N03   , Cn4 , v084
	.byte	W05
	.byte		N01   , An3 , v112
	.byte	W01
	.byte		N04   , Dn4 
	.byte	W11
	.byte		N01   , An3 
	.byte	W01
	.byte		N04   , Dn4 
	.byte	W06
	.byte		N03   , Dn4 , v084
	.byte	W05
	.byte		N01   , An3 , v112
	.byte	W01
@ 037   ----------------------------------------
	.byte		N16   , Dn4 
	.byte	W18
	.byte		N01   , An3 
	.byte	W01
	.byte		N04   , Dn4 
	.byte	W16
	.byte		N01   , As3 
	.byte	W01
	.byte		N04   , Dn4 
	.byte	W11
	.byte		N01   , As3 
	.byte	W01
	.byte		N16   , Dn4 
	.byte	W18
	.byte		N05   , Dn4 , v084
	.byte	W05
	.byte		N01   , As3 , v112
	.byte	W01
	.byte		N16   , Dn4 
	.byte	W18
	.byte		N01   , As3 
	.byte	W01
	.byte		N04   , Dn4 
	.byte	W05
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_5_030
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_5_031
@ 040   ----------------------------------------
	.byte	W11
	.byte		N01   , Gn3 , v112
	.byte	W01
	.byte		N10   , Cn4 
	.byte	W18
	.byte		N05   , Cn4 , v084
	.byte	W05
	.byte		N01   , As3 , v112
	.byte	W01
	.byte		N04   , Ds4 
	.byte	W11
	.byte		N01   , As3 
	.byte	W01
	.byte		N04   , Dn4 
	.byte	W07
	.byte		N09   , Ds4 
	.byte	W11
	.byte		N03   , Dn4 , v084
	.byte	W05
	.byte		N01   , As3 , v112
	.byte	W01
	.byte		N04   , Ds4 
	.byte	W11
	.byte		N01   , As3 
	.byte	W01
	.byte		N04   , Ds4 
	.byte	W06
	.byte		N03   , Ds4 , v084
	.byte	W05
	.byte		N01   , As3 , v112
	.byte	W01
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_5_033
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_5_034
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_5_035
@ 044   ----------------------------------------
	.byte	W11
	.byte		N01   , Cn4 , v112
	.byte	W01
	.byte		        Ds4 
	.byte	W01
	.byte		N09   , Ds4 , v084
	.byte	W17
	.byte		N05   
	.byte	W05
	.byte		N01   , An3 , v112
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
	.byte		N03   , Cn4 , v084
	.byte	W05
	.byte		N01   , An3 , v112
	.byte	W01
	.byte		N04   , Dn4 
	.byte	W11
	.byte		N01   , An3 
	.byte	W01
	.byte		N04   , Dn4 
	.byte	W06
	.byte		N03   , Dn4 , v084
	.byte	W05
	.byte		N01   , An3 , v112
	.byte	W01
@ 045   ----------------------------------------
	.byte		N16   , Dn4 
	.byte	W18
	.byte		N01   , An3 
	.byte	W01
	.byte		N04   , Dn4 
	.byte	W04
	.byte		VOICE , 83
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N04   , Fs3 , v100
	.byte	W06
	.byte		        Fs3 , v072
	.byte	W06
	.byte		        Fs3 , v100
	.byte	W06
	.byte		        Fs3 , v072
	.byte	W06
	.byte		        Fs3 , v100
	.byte	W06
	.byte		        Fs3 , v072
	.byte	W42
@ 046   ----------------------------------------
	.byte	W23
	.byte		VOICE , 82
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N16   , Dn3 , v096
	.byte	W11
	.byte		VOICE , 82
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W12
	.byte		N16   , As3 
	.byte	W19
	.byte		N04   
	.byte	W17
	.byte		        An3 
	.byte	W12
@ 047   ----------------------------------------
	.byte		N16   , As3 
	.byte	W23
	.byte		VOICE , 82
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N06   , Gn3 
	.byte	W11
	.byte		VOICE , 82
	.byte	W01
	.byte		PAN   , c_v-64
	.byte		N04   , An3 
	.byte	W12
	.byte		N16   , Cn4 
	.byte	W24
	.byte		N11   , An3 
	.byte	W11
	.byte		VOICE , 83
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N06   , Cn3 
	.byte	W05
	.byte		VOICE , 82
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , An3 
	.byte	W04
	.byte		VOICE , 83
	.byte	W01
@ 048   ----------------------------------------
	.byte		PAN   , c_v+0
	.byte		N06   , Dn3 
	.byte	W05
	.byte		VOICE , 82
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N16   , As3 
	.byte	W17
	.byte	GOTO
	 .word	mus_t_marionette_5_B1
mus_t_marionette_5_B2:
	.byte		PAN   , c_v+0
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_t_marionette_6:
	.byte	KEYSH , mus_t_marionette_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 87
	.byte	W01
	.byte		VOL   , 120*mus_t_marionette_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		N90   , Gn1 , v124
	.byte	W72
@ 001   ----------------------------------------
	.byte	W24
	.byte		        Fn1 
	.byte	W72
@ 002   ----------------------------------------
	.byte	W24
	.byte		N42   , En1 
	.byte	W48
	.byte		        Ds1 
	.byte	W24
@ 003   ----------------------------------------
	.byte	W24
	.byte		        Dn1 
	.byte	W48
	.byte		N18   
	.byte	W24
@ 004   ----------------------------------------
	.byte		N18   
	.byte	W24
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		VOICE , 89
	.byte	W01
	.byte		N16   , As4 , v060
	.byte	W24
	.byte		N06   , An4 
	.byte	W06
	.byte		VOICE , 87
	.byte	W01
	.byte		N04   , Dn1 , v124
	.byte	W05
	.byte		N10   , Dn2 
	.byte	W12
@ 005   ----------------------------------------
mus_t_marionette_6_005:
	.byte		N06   , Cn2 , v124
	.byte	W07
	.byte		N04   , Dn2 
	.byte	W05
	.byte		N06   , An1 
	.byte	W07
	.byte		N04   , Fn1 
	.byte	W05
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		VOICE , 89
	.byte	W01
	.byte		N16   , Gn4 , v060
	.byte	W24
	.byte		VOICE , 87
	.byte		N06   , Fn1 , v124
	.byte	W07
	.byte		N04   , Dn1 
	.byte	W05
	.byte		N06   , Fn1 
	.byte	W07
	.byte		N04   , Gn1 
	.byte	W05
	.byte	PEND
@ 006   ----------------------------------------
mus_t_marionette_6_006:
	.byte	W07
	.byte		N04   , Fn1 , v124
	.byte	W05
	.byte		N10   , As1 
	.byte	W12
	.byte	PEND
mus_t_marionette_6_B1:
	.byte		N06   , Gn1 , v124
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		VOICE , 89
	.byte	W01
	.byte		N16   , As4 , v060
	.byte	W24
	.byte		N06   , An4 
	.byte	W06
	.byte		VOICE , 87
	.byte	W01
	.byte		N04   , Dn1 , v124
	.byte	W05
	.byte		N10   , Dn2 
	.byte	W12
@ 007   ----------------------------------------
	.byte		N06   , Cn2 
	.byte	W07
	.byte		N04   , Dn2 
	.byte	W05
	.byte		N06   , An1 
	.byte	W07
	.byte		N04   , Fn1 
	.byte	W05
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		VOICE , 89
	.byte	W01
	.byte		N06   , As4 , v060
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		VOICE , 87
	.byte		N06   , Fn1 , v124
	.byte	W07
	.byte		N04   , Dn1 
	.byte	W05
	.byte		N06   , Fn1 
	.byte	W07
	.byte		N04   , Gn1 
	.byte	W05
@ 008   ----------------------------------------
mus_t_marionette_6_008:
	.byte	W07
	.byte		N04   , Fn1 , v124
	.byte	W05
	.byte		N10   , As1 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		VOICE , 89
	.byte	W01
	.byte		N16   , Gn4 , v060
	.byte	W24
	.byte		N06   , Fn4 
	.byte	W06
	.byte		VOICE , 87
	.byte	W01
	.byte		N04   , Dn1 , v124
	.byte	W05
	.byte		N10   , Dn2 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_6_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_6_008
@ 011   ----------------------------------------
	.byte		N06   , Cn2 , v124
	.byte	W07
	.byte		N04   , Dn2 
	.byte	W05
	.byte		N06   , An1 
	.byte	W07
	.byte		N04   , Fn1 
	.byte	W05
	.byte		N06   , Cn1 
	.byte	W12
	.byte		N10   , Dn1 
	.byte	W12
	.byte		N06   , Ds1 
	.byte	W12
	.byte		N10   , Fn1 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W24
@ 012   ----------------------------------------
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W42
	.byte	W01
	.byte		N04   , Dn1 
	.byte	W05
	.byte		N10   , Dn2 
	.byte	W12
@ 013   ----------------------------------------
mus_t_marionette_6_013:
	.byte		N06   , Cn2 , v124
	.byte	W07
	.byte		N04   , Dn2 
	.byte	W05
	.byte		N06   , An1 
	.byte	W07
	.byte		N04   , Fn1 
	.byte	W05
	.byte		N06   , Gn1 
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
	.byte	W05
	.byte	PEND
@ 014   ----------------------------------------
	.byte	W07
	.byte		        Fn1 
	.byte	W05
	.byte		N10   , As1 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		VOICE , 89
	.byte		PAN   , c_v+63
	.byte		N21   , Dn4 , v080
	.byte	W23
	.byte		VOICE , 87
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W07
	.byte		N04   , Dn1 , v124
	.byte	W05
	.byte		N10   , Dn2 
	.byte	W12
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_6_013
@ 016   ----------------------------------------
	.byte	W07
	.byte		N04   , Fn1 , v124
	.byte	W05
	.byte		N10   , As1 
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Gn5 , v112
	.byte	W07
	.byte		N04   , Gn1 , v124
	.byte	W05
	.byte		N10   , Cn2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 017   ----------------------------------------
	.byte		N06   , Gn5 , v112
	.byte	W07
	.byte		N04   , Gn1 , v124
	.byte	W05
	.byte		N10   , Bn1 
	.byte	W12
	.byte		N06   , As1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Gn5 , v112
	.byte	W07
	.byte		N04   , Gn1 , v124
	.byte	W05
	.byte		N10   , As1 
	.byte	W12
	.byte		N06   , An1 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 018   ----------------------------------------
	.byte	W07
	.byte		N04   , Dn1 
	.byte	W05
	.byte		N10   , Dn2 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N12   
	.byte	W42
	.byte	W01
	.byte		N04   , Dn1 
	.byte	W05
	.byte		N10   , Dn2 
	.byte	W12
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_6_013
@ 020   ----------------------------------------
mus_t_marionette_6_020:
	.byte	W07
	.byte		N04   , Fn1 , v124
	.byte	W05
	.byte		N10   , As1 
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
	.byte	W07
	.byte		N04   , Gn1 
	.byte	W05
	.byte		N10   , Cn2 
	.byte	W12
	.byte		N06   , An1 
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		N06   , Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 022   ----------------------------------------
	.byte	W07
	.byte		N04   , Ds1 
	.byte	W05
	.byte		N10   , Gs1 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N12   
	.byte	W42
	.byte	W01
	.byte		N04   , Dn1 
	.byte	W05
	.byte		N10   , Dn2 
	.byte	W12
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_6_013
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_6_020
@ 025   ----------------------------------------
	.byte	W07
	.byte		N04   , Gn1 , v124
	.byte	W05
	.byte		N10   , Cn2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		N06   , Ds2 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 026   ----------------------------------------
	.byte	W07
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
	.byte	W12
@ 027   ----------------------------------------
	.byte	W07
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
	.byte	W12
@ 028   ----------------------------------------
	.byte	W07
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
	.byte	W24
@ 029   ----------------------------------------
	.byte	W24
	.byte		N06   , Gn1 
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
@ 030   ----------------------------------------
mus_t_marionette_6_030:
	.byte		N06   , Gn1 , v124
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N06   , Fs1 
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
	.byte	PEND
@ 031   ----------------------------------------
mus_t_marionette_6_031:
	.byte		N06   , Fs1 , v124
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N06   , Fn1 
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
	.byte	PEND
@ 032   ----------------------------------------
mus_t_marionette_6_032:
	.byte		N06   , En1 , v124
	.byte	W12
	.byte		N10   , En2 
	.byte	W12
	.byte		N06   , Ds2 
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
	.byte	PEND
@ 033   ----------------------------------------
mus_t_marionette_6_033:
	.byte		N06   , Cs2 , v124
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N06   , Cn2 
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
	.byte	PEND
@ 034   ----------------------------------------
mus_t_marionette_6_034:
	.byte		N06   , As1 , v124
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N06   , An1 
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
	.byte	PEND
@ 035   ----------------------------------------
mus_t_marionette_6_035:
	.byte		N06   , Cn2 , v124
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N06   , An1 
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
	.byte	PEND
@ 036   ----------------------------------------
mus_t_marionette_6_036:
	.byte		N06   , An1 , v124
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N06   , Dn2 
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
	.byte	PEND
@ 037   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N06   , Gn1 
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
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_6_030
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_6_031
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_6_032
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_6_033
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_6_034
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_6_035
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_6_036
@ 045   ----------------------------------------
	.byte		N06   , Dn2 , v124
	.byte	W12
	.byte		N10   
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
	.byte	W24
	.byte	W03
@ 046   ----------------------------------------
	.byte		        c_v+0
	.byte	W24
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		VOICE , 89
	.byte	W01
	.byte		N16   , Gn4 , v060
	.byte	W24
	.byte		N06   , Fn4 
	.byte	W06
	.byte		VOICE , 87
	.byte	W01
	.byte		N04   , Dn1 , v124
	.byte	W05
	.byte		N10   , Dn2 
	.byte	W12
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_6_005
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_6_006
	.byte	GOTO
	 .word	mus_t_marionette_6_B1
mus_t_marionette_6_B2:
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_t_marionette_7:
	.byte	KEYSH , mus_t_marionette_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 44*mus_t_marionette_mvl/mxv
	.byte	W03
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W90
	.byte	W01
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W24
	.byte		N06   , Dn4 , v092
	.byte	W07
	.byte		N04   , Dn4 , v080
	.byte	W05
	.byte		N06   , Dn4 , v092
	.byte	W07
	.byte		N04   , Dn4 , v080
	.byte	W05
	.byte		N06   , Dn4 , v100
	.byte	W07
	.byte		N04   , Dn4 , v084
	.byte	W05
	.byte		N06   , Dn4 , v100
	.byte	W07
	.byte		N04   , Dn4 , v084
	.byte	W05
	.byte		N06   , Dn4 , v108
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N06   , Dn4 , v108
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
@ 004   ----------------------------------------
	.byte		N06   , Dn4 , v112
	.byte	W07
	.byte		N04   , Dn4 , v100
	.byte	W05
	.byte		N06   , Dn4 , v120
	.byte	W07
	.byte		N04   , Dn4 , v108
	.byte	W17
	.byte		N06   , Cn4 , v116
	.byte	W12
	.byte		N17   , Dn4 , v120
	.byte	W19
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N06   , Cn4 , v127
	.byte	W07
	.byte		N03   , Dn4 , v092
	.byte	W05
	.byte		N11   , Cn4 , v116
	.byte	W12
@ 005   ----------------------------------------
	.byte		        Dn4 , v120
	.byte	W12
	.byte		N03   , Fs4 , v060
	.byte	W04
	.byte		        Fs4 , v040
	.byte	W04
	.byte		        Fs4 , v072
	.byte	W04
	.byte		N06   , Cn4 , v127
	.byte	W07
	.byte		N03   , Dn4 , v092
	.byte	W05
	.byte		N11   , Cn4 , v116
	.byte	W12
	.byte		N10   , Dn4 , v120
	.byte	W12
	.byte		N04   , Fs4 , v060
	.byte	W07
	.byte		N03   , Dn4 , v092
	.byte	W05
	.byte		N11   , Cn4 , v127
	.byte	W12
	.byte		        Cn4 , v116
	.byte	W12
@ 006   ----------------------------------------
	.byte		        Dn4 , v120
	.byte	W12
	.byte		N04   , Fs4 , v060
	.byte	W07
	.byte		        As4 , v084
	.byte	W05
mus_t_marionette_7_B1:
	.byte		N11   , Cn4 , v127
	.byte	W12
	.byte		        Cn4 , v116
	.byte	W12
	.byte		        Dn4 , v120
	.byte	W12
	.byte		N04   , Fs4 , v060
	.byte	W07
	.byte		N03   , Dn4 , v092
	.byte	W05
	.byte		N06   , Cn4 , v127
	.byte	W07
	.byte		N03   , Dn4 , v092
	.byte	W05
	.byte		N11   , Cn4 , v116
	.byte	W12
@ 007   ----------------------------------------
	.byte		        Dn4 , v120
	.byte	W12
	.byte		N03   , Fs4 , v060
	.byte	W04
	.byte		        Fs4 , v040
	.byte	W04
	.byte		        Fs4 , v072
	.byte	W04
	.byte		N06   , Cn4 , v127
	.byte	W07
	.byte		N03   , Dn4 , v092
	.byte	W05
	.byte		N11   , Cn4 , v116
	.byte	W12
	.byte		        Dn4 , v120
	.byte	W12
	.byte		N04   , Fs4 , v060
	.byte	W07
	.byte		N03   , Dn4 , v092
	.byte	W05
	.byte		N11   , Cn4 , v127
	.byte	W12
	.byte		        Cn4 , v116
	.byte	W12
@ 008   ----------------------------------------
	.byte		        Dn4 , v120
	.byte	W19
	.byte		N03   , Dn4 , v092
	.byte	W05
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		N11   , Cn4 , v116
	.byte	W30
	.byte	W01
	.byte		N03   , Dn4 , v092
	.byte	W12
	.byte		N03   
	.byte	W05
	.byte		N11   , Cn4 , v116
	.byte	W12
@ 009   ----------------------------------------
	.byte		        Dn4 , v120
	.byte	W12
	.byte		N03   , Fs4 , v060
	.byte	W04
	.byte		        Fs4 , v040
	.byte	W04
	.byte		        Fs4 , v072
	.byte	W04
	.byte		N06   , Cn4 , v127
	.byte	W07
	.byte		N03   , Dn4 , v092
	.byte	W05
	.byte		N11   , Cn4 , v116
	.byte	W12
	.byte		        Dn4 , v120
	.byte	W12
	.byte		N04   , Fs4 , v060
	.byte	W07
	.byte		N03   , Dn4 , v092
	.byte	W17
	.byte		N11   , Cn4 , v116
	.byte	W12
@ 010   ----------------------------------------
	.byte		        Dn4 , v120
	.byte	W19
	.byte		N04   , As4 , v084
	.byte	W05
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		N11   , Cn4 , v116
	.byte	W12
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		        Fs4 , v060
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W12
	.byte		N04   
	.byte	W05
	.byte		N11   , Cn4 , v116
	.byte	W12
@ 011   ----------------------------------------
	.byte		        Dn4 , v120
	.byte	W12
	.byte		N03   , Fs4 , v060
	.byte	W04
	.byte		        Fs4 , v040
	.byte	W04
	.byte		N05   , Fs4 , v072
	.byte	W11
	.byte		N03   , Dn4 , v092
	.byte	W05
	.byte		N11   , Cn4 , v116
	.byte	W12
	.byte		        Dn4 , v120
	.byte	W12
	.byte		N05   , Fs4 , v060
	.byte	W07
	.byte		N03   , Dn4 , v092
	.byte	W17
	.byte		N02   , Dn4 , v084
	.byte	W03
	.byte		        Dn4 , v092
	.byte	W03
	.byte		        Dn4 , v100
	.byte	W03
	.byte		        Dn4 , v108
	.byte	W03
@ 012   ----------------------------------------
	.byte		N17   , Dn4 , v120
	.byte	W19
	.byte		N05   , Dn4 , v092
	.byte	W17
	.byte		N06   , Cn4 , v116
	.byte	W24
	.byte		N05   , Fs4 , v060
	.byte	W12
	.byte		N11   , Dn4 , v092
	.byte	W12
	.byte		N05   , Fs4 , v060
	.byte	W07
	.byte		N03   , Dn4 , v092
	.byte	W05
@ 013   ----------------------------------------
	.byte	W12
	.byte		N11   , Cn4 , v127
	.byte		N03   , Dn4 , v092
	.byte	W04
	.byte		        Fs4 , v040
	.byte	W04
	.byte		        Fs4 , v072
	.byte	W04
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		N11   , Dn4 , v092
	.byte	W19
	.byte		N03   
	.byte	W05
	.byte		N05   , Fs4 , v060
	.byte	W12
	.byte		N06   , Cn4 , v127
	.byte	W07
	.byte		N03   , Dn4 , v092
	.byte	W05
	.byte		N06   , Cn4 , v116
	.byte	W07
	.byte		N03   , Dn4 , v092
	.byte	W05
@ 014   ----------------------------------------
	.byte	W12
	.byte		N05   , Fs4 , v060
	.byte	W07
	.byte		N04   , As4 , v084
	.byte	W05
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		N12   , Cn4 , v116
	.byte	W24
	.byte		N05   , Fs4 , v060
	.byte	W12
	.byte		N11   , Dn4 , v092
	.byte	W12
	.byte		N05   , Fs4 , v060
	.byte	W07
	.byte		N03   , Dn4 , v092
	.byte	W05
@ 015   ----------------------------------------
	.byte	W12
	.byte		N03   
	.byte	W04
	.byte		        Fs4 , v040
	.byte	W04
	.byte		        Fs4 , v072
	.byte	W04
	.byte		N11   , Cn4 , v116
	.byte	W12
	.byte		        Dn4 , v092
	.byte	W12
	.byte		N04   , Fs4 , v088
	.byte	W07
	.byte		N03   , Dn4 , v092
	.byte	W05
	.byte		N04   , Fs4 , v060
	.byte	W12
	.byte		N05   , Cn4 , v127
	.byte	W07
	.byte		N03   , Dn4 , v092
	.byte	W05
	.byte		N05   , Cn4 , v116
	.byte	W07
	.byte		N03   , Dn4 , v092
	.byte	W05
@ 016   ----------------------------------------
	.byte	W07
	.byte		N04   , Dn4 , v108
	.byte	W05
	.byte		N05   
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		N11   , Dn4 , v092
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N05   , Fs4 , v060
	.byte	W07
	.byte		        Dn4 , v092
	.byte	W05
@ 017   ----------------------------------------
	.byte	W12
	.byte		N11   , Cn4 , v127
	.byte	W12
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		N11   , Dn4 , v092
	.byte	W36
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		N02   , Dn4 , v100
	.byte	W03
	.byte		        Dn4 , v084
	.byte	W03
	.byte		        Dn4 , v092
	.byte	W03
	.byte		        Dn4 , v100
	.byte	W03
@ 018   ----------------------------------------
	.byte		N11   , Dn4 , v112
	.byte	W12
	.byte		N05   , Dn4 , v100
	.byte	W07
	.byte		N04   , As4 , v084
	.byte	W05
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		N11   , Dn4 , v092
	.byte	W24
	.byte		N05   , Fs4 , v060
	.byte	W12
	.byte		N11   , Dn4 , v092
	.byte	W12
	.byte		N05   , Fs4 , v060
	.byte	W07
	.byte		N03   , Dn4 , v092
	.byte	W05
@ 019   ----------------------------------------
	.byte	W12
	.byte		N03   
	.byte	W04
	.byte		        Fs4 , v040
	.byte	W04
	.byte		        Fs4 , v072
	.byte	W04
	.byte		N06   , Dn4 , v108
	.byte	W07
	.byte		N03   , Dn4 , v092
	.byte	W05
	.byte		N11   
	.byte	W12
	.byte		N06   , Dn4 , v112
	.byte	W07
	.byte		N03   , Dn4 , v100
	.byte	W05
	.byte		N11   
	.byte	W12
	.byte		N06   , Dn4 , v108
	.byte	W07
	.byte		N03   , Dn4 , v100
	.byte	W05
	.byte		N06   , Dn4 , v108
	.byte	W07
	.byte		N03   , Dn4 , v100
	.byte	W05
@ 020   ----------------------------------------
	.byte		N06   , Dn4 , v112
	.byte	W07
	.byte		N03   , Dn4 , v100
	.byte	W05
	.byte		N06   , Dn4 , v112
	.byte	W07
	.byte		N03   , Dn4 , v100
	.byte	W17
	.byte		N12   , Cn4 , v116
	.byte	W48
	.byte		N05   , Fs4 , v060
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
@ 021   ----------------------------------------
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		N02   , Dn4 , v092
	.byte	W04
	.byte		        Fs4 , v040
	.byte	W04
	.byte		        Fs4 , v072
	.byte	W04
	.byte		N11   , Cn4 , v116
	.byte	W12
	.byte		        Dn4 , v092
	.byte	W12
	.byte		N05   , Fs4 , v088
	.byte	W07
	.byte		N03   , Dn4 , v092
	.byte	W05
	.byte		N05   , Fs4 , v060
	.byte	W19
	.byte		N03   , Dn4 , v092
	.byte	W05
	.byte		N06   , Cn4 , v116
	.byte	W07
	.byte		N03   , Dn4 , v092
	.byte	W05
@ 022   ----------------------------------------
mus_t_marionette_7_022:
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		        Dn4 , v092
	.byte	W07
	.byte		N04   , As4 , v084
	.byte	W05
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		N11   , Dn4 , v092
	.byte	W12
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		        Fs4 , v060
	.byte	W24
	.byte		N05   
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte	PEND
@ 023   ----------------------------------------
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		N03   , Dn4 , v092
	.byte	W04
	.byte		        Fs4 , v040
	.byte	W04
	.byte		        Fs4 , v072
	.byte	W04
	.byte		N11   , Cn4 , v116
	.byte	W12
	.byte		        Dn4 , v092
	.byte	W12
	.byte		N05   , Fs4 , v088
	.byte	W07
	.byte		N03   , Dn4 , v092
	.byte	W05
	.byte		N05   , Fs4 , v060
	.byte	W19
	.byte		N03   , Dn4 , v092
	.byte	W05
	.byte		N06   , Cn4 , v116
	.byte	W07
	.byte		N03   , Dn4 , v092
	.byte	W05
@ 024   ----------------------------------------
	.byte		N05   , Fs4 , v088
	.byte	W07
	.byte		N04   , Dn4 , v108
	.byte	W05
	.byte		N05   
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		N11   , Dn4 , v092
	.byte	W12
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		        Fs4 , v060
	.byte	W24
	.byte		N05   
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
@ 025   ----------------------------------------
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		N03   , Dn4 , v092
	.byte	W04
	.byte		        Fs4 , v040
	.byte	W04
	.byte		        Fs4 , v072
	.byte	W04
	.byte		N11   , Cn4 , v116
	.byte	W12
	.byte		        Dn4 , v092
	.byte	W12
	.byte		N05   , Fs4 , v088
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N05   , Fs4 , v060
	.byte	W19
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N06   , Cn4 , v116
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_7_022
@ 027   ----------------------------------------
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		N03   , Dn4 , v092
	.byte	W04
	.byte		        Fs4 , v040
	.byte	W04
	.byte		        Fs4 , v072
	.byte	W04
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		N11   , Dn4 , v092
	.byte	W12
	.byte		N05   , Fs4 , v088
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N05   , Fs4 , v060
	.byte	W19
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N05   , Fs4 , v060
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
@ 028   ----------------------------------------
	.byte		N05   , Fs4 , v088
	.byte	W07
	.byte		N04   , Dn4 , v108
	.byte	W05
	.byte		N11   , As4 , v092
	.byte	W24
	.byte		N06   , Cn4 , v116
	.byte	W12
	.byte		N11   , Dn4 , v120
	.byte	W12
	.byte		N05   , Fs4 , v060
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N06   , Cn4 , v127
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N06   , Cn4 , v116
	.byte	W12
@ 029   ----------------------------------------
mus_t_marionette_7_029:
	.byte		N11   , Dn4 , v120
	.byte	W12
	.byte		N03   , Fs4 , v060
	.byte	W04
	.byte		        Fs4 , v040
	.byte	W04
	.byte		N05   , Fs4 , v072
	.byte	W16
	.byte		N06   , Cn4 , v116
	.byte	W12
	.byte		N11   , Dn4 , v120
	.byte	W12
	.byte		N05   , Fs4 , v060
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N05   , Fs4 , v088
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N11   , Cn4 , v116
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
mus_t_marionette_7_030:
	.byte		N11   , Dn4 , v120
	.byte	W12
	.byte		N03   , Fs4 , v060
	.byte	W04
	.byte		        Fs4 , v040
	.byte	W04
	.byte		        Fs4 , v072
	.byte	W04
	.byte		N05   , Fs4 , v088
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N11   , Cn4 , v116
	.byte	W12
	.byte		        Dn4 , v120
	.byte	W12
	.byte		N05   , Fs4 , v060
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		N11   , Cn4 , v116
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
	.byte		        Dn4 , v120
	.byte	W12
	.byte		N05   , Fs4 , v060
	.byte	W07
	.byte		N04   , As4 , v084
	.byte	W05
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		N11   , Cn4 , v116
	.byte	W12
	.byte		        Dn4 , v120
	.byte	W12
	.byte		N05   , Fs4 , v060
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N05   , Fs4 , v088
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N11   , Cn4 , v116
	.byte	W12
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_7_030
@ 033   ----------------------------------------
mus_t_marionette_7_033:
	.byte		N11   , Dn4 , v120
	.byte	W19
	.byte		N05   , Dn4 , v092
	.byte	W17
	.byte		N06   , Cn4 , v116
	.byte	W30
	.byte	W01
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N05   , Fs4 , v088
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N11   , Cn4 , v116
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
mus_t_marionette_7_034:
	.byte		N11   , Dn4 , v120
	.byte	W12
	.byte		N03   , Fs4 , v060
	.byte	W04
	.byte		        Fs4 , v040
	.byte	W04
	.byte		        Fs4 , v072
	.byte	W04
	.byte		N05   , Fs4 , v088
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N11   , Cn4 , v116
	.byte	W30
	.byte	W01
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		N11   , Cn4 , v116
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
mus_t_marionette_7_035:
	.byte		N11   , Dn4 , v120
	.byte	W19
	.byte		N04   , As4 , v084
	.byte	W05
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		N11   , Cn4 , v116
	.byte	W12
	.byte		        Dn4 , v120
	.byte	W12
	.byte		N05   , Fs4 , v060
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N05   , Fs4 , v088
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N11   , Cn4 , v116
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
	.byte		        Dn4 , v120
	.byte	W12
	.byte		N03   , Fs4 , v060
	.byte	W04
	.byte		        Fs4 , v040
	.byte	W04
	.byte		        Fs4 , v072
	.byte	W04
	.byte		N05   , Fs4 , v088
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N11   , Cn4 , v116
	.byte	W12
	.byte		        Dn4 , v120
	.byte	W12
	.byte		N02   , Dn4 , v084
	.byte	W03
	.byte		        Dn4 , v092
	.byte	W03
	.byte		        Dn4 , v100
	.byte	W03
	.byte		        Dn4 , v108
	.byte	W03
	.byte		N11   , Dn4 , v120
	.byte	W12
	.byte		N06   , Cn4 , v116
	.byte	W07
	.byte		N05   , Dn4 , v092
	.byte	W05
@ 037   ----------------------------------------
	.byte	W12
	.byte		N11   , Dn4 , v120
	.byte	W24
	.byte		N06   , Cn4 , v116
	.byte	W12
	.byte		N11   , Dn4 , v120
	.byte	W12
	.byte		N05   , Fs4 , v060
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N05   , Fs4 , v088
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N11   , Cn4 , v116
	.byte	W12
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_7_030
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_7_035
@ 040   ----------------------------------------
	.byte		N11   , Dn4 , v120
	.byte	W12
	.byte		N03   , Fs4 , v060
	.byte	W04
	.byte		        Fs4 , v040
	.byte	W04
	.byte		        Fs4 , v072
	.byte	W04
	.byte		N05   , Fs4 , v088
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N11   , Cn4 , v116
	.byte	W12
	.byte		        Dn4 , v120
	.byte	W12
	.byte		N05   , Fs4 , v060
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		N11   , Cn4 , v116
	.byte		N05   , Fs4 , v060
	.byte	W12
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_7_033
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_7_034
@ 043   ----------------------------------------
	.byte		N11   , Dn4 , v120
	.byte	W19
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		N11   , Cn4 , v116
	.byte	W12
	.byte		        Dn4 , v120
	.byte	W12
	.byte		N05   , Fs4 , v060
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N05   , Fs4 , v088
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N11   , Cn4 , v116
	.byte	W12
@ 044   ----------------------------------------
	.byte		        Dn4 , v120
	.byte	W12
	.byte		N03   , Fs4 , v060
	.byte	W04
	.byte		        Fs4 , v040
	.byte	W04
	.byte		        Fs4 , v072
	.byte	W04
	.byte		N05   , Fs4 , v088
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N11   , Cn4 , v116
	.byte	W12
	.byte		        Dn4 , v120
	.byte	W12
	.byte		N02   , Dn4 , v084
	.byte	W03
	.byte		        Dn4 , v092
	.byte	W03
	.byte		        Dn4 , v100
	.byte	W03
	.byte		        Dn4 , v108
	.byte	W03
	.byte		N11   , Dn4 , v120
	.byte	W12
	.byte		N06   , Cn4 , v116
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
@ 045   ----------------------------------------
	.byte		N05   , Fs4 , v088
	.byte	W12
	.byte		N11   , Dn4 , v120
	.byte	W24
	.byte		N06   , Cn4 , v116
	.byte	W12
	.byte		N11   , Dn4 , v120
	.byte	W12
	.byte		N05   , Fs4 , v060
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N06   , Cn4 , v127
	.byte		N05   , Fs4 , v088
	.byte	W07
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte		N06   , Cn4 , v116
	.byte	W12
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_7_029
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_7_030
@ 048   ----------------------------------------
	.byte		N11   , Dn4 , v120
	.byte	W19
	.byte		N04   , Dn4 , v092
	.byte	W05
	.byte	GOTO
	 .word	mus_t_marionette_7_B1
mus_t_marionette_7_B2:
	.byte	FINE

@**************** Track 8 (Midi-Chn.10) ****************@

mus_t_marionette_8:
	.byte	KEYSH , mus_t_marionette_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W01
	.byte		VOL   , 100*mus_t_marionette_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		N11   , Cn1 , v120
	.byte		N24   , Cs2 , v127
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
@ 001   ----------------------------------------
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
@ 002   ----------------------------------------
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
@ 003   ----------------------------------------
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		        En1 , v108
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W19
	.byte		N04   , En1 , v108
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N03   , En1 , v108
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
@ 004   ----------------------------------------
	.byte		N06   , Cn1 , v120
	.byte	W07
	.byte		N04   , En1 , v112
	.byte	W05
	.byte		N06   , En1 , v120
	.byte	W07
	.byte		N04   , En1 , v112
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte		N24   , Cs2 , v127
	.byte	W24
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
@ 005   ----------------------------------------
mus_t_marionette_8_005:
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte	PEND
@ 006   ----------------------------------------
	.byte		N12   , Cn1 , v108
	.byte	W12
	.byte		N12   
	.byte	W12
mus_t_marionette_8_B1:
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W08
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W11
	.byte		N03   , Fs1 , v088
	.byte	W08
	.byte		N04   , Fs1 , v048
	.byte	W04
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
@ 007   ----------------------------------------
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N03   , En1 , v100
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
@ 008   ----------------------------------------
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N05   
	.byte		N11   , En1 , v120
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N05   , Cn1 , v108
	.byte		N11   , En1 , v112
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
@ 009   ----------------------------------------
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte		N11   , En1 , v112
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
@ 010   ----------------------------------------
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N05   
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N05   , Cn1 , v108
	.byte		N11   , En1 , v112
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
@ 011   ----------------------------------------
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N05   , Cn1 , v108
	.byte		N10   , En1 , v120
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N10   , En1 , v120
	.byte	W12
	.byte		N11   , Cn1 , v108
	.byte		N10   , En1 , v120
	.byte	W12
	.byte		N11   , Cn1 , v108
	.byte	W12
@ 012   ----------------------------------------
	.byte		N06   , En1 , v120
	.byte	W07
	.byte		N11   , Cn1 , v100
	.byte	W12
	.byte		N04   
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte		N24   , Cs2 , v127
	.byte	W19
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte		N10   , En1 
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        En1 , v096
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N05   , Cn1 , v120
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		        Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
@ 013   ----------------------------------------
	.byte		N11   , Cn1 , v120
	.byte		N10   , En1 
	.byte	W24
	.byte		N11   , Cn1 
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		        Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N05   , Cn1 , v120
	.byte		N10   , En1 
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        En1 , v096
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
@ 014   ----------------------------------------
	.byte		N11   , Cn1 , v120
	.byte		N10   , En1 
	.byte	W12
	.byte		N11   , Cn1 , v100
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W19
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte		N10   , En1 
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        En1 , v096
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N05   , Cn1 , v120
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		        Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
@ 015   ----------------------------------------
	.byte		N11   , Cn1 , v120
	.byte		N10   , En1 
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N05   , Cn1 , v120
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		        Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte		N10   , En1 
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        En1 , v096
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
@ 016   ----------------------------------------
	.byte		N11   , Cn1 , v120
	.byte		N06   , En1 
	.byte	W12
	.byte		N11   , Cn1 , v100
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W19
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        En1 , v096
	.byte	W05
	.byte		N05   , Cn1 , v120
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		        Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
@ 017   ----------------------------------------
	.byte		N11   , Cn1 , v120
	.byte	W24
	.byte		N05   
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		        Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        En1 , v096
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W19
	.byte		N04   , Fs1 , v048
	.byte	W05
@ 018   ----------------------------------------
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N05   , Cn1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v120
	.byte	W19
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte		N10   , En1 
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        En1 , v096
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N05   , Cn1 , v120
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		        Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
@ 019   ----------------------------------------
	.byte		N11   , Cn1 , v120
	.byte		N04   , En1 
	.byte	W19
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N06   , Cn1 , v120
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N06   , Fs1 , v088
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v088
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v088
	.byte	W07
	.byte		N04   , En1 , v120
	.byte	W05
@ 020   ----------------------------------------
	.byte		N06   , Cn1 
	.byte	W07
	.byte		N04   , En1 
	.byte	W05
	.byte		N06   , Cn1 , v100
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte		N24   , Cs2 , v127
	.byte	W24
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte		N10   , En1 , v124
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
@ 021   ----------------------------------------
	.byte		N11   , Cn1 , v120
	.byte	W19
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N05   , Cn1 , v120
	.byte		N10   , En1 , v124
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        En1 , v108
	.byte	W05
@ 022   ----------------------------------------
mus_t_marionette_8_022:
	.byte		N11   , Cn1 , v120
	.byte	W07
	.byte		N04   , En1 , v108
	.byte	W05
	.byte		        Fs1 , v088
	.byte	W07
	.byte		        En1 , v108
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W19
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte		N10   , En1 , v124
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte	PEND
@ 023   ----------------------------------------
mus_t_marionette_8_023:
	.byte		N11   , Cn1 , v120
	.byte	W19
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N05   , Cn1 , v120
	.byte		N10   , En1 , v124
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte	PEND
@ 024   ----------------------------------------
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W19
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte		N10   , En1 , v124
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
@ 025   ----------------------------------------
	.byte		N11   , Cn1 , v120
	.byte	W19
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N05   , Cn1 , v120
	.byte		N10   , En1 , v124
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        En1 , v108
	.byte		N04   , Fs1 , v048
	.byte	W05
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_8_022
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_8_023
@ 028   ----------------------------------------
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte		N10   , En1 , v124
	.byte	W12
	.byte		N10   
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W17
	.byte		N06   , En1 , v124
	.byte	W07
	.byte		N04   
	.byte		N04   , Fs1 , v048
	.byte	W05
@ 029   ----------------------------------------
	.byte		N06   , En1 , v124
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte		N06   
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte		N24   , Cs2 , v127
	.byte	W19
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
@ 030   ----------------------------------------
mus_t_marionette_8_030:
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte	PEND
@ 031   ----------------------------------------
mus_t_marionette_8_031:
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N05   
	.byte		N06   , En1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte	PEND
@ 032   ----------------------------------------
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N03   , En1 
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
@ 033   ----------------------------------------
	.byte		N11   , Cn1 
	.byte	W12
	.byte		N05   
	.byte		N04   , En1 , v124
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte		N24   , Cs2 , v127
	.byte	W19
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
@ 034   ----------------------------------------
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W12
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_8_031
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_8_030
@ 037   ----------------------------------------
	.byte		N05   , Cn1 , v108
	.byte	W07
	.byte		N04   , En1 , v124
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		        Cn1 , v120
	.byte		N24   , Cs2 , v127
	.byte	W19
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_8_030
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_8_031
@ 040   ----------------------------------------
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W19
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N03   , En1 
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
@ 041   ----------------------------------------
	.byte		N11   , Cn1 
	.byte	W12
	.byte		N05   
	.byte		N04   , En1 , v124
	.byte	W07
	.byte		        En1 , v108
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte		N24   , Cs2 , v127
	.byte	W19
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
@ 042   ----------------------------------------
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W12
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
@ 043   ----------------------------------------
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N05   
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_8_030
@ 045   ----------------------------------------
	.byte		N05   , Cn1 , v108
	.byte	W07
	.byte		N04   , En1 , v120
	.byte	W05
	.byte		N05   , Cn1 , v108
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte		N10   , En1 , v124
	.byte	W12
	.byte		N10   
	.byte	W07
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W17
	.byte		N06   , En1 , v124
	.byte	W07
	.byte		N04   
	.byte		N04   , Fs1 , v048
	.byte	W05
@ 046   ----------------------------------------
	.byte		N06   , En1 , v124
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte		N06   
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte		N11   , Cn1 , v120
	.byte		N24   , Cs2 , v127
	.byte	W19
	.byte		N04   , Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_t_marionette_8_005
@ 048   ----------------------------------------
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N05   
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte	GOTO
	 .word	mus_t_marionette_8_B1
mus_t_marionette_8_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_t_marionette:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_t_marionette_pri	@ Priority
	.byte	mus_t_marionette_rev	@ Reverb.

	.word	mus_t_marionette_grp

	.word	mus_t_marionette_1
	.word	mus_t_marionette_2
	.word	mus_t_marionette_3
	.word	mus_t_marionette_4
	.word	mus_t_marionette_5
	.word	mus_t_marionette_6
	.word	mus_t_marionette_7
	.word	mus_t_marionette_8

	.end
