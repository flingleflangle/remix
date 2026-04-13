	.include "MPlayDef.s"

	.equ	mus_t_drill_missile_grp, voicegroup_rg_vs_champion
	.equ	mus_t_drill_missile_pri, 1
	.equ	mus_t_drill_missile_rev, reverb_set+50
	.equ	mus_t_drill_missile_mvl, 80
	.equ	mus_t_drill_missile_key, 0
	.equ	mus_t_drill_missile_tbs, 1
	.equ	mus_t_drill_missile_exg, 1
	.equ	mus_t_drill_missile_cmp, 1

	.section .rodata
	.global	mus_t_drill_missile
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_t_drill_missile_1:
	.byte	KEYSH , mus_t_drill_missile_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 148*mus_t_drill_missile_tbs/2
	.byte		VOICE , 1
	.byte		PAN   , c_v+43
	.byte		VOL   , 93*mus_t_drill_missile_mvl/mxv
	.byte	W84
	.byte	W12
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
mus_t_drill_missile_1_003:
	.byte		VOICE , 1
	.byte		PAN   , c_v+43
	.byte		VOL   , 79*mus_t_drill_missile_mvl/mxv
	.byte	W12
	.byte		N06   , As3 , v120
	.byte	W06
	.byte		N03   , Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N15   , An3 
	.byte	W18
	.byte		N03   
	.byte	W06
	.byte		        Ds3 
	.byte	W12
	.byte		        An3 
	.byte	W06
	.byte		N03   
	.byte	W06
@ 003   ----------------------------------------
	.byte		        Ds3 
	.byte	W12
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds3 
	.byte	W12
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N15   , Cn4 
	.byte	W18
	.byte		N03   
	.byte	W06
	.byte		        Ds3 
	.byte	W12
	.byte		        Cn4 
	.byte	W06
	.byte		N03   
	.byte	W06
@ 004   ----------------------------------------
	.byte		        Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		        Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N15   , An3 
	.byte	W18
	.byte		N03   
	.byte	W06
	.byte		        Ds3 
	.byte	W12
	.byte		        An3 
	.byte	W06
	.byte		N03   
	.byte	W06
@ 005   ----------------------------------------
	.byte		        Ds3 
	.byte	W12
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds3 
	.byte	W12
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N15   , Cn4 
	.byte	W18
	.byte		N03   , Dn4 
	.byte	W06
	.byte		        Ds3 
	.byte	W12
	.byte		N12   , Ds4 
	.byte	W12
@ 006   ----------------------------------------
	.byte		VOICE , 24
	.byte		VOL   , 90*mus_t_drill_missile_mvl/mxv
	.byte		N03   
	.byte	W03
	.byte		N09   , Ds4 , v084
	.byte	W09
	.byte		N03   , As4 , v120
	.byte	W03
	.byte		        As4 , v084
	.byte	W03
	.byte		        Ds4 , v120
	.byte	W03
	.byte		N09   , Ds4 , v084
	.byte	W09
	.byte		N03   , An4 , v120
	.byte	W03
	.byte		        An4 , v084
	.byte	W03
	.byte		        Gn4 , v120
	.byte	W03
	.byte		        Gn4 , v084
	.byte	W03
	.byte		        Ds4 , v120
	.byte	W03
	.byte		        Ds4 , v084
	.byte	W03
	.byte		N15   , Gn4 , v120
	.byte	W15
	.byte		N03   , Gn4 , v084
	.byte	W03
	.byte		        An4 , v120
	.byte	W03
	.byte		        An4 , v084
	.byte	W03
	.byte		        Ds4 , v120
	.byte	W03
	.byte		N09   , Ds4 , v084
	.byte	W09
	.byte		N03   , As4 , v120
	.byte	W03
	.byte		        As4 , v084
	.byte	W03
	.byte		        Cn5 , v120
	.byte	W03
	.byte		        Cn5 , v084
	.byte	W03
@ 007   ----------------------------------------
	.byte		        Fn4 , v120
	.byte	W03
	.byte		N09   , Fn4 , v084
	.byte	W09
	.byte		N03   , Dn5 , v120
	.byte	W03
	.byte		        Dn5 , v084
	.byte	W03
	.byte		        Fn4 , v120
	.byte	W03
	.byte		N09   , Fn4 , v084
	.byte	W09
	.byte		N03   , Cn5 , v120
	.byte	W03
	.byte		        Cn5 , v084
	.byte	W03
	.byte		        An4 , v120
	.byte	W03
	.byte		        An4 , v084
	.byte	W03
	.byte		        Fn4 , v120
	.byte	W03
	.byte		        Fn4 , v084
	.byte	W03
	.byte		N15   , Dn5 , v120
	.byte	W15
	.byte		MOD   , 0
	.byte		N03   , Dn5 , v084
	.byte	W03
	.byte		MOD   , 0
	.byte		N03   , Cn5 , v120
	.byte	W03
	.byte		        Cn5 , v084
	.byte	W03
	.byte		        Fn4 , v120
	.byte	W03
	.byte		N09   , Fn4 , v084
	.byte	W09
	.byte		N03   , Dn5 , v120
	.byte	W03
	.byte		        Dn5 , v084
	.byte	W03
	.byte		        Ds5 , v120
	.byte	W03
	.byte		        Ds5 , v084
	.byte	W03
@ 008   ----------------------------------------
	.byte		        Gs4 , v120
	.byte	W03
	.byte		N09   , Gs4 , v084
	.byte	W09
	.byte		N03   , Ds5 , v120
	.byte	W03
	.byte		        Ds5 , v084
	.byte	W03
	.byte		        Gs4 , v120
	.byte	W03
	.byte		N09   , Gs4 , v084
	.byte	W09
	.byte		N03   , Dn5 , v120
	.byte	W03
	.byte		        Dn5 , v084
	.byte	W03
	.byte		        Cn5 , v120
	.byte	W03
	.byte		        Cn5 , v084
	.byte	W03
	.byte		        Gs4 , v120
	.byte	W03
	.byte		        Gs4 , v084
	.byte	W03
	.byte		N15   , Ds5 , v120
	.byte	W06
	.byte		MOD   , 70
	.byte	W09
	.byte		        0
	.byte		        0
	.byte		N03   , Ds5 , v084
	.byte	W03
	.byte		MOD   , 0
	.byte		N03   , Dn5 , v120
	.byte	W03
	.byte		        Dn5 , v084
	.byte	W03
	.byte		        Gs4 , v120
	.byte	W03
	.byte		N09   , Gs4 , v084
	.byte	W09
	.byte		N03   , Ds5 , v120
	.byte	W03
	.byte		        Ds5 , v084
	.byte	W03
	.byte		        Fn5 , v120
	.byte	W03
	.byte		        Fn5 , v084
	.byte	W03
@ 009   ----------------------------------------
	.byte		        Gn4 , v120
	.byte	W03
	.byte		N09   , Gn4 , v084
	.byte	W09
	.byte		N03   , Gn5 , v120
	.byte	W03
	.byte		        Gn5 , v084
	.byte	W03
	.byte		        Gn4 , v120
	.byte	W03
	.byte		N09   , Gn4 , v084
	.byte	W09
	.byte		N03   , Fn5 , v120
	.byte	W03
	.byte		        Fn5 , v084
	.byte	W03
	.byte		        Gn4 , v120
	.byte	W03
	.byte		N09   , Gn4 , v084
	.byte	W09
	.byte		N15   , Ds5 , v120
	.byte	W06
	.byte		MOD   , 70
	.byte	W09
	.byte		        0
	.byte		        0
	.byte		N03   , Ds5 , v084
	.byte	W03
	.byte		MOD   , 0
	.byte		N03   , Dn5 , v120
	.byte	W03
	.byte		N15   , Dn5 , v084
	.byte	W15
	.byte		N12   , Bn4 , v120
	.byte	W12
@ 010   ----------------------------------------
	.byte		VOICE , 2
	.byte		PAN   , c_v+32
	.byte		VOL   , 62*mus_t_drill_missile_mvl/mxv
	.byte		N09   , Ds3 
	.byte	W09
	.byte		        Ds3 , v084
	.byte	W09
	.byte		N03   , As3 , v120
	.byte	W03
	.byte		        As3 , v084
	.byte	W03
	.byte		        Ds3 , v120
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N03   , An3 
	.byte	W06
	.byte		        Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 011   ----------------------------------------
	.byte		N09   , Fn3 
	.byte	W12
	.byte		N03   , Dn4 
	.byte	W06
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N15   , Dn4 
	.byte	W18
	.byte		N03   , Cn4 
	.byte	W06
	.byte		        Fn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W06
	.byte		N06   , Cn4 
	.byte	W06
@ 012   ----------------------------------------
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		N03   , Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N06   , Cn4 
	.byte	W06
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N03   , Dn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W06
	.byte		N06   , Fn4 
	.byte	W06
@ 013   ----------------------------------------
	.byte		VOICE , 2
	.byte		N09   , Gn3 
	.byte	W12
	.byte		N03   , Gn4 
	.byte	W06
	.byte		N09   , Gn3 
	.byte	W12
	.byte		N03   , Fn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W12
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		VOICE , 48
	.byte		PAN   , c_v+0
	.byte		N06   , Gn4 , v124
	.byte	W03
	.byte		VOL   , 86*mus_t_drill_missile_mvl/mxv
	.byte	W03
	.byte		N06   , Gs4 , v120
	.byte	W06
@ 014   ----------------------------------------
	.byte		PAN   , c_v+0
	.byte		VOL   , 88*mus_t_drill_missile_mvl/mxv
	.byte		N42   , As4 
	.byte	W42
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		N18   , As4 
	.byte	W18
	.byte		        Gs4 
	.byte	W18
	.byte		N12   , Gn4 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N03   , Ds4 
	.byte	W06
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W12
	.byte		N18   , Dn5 
	.byte	W18
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
@ 016   ----------------------------------------
	.byte		N42   , As4 
	.byte	W42
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		N18   , As4 
	.byte	W18
	.byte		        Cn5 
	.byte	W18
	.byte		N12   , Cs5 
	.byte	W12
@ 017   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte		N03   , Gn4 
	.byte	W06
	.byte		N18   , Cs5 
	.byte	W18
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N03   , Gn4 
	.byte	W06
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , Gn4 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N03   , Ds4 
	.byte	W06
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N03   , Gn4 
	.byte	W06
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N48   , Ds4 
	.byte	W48
@ 019   ----------------------------------------
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W12
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N03   , Gn4 
	.byte	W06
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N30   , Ds4 
	.byte	W30
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W12
@ 020   ----------------------------------------
	.byte		N96   , As4 , v124
	.byte	W09
	.byte		VOL   , 49*mus_t_drill_missile_mvl/mxv
	.byte	W36
	.byte	W03
	.byte		        50*mus_t_drill_missile_mvl/mxv
	.byte	W02
	.byte		        54*mus_t_drill_missile_mvl/mxv
	.byte	W03
	.byte		        57*mus_t_drill_missile_mvl/mxv
	.byte	W03
	.byte		        63*mus_t_drill_missile_mvl/mxv
	.byte	W03
	.byte		        66*mus_t_drill_missile_mvl/mxv
	.byte	W03
	.byte		        72*mus_t_drill_missile_mvl/mxv
	.byte	W03
	.byte		        75*mus_t_drill_missile_mvl/mxv
	.byte	W03
	.byte		        81*mus_t_drill_missile_mvl/mxv
	.byte	W03
	.byte		        84*mus_t_drill_missile_mvl/mxv
	.byte	W03
	.byte		        88*mus_t_drill_missile_mvl/mxv
	.byte	W03
	.byte		        90*mus_t_drill_missile_mvl/mxv
	.byte	W03
	.byte		        94*mus_t_drill_missile_mvl/mxv
	.byte	W04
	.byte		        96*mus_t_drill_missile_mvl/mxv
	.byte	W12
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte		VOICE , 24
	.byte		VOL   , 100*mus_t_drill_missile_mvl/mxv
	.byte		N12   , Gn5 , v120
	.byte	W12
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Ds5 , v120
	.byte	W06
	.byte		        Ds5 , v092
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Gn5 , v092
	.byte	W06
	.byte		        Gn5 , v120
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		N18   , Ds5 , v120
	.byte	W18
	.byte		N06   , Cn5 
	.byte	W06
@ 023   ----------------------------------------
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Ds5 , v120
	.byte	W06
	.byte		        Ds5 , v092
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
@ 024   ----------------------------------------
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Ds5 , v120
	.byte	W06
	.byte		        Ds5 , v092
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Gn5 , v092
	.byte	W06
	.byte		        Gn5 , v120
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		N18   , Ds5 , v120
	.byte	W18
	.byte		N06   , Cn5 
	.byte	W06
@ 025   ----------------------------------------
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn6 , v120
	.byte	W06
	.byte		        Cn6 , v080
	.byte	W06
	.byte		        Gn5 , v120
	.byte	W06
	.byte		N12   , As5 
	.byte	W12
	.byte		N06   , Gs5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
@ 026   ----------------------------------------
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Bn4 , v092
	.byte	W06
	.byte		N54   , Fs5 , v120
	.byte	W18
	.byte		MOD   , 80
	.byte	W36
	.byte		        0
	.byte		N12   , Fs5 , v092
	.byte	W24
@ 027   ----------------------------------------
	.byte		MOD   , 0
	.byte		N06   , Fn5 , v120
	.byte	W06
	.byte		MOD   , 0
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Cs5 , v092
	.byte	W06
	.byte		N54   , Gs5 , v120
	.byte	W18
	.byte		MOD   , 80
	.byte	W36
	.byte		        0
	.byte		N15   , Gs5 , v092
	.byte	W24
@ 028   ----------------------------------------
	.byte		MOD   , 0
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte		VOICE , 1
	.byte		PAN   , c_v+43
	.byte		VOL   , 79*mus_t_drill_missile_mvl/mxv
	.byte	GOTO
	 .word	mus_t_drill_missile_1_003
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_t_drill_missile_2:
	.byte	KEYSH , mus_t_drill_missile_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 57
	.byte		PAN   , c_v-30
	.byte		VOL   , 60*mus_t_drill_missile_mvl/mxv
	.byte		N03   , Dn4 , v120
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Dn4 , v072
	.byte	W12
	.byte		        Dn4 , v048
	.byte	W06
	.byte		N03   , Dn4 , v120
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Dn4 , v068
	.byte	W12
	.byte		        Dn4 , v056
	.byte	W12
	.byte		        Dn4 , v032
	.byte	W12
	.byte		N06   
	.byte	W06
@ 001   ----------------------------------------
	.byte		N03   , Dn4 , v120
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Dn4 , v072
	.byte	W12
	.byte		        Dn4 , v048
	.byte	W06
	.byte		N03   , Dn4 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Ds4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W06
@ 002   ----------------------------------------
mus_t_drill_missile_2_003:
	.byte		        Gn4 
	.byte	W04
	.byte		N02   , Fn4 , v092
	.byte	W02
	.byte		        Ds4 
	.byte	W02
	.byte		        Dn4 
	.byte	W02
	.byte		        Cn4 
	.byte	W84
	.byte	W02
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte		VOICE , 1
	.byte		PAN   , c_v+32
	.byte		VOL   , 81*mus_t_drill_missile_mvl/mxv
	.byte	W12
	.byte		N06   , Gn6 , v120
	.byte	W06
	.byte		        Ds6 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Ds6 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Gs5 , v112
	.byte	W06
	.byte		        Ds6 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Gs5 , v100
	.byte	W06
	.byte		        Ds6 
	.byte	W12
@ 015   ----------------------------------------
	.byte		PAN   , c_v+32
	.byte		N06   , Gs5 , v092
	.byte	W06
	.byte		        Ds6 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Gs5 , v080
	.byte	W06
	.byte		        Ds6 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Gs5 , v068
	.byte	W06
	.byte		        Ds6 , v064
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Gs5 , v056
	.byte	W06
	.byte		        Ds6 
	.byte	W36
@ 016   ----------------------------------------
	.byte		PAN   , c_v+32
	.byte	W12
	.byte		N06   , Fn6 , v120
	.byte	W06
	.byte		        Dn6 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , As5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Fn6 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Gn5 , v112
	.byte	W06
	.byte		        Fn6 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Gn5 , v100
	.byte	W06
	.byte		        Fn6 
	.byte	W12
@ 017   ----------------------------------------
	.byte		PAN   , c_v+32
	.byte		N06   , Cn6 , v120
	.byte	W06
	.byte		        Gn6 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Cn6 , v108
	.byte	W06
	.byte		        Gn6 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Cn6 , v100
	.byte	W06
	.byte		        Gn6 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Cn6 , v088
	.byte	W06
	.byte		        Gn6 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Cn6 , v076
	.byte	W06
	.byte		        Gn6 , v072
	.byte	W12
	.byte		PAN   , c_v-32
	.byte	W06
@ 018   ----------------------------------------
	.byte		VOL   , 74*mus_t_drill_missile_mvl/mxv
	.byte		N12   , Gn5 , v120
	.byte	W12
	.byte		N06   , Ds5 
	.byte	W06
	.byte		N12   , Gs5 
	.byte	W12
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		N44   , Ds5 
	.byte	W48
@ 019   ----------------------------------------
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W12
	.byte		N12   , Cn6 
	.byte	W12
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		N30   , Ds5 
	.byte	W30
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W12
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte		VOICE , 57
	.byte		VOL   , 60*mus_t_drill_missile_mvl/mxv
	.byte		N03   , Bn3 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Bn3 , v072
	.byte	W12
	.byte		        Bn3 , v048
	.byte	W06
	.byte		N03   , Bn3 , v120
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N18   , Dn4 
	.byte	W18
@ 022   ----------------------------------------
	.byte		N06   , Ds4 , v112
	.byte	W06
	.byte		N02   , Dn4 , v088
	.byte	W02
	.byte		        Cn4 
	.byte	W02
	.byte		        As3 
	.byte	W02
	.byte		        Gs3 
	.byte	W02
	.byte		        Gn3 
	.byte	W02
	.byte		        Fn3 
	.byte	W02
	.byte		        Ds3 
	.byte	W78
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W48
	.byte		VOICE , 60
	.byte		VOL   , 79*mus_t_drill_missile_mvl/mxv
	.byte		N06   , Ds3 , v120
	.byte	W06
	.byte		        Fs3 
	.byte	W12
	.byte		N30   , Ds4 
	.byte	W06
	.byte		VOL   , 71*mus_t_drill_missile_mvl/mxv
	.byte	W09
	.byte		        61*mus_t_drill_missile_mvl/mxv
	.byte	W09
	.byte		        50*mus_t_drill_missile_mvl/mxv
	.byte	W06
@ 027   ----------------------------------------
	.byte		MOD   , 0
	.byte		VOL   , 79*mus_t_drill_missile_mvl/mxv
	.byte	W48
	.byte		N06   , Fn3 
	.byte	W06
	.byte		MOD   , 0
	.byte		N06   , Gs3 
	.byte	W12
	.byte		N18   , Fn4 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		MOD   , 70
	.byte		VOL   , 71*mus_t_drill_missile_mvl/mxv
	.byte	W06
	.byte		        61*mus_t_drill_missile_mvl/mxv
	.byte	W06
	.byte		VOICE , 57
	.byte		MOD   , 0
	.byte		VOL   , 100*mus_t_drill_missile_mvl/mxv
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 028   ----------------------------------------
	.byte		VOICE , 57
	.byte		VOL   , 60*mus_t_drill_missile_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		MOD   , 0
	.byte		N03   , Bn3 
	.byte	W03
	.byte		MOD   , 0
	.byte	W03
	.byte		N06   
	.byte	W12
	.byte		        Bn3 , v072
	.byte	W18
	.byte		N03   , Bn3 , v120
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Bn3 , v072
	.byte	W42
@ 029   ----------------------------------------
	.byte		N03   , Bn3 , v120
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Bn3 , v072
	.byte	W18
	.byte		N03   , Bn3 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   , Dn4 
	.byte	W06
	.byte		N06   , Ds4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W06
@ 030   ---------------------------------------- 
	.byte	GOTO
	.word	mus_t_drill_missile_2_003
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_t_drill_missile_3:
	.byte	KEYSH , mus_t_drill_missile_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 38
	.byte		VOL   , 100*mus_t_drill_missile_mvl/mxv
	.byte		N03   , Gn2 , v127
	.byte	W06
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Gn1 , v092
	.byte	W06
	.byte		        Gn1 , v127
	.byte	W06
	.byte		N12   , Gn1 , v092
	.byte	W12
	.byte		N03   , Gn2 , v127
	.byte	W06
	.byte		N06   , Gn1 
	.byte	W06
	.byte		N24   , Gn1 , v092
	.byte	W24
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 001   ----------------------------------------
	.byte		N03   , Gn2 
	.byte	W06
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Gn1 , v092
	.byte	W06
	.byte		        Gn1 , v127
	.byte	W06
	.byte		N12   , Gn1 , v092
	.byte	W12
	.byte		N03   , Gn1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Gs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Bn1 
	.byte	W06
@ 002   ----------------------------------------
mus_t_drill_missile_3_003:
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N06   , Cn1 , v088
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Gn1 
	.byte	W12
	.byte		N18   , As1 
	.byte	W18
	.byte		MOD   , 0
	.byte		N12   , An1 
	.byte	W12
@ 003   ----------------------------------------
	.byte		MOD   , 0
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N06   , Cn1 , v088
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gn1 , v088
	.byte	W06
	.byte		N18   , Cn2 , v127
	.byte	W09
	.byte		MOD   , 127
	.byte	W09
	.byte		        0
	.byte		        0
	.byte		N12   , Dn2 
	.byte	W12
@ 004   ----------------------------------------
	.byte		MOD   , 0
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N06   , Cn1 , v088
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gn1 , v088
	.byte	W06
	.byte		N18   , As1 , v127
	.byte	W09
	.byte		MOD   , 127
	.byte	W09
	.byte		        0
	.byte		        0
	.byte		N12   , An1 
	.byte	W12
@ 005   ----------------------------------------
	.byte		MOD   , 0
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N06   , Cn1 , v088
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gn1 , v088
	.byte	W06
	.byte		N18   , As1 , v127
	.byte	W09
	.byte		MOD   , 127
	.byte	W09
	.byte		        0
	.byte		        0
	.byte		N06   , An1 
	.byte	W06
	.byte		MOD   , 0
	.byte		N06   , Gn1 , v120
	.byte	W06
@ 006   ----------------------------------------
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		N06   , Cn1 , v088
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gn1 , v088
	.byte	W06
	.byte		N18   , As1 , v127
	.byte	W09
	.byte		MOD   , 127
	.byte	W09
	.byte		        0
	.byte		        0
	.byte		N12   , An1 
	.byte	W12
@ 007   ----------------------------------------
	.byte		MOD   , 0
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N06   , Fn1 , v088
	.byte	W06
	.byte		        Fn1 , v127
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn2 , v088
	.byte	W06
	.byte		N18   , Ds2 , v127
	.byte	W09
	.byte		MOD   , 127
	.byte	W09
	.byte		        0
	.byte		        0
	.byte		N06   , Cn2 
	.byte	W06
	.byte		MOD   , 0
	.byte		N06   , As1 
	.byte	W06
@ 008   ----------------------------------------
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Gs1 , v088
	.byte	W06
	.byte		        Gs1 , v127
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Ds2 , v088
	.byte	W06
	.byte		N18   , Fn2 , v127
	.byte	W09
	.byte		MOD   , 127
	.byte	W09
	.byte		        0
	.byte		        0
	.byte		N06   , Ds2 
	.byte	W06
	.byte		MOD   , 0
	.byte		N06   , Cn2 
	.byte	W06
@ 009   ----------------------------------------
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N06   , Gn1 , v088
	.byte	W06
	.byte		        Gn1 , v127
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
@ 010   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		N06   , Cn1 , v088
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gn1 , v088
	.byte	W06
	.byte		N18   , As1 , v127
	.byte	W18
	.byte		N12   , An1 
	.byte	W12
@ 011   ----------------------------------------
	.byte		        Fn1 
	.byte	W12
	.byte		N06   , Fn1 , v088
	.byte	W06
	.byte		        Fn1 , v127
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn2 , v088
	.byte	W06
	.byte		N18   , Ds2 , v127
	.byte	W18
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
@ 012   ----------------------------------------
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Gs1 , v088
	.byte	W06
	.byte		        Gs1 , v127
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Ds2 , v088
	.byte	W06
	.byte		N18   , Gs2 , v127
	.byte	W18
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
@ 013   ----------------------------------------
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N06   , Gn1 , v088
	.byte	W06
	.byte		        Gn1 , v127
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N06   , As2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        As1 , v088
	.byte	W06
	.byte		        As1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
@ 014   ----------------------------------------
	.byte		VOICE , 38
	.byte		N18   , Gs1 
	.byte	W18
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N18   , Ds2 
	.byte	W09
	.byte		MOD   , 127
	.byte	W09
	.byte		        0
	.byte		        0
	.byte		N06   , Gn2 
	.byte	W06
	.byte		MOD   , 0
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As2 , v084
	.byte	W06
	.byte		        Cn2 , v127
	.byte	W06
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
@ 015   ----------------------------------------
	.byte		        Gs2 
	.byte	W06
	.byte		        Gn2 , v120
	.byte	W06
	.byte		        Gn2 , v084
	.byte	W06
	.byte		N18   , Fn2 , v127
	.byte	W09
	.byte		MOD   , 127
	.byte	W09
	.byte		        0
	.byte		        0
	.byte		N06   , Dn2 , v120
	.byte	W06
	.byte		MOD   , 0
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Gs1 , v084
	.byte	W06
	.byte		N18   , Dn2 , v120
	.byte	W09
	.byte		MOD   , 80
	.byte	W09
	.byte		        0
	.byte		        0
	.byte		N06   , Cs2 , v127
	.byte	W06
	.byte		MOD   , 0
	.byte		N06   , Cn2 
	.byte	W06
@ 016   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        As1 , v084
	.byte	W06
	.byte		N18   , Dn2 , v127
	.byte	W09
	.byte		MOD   , 90
	.byte	W09
	.byte		        0
	.byte		        0
	.byte		N06   , Fn2 
	.byte	W06
	.byte		MOD   , 0
	.byte		N06   , Fn2 , v084
	.byte	W06
	.byte		        Cs2 , v127
	.byte	W06
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W06
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Cs2 , v120
	.byte	W06
@ 017   ----------------------------------------
	.byte		BEND  , c_v+0
	.byte		N12   , As2 , v127
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn3 , v084
	.byte	W06
	.byte		        Cn2 , v127
	.byte	W06
	.byte		N24   , As2 
	.byte	W12
	.byte		BEND  , c_v-9
	.byte	W02
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-30
	.byte	W02
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-45
	.byte	W03
@ 018   ----------------------------------------
	.byte		        c_v+0
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N03   , Gs1 , v108
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Gs1 , v127
	.byte	W06
	.byte		N03   , Gs1 , v108
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Gs1 , v127
	.byte	W06
	.byte		N03   , Ds2 , v108
	.byte	W06
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N03   , Ds2 
	.byte	W06
	.byte		N06   , Gs2 , v127
	.byte	W06
	.byte		N03   , Ds2 , v108
	.byte	W06
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N03   , Gs1 
	.byte	W06
@ 019   ----------------------------------------
	.byte		N06   , Fn1 , v127
	.byte	W06
	.byte		N03   , Fn1 , v108
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Fn1 , v127
	.byte	W06
	.byte		N03   , Fn1 , v108
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Fn1 , v127
	.byte	W06
	.byte		N03   , Cn2 , v108
	.byte	W06
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N03   , Fn2 
	.byte	W06
	.byte		N06   , Gs2 , v127
	.byte	W06
	.byte		N03   , Fn2 , v108
	.byte	W06
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N03   , Gs1 
	.byte	W06
@ 020   ----------------------------------------
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N03   , Gn1 , v108
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Gn1 , v127
	.byte	W06
	.byte		        Gn1 , v108
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N03   , Fn2 , v108
	.byte	W06
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N03   , Gn2 
	.byte	W06
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		N03   , Gn2 , v108
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
@ 021   ----------------------------------------
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn1 , v092
	.byte	W12
	.byte		        Gn1 , v072
	.byte	W06
	.byte		N03   , Gn1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn1 , v120
	.byte	W06
	.byte		        Gn2 
	.byte	W03
	.byte		N06   , Gn2 , v088
	.byte	W09
	.byte		        Gn1 , v120
	.byte	W06
	.byte		N03   , Dn2 
	.byte	W06
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
@ 022   ----------------------------------------
mus_t_drill_missile_3_022:
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Gn1 , v088
	.byte	W06
	.byte		        Cn2 , v120
	.byte	W06
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte	PEND
@ 023   ----------------------------------------
mus_t_drill_missile_3_023:
	.byte		N12   , An0 , v120
	.byte	W12
	.byte		N06   , Ds1 
	.byte	W06
	.byte		        Ds1 , v088
	.byte	W06
	.byte		        Cn2 , v120
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		N06   , Ds1 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , As0 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_3_022
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_3_023
@ 026   ----------------------------------------
	.byte		N06   , Bn1 , v127
	.byte	W06
	.byte		N03   , Bn1 , v108
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Bn1 , v127
	.byte	W06
	.byte		N03   , Bn1 , v108
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Bn1 , v127
	.byte	W06
	.byte		N03   , Bn1 , v108
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Bn1 , v127
	.byte	W06
	.byte		N03   , Bn1 , v108
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
@ 027   ----------------------------------------
	.byte		N06   , Cs2 , v127
	.byte	W06
	.byte		N03   , Cs2 , v108
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs2 , v127
	.byte	W06
	.byte		N03   , Cs2 , v108
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs2 , v127
	.byte	W06
	.byte		N03   , Cs2 , v108
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs2 , v127
	.byte	W06
	.byte		N03   , Cs2 , v108
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
@ 028   ----------------------------------------
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn1 , v092
	.byte	W12
	.byte		        Gn1 , v064
	.byte	W06
	.byte		        Gn2 , v127
	.byte	W06
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn1 , v092
	.byte	W12
	.byte		        Gn1 , v064
	.byte	W12
	.byte		        Gn1 , v048
	.byte	W18
@ 029   ----------------------------------------
	.byte		        Gn2 , v127
	.byte	W06
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn1 , v092
	.byte	W12
	.byte		        Gn1 , v064
	.byte	W06
	.byte		        Gn2 , v127
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Gs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Bn1 
	.byte	W06
@ 030   ---------------------------------------- 
	.byte	GOTO
	.word	mus_t_drill_missile_3_003
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_t_drill_missile_4:
	.byte	KEYSH , mus_t_drill_missile_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 56
	.byte		VOL   , 100*mus_t_drill_missile_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		N03   , Gn4 , v120
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Gn4 , v072
	.byte	W12
	.byte		        Gn4 , v052
	.byte	W06
	.byte		N03   , Gn4 , v120
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Gn4 , v084
	.byte	W12
	.byte		        Gn4 , v056
	.byte	W12
	.byte		        Gn4 , v040
	.byte	W12
	.byte		        Gn4 , v032
	.byte	W06
@ 001   ----------------------------------------
	.byte		N03   , Gn4 , v120
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Gn4 , v072
	.byte	W12
	.byte		        Gn4 , v052
	.byte	W06
	.byte		N03   , Gn4 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Gs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Bn4 
	.byte	W06
@ 002   ----------------------------------------
mus_t_drill_missile_4_003:
	.byte		        Cn5 
	.byte	W06
	.byte		N02   , As4 , v092
	.byte	W02
	.byte		        Gs4 
	.byte	W02
	.byte		        Gn4 
	.byte	W02
	.byte		        Fn4 
	.byte	W02
	.byte		        Ds4 
	.byte	W02
	.byte		        Dn4 
	.byte	W02
	.byte		        Cn4 
	.byte	W78
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W72
	.byte		VOICE , 48
	.byte		PAN   , c_v-6
	.byte		VOL   , 100*mus_t_drill_missile_mvl/mxv
	.byte	W12
	.byte		        91*mus_t_drill_missile_mvl/mxv
	.byte	W06
	.byte		N03   , As3 , v127
	.byte	W03
	.byte		        Bn3 
	.byte	W03
@ 006   ----------------------------------------
	.byte		VOL   , 89*mus_t_drill_missile_mvl/mxv
	.byte		N36   , Cn4 
	.byte	W36
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn4 , v088
	.byte	W06
	.byte		        Ds4 , v127
	.byte	W06
	.byte		        Ds4 , v092
	.byte	W06
	.byte		        Gn4 , v127
	.byte	W06
	.byte		        Gn4 , v092
	.byte	W06
	.byte		        As4 , v127
	.byte	W06
	.byte		        As4 , v092
	.byte	W06
	.byte		        Gn4 , v120
	.byte	W06
	.byte		N42   , An4 , v127
	.byte	W06
@ 007   ----------------------------------------
	.byte	W36
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N36   , Fn4 
	.byte	W36
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 008   ----------------------------------------
	.byte		N36   , Ds4 
	.byte	W36
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 009   ----------------------------------------
	.byte		N36   , Ds4 , v120
	.byte	W36
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W18
	.byte		        Dn4 , v127
	.byte	W18
	.byte		VOICE , 29
	.byte		VOL   , 93*mus_t_drill_missile_mvl/mxv
	.byte		N06   , As2 , v120
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 010   ----------------------------------------
	.byte		N36   , Cn3 
	.byte	W36
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn3 , v092
	.byte	W06
	.byte		        Ds3 , v120
	.byte	W06
	.byte		N03   , Cn3 , v100
	.byte	W03
	.byte		        Cn3 , v084
	.byte	W03
	.byte		N06   , Gn3 , v120
	.byte	W06
	.byte		N03   , Cn3 , v100
	.byte	W03
	.byte		        Cn3 , v084
	.byte	W03
	.byte		N06   , As3 , v120
	.byte	W06
	.byte		N03   , Cn3 , v100
	.byte	W03
	.byte		        Cn3 , v084
	.byte	W03
	.byte		N06   , Cn4 , v120
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 011   ----------------------------------------
	.byte		N36   , An3 
	.byte	W36
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N03   , Cn3 
	.byte	W03
	.byte		        Cn3 , v084
	.byte	W03
	.byte		        An2 , v120
	.byte	W03
	.byte		        An2 , v084
	.byte	W03
	.byte		N06   , Gn3 , v120
	.byte	W06
	.byte		N03   , Cn3 
	.byte	W03
	.byte		        Cn3 , v084
	.byte	W03
	.byte		        An2 , v120
	.byte	W03
	.byte		        An2 , v084
	.byte	W03
	.byte		N12   , Fn3 , v120
	.byte	W12
@ 012   ----------------------------------------
	.byte		        Cn3 
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N03   , Cn3 
	.byte	W03
	.byte		        Cn3 , v084
	.byte	W03
	.byte		        Gs2 , v120
	.byte	W03
	.byte		        Gs2 , v084
	.byte	W03
	.byte		N06   , Dn3 , v120
	.byte	W06
	.byte		N03   , Cn3 
	.byte	W03
	.byte		        Cn3 , v084
	.byte	W03
	.byte		        Gs2 , v120
	.byte	W03
	.byte		        Gs2 , v084
	.byte	W03
	.byte		N06   , Cn3 , v120
	.byte	W06
	.byte		N03   , Gs2 
	.byte	W03
	.byte		        Gs2 , v084
	.byte	W03
	.byte		        Gs2 , v120
	.byte	W03
	.byte		        Gs2 , v084
	.byte	W03
	.byte		N06   , Dn3 , v120
	.byte	W06
	.byte		N03   , Gs2 
	.byte	W03
	.byte		        Gs2 , v084
	.byte	W03
	.byte		        As2 , v120
	.byte	W03
	.byte		        As2 , v084
	.byte	W03
	.byte		N06   , Ds3 , v120
	.byte	W06
	.byte		        Fn3 
	.byte	W06
@ 013   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		N03   , Dn3 
	.byte	W03
	.byte		        Dn3 , v084
	.byte	W03
	.byte		        Dn3 , v120
	.byte	W03
	.byte		        Dn3 , v084
	.byte	W03
	.byte		N06   , Gs3 , v120
	.byte	W06
	.byte		N03   , Ds3 
	.byte	W03
	.byte		        Ds3 , v084
	.byte	W03
	.byte		        Ds3 , v120
	.byte	W03
	.byte		        Ds3 , v084
	.byte	W03
	.byte		N12   , Gn3 , v120
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N03   , Cn3 
	.byte	W03
	.byte		        Cn3 , v084
	.byte	W03
	.byte		        Cn3 , v120
	.byte	W06
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		VOICE , 2
	.byte		PAN   , c_v+32
	.byte		N12   , Fn4 , v124
	.byte	W12
@ 014   ----------------------------------------
	.byte		PAN   , c_v-5
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte		VOICE , 90
	.byte		VOL   , 49*mus_t_drill_missile_mvl/mxv
	.byte		N96   , Dn3 , v120
	.byte	W05
	.byte		VOL   , 50*mus_t_drill_missile_mvl/mxv
	.byte	W03
	.byte		        52*mus_t_drill_missile_mvl/mxv
	.byte	W18
	.byte		        54*mus_t_drill_missile_mvl/mxv
	.byte	W03
	.byte		        55*mus_t_drill_missile_mvl/mxv
	.byte	W06
	.byte		        56*mus_t_drill_missile_mvl/mxv
	.byte	W06
	.byte		        57*mus_t_drill_missile_mvl/mxv
	.byte	W03
	.byte		        58*mus_t_drill_missile_mvl/mxv
	.byte	W03
	.byte		        60*mus_t_drill_missile_mvl/mxv
	.byte	W03
	.byte		        65*mus_t_drill_missile_mvl/mxv
	.byte	W03
	.byte		        70*mus_t_drill_missile_mvl/mxv
	.byte	W03
	.byte		        75*mus_t_drill_missile_mvl/mxv
	.byte	W03
	.byte		        81*mus_t_drill_missile_mvl/mxv
	.byte	W03
	.byte		        88*mus_t_drill_missile_mvl/mxv
	.byte	W03
	.byte		        92*mus_t_drill_missile_mvl/mxv
	.byte	W03
	.byte		        97*mus_t_drill_missile_mvl/mxv
	.byte	W03
	.byte		        100*mus_t_drill_missile_mvl/mxv
	.byte	W24
	.byte	W01
@ 021   ----------------------------------------
	.byte		VOICE , 56
	.byte		VOL   , 60*mus_t_drill_missile_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		MOD   , 0
	.byte		N03   , As4 
	.byte	W03
	.byte		MOD   , 0
	.byte	W03
	.byte		N06   
	.byte	W12
	.byte		        As4 , v072
	.byte	W12
	.byte		        As4 , v052
	.byte	W06
	.byte		N03   , As4 , v120
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		        As4 , v072
	.byte	W06
	.byte		N18   , Bn4 , v120
	.byte	W18
@ 022   ----------------------------------------
	.byte		VOICE , 24
	.byte		VOL   , 89*mus_t_drill_missile_mvl/mxv
	.byte		PAN   , c_v-17
	.byte		N06   , Cn5 , v112
	.byte	W06
	.byte		N02   , As4 , v088
	.byte	W02
	.byte		        Gs4 
	.byte	W02
	.byte		        Gn4 
	.byte	W02
	.byte		        Fn4 
	.byte	W02
	.byte		        Ds4 
	.byte	W02
	.byte		        Dn4 
	.byte	W02
	.byte		        Cn4 
	.byte	W06
	.byte		N06   , Gn4 , v120
	.byte	W12
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N18   , As4 
	.byte	W18
	.byte		N06   , Ds4 
	.byte	W06
@ 023   ----------------------------------------
	.byte		        Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Fn4 
	.byte	W06
	.byte		N12   , As4 
	.byte	W12
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 024   ----------------------------------------
	.byte		VOICE , 14
	.byte		VOL   , 83*mus_t_drill_missile_mvl/mxv
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W12
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 025   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 026   ----------------------------------------
	.byte		VOICE , 14
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W12
	.byte		N30   , Bn4 
	.byte	W06
	.byte		MOD   , 80
	.byte		VOL   , 71*mus_t_drill_missile_mvl/mxv
	.byte	W12
	.byte		        61*mus_t_drill_missile_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		        0
	.byte		VOL   , 82*mus_t_drill_missile_mvl/mxv
	.byte	W48
@ 027   ----------------------------------------
	.byte		N06   , Gs4 
	.byte	W06
	.byte		MOD   , 0
	.byte		N06   , Fn4 
	.byte	W12
	.byte		N30   , Cs5 
	.byte	W06
	.byte		MOD   , 80
	.byte		VOL   , 71*mus_t_drill_missile_mvl/mxv
	.byte	W12
	.byte		        61*mus_t_drill_missile_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		        0
	.byte		VOL   , 82*mus_t_drill_missile_mvl/mxv
	.byte	W24
	.byte		VOICE , 56
	.byte		VOL   , 100*mus_t_drill_missile_mvl/mxv
	.byte		PAN   , c_v+32
	.byte	W12
	.byte		N06   , Gn4 
	.byte	W06
	.byte		MOD   , 0
	.byte		N06   , Gs4 
	.byte	W06
@ 028   ----------------------------------------
	.byte		VOICE , 56
	.byte		VOL   , 100*mus_t_drill_missile_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		N03   , As4 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        As4 , v072
	.byte	W18
	.byte		N03   , As4 , v120
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        As4 , v072
	.byte	W42
@ 029   ----------------------------------------
	.byte		N03   , As4 , v120
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        As4 , v072
	.byte	W18
	.byte		N03   , As4 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn4 
	.byte	W06
	.byte		N06   , Gs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Bn4 
	.byte	W06
@ 030   ---------------------------------------- 
	.byte	GOTO
	.word	mus_t_drill_missile_4_003
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_t_drill_missile_5:
	.byte	KEYSH , mus_t_drill_missile_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 94*mus_t_drill_missile_mvl/mxv
	.byte		PAN   , c_v-30
	.byte	W96
@ 001   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		VOL   , 79*mus_t_drill_missile_mvl/mxv
	.byte	W03
@ 002   ----------------------------------------
mus_t_drill_missile_5_003:
	.byte		VOICE , 1
	.byte		PAN   , c_v-32
	.byte		VOL   , 76*mus_t_drill_missile_mvl/mxv
	.byte		N03   , Gn3 , v120
	.byte	W03
	.byte		N06   , Gn3 , v088
	.byte	W09
	.byte		        As4 , v120
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W03
	.byte		N06   , Gn3 , v088
	.byte	W09
	.byte		        As4 , v120
	.byte	W06
	.byte		N03   , Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N15   , An4 
	.byte	W18
	.byte		N03   
	.byte	W06
	.byte		        Gn3 
	.byte	W03
	.byte		N06   , Gn3 , v088
	.byte	W09
	.byte		N03   , An4 , v120
	.byte	W06
	.byte		N03   
	.byte	W06
@ 003   ----------------------------------------
	.byte		        Gn3 
	.byte	W03
	.byte		N06   , Gn3 , v088
	.byte	W09
	.byte		        Dn5 , v120
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W03
	.byte		N06   , Gn3 , v088
	.byte	W09
	.byte		        Dn5 , v120
	.byte	W06
	.byte		N03   , Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N15   , Cn5 
	.byte	W18
	.byte		N03   
	.byte	W06
	.byte		        Gn3 
	.byte	W03
	.byte		N06   , Gn3 , v088
	.byte	W09
	.byte		N03   , Cn5 , v120
	.byte	W06
	.byte		N03   
	.byte	W06
@ 004   ----------------------------------------
	.byte		        Gn3 
	.byte	W03
	.byte		N06   , Gn3 , v088
	.byte	W09
	.byte		        As4 , v120
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W03
	.byte		N06   , Gn3 , v088
	.byte	W09
	.byte		        As4 , v120
	.byte	W06
	.byte		N03   , Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N15   , An4 
	.byte	W18
	.byte		N03   
	.byte	W06
	.byte		        Gn3 
	.byte	W03
	.byte		N06   , Gn3 , v088
	.byte	W09
	.byte		N03   , An4 , v120
	.byte	W06
	.byte		N03   
	.byte	W06
@ 005   ----------------------------------------
	.byte		        Gn3 
	.byte	W03
	.byte		N06   , Gn3 , v088
	.byte	W09
	.byte		        Dn5 , v120
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W03
	.byte		N06   , Gn3 , v088
	.byte	W09
	.byte		        Dn5 , v120
	.byte	W06
	.byte		N03   , Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N15   , Cn5 
	.byte	W18
	.byte		N03   , Dn5 
	.byte	W06
	.byte		        Gn3 
	.byte	W03
	.byte		        Gn3 , v088
	.byte	W09
	.byte		N06   , Ds5 , v120
	.byte	W12
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte		VOICE , 1
	.byte		PAN   , c_v-32
	.byte		VOL   , 76*mus_t_drill_missile_mvl/mxv 
	.byte	GOTO
	.word	mus_t_drill_missile_5_003
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_t_drill_missile_6:
	.byte	KEYSH , mus_t_drill_missile_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		VOL   , 71*mus_t_drill_missile_mvl/mxv
	.byte		PAN   , c_v-61
	.byte		N03   , Gn3 , v120
	.byte	W06
	.byte		N06   
	.byte	W30
	.byte		N03   
	.byte	W06
	.byte		N06   
	.byte	W54
@ 001   ----------------------------------------
mus_t_drill_missile_6_001:
	.byte		N03   , Gn3 , v120
	.byte	W06
	.byte		N06   
	.byte	W30
	.byte		N03   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Bn3 
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
mus_t_drill_missile_6_002:
mus_t_drill_missile_6_003:
	.byte	W12
	.byte		N06   , Ds3 , v120
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_6_002
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_6_002
@ 005   ----------------------------------------
	.byte	W12
	.byte		N06   , Ds3 , v120
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N06   , Fn3 
	.byte	W18
	.byte		        Gn3 
	.byte	W12
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_6_002
@ 007   ----------------------------------------
	.byte	W12
	.byte		N06   , Fn3 , v120
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N03   , Gs3 
	.byte	W06
	.byte		N03   
	.byte	W06
@ 008   ----------------------------------------
	.byte	W12
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W12
@ 009   ----------------------------------------
	.byte	W12
	.byte		        Bn3 
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N12   , Dn3 
	.byte	W12
@ 010   ----------------------------------------
	.byte	W12
	.byte		N03   , Cn3 
	.byte	W18
	.byte		        Ds3 
	.byte	W18
	.byte		N12   , Cn3 
	.byte	W18
	.byte		N03   , Ds3 
	.byte	W18
	.byte		N03   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 011   ----------------------------------------
	.byte		VOICE , 82
	.byte	W12
	.byte		N03   , Fn3 
	.byte	W18
	.byte		N03   
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N03   
	.byte	W18
	.byte		        Gs3 
	.byte	W06
	.byte		N03   
	.byte	W06
@ 012   ----------------------------------------
	.byte	W12
	.byte		N03   
	.byte	W18
	.byte		N03   
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N03   
	.byte	W18
	.byte		N03   
	.byte	W12
@ 013   ----------------------------------------
	.byte	W12
	.byte		        Bn3 
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte		        Fn3 
	.byte	W18
	.byte		N03   
	.byte	W18
	.byte		N03   
	.byte	W12
@ 014   ----------------------------------------
	.byte		VOICE , 80
	.byte		VOL   , 71*mus_t_drill_missile_mvl/mxv
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn3 , v092
	.byte	W06
	.byte		N03   , Cn4 , v120
	.byte	W06
	.byte		        Cn4 , v092
	.byte	W06
	.byte		N06   , Cn3 , v120
	.byte	W06
	.byte		N03   , Cn4 
	.byte	W06
	.byte		        Cn4 , v092
	.byte	W06
	.byte		        Cn3 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn4 
	.byte	W06
	.byte		        Cn4 , v092
	.byte	W06
	.byte		N06   , Cn3 , v120
	.byte	W06
	.byte		N03   , Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N03   , Cn4 
	.byte	W06
@ 015   ----------------------------------------
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn3 , v092
	.byte	W06
	.byte		N03   , Cn4 , v120
	.byte	W06
	.byte		        Cn4 , v092
	.byte	W06
	.byte		N06   , Cn3 , v120
	.byte	W06
	.byte		N03   , Cn4 
	.byte	W06
	.byte		        Cn4 , v092
	.byte	W06
	.byte		        Cn3 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N03   , Cn4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N03   , Cn4 
	.byte	W06
@ 016   ----------------------------------------
	.byte		N06   , As2 
	.byte	W06
	.byte		        As2 , v092
	.byte	W06
	.byte		N03   , As3 , v120
	.byte	W06
	.byte		        As3 , v092
	.byte	W06
	.byte		N06   , As2 , v120
	.byte	W06
	.byte		N03   , As3 
	.byte	W06
	.byte		        As3 , v092
	.byte	W06
	.byte		        As2 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   , As3 
	.byte	W06
	.byte		        As3 , v092
	.byte	W06
	.byte		N06   , As2 , v120
	.byte	W06
	.byte		N03   , As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N06   , As2 
	.byte	W06
	.byte		N03   , As3 
	.byte	W06
@ 017   ----------------------------------------
	.byte		N06   , En3 
	.byte	W06
	.byte		        En3 , v092
	.byte	W06
	.byte		N03   , Gn4 , v120
	.byte	W06
	.byte		        Gn4 , v092
	.byte	W06
	.byte		N06   , En3 , v120
	.byte	W06
	.byte		N03   , Gn4 
	.byte	W06
	.byte		        Gn4 , v092
	.byte	W06
	.byte		        En3 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , En3 
	.byte	W06
	.byte		N03   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N06   , En3 
	.byte	W06
	.byte		N03   , En4 
	.byte	W06
@ 018   ----------------------------------------
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn3 , v092
	.byte	W06
	.byte		N03   , Cn4 , v120
	.byte	W06
	.byte		        Cn4 , v092
	.byte	W06
	.byte		N06   , Cn3 , v120
	.byte	W06
	.byte		N03   , Cn4 
	.byte	W06
	.byte		        Cn4 , v092
	.byte	W06
	.byte		        Cn3 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn4 
	.byte	W06
	.byte		        Cn4 , v124
	.byte	W06
	.byte		N06   , Cn3 , v120
	.byte	W06
	.byte		N03   , Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N03   , Cn4 
	.byte	W06
@ 019   ----------------------------------------
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Fn2 , v092
	.byte	W06
	.byte		N03   , Fn3 , v120
	.byte	W06
	.byte		        Fn3 , v092
	.byte	W06
	.byte		N06   , Fn2 , v120
	.byte	W06
	.byte		N03   , Fn3 
	.byte	W06
	.byte		        Fn3 , v092
	.byte	W06
	.byte		        Fn2 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   , Fn3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N03   , Fn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N03   , Fn3 
	.byte	W06
@ 020   ----------------------------------------
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Gn2 , v092
	.byte	W06
	.byte		N03   , Bn3 , v120
	.byte	W06
	.byte		        Bn3 , v092
	.byte	W06
	.byte		N06   , Gn2 , v120
	.byte	W06
	.byte		N03   , Bn3 
	.byte	W06
	.byte		        Bn3 , v092
	.byte	W06
	.byte		        Gn2 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   , Bn3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N03   , Bn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N03   , Bn3 
	.byte	W06
@ 021   ----------------------------------------
	.byte		VOICE , 80
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N06   
	.byte	W30
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N18   , Bn3 
	.byte	W18
@ 022   ----------------------------------------
	.byte		VOL   , 71*mus_t_drill_missile_mvl/mxv
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
@ 023   ----------------------------------------
mus_t_drill_missile_6_023:
	.byte		N06   , An2 , v120
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N06   , As2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte	PEND
@ 024   ----------------------------------------
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_6_023
@ 026   ----------------------------------------
	.byte		N06   , Bn2 , v120
	.byte	W18
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W12
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 027   ----------------------------------------
	.byte		        Cs3 
	.byte	W18
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W12
	.byte		        Fn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 028   ----------------------------------------
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N06   
	.byte	W30
	.byte		N03   
	.byte	W06
	.byte		N06   
	.byte	W54
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_6_001
@ 030   ---------------------------------------- 
	.byte	GOTO
	.word	mus_t_drill_missile_6_003
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_t_drill_missile_7:
	.byte	KEYSH , mus_t_drill_missile_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 87
	.byte		VOL   , 71*mus_t_drill_missile_mvl/mxv
	.byte		PAN   , c_v+63
	.byte		N03   , Dn4 , v120
	.byte	W06
	.byte		N06   
	.byte	W30
	.byte		N03   
	.byte	W06
	.byte		N06   
	.byte	W54
@ 001   ----------------------------------------
mus_t_drill_missile_7_001:
	.byte		N03   , Dn4 , v120
	.byte	W06
	.byte		N06   
	.byte	W30
	.byte		N03   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Ds4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
mus_t_drill_missile_7_002:
mus_t_drill_missile_7_003:
	.byte	W12
	.byte		N06   , Gn3 , v120
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_7_002
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_7_002
@ 005   ----------------------------------------
	.byte	W12
	.byte		N06   , Gn3 , v120
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N06   , As3 
	.byte	W18
	.byte		        Cn4 
	.byte	W12
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_7_002
@ 007   ----------------------------------------
	.byte	W12
	.byte		N06   , An3 , v120
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N03   , Cn4 
	.byte	W06
	.byte		N03   
	.byte	W06
@ 008   ----------------------------------------
	.byte	W12
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W12
@ 009   ----------------------------------------
	.byte	W12
	.byte		        Dn4 
	.byte	W18
	.byte		        Bn3 
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N12   , Gn3 
	.byte	W12
@ 010   ----------------------------------------
	.byte	W12
	.byte		N03   , Ds3 
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte		N12   , Ds3 
	.byte	W18
	.byte		N03   , Gn3 
	.byte	W18
	.byte		N03   
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 011   ----------------------------------------
	.byte		VOICE , 87
	.byte	W12
	.byte		N03   , An3 
	.byte	W18
	.byte		N03   
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N03   
	.byte	W18
	.byte		        Cn4 
	.byte	W06
	.byte		N03   
	.byte	W06
@ 012   ----------------------------------------
	.byte	W12
	.byte		N03   
	.byte	W18
	.byte		N03   
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N03   
	.byte	W18
	.byte		N03   
	.byte	W12
@ 013   ----------------------------------------
	.byte	W12
	.byte		        Dn4 
	.byte	W18
	.byte		        Bn3 
	.byte	W18
	.byte		        As3 
	.byte	W18
	.byte		N03   
	.byte	W18
	.byte		N03   
	.byte	W12
@ 014   ----------------------------------------
	.byte		VOICE , 86
	.byte		VOL   , 71*mus_t_drill_missile_mvl/mxv
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Gs3 , v092
	.byte	W06
	.byte		N03   , Gn4 , v120
	.byte	W06
	.byte		        Gn4 , v092
	.byte	W06
	.byte		N06   , Gs3 , v120
	.byte	W06
	.byte		N03   , Gn4 
	.byte	W06
	.byte		        Gn4 , v092
	.byte	W06
	.byte		        Gs3 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn4 
	.byte	W06
	.byte		        Gn4 , v092
	.byte	W06
	.byte		N06   , Gs3 , v120
	.byte	W06
	.byte		N03   , Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N03   , Gn4 
	.byte	W06
@ 015   ----------------------------------------
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Gs3 , v092
	.byte	W06
	.byte		N03   , Fn4 , v120
	.byte	W06
	.byte		        Fn4 , v092
	.byte	W06
	.byte		N06   , Gs3 , v120
	.byte	W06
	.byte		N03   , Fn4 
	.byte	W06
	.byte		        Fn4 , v092
	.byte	W06
	.byte		        Gs3 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   , Fn4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N03   , Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N03   , Fn4 
	.byte	W06
@ 016   ----------------------------------------
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Gn3 , v092
	.byte	W06
	.byte		N03   , Fn4 , v120
	.byte	W06
	.byte		        Fn4 , v092
	.byte	W06
	.byte		N06   , Gn3 , v120
	.byte	W06
	.byte		N03   , Fn4 
	.byte	W06
	.byte		        Fn4 , v092
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   , Fn4 
	.byte	W06
	.byte		        Fn4 , v092
	.byte	W06
	.byte		N06   , Gn3 , v120
	.byte	W06
	.byte		N03   , Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N03   , Fn4 
	.byte	W06
@ 017   ----------------------------------------
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Cn4 , v092
	.byte	W06
	.byte		N03   , As4 , v120
	.byte	W06
	.byte		        As4 , v092
	.byte	W06
	.byte		N06   , Cn4 , v120
	.byte	W06
	.byte		N03   , As4 
	.byte	W06
	.byte		        As4 , v092
	.byte	W06
	.byte		        Cn4 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   , As4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cn4 
	.byte	W06
	.byte		N03   , As4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N06   , Cn4 
	.byte	W06
	.byte		N03   , Gn4 
	.byte	W06
@ 018   ----------------------------------------
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Gs3 , v092
	.byte	W06
	.byte		N03   , Gn4 , v120
	.byte	W06
	.byte		        Gn4 , v092
	.byte	W06
	.byte		N06   , Gs3 , v120
	.byte	W06
	.byte		N03   , Gn4 
	.byte	W06
	.byte		        Gn4 , v092
	.byte	W06
	.byte		        Gs3 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn4 
	.byte	W06
	.byte		        Gn4 , v124
	.byte	W06
	.byte		N06   , Gs3 , v120
	.byte	W06
	.byte		N03   , Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N03   , Gn4 
	.byte	W06
@ 019   ----------------------------------------
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn3 , v092
	.byte	W06
	.byte		N03   , Cn4 , v120
	.byte	W06
	.byte		        Cn4 , v092
	.byte	W06
	.byte		N06   , Cn3 , v120
	.byte	W06
	.byte		N03   , Cn4 
	.byte	W06
	.byte		        Cn4 , v092
	.byte	W06
	.byte		        Cn3 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N03   , Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N03   , Cn4 
	.byte	W06
@ 020   ----------------------------------------
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn3 , v092
	.byte	W06
	.byte		N03   , Fn4 , v120
	.byte	W06
	.byte		        Fn4 , v092
	.byte	W06
	.byte		N06   , Dn3 , v120
	.byte	W06
	.byte		N03   , Fn4 
	.byte	W06
	.byte		        Fn4 , v092
	.byte	W06
	.byte		        Dn3 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   , Fn4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N03   , Fn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N03   , Fn4 
	.byte	W06
@ 021   ----------------------------------------
	.byte		VOICE , 87
	.byte		N03   , Dn4 
	.byte	W06
	.byte		N06   
	.byte	W30
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N18   , Gn4 
	.byte	W18
@ 022   ----------------------------------------
	.byte		VOL   , 71*mus_t_drill_missile_mvl/mxv
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 023   ----------------------------------------
mus_t_drill_missile_7_023:
	.byte		N06   , An3 , v120
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte	PEND
@ 024   ----------------------------------------
	.byte		        Gn3 
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_7_023
@ 026   ----------------------------------------
	.byte		N06   , Bn3 , v120
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W12
	.byte		        Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 027   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W12
	.byte		        Gs5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 028   ----------------------------------------
	.byte		N03   , Dn4 
	.byte	W06
	.byte		N06   
	.byte	W30
	.byte		N03   
	.byte	W06
	.byte		N06   
	.byte	W54
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_7_001
@ 030   ---------------------------------------- 
	.byte	GOTO
	.word	mus_t_drill_missile_7_003
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

mus_t_drill_missile_8:
	.byte	KEYSH , mus_t_drill_missile_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 92*mus_t_drill_missile_mvl/mxv
	.byte		N06   , En1 , v120
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Cn1 
	.byte	W18
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W30
	.byte		        Gn1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
@ 001   ----------------------------------------
mus_t_drill_missile_8_001:
	.byte		N06   , En1 , v120
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Cn1 
	.byte	W18
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
mus_t_drill_missile_8_003:
	.byte		        Cn1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 003   ----------------------------------------
	.byte		        Cn1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
@ 004   ----------------------------------------
	.byte		        Cn1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 005   ----------------------------------------
	.byte		        Cn1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 006   ----------------------------------------
	.byte		        Cn1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
@ 007   ----------------------------------------
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
@ 008   ----------------------------------------
mus_t_drill_missile_8_008:
	.byte		N06   , Cn1 , v120
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 010   ----------------------------------------
	.byte		        Cn1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W18
	.byte		        Cn1 
	.byte	W06
@ 011   ----------------------------------------
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W12
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_8_008
@ 013   ----------------------------------------
	.byte		N06   , Dn1 , v120
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
@ 014   ----------------------------------------
	.byte		        Cn1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W18
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W24
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
@ 015   ----------------------------------------
	.byte		        Cn1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06   
	.byte	W06
@ 016   ----------------------------------------
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W18
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W24
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W06
@ 017   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06   
	.byte	W06
@ 018   ----------------------------------------
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W24
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
@ 019   ----------------------------------------
	.byte		        Cn1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W18
	.byte		        Cn1 
	.byte	W06
@ 020   ----------------------------------------
	.byte		N06   
	.byte	W24
	.byte		        En1 
	.byte	W18
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W24
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W06
@ 021   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Cn1 
	.byte	W18
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N18   , En1 
	.byte	W18
@ 022   ----------------------------------------
mus_t_drill_missile_8_022:
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   , Dn1 , v120
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   , Dn1 , v120
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 023   ----------------------------------------
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W18
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_8_022
@ 025   ----------------------------------------
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Ds1 
	.byte	W18
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
@ 026   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		        Dn1 , v080
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N03   , Dn1 , v072
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   , Dn1 , v092
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   , Dn1 , v108
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        En1 , v112
	.byte	W06
	.byte		        Fn1 , v120
	.byte	W06
@ 027   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N03   , Dn1 , v072
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   , Dn1 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   , Dn1 , v108
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        En1 , v112
	.byte	W06
	.byte		        Cn1 , v120
	.byte		N06   , Fn1 
	.byte	W06
@ 028   ----------------------------------------
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Cn1 
	.byte	W18
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Cn1 
	.byte	W18
	.byte		N03   , Dn2 , v127
	.byte	W03
	.byte		        Cn2 
	.byte	W03
	.byte		N06   , An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_8_001
@ 030   ---------------------------------------- 
	.byte	GOTO
	.word	mus_t_drill_missile_8_003
	.byte	FINE

@**************** Track 9 (Midi-Chn.9) ****************@

mus_t_drill_missile_9:
	.byte	KEYSH , mus_t_drill_missile_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 56*mus_t_drill_missile_mvl/mxv
	.byte		N03   , Cn5 , v092
	.byte	W06
	.byte		N06   , Cn5 , v100
	.byte	W18
	.byte		N03   , Cn5 , v088
	.byte	W12
	.byte		N02   , Cn5 , v120
	.byte	W06
	.byte		N06   , Cn5 , v100
	.byte	W06
	.byte		N03   , Cn5 , v088
	.byte	W24
	.byte		        Cn5 , v112
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		N12   , Fn5 , v100
	.byte	W12
@ 001   ----------------------------------------
	.byte		N03   , Cn5 , v092
	.byte	W06
	.byte		N06   , Cn5 , v120
	.byte	W18
	.byte		N03   , Cn5 , v088
	.byte	W12
	.byte		N02   , Cn5 , v120
	.byte	W06
	.byte		N06   , Cn5 , v100
	.byte	W06
	.byte		N01   , Cn5 , v088
	.byte	W06
	.byte		N06   , Dn5 , v080
	.byte	W12
	.byte		        Dn5 , v088
	.byte	W12
	.byte		        Dn5 , v092
	.byte	W12
	.byte		        Fn5 , v096
	.byte	W06
@ 002   ----------------------------------------
mus_t_drill_missile_9_loop:
	.byte		N01   , Fn5 , v108
	.byte	W06
	.byte		        Fn5 , v088
	.byte	W06
	.byte		        Fn5 , v100
	.byte	W06
	.byte		        Fn5 , v088
	.byte	W06
	.byte		N04   , Fn5 , v100
	.byte	W06
	.byte		N01   , Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v100
	.byte	W06
	.byte		        Fn5 , v088
	.byte	W06
	.byte		        Fn5 , v092
	.byte	W03
	.byte		        Fn5 , v112
	.byte	W03
	.byte		        Fn5 , v088
	.byte	W06
	.byte		        Fn5 , v100
	.byte	W06
	.byte		        Fn5 , v088
	.byte	W06
	.byte		N04   , Fn5 , v100
	.byte	W06
	.byte		N01   , Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v100
	.byte	W06
	.byte		        Fn5 , v088
	.byte	W06
@ 003   ----------------------------------------
mus_t_drill_missile_9_003:
	.byte		N01   , Fn5 , v108
	.byte	W06
	.byte		        Fn5 , v088
	.byte	W06
	.byte		        Fn5 , v100
	.byte	W06
	.byte		        Fn5 , v088
	.byte	W06
	.byte		N04   , Fn5 , v100
	.byte	W06
	.byte		N01   , Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v100
	.byte	W06
	.byte		        Fn5 , v088
	.byte	W06
	.byte		        Fn5 , v092
	.byte	W03
	.byte		        Fn5 , v120
	.byte	W03
	.byte		        Fn5 , v088
	.byte	W06
	.byte		        Fn5 , v100
	.byte	W06
	.byte		        Fn5 , v088
	.byte	W06
	.byte		N04   , Fn5 , v100
	.byte	W06
	.byte		N01   , Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v100
	.byte	W06
	.byte		        Fn5 , v088
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_9_003
@ 005   ----------------------------------------
	.byte		N01   , Fn5 , v108
	.byte	W06
	.byte		        Fn5 , v088
	.byte	W06
	.byte		        Fn5 , v100
	.byte	W06
	.byte		        Fn5 , v088
	.byte	W06
	.byte		N04   , Fn5 , v100
	.byte	W06
	.byte		N01   , Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v100
	.byte	W06
	.byte		        Fn5 , v088
	.byte	W06
	.byte		        Fn5 , v092
	.byte	W06
	.byte		        Fn5 , v088
	.byte	W06
	.byte		        Fn5 , v100
	.byte	W06
	.byte		        Fn5 , v088
	.byte	W06
	.byte		N04   , Fn5 , v100
	.byte	W06
	.byte		N01   , Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v100
	.byte	W06
	.byte		        Fn5 , v088
	.byte	W06
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_9_003
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_9_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_9_003
@ 009   ----------------------------------------
	.byte		N01   , Cn5 , v100
	.byte	W06
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N01   , Cn5 , v120
	.byte	W06
	.byte		N12   , Gn5 , v100
	.byte	W12
	.byte		N01   , Cn5 , v120
	.byte	W06
	.byte		N02   , Gn5 , v100
	.byte	W06
	.byte		N03   , Cn5 , v120
	.byte	W06
	.byte		N04   , Cn5 , v112
	.byte	W06
	.byte		N01   , Cn5 , v104
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn5 , v112
	.byte	W06
	.byte		        Cn5 , v108
	.byte	W06
	.byte		N03   , Cn5 , v120
	.byte	W06
	.byte		N06   , Fs5 
	.byte	W06
@ 010   ----------------------------------------
mus_t_drill_missile_9_010:
	.byte		N01   , Cn5 , v108
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v100
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		N04   , Cn5 , v100
	.byte	W06
	.byte		N01   , Cn5 , v112
	.byte	W06
	.byte		        Cn5 , v100
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W03
	.byte		        Cn5 , v120
	.byte	W03
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v100
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		N04   , Cn5 , v100
	.byte	W06
	.byte		N01   , Cn5 , v112
	.byte	W06
	.byte		        Cn5 , v100
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_9_010
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_9_010
@ 013   ----------------------------------------
	.byte		N01   , Cn5 , v108
	.byte	W06
	.byte		N12   , Gn5 , v100
	.byte	W12
	.byte		N02   , Cn5 , v112
	.byte	W06
	.byte		N12   , Gn5 , v096
	.byte	W12
	.byte		N01   , Cn5 , v120
	.byte	W04
	.byte		        Cn5 , v108
	.byte	W08
	.byte		N12   , Gn5 , v096
	.byte	W12
	.byte		N01   , Cn5 , v112
	.byte	W04
	.byte		N02   
	.byte	W08
	.byte		N01   , Cs5 , v108
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N12   , Gn5 , v100
	.byte	W12
@ 014   ----------------------------------------
	.byte		VOL   , 71*mus_t_drill_missile_mvl/mxv
	.byte		N02   , Cn5 , v108
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v100
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v108
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v100
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v108
	.byte	W06
	.byte		        Cn5 , v104
	.byte	W03
	.byte		        Cn5 , v096
	.byte	W03
	.byte		        Cn5 , v108
	.byte	W06
	.byte		        Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v108
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v100
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
@ 015   ----------------------------------------
	.byte		        Cn5 , v108
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v100
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v108
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v100
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v108
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v108
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		N05   , Cn5 , v108
	.byte	W06
	.byte		N02   , Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v108
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
@ 016   ----------------------------------------
mus_t_drill_missile_9_016:
	.byte		N02   , Cn5 , v108
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v100
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v108
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v100
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v108
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v100
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v108
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v100
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte	PEND
@ 017   ----------------------------------------
	.byte		        Cn5 , v108
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v100
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v108
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v100
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v108
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v100
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v108
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		N11   , Cn5 , v100
	.byte	W12
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_9_016
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_9_016
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_9_016
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
mus_t_drill_missile_9_022:
	.byte		N03   , Cn5 , v112
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W06
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N03   , Cn5 , v112
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W06
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N03   , Cn5 , v112
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W06
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N03   , Cn5 , v112
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W06
	.byte		N12   , Gn5 
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_9_022
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_9_022
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_t_drill_missile_9_022
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	GOTO
	.word	mus_t_drill_missile_9_loop
	.byte	FINE

@**************** Track 10 (Midi-Chn.10) ****************@

mus_t_drill_missile_10:
	.byte	KEYSH , mus_t_drill_missile_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 98
	.byte		VOL   , 98*mus_t_drill_missile_mvl/mxv
	.byte		N03   , Gn2 , v127
	.byte	W06
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N06   
	.byte	W18
	.byte		N03   , Gn2 
	.byte	W06
	.byte		N06   , Gn1 
	.byte	W30
	.byte		        Dn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 001   ----------------------------------------
	.byte		N03   , Gn2 
	.byte	W06
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N06   
	.byte	W18
	.byte		N03   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Gs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Bn1 
	.byte	W06
@ 002   ----------------------------------------
mus_t_drill_missile_10_003:
	.byte		VOICE , 99
	.byte		N12   , Cn2 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N03   , Cn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte	W06
	.byte		N03   , Gn2 
	.byte	W06
	.byte		N06   , Ds2 
	.byte	W06
	.byte		N03   , Fn2 
	.byte	W12
	.byte		N18   , As2 
	.byte	W18
	.byte		N12   , An2 
	.byte	W12
@ 003   ----------------------------------------
	.byte		        Cn2 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N03   , Gn2 
	.byte	W12
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N12   , Dn3 
	.byte	W12
@ 004   ----------------------------------------
	.byte		        Cn2 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N03   , Cn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte	W06
	.byte		N03   , Gn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Fn2 
	.byte	W12
	.byte		N18   , As2 
	.byte	W18
	.byte		N12   , An2 
	.byte	W12
@ 005   ----------------------------------------
	.byte		        Cn2 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N03   , Gn2 
	.byte	W09
	.byte		VOICE , 81
	.byte	W09
	.byte		VOL   , 79*mus_t_drill_missile_mvl/mxv
	.byte	W12
	.byte		N03   , As2 , v120
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
@ 006   ----------------------------------------
	.byte		VOL   , 79*mus_t_drill_missile_mvl/mxv
	.byte		N36   , Ds3 
	.byte	W36
	.byte		N06   , Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		N42   , Cn4 
	.byte	W06
@ 007   ----------------------------------------
	.byte	W36
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N36   , An3 
	.byte	W36
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 008   ----------------------------------------
	.byte		N36   , Cn4 
	.byte	W36
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 009   ----------------------------------------
	.byte		N36   , Bn3 
	.byte	W36
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W18
	.byte		N18   , Bn3 
	.byte	W18
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
@ 010   ----------------------------------------
	.byte		        Cn3 
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 011   ----------------------------------------
	.byte		        Fn3 
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N03   , Fn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N06   , An3 
	.byte	W06
	.byte		N03   , Fn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N12   , Cn4 
	.byte	W12
@ 012   ----------------------------------------
	.byte		        Fn3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W06
	.byte		N03   , Ds3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N06   , As3 
	.byte	W06
	.byte		N03   , Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N18   , Gs3 
	.byte	W18
	.byte		N06   , As3 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 013   ----------------------------------------
	.byte		N18   , Dn4 
	.byte	W18
	.byte		N12   , Ds4 
	.byte	W18
	.byte		        Dn4 
	.byte	W12
	.byte		N18   , Cn4 
	.byte	W18
	.byte		        As3 
	.byte	W18
	.byte		VOICE , 98
	.byte		BEND  , c_v+0
	.byte		N06   , Gn4 
	.byte	W03
	.byte		VOL   , 71*mus_t_drill_missile_mvl/mxv
	.byte	W03
	.byte		N06   , Gs4 
	.byte	W06
@ 014   ----------------------------------------
	.byte		VOL   , 71*mus_t_drill_missile_mvl/mxv
	.byte		N42   , As4 
	.byte	W42
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		N18   , As4 
	.byte	W18
	.byte		        Gs4 
	.byte	W18
	.byte		N12   , Gn4 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		        Gs4 
	.byte	W18
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W12
	.byte		N18   , Dn5 
	.byte	W18
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
@ 016   ----------------------------------------
	.byte		N42   , As4 
	.byte	W42
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		N18   , As4 
	.byte	W18
	.byte		        Cn5 
	.byte	W18
	.byte		N12   , Cs5 
	.byte	W12
@ 017   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte		N03   , Gn4 
	.byte	W06
	.byte		N18   , Cs5 
	.byte	W18
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N03   , Gn4 
	.byte	W06
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , Gn4 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N03   , Ds4 
	.byte	W06
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N03   , Gn4 
	.byte	W06
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N48   , Ds4 
	.byte	W48
@ 019   ----------------------------------------
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W12
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N03   , Gn4 
	.byte	W06
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N30   , Ds4 
	.byte	W30
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W12
@ 020   ----------------------------------------
	.byte		N96   , As4 
	.byte	W96
@ 021   ----------------------------------------
	.byte		BEND  , c_v+0
	.byte		N03   , Gn2 , v127
	.byte	W06
	.byte		N06   , Gn1 
	.byte	W30
	.byte		N03   
	.byte	W06
	.byte		N06   
	.byte	W54
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W48
	.byte		VOICE , 83
	.byte	W24
	.byte		N03   , Cn2 , v120
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        Ds2 
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Bn2 
	.byte	W03
@ 024   ----------------------------------------
	.byte		N06   , Cn3 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W18
	.byte		N06   
	.byte	W12
	.byte		N03   , As2 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 025   ----------------------------------------
	.byte		N06   , An2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N12   , An2 
	.byte	W18
	.byte		N03   
	.byte	W12
	.byte		        Gs2 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 026   ----------------------------------------
	.byte		VOICE , 83
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
@ 027   ----------------------------------------
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 028   ----------------------------------------
	.byte		VOL   , 71*mus_t_drill_missile_mvl/mxv
	.byte		N03   , Gn2 , v127
	.byte	W06
	.byte		N06   , Gn1 
	.byte	W30
	.byte		N03   , Gn2 
	.byte	W06
	.byte		N06   , Gn1 
	.byte	W54
@ 029   ----------------------------------------
	.byte		N03   , Gn2 
	.byte	W06
	.byte		N06   , Gn1 
	.byte	W30
	.byte		N03   , Gn2 
	.byte	W06
	.byte		N06   , Gn1 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Gs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Bn1 
	.byte	W06
@ 030   ----------------------------------------
	.byte		VOICE , 99 
	.byte	GOTO
	.word	mus_t_drill_missile_10_003
	.byte	FINE

@******************************************************@
	.align	2

mus_t_drill_missile:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_t_drill_missile_pri	@ Priority
	.byte	mus_t_drill_missile_rev	@ Reverb.

	.word	mus_t_drill_missile_grp

	.word	mus_t_drill_missile_1
	.word	mus_t_drill_missile_2
	.word	mus_t_drill_missile_3
	.word	mus_t_drill_missile_4
	.word	mus_t_drill_missile_5
	.word	mus_t_drill_missile_6
	.word	mus_t_drill_missile_7
	.word	mus_t_drill_missile_8
	.word	mus_t_drill_missile_9
	.word	mus_t_drill_missile_10

	.end
