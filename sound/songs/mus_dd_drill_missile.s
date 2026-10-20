	.include "MPlayDef.s"

	.equ	mus_dd_drill_missile_grp, voicegroup_dd_drill_missile
	.equ	mus_dd_drill_missile_pri, 0
	.equ	mus_dd_drill_missile_rev, 0x9e
	.equ	mus_dd_drill_missile_mvl, 127
	.equ	mus_dd_drill_missile_key, 0
	.equ	mus_dd_drill_missile_tbs, 1
	.equ	mus_dd_drill_missile_exg, 0
	.equ	mus_dd_drill_missile_cmp, 1

	.section .rodata
	.global	mus_dd_drill_missile
	.align	2

@**************** Track 1 ****************@

mus_dd_drill_missile_1:
	.byte		KEYSH , mus_dd_drill_missile_key+0
	.byte		TEMPO , 148*mus_dd_drill_missile_tbs/2
	.byte		VOICE , 1
	.byte		PAN   , c_v+43
	.byte		VOL   , 69*mus_dd_drill_missile_mvl/mxv
	.byte	W84
	.byte		BENDR , 44
	.byte	W12
	.byte	W96
mus_dd_drill_missile_1_000:
	.byte		VOICE , 1
	.byte		PAN   , c_v+43
	.byte		VOL   , 50*mus_dd_drill_missile_mvl/mxv
	.byte	W12
	.byte		N06   , As3 , v112
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
	.byte		VOICE , 24
	.byte		VOL   , 64*mus_dd_drill_missile_mvl/mxv
	.byte		N03
	.byte	W03
	.byte		N09   , Ds4 , v052
	.byte	W09
	.byte		N03   , As4 , v112
	.byte	W03
	.byte		        As4 , v052
	.byte	W03
	.byte		        Ds4 , v112
	.byte	W03
	.byte		N09   , Ds4 , v052
	.byte	W09
	.byte		N03   , An4 , v112
	.byte	W03
	.byte		        An4 , v052
	.byte	W03
	.byte		        Gn4 , v112
	.byte	W03
	.byte		        Gn4 , v052
	.byte	W03
	.byte		        Ds4 , v112
	.byte	W03
	.byte		        Ds4 , v052
	.byte	W03
	.byte		N15   , Gn4 , v112
	.byte	W15
	.byte		N03   , Gn4 , v052
	.byte	W03
	.byte		        An4 , v112
	.byte	W03
	.byte		        An4 , v052
	.byte	W03
	.byte		        Ds4 , v112
	.byte	W03
	.byte		N09   , Ds4 , v052
	.byte	W09
	.byte		N03   , As4 , v112
	.byte	W03
	.byte		        As4 , v052
	.byte	W03
	.byte		        Cn5 , v112
	.byte	W03
	.byte		        Cn5 , v052
	.byte	W03
	.byte		        Fn4 , v112
	.byte	W03
	.byte		N09   , Fn4 , v052
	.byte	W09
	.byte		N03   , Dn5 , v112
	.byte	W03
	.byte		        Dn5 , v052
	.byte	W03
	.byte		        Fn4 , v112
	.byte	W03
	.byte		N09   , Fn4 , v052
	.byte	W09
	.byte		N03   , Cn5 , v112
	.byte	W03
	.byte		        Cn5 , v052
	.byte	W03
	.byte		        An4 , v112
	.byte	W03
	.byte		        An4 , v052
	.byte	W03
	.byte		        Fn4 , v112
	.byte	W03
	.byte		        Fn4 , v052
	.byte	W03
	.byte		N15   , Dn5 , v112
	.byte	W06
	.byte		MOD   , 7
	.byte	W09
	.byte		        0
	.byte		N03   , Dn5 , v052
	.byte	W03
	.byte		        Cn5 , v112
	.byte	W03
	.byte		        Cn5 , v052
	.byte	W03
	.byte		        Fn4 , v112
	.byte	W03
	.byte		N09   , Fn4 , v052
	.byte	W09
	.byte		N03   , Dn5 , v112
	.byte	W03
	.byte		        Dn5 , v052
	.byte	W03
	.byte		        Ds5 , v112
	.byte	W03
	.byte		        Ds5 , v052
	.byte	W03
	.byte		        Gs4 , v112
	.byte	W03
	.byte		N09   , Gs4 , v052
	.byte	W09
	.byte		N03   , Ds5 , v112
	.byte	W03
	.byte		        Ds5 , v052
	.byte	W03
	.byte		        Gs4 , v112
	.byte	W03
	.byte		N09   , Gs4 , v052
	.byte	W09
	.byte		N03   , Dn5 , v112
	.byte	W03
	.byte		        Dn5 , v052
	.byte	W03
	.byte		        Cn5 , v112
	.byte	W03
	.byte		        Cn5 , v052
	.byte	W03
	.byte		        Gs4 , v112
	.byte	W03
	.byte		        Gs4 , v052
	.byte	W03
	.byte		N15   , Ds5 , v112
	.byte	W06
	.byte		MOD   , 7
	.byte	W09
	.byte		        0
	.byte		N03   , Ds5 , v052
	.byte	W03
	.byte		        Dn5 , v112
	.byte	W03
	.byte		        Dn5 , v052
	.byte	W03
	.byte		        Gs4 , v112
	.byte	W03
	.byte		N09   , Gs4 , v052
	.byte	W09
	.byte		N03   , Ds5 , v112
	.byte	W03
	.byte		        Ds5 , v052
	.byte	W03
	.byte		        Fn5 , v112
	.byte	W03
	.byte		        Fn5 , v052
	.byte	W03
	.byte		        Gn4 , v112
	.byte	W03
	.byte		N09   , Gn4 , v052
	.byte	W09
	.byte		N03   , Gn5 , v112
	.byte	W03
	.byte		        Gn5 , v052
	.byte	W03
	.byte		        Gn4 , v112
	.byte	W03
	.byte		N09   , Gn4 , v052
	.byte	W09
	.byte		N03   , Fn5 , v112
	.byte	W03
	.byte		        Fn5 , v052
	.byte	W03
	.byte		        Gn4 , v112
	.byte	W03
	.byte		N09   , Gn4 , v052
	.byte	W09
	.byte		N15   , Ds5 , v112
	.byte	W06
	.byte		MOD   , 7
	.byte	W09
	.byte		        0
	.byte		N03   , Ds5 , v052
	.byte	W03
	.byte		        Dn5 , v112
	.byte	W03
	.byte		N15   , Dn5 , v052
	.byte	W15
	.byte		N12   , Bn4 , v112
	.byte	W12
	.byte		VOICE , 2
	.byte		PAN   , c_v+32
	.byte		VOL   , 59*mus_dd_drill_missile_mvl/mxv
	.byte		N09   , Ds3
	.byte	W09
	.byte		        Ds3 , v052
	.byte	W09
	.byte		N03   , As3 , v112
	.byte	W03
	.byte		        As3 , v052
	.byte	W03
	.byte		        Ds3 , v112
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
	.byte		N06   , Gn4 , v120
	.byte	W03
	.byte		VOL   , 59*mus_dd_drill_missile_mvl/mxv
	.byte	W03
	.byte		N06   , Gs4 , v112
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		VOL   , 61*mus_dd_drill_missile_mvl/mxv
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
	.byte		N96   , As4 , v116
	.byte	W09
	.byte		VOL   , 19*mus_dd_drill_missile_mvl/mxv
	.byte	W36
	.byte	W03
	.byte		        20*mus_dd_drill_missile_mvl/mxv
	.byte	W02
	.byte		        23*mus_dd_drill_missile_mvl/mxv
	.byte	W03
	.byte		        26*mus_dd_drill_missile_mvl/mxv
	.byte	W03
	.byte		        32*mus_dd_drill_missile_mvl/mxv
	.byte	W03
	.byte		        35*mus_dd_drill_missile_mvl/mxv
	.byte	W03
	.byte		        41*mus_dd_drill_missile_mvl/mxv
	.byte	W03
	.byte		        45*mus_dd_drill_missile_mvl/mxv
	.byte	W03
	.byte		        52*mus_dd_drill_missile_mvl/mxv
	.byte	W03
	.byte		        56*mus_dd_drill_missile_mvl/mxv
	.byte	W03
	.byte		        61*mus_dd_drill_missile_mvl/mxv
	.byte	W03
	.byte		        65*mus_dd_drill_missile_mvl/mxv
	.byte	W03
	.byte		        70*mus_dd_drill_missile_mvl/mxv
	.byte	W04
	.byte		        73*mus_dd_drill_missile_mvl/mxv
	.byte	W12
	.byte	W96
	.byte		VOICE , 24
	.byte		VOL   , 80*mus_dd_drill_missile_mvl/mxv
	.byte		N12   , Gn5 , v112
	.byte	W12
	.byte		N06   , Cn5
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Ds5 , v112
	.byte	W06
	.byte		        Ds5 , v064
	.byte	W06
	.byte		        Cn5 , v112
	.byte	W06
	.byte		        Gn5
	.byte	W06
	.byte		        Gn5 , v068
	.byte	W06
	.byte		        Gn5 , v112
	.byte	W06
	.byte		        Cn5
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N18   , Ds5 , v112
	.byte	W18
	.byte		N06   , Cn5
	.byte	W06
	.byte		N12   , Gn5
	.byte	W12
	.byte		N06   , Cn5
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Ds5 , v112
	.byte	W06
	.byte		        Ds5 , v064
	.byte	W06
	.byte		        Cn5 , v112
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
	.byte		N12   , Gn5
	.byte	W12
	.byte		N06   , Cn5
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Ds5 , v112
	.byte	W06
	.byte		        Ds5 , v064
	.byte	W06
	.byte		        Cn5 , v112
	.byte	W06
	.byte		        Gn5
	.byte	W06
	.byte		        Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v112
	.byte	W06
	.byte		        Cn5
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N18   , Ds5 , v112
	.byte	W18
	.byte		N06   , Cn5
	.byte	W06
	.byte		N12   , Gn5
	.byte	W12
	.byte		N06   , Cn5
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn6 , v112
	.byte	W06
	.byte		        Cn6 , v048
	.byte	W06
	.byte		        Gn5 , v112
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
	.byte		        Ds5
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        Bn4 , v064
	.byte	W06
	.byte		N54   , Fs5 , v112
	.byte	W18
	.byte		MOD   , 8
	.byte	W36
	.byte		N12   , Fs5 , v064
	.byte	W24
	.byte		MOD   , 0
	.byte		N06   , Fn5 , v112
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte		        Cs5 , v064
	.byte	W06
	.byte		N54   , Gs5 , v112
	.byte	W18
	.byte		MOD   , 8
	.byte	W36
	.byte		N15   , Gs5 , v064
	.byte	W24
	.byte		MOD   , 0
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_dd_drill_missile_1_000
	.byte		FINE

@**************** Track 2 ****************@

mus_dd_drill_missile_2:
	.byte		KEYSH , mus_dd_drill_missile_key+0
	.byte		VOICE , 57
	.byte		LFOS  , 62
	.byte		BENDR , 12
	.byte		PAN   , c_v-30
	.byte		VOL   , 80*mus_dd_drill_missile_mvl/mxv
	.byte		N03   , Dn4 , v112
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Dn4 , v040
	.byte	W12
	.byte		        Dn4 , v016
	.byte	W06
	.byte		N03   , Dn4 , v112
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Dn4 , v036
	.byte	W12
	.byte		        Dn4 , v024
	.byte	W12
	.byte		        Dn4 , v008
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N03   , Dn4 , v112
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Dn4 , v040
	.byte	W12
	.byte		        Dn4 , v016
	.byte	W06
	.byte		N03   , Dn4 , v112
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
mus_dd_drill_missile_2_000:
	.byte		N06   , Gn4 , v112
	.byte	W04
	.byte		N02   , Fn4 , v064
	.byte	W02
	.byte		        Ds4
	.byte	W02
	.byte		        Dn4
	.byte	W02
	.byte		        Cn4
	.byte	W84
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
	.byte		VOICE , 1
	.byte		PAN   , c_v+32
	.byte		VOL   , 52*mus_dd_drill_missile_mvl/mxv
	.byte	W12
	.byte		N06   , Gn6 , v112
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
	.byte		N06   , Gs5 , v096
	.byte	W06
	.byte		        Ds6
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Gs5 , v080
	.byte	W06
	.byte		        Ds6
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Gs5 , v064
	.byte	W06
	.byte		        Ds6
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Gs5 , v048
	.byte	W06
	.byte		        Ds6
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Gs5 , v036
	.byte	W06
	.byte		        Ds6 , v032
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Gs5 , v024
	.byte	W06
	.byte		        Ds6
	.byte	W36
	.byte		PAN   , c_v+32
	.byte	W12
	.byte		N06   , Fn6 , v112
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
	.byte		N06   , Gn5 , v096
	.byte	W06
	.byte		        Fn6
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Gn5 , v080
	.byte	W06
	.byte		        Fn6
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Cn6 , v112
	.byte	W06
	.byte		        Gn6
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Cn6 , v092
	.byte	W06
	.byte		        Gn6
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Cn6 , v080
	.byte	W06
	.byte		        Gn6
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Cn6 , v060
	.byte	W06
	.byte		        Gn6
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Cn6 , v044
	.byte	W06
	.byte		        Gn6 , v040
	.byte	W12
	.byte		PAN   , c_v-32
	.byte	W06
	.byte		VOL   , 44*mus_dd_drill_missile_mvl/mxv
	.byte		N12   , Gn5 , v112
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
	.byte	W96
	.byte		VOICE , 57
	.byte		VOL   , 80*mus_dd_drill_missile_mvl/mxv
	.byte		N03   , Bn3
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Bn3 , v040
	.byte	W12
	.byte		        Bn3 , v016
	.byte	W06
	.byte		N03   , Bn3 , v112
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
	.byte		N06   , Ds4 , v100
	.byte	W06
	.byte		N02   , Dn4 , v060
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		VOICE , 60
	.byte		VOL   , 50*mus_dd_drill_missile_mvl/mxv
	.byte		N06   , Ds3 , v112
	.byte	W06
	.byte		        Fs3
	.byte	W12
	.byte		N30   , Ds4
	.byte	W06
	.byte		VOL   , 40*mus_dd_drill_missile_mvl/mxv
	.byte		MOD   , 7
	.byte	W09
	.byte		VOL   , 30*mus_dd_drill_missile_mvl/mxv
	.byte	W09
	.byte		        20*mus_dd_drill_missile_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 50*mus_dd_drill_missile_mvl/mxv
	.byte	W48
	.byte		N06   , Fn3
	.byte	W06
	.byte		        Gs3
	.byte	W12
	.byte		N18   , Fn4
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		MOD   , 7
	.byte		VOL   , 40*mus_dd_drill_missile_mvl/mxv
	.byte	W06
	.byte		        30*mus_dd_drill_missile_mvl/mxv
	.byte	W06
	.byte		VOICE , 57
	.byte		VOL   , 80*mus_dd_drill_missile_mvl/mxv
	.byte		N06   , Gn3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		VOICE , 57
	.byte		VOL   , 80*mus_dd_drill_missile_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		MOD   , 0
	.byte		N03   , Bn3
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Bn3 , v040
	.byte	W18
	.byte		N03   , Bn3 , v112
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Bn3 , v040
	.byte	W42
	.byte		N03   , Bn3 , v112
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Bn3 , v040
	.byte	W18
	.byte		N03   , Bn3 , v112
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
	.byte	GOTO
	 .word	mus_dd_drill_missile_2_000
	.byte		FINE

@**************** Track 3 ****************@

mus_dd_drill_missile_3:
	.byte		KEYSH , mus_dd_drill_missile_key+0
	.byte		VOICE , 38
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 80*mus_dd_drill_missile_mvl/mxv
	.byte		N03   , Gn2 , v127
	.byte	W06
	.byte		N06   , Gn1
	.byte	W06
	.byte		        Gn1 , v064
	.byte	W06
	.byte		        Gn1 , v127
	.byte	W06
	.byte		N12   , Gn1 , v064
	.byte	W12
	.byte		N03   , Gn2 , v127
	.byte	W06
	.byte		N06   , Gn1
	.byte	W06
	.byte		N24   , Gn1 , v064
	.byte	W24
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		        Dn2
	.byte	W06
	.byte		N03   , Gn2
	.byte	W06
	.byte		N06   , Gn1
	.byte	W06
	.byte		        Gn1 , v064
	.byte	W06
	.byte		        Gn1 , v127
	.byte	W06
	.byte		N12   , Gn1 , v064
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
mus_dd_drill_missile_3_000:
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		N06   , Cn1 , v060
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
	.byte	W09
	.byte		MOD   , 15
	.byte	W09
	.byte		        0
	.byte		N12   , An1
	.byte	W12
	.byte		        Cn1
	.byte	W12
	.byte		N06   , Cn1 , v060
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
	.byte		        Gn1 , v060
	.byte	W06
	.byte		N18   , Cn2 , v127
	.byte	W09
	.byte		MOD   , 15
	.byte	W09
	.byte		        0
	.byte		N12   , Dn2
	.byte	W12
mus_dd_drill_missile_3_001:
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		N06   , Cn1 , v060
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
	.byte		        Gn1 , v060
	.byte	W06
	.byte		N18   , As1 , v127
	.byte	W09
	.byte		MOD   , 15
	.byte	W09
	.byte		        0
	.byte		N12   , An1
	.byte	W12
	.byte		PEND
	.byte		        Cn1
	.byte	W12
	.byte		N06   , Cn1 , v060
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
	.byte		        Gn1 , v060
	.byte	W06
	.byte		N18   , As1 , v127
	.byte	W09
	.byte		MOD   , 15
	.byte	W09
	.byte		        0
	.byte		N06   , An1
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte	PATT
	 .word	mus_dd_drill_missile_3_001
	.byte		N12   , Fn1 , v127
	.byte	W12
	.byte		N06   , Fn1 , v060
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
	.byte		        Cn2 , v060
	.byte	W06
	.byte		N18   , Ds2 , v127
	.byte	W09
	.byte		MOD   , 15
	.byte	W09
	.byte		        0
	.byte		N06   , Cn2
	.byte	W06
	.byte		        As1
	.byte	W06
	.byte		N12   , Gs1
	.byte	W12
	.byte		N06   , Gs1 , v060
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
	.byte		        Ds2 , v060
	.byte	W06
	.byte		N18   , Fn2 , v127
	.byte	W09
	.byte		MOD   , 15
	.byte	W09
	.byte		        0
	.byte		N06   , Ds2
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		N12   , Gn1
	.byte	W12
	.byte		N06   , Gn1 , v060
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
	.byte		        Cn1
	.byte	W12
	.byte		N06   , Cn1 , v060
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
	.byte		        Gn1 , v060
	.byte	W06
	.byte		N18   , As1 , v127
	.byte	W18
	.byte		N12   , An1
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		N06   , Fn1 , v060
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
	.byte		        Cn2 , v060
	.byte	W06
	.byte		N18   , Ds2 , v127
	.byte	W18
	.byte		N06   , Dn2
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		N12   , Gs1
	.byte	W12
	.byte		N06   , Gs1 , v060
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
	.byte		        Ds2 , v060
	.byte	W06
	.byte		N18   , Gs2 , v127
	.byte	W18
	.byte		N06   , Ds2
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		N12   , Gn1
	.byte	W12
	.byte		N06   , Gn1 , v060
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
	.byte		        As1 , v060
	.byte	W06
	.byte		        As1 , v127
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		N12   , Dn2
	.byte	W12
	.byte		VOICE , 38
	.byte		N18   , Gs1
	.byte	W18
	.byte		N06   , Cn2
	.byte	W06
	.byte		N18   , Ds2
	.byte	W09
	.byte		MOD   , 15
	.byte	W09
	.byte		        0
	.byte		N06   , Gn2
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        As2 , v052
	.byte	W06
	.byte		        Cn2 , v127
	.byte	W06
	.byte		N12   , Gs2
	.byte	W12
	.byte		N06   , Gs1
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Gn2 , v112
	.byte	W06
	.byte		        Gn2 , v052
	.byte	W06
	.byte		N18   , Fn2 , v127
	.byte	W09
	.byte		MOD   , 15
	.byte	W09
	.byte		        0
	.byte		N06   , Dn2 , v112
	.byte	W06
	.byte		        Cn2 , v127
	.byte	W06
	.byte		        Dn2
	.byte	W06
	.byte		        Gs1
	.byte	W06
	.byte		        Gs1 , v052
	.byte	W06
	.byte		N18   , Dn2 , v112
	.byte	W09
	.byte		MOD   , 8
	.byte	W09
	.byte		        0
	.byte		N06   , Cs2 , v127
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		        As1
	.byte	W06
	.byte		        As1 , v052
	.byte	W06
	.byte		N18   , Dn2 , v127
	.byte	W09
	.byte		MOD   , 9
	.byte	W09
	.byte		        0
	.byte		N06   , Fn2
	.byte	W06
	.byte		        Fn2 , v052
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
	.byte		        Cs2 , v112
	.byte	W06
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
	.byte		        Cn3 , v052
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
	.byte		        c_v+0
	.byte		N06   , Gs1
	.byte	W06
	.byte		N03   , Gs1 , v092
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Gs1 , v127
	.byte	W06
	.byte		N03   , Gs1 , v092
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Gs1 , v127
	.byte	W06
	.byte		N03   , Ds2 , v088
	.byte	W06
	.byte		N06   , Cn3
	.byte	W06
	.byte		N03   , Ds2
	.byte	W06
	.byte		N06   , Gs2 , v127
	.byte	W06
	.byte		N03   , Ds2 , v088
	.byte	W06
	.byte		N06   , Cn2
	.byte	W06
	.byte		N03   , Gs1
	.byte	W06
	.byte		N06   , Fn1 , v127
	.byte	W06
	.byte		N03   , Fn1 , v092
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Fn1 , v127
	.byte	W06
	.byte		N03   , Fn1 , v092
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Fn1 , v127
	.byte	W06
	.byte		N03   , Cn2 , v088
	.byte	W06
	.byte		N06   , Cn3
	.byte	W06
	.byte		N03   , Fn2
	.byte	W06
	.byte		N06   , Gs2 , v127
	.byte	W06
	.byte		N03   , Fn2 , v088
	.byte	W06
	.byte		N06   , Cn2
	.byte	W06
	.byte		N03   , Gs1
	.byte	W06
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N03   , Gn1 , v092
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Gn1 , v127
	.byte	W06
	.byte		        Gn1 , v092
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N03   , Fn2 , v088
	.byte	W06
	.byte		N06   , Dn3
	.byte	W06
	.byte		N03   , Gn2
	.byte	W06
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		N03   , Gn2 , v088
	.byte	W06
	.byte		        Dn2
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		        Gn1
	.byte	W12
	.byte		        Gn1 , v064
	.byte	W12
	.byte		        Gn1 , v040
	.byte	W06
	.byte		N03   , Gn1 , v127
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Gn1 , v112
	.byte	W06
	.byte		        Gn2
	.byte	W03
	.byte		N06   , Gn2 , v060
	.byte	W09
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N03   , Dn2
	.byte	W06
	.byte		N12   , Bn1
	.byte	W12
	.byte		N06   , Dn1
	.byte	W06
mus_dd_drill_missile_3_002:
	.byte		N12   , Cn1 , v112
	.byte	W12
	.byte		N06   , Gn1
	.byte	W06
	.byte		        Gn1 , v060
	.byte	W06
	.byte		        Cn2 , v112
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
	.byte		PEND
mus_dd_drill_missile_3_003:
	.byte		N12   , An0 , v112
	.byte	W12
	.byte		N06   , Ds1
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Cn2 , v112
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
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_drill_missile_3_002
	.byte	PATT
	 .word	mus_dd_drill_missile_3_003
	.byte		N06   , Bn1 , v127
	.byte	W06
	.byte		N03   , Bn1 , v092
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Bn1 , v127
	.byte	W06
	.byte		N03   , Bn1 , v092
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Bn1 , v127
	.byte	W06
	.byte		N03   , Bn1 , v092
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Bn1 , v127
	.byte	W06
	.byte		N03   , Bn1 , v092
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Cs2 , v127
	.byte	W06
	.byte		N03   , Cs2 , v092
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Cs2 , v127
	.byte	W06
	.byte		N03   , Cs2 , v092
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Cs2 , v127
	.byte	W06
	.byte		N03   , Cs2 , v092
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Cs2 , v127
	.byte	W06
	.byte		N03   , Cs2 , v092
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		        Gn1
	.byte	W12
	.byte		        Gn1 , v064
	.byte	W12
	.byte		        Gn1 , v032
	.byte	W06
	.byte		        Gn2 , v127
	.byte	W06
	.byte		        Gn1
	.byte	W12
	.byte		        Gn1 , v064
	.byte	W12
	.byte		        Gn1 , v032
	.byte	W12
	.byte		        Gn1 , v016
	.byte	W18
	.byte		        Gn2 , v127
	.byte	W06
	.byte		        Gn1
	.byte	W12
	.byte		        Gn1 , v064
	.byte	W12
	.byte		        Gn1 , v032
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
	.byte	GOTO
	 .word	mus_dd_drill_missile_3_000
	.byte		FINE

@**************** Track 4 ****************@

mus_dd_drill_missile_4:
	.byte		KEYSH , mus_dd_drill_missile_key+0
	.byte		VOICE , 56
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 80*mus_dd_drill_missile_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		N03   , Gn4 , v112
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Gn4 , v040
	.byte	W12
	.byte		        Gn4 , v020
	.byte	W06
	.byte		N03   , Gn4 , v112
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Gn4 , v052
	.byte	W12
	.byte		        Gn4 , v024
	.byte	W12
	.byte		        Gn4 , v012
	.byte	W12
	.byte		        Gn4 , v008
	.byte	W06
	.byte		N03   , Gn4 , v112
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Gn4 , v040
	.byte	W12
	.byte		        Gn4 , v020
	.byte	W06
	.byte		N03   , Gn4 , v112
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
mus_dd_drill_missile_4_000:
	.byte		N06   , Cn5 , v112
	.byte	W06
	.byte		N02   , As4 , v064
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
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		VOICE , 48
	.byte		PAN   , c_v-6
	.byte		VOL   , 80*mus_dd_drill_missile_mvl/mxv
	.byte	W12
	.byte		        66*mus_dd_drill_missile_mvl/mxv
	.byte	W06
	.byte		N03   , As3 , v127
	.byte	W03
	.byte		        Bn3
	.byte	W03
	.byte		VOL   , 63*mus_dd_drill_missile_mvl/mxv
	.byte		N36   , Cn4
	.byte	W36
	.byte		N06   , Dn4
	.byte	W06
	.byte		        Dn4 , v060
	.byte	W06
	.byte		        Ds4 , v127
	.byte	W06
	.byte		        Ds4 , v064
	.byte	W06
	.byte		        Gn4 , v127
	.byte	W06
	.byte		        Gn4 , v064
	.byte	W06
	.byte		        As4 , v127
	.byte	W06
	.byte		        As4 , v064
	.byte	W06
	.byte		        Gn4 , v112
	.byte	W06
	.byte		N42   , An4 , v127
	.byte	W06
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
	.byte		N36   , Ds4 , v112
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
	.byte		VOL   , 69*mus_dd_drill_missile_mvl/mxv
	.byte		N06   , As2 , v108
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		N36   , Cn3
	.byte	W36
	.byte		N06   , Dn3
	.byte	W06
	.byte		        Dn3 , v064
	.byte	W06
	.byte		        Ds3 , v108
	.byte	W06
	.byte		N03   , Cn3 , v080
	.byte	W03
	.byte		        Cn3 , v052
	.byte	W03
	.byte		N06   , Gn3 , v112
	.byte	W06
	.byte		N03   , Cn3 , v080
	.byte	W03
	.byte		        Cn3 , v052
	.byte	W03
	.byte		N06   , As3 , v108
	.byte	W06
	.byte		N03   , Cn3 , v080
	.byte	W03
	.byte		        Cn3 , v052
	.byte	W03
	.byte		N06   , Cn4 , v108
	.byte	W06
	.byte		        Gn3
	.byte	W06
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
	.byte		        Cn3 , v052
	.byte	W03
	.byte		        An2 , v108
	.byte	W03
	.byte		        An2 , v052
	.byte	W03
	.byte		N06   , Gn3 , v108
	.byte	W06
	.byte		N03   , Cn3
	.byte	W03
	.byte		        Cn3 , v052
	.byte	W03
	.byte		        An2 , v108
	.byte	W03
	.byte		        An2 , v052
	.byte	W03
	.byte		N12   , Fn3 , v108
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		N06   , Ds3
	.byte	W06
	.byte		N03   , Cn3
	.byte	W03
	.byte		        Cn3 , v052
	.byte	W03
	.byte		        Gs2 , v108
	.byte	W03
	.byte		        Gs2 , v052
	.byte	W03
	.byte		N06   , Dn3 , v108
	.byte	W06
	.byte		N03   , Cn3
	.byte	W03
	.byte		        Cn3 , v052
	.byte	W03
	.byte		        Gs2 , v108
	.byte	W03
	.byte		        Gs2 , v052
	.byte	W03
	.byte		N06   , Cn3 , v108
	.byte	W06
	.byte		N03   , Gs2 , v112
	.byte	W03
	.byte		        Gs2 , v052
	.byte	W03
	.byte		        Gs2 , v112
	.byte	W03
	.byte		        Gs2 , v052
	.byte	W03
	.byte		N06   , Dn3 , v108
	.byte	W06
	.byte		N03   , Gs2
	.byte	W03
	.byte		        Gs2 , v052
	.byte	W03
	.byte		        As2 , v108
	.byte	W03
	.byte		        As2 , v052
	.byte	W03
	.byte		N06   , Ds3 , v108
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		N03   , Dn3 , v112
	.byte	W03
	.byte		        Dn3 , v052
	.byte	W03
	.byte		        Dn3 , v112
	.byte	W03
	.byte		        Dn3 , v052
	.byte	W03
	.byte		N06   , Gs3 , v108
	.byte	W06
	.byte		N03   , Ds3 , v112
	.byte	W03
	.byte		        Ds3 , v052
	.byte	W03
	.byte		        Ds3 , v112
	.byte	W03
	.byte		        Ds3 , v052
	.byte	W03
	.byte		N12   , Gn3 , v108
	.byte	W12
	.byte		N06   , Fn3
	.byte	W06
	.byte		N03   , Cn3 , v112
	.byte	W03
	.byte		        Cn3 , v052
	.byte	W03
	.byte		        Cn3 , v112
	.byte	W06
	.byte		N12   , Ds3 , v108
	.byte	W12
	.byte		N06   , Fn3 , v112
	.byte	W06
	.byte		VOICE , 2
	.byte		PAN   , c_v+32
	.byte		N12   , Fn4 , v120
	.byte	W12
	.byte		PAN   , c_v-5
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 90
	.byte		VOL   , 19*mus_dd_drill_missile_mvl/mxv
	.byte		N96   , Dn3 , v112
	.byte	W05
	.byte		VOL   , 20*mus_dd_drill_missile_mvl/mxv
	.byte	W03
	.byte		        22*mus_dd_drill_missile_mvl/mxv
	.byte	W18
	.byte		        23*mus_dd_drill_missile_mvl/mxv
	.byte	W03
	.byte		        24*mus_dd_drill_missile_mvl/mxv
	.byte	W06
	.byte		        25*mus_dd_drill_missile_mvl/mxv
	.byte	W06
	.byte		        26*mus_dd_drill_missile_mvl/mxv
	.byte	W03
	.byte		        27*mus_dd_drill_missile_mvl/mxv
	.byte	W03
	.byte		        29*mus_dd_drill_missile_mvl/mxv
	.byte	W03
	.byte		        34*mus_dd_drill_missile_mvl/mxv
	.byte	W03
	.byte		        39*mus_dd_drill_missile_mvl/mxv
	.byte	W03
	.byte		        45*mus_dd_drill_missile_mvl/mxv
	.byte	W03
	.byte		        52*mus_dd_drill_missile_mvl/mxv
	.byte	W03
	.byte		        61*mus_dd_drill_missile_mvl/mxv
	.byte	W03
	.byte		        68*mus_dd_drill_missile_mvl/mxv
	.byte	W03
	.byte		        75*mus_dd_drill_missile_mvl/mxv
	.byte	W03
	.byte		        80*mus_dd_drill_missile_mvl/mxv
	.byte	W01
	.byte		MOD   , 8
	.byte	W24
	.byte		VOICE , 56
	.byte		VOL   , 80*mus_dd_drill_missile_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		MOD   , 0
	.byte		N03   , As4
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        As4 , v040
	.byte	W12
	.byte		        As4 , v020
	.byte	W06
	.byte		N03   , As4 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		        As4 , v040
	.byte	W06
	.byte		N18   , Bn4 , v112
	.byte	W18
	.byte		VOICE , 24
	.byte		VOL   , 63*mus_dd_drill_missile_mvl/mxv
	.byte		PAN   , c_v-17
	.byte		N06   , Cn5 , v100
	.byte	W06
	.byte		N02   , As4 , v060
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
	.byte		N06   , Gn4 , v112
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
	.byte		VOICE , 14
	.byte		VOL   , 55*mus_dd_drill_missile_mvl/mxv
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
	.byte		VOICE , 14
	.byte		N06   , Fs4
	.byte	W06
	.byte		        Ds4
	.byte	W12
	.byte		N30   , Bn4
	.byte	W06
	.byte		MOD   , 8
	.byte		VOL   , 40*mus_dd_drill_missile_mvl/mxv
	.byte	W12
	.byte		        30*mus_dd_drill_missile_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 54*mus_dd_drill_missile_mvl/mxv
	.byte	W48
	.byte		N06   , Gs4
	.byte	W06
	.byte		        Fn4
	.byte	W12
	.byte		N30   , Cs5
	.byte	W06
	.byte		MOD   , 8
	.byte		VOL   , 40*mus_dd_drill_missile_mvl/mxv
	.byte	W12
	.byte		        30*mus_dd_drill_missile_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 54*mus_dd_drill_missile_mvl/mxv
	.byte	W24
	.byte		VOICE , 56
	.byte		VOL   , 80*mus_dd_drill_missile_mvl/mxv
	.byte		PAN   , c_v+32
	.byte	W12
	.byte		N06   , Gn4
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		VOICE , 56
	.byte		VOL   , 80*mus_dd_drill_missile_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		N03   , As4
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        As4 , v040
	.byte	W18
	.byte		N03   , As4 , v112
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        As4 , v040
	.byte	W42
	.byte		N03   , As4 , v112
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        As4 , v040
	.byte	W18
	.byte		N03   , As4 , v112
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
	.byte	GOTO
	 .word	mus_dd_drill_missile_4_000
	.byte		FINE

@**************** Track 5 ****************@

mus_dd_drill_missile_5:
	.byte		KEYSH , mus_dd_drill_missile_key+0
	.byte		VOICE , 1
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 71*mus_dd_drill_missile_mvl/mxv
	.byte		PAN   , c_v-30
	.byte	W96
	.byte	W92
	.byte	W01
	.byte		VOL   , 50*mus_dd_drill_missile_mvl/mxv
	.byte	W03
mus_dd_drill_missile_5_000:
	.byte		VOICE , 1
	.byte		PAN   , c_v-32
	.byte		VOL   , 46*mus_dd_drill_missile_mvl/mxv
	.byte		N03   , Gn3 , v112
	.byte	W03
	.byte		N06   , Gn3 , v060
	.byte	W09
	.byte		        As4 , v112
	.byte	W06
	.byte		N03   , Gn3
	.byte	W03
	.byte		N06   , Gn3 , v060
	.byte	W09
	.byte		        As4 , v112
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
	.byte		N06   , Gn3 , v060
	.byte	W09
	.byte		N03   , An4 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Gn3
	.byte	W03
	.byte		N06   , Gn3 , v060
	.byte	W09
	.byte		        Dn5 , v112
	.byte	W06
	.byte		N03   , Gn3
	.byte	W03
	.byte		N06   , Gn3 , v060
	.byte	W09
	.byte		        Dn5 , v112
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
	.byte		N06   , Gn3 , v060
	.byte	W09
	.byte		N03   , Cn5 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Gn3
	.byte	W03
	.byte		N06   , Gn3 , v060
	.byte	W09
	.byte		        As4 , v112
	.byte	W06
	.byte		N03   , Gn3
	.byte	W03
	.byte		N06   , Gn3 , v060
	.byte	W09
	.byte		        As4 , v112
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
	.byte		N06   , Gn3 , v060
	.byte	W09
	.byte		N03   , An4 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Gn3
	.byte	W03
	.byte		N06   , Gn3 , v060
	.byte	W09
	.byte		        Dn5 , v112
	.byte	W06
	.byte		N03   , Gn3
	.byte	W03
	.byte		N06   , Gn3 , v060
	.byte	W09
	.byte		        Dn5 , v112
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
	.byte		        Gn3 , v060
	.byte	W09
	.byte		N06   , Ds5 , v112
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_dd_drill_missile_5_000
	.byte		FINE

@**************** Track 6 ****************@

mus_dd_drill_missile_6:
	.byte		KEYSH , mus_dd_drill_missile_key+0
	.byte		VOICE , 80
	.byte		LFOS  , 56
	.byte		XCMD  , 8 , 18
	.byte		        8
	.byte		        16
	.byte		BENDR , 12
	.byte		VOL   , 40*mus_dd_drill_missile_mvl/mxv
	.byte		PAN   , c_v-61
	.byte		N03   , Gn3 , v112
	.byte	W06
	.byte		N06
	.byte	W30
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W54
mus_dd_drill_missile_6_000:
	.byte		N03   , Gn3 , v112
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
	.byte		PEND
mus_dd_drill_missile_6_001:
	.byte	W12
	.byte		N06   , Ds3 , v112
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
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_drill_missile_6_001
	.byte	PATT
	 .word	mus_dd_drill_missile_6_001
	.byte	W12
	.byte		N06   , Ds3 , v112
	.byte	W18
	.byte		N06
	.byte	W18
	.byte		N15
	.byte	W18
	.byte		N06   , Fn3
	.byte	W18
	.byte		        Gn3
	.byte	W12
	.byte	PATT
	 .word	mus_dd_drill_missile_6_001
	.byte	W12
	.byte		N06   , Fn3 , v112
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
	.byte		VOICE , 80
	.byte		VOL   , 40*mus_dd_drill_missile_mvl/mxv
	.byte		N06   , Cn3
	.byte	W06
	.byte		        Cn3 , v064
	.byte	W06
	.byte		N03   , Cn4 , v112
	.byte	W06
	.byte		        Cn4 , v064
	.byte	W06
	.byte		N06   , Cn3 , v112
	.byte	W06
	.byte		N03   , Cn4
	.byte	W06
	.byte		        Cn4 , v064
	.byte	W06
	.byte		        Cn3 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Cn4
	.byte	W06
	.byte		        Cn4 , v064
	.byte	W06
	.byte		N06   , Cn3 , v112
	.byte	W06
	.byte		N03   , Cn4
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		N06   , Cn3
	.byte	W06
	.byte		N03   , Cn4
	.byte	W06
	.byte		N06   , Cn3
	.byte	W06
	.byte		        Cn3 , v064
	.byte	W06
	.byte		N03   , Cn4 , v112
	.byte	W06
	.byte		        Cn4 , v064
	.byte	W06
	.byte		N06   , Cn3 , v112
	.byte	W06
	.byte		N03   , Cn4
	.byte	W06
	.byte		        Cn4 , v064
	.byte	W06
	.byte		        Cn3 , v112
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
	.byte		N06   , As2
	.byte	W06
	.byte		        As2 , v064
	.byte	W06
	.byte		N03   , As3 , v112
	.byte	W06
	.byte		        As3 , v064
	.byte	W06
	.byte		N06   , As2 , v112
	.byte	W06
	.byte		N03   , As3
	.byte	W06
	.byte		        As3 , v064
	.byte	W06
	.byte		        As2 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , As3
	.byte	W06
	.byte		        As3 , v064
	.byte	W06
	.byte		N06   , As2 , v112
	.byte	W06
	.byte		N03   , As3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		N06   , As2
	.byte	W06
	.byte		N03   , As3
	.byte	W06
	.byte		N06   , En3
	.byte	W06
	.byte		        En3 , v064
	.byte	W06
	.byte		N03   , Gn4 , v112
	.byte	W06
	.byte		        Gn4 , v064
	.byte	W06
	.byte		N06   , En3 , v112
	.byte	W06
	.byte		N03   , Gn4
	.byte	W06
	.byte		        Gn4 , v064
	.byte	W06
	.byte		        En3 , v112
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
	.byte		N06   , Cn3
	.byte	W06
	.byte		        Cn3 , v064
	.byte	W06
	.byte		N03   , Cn4 , v112
	.byte	W06
	.byte		        Cn4 , v064
	.byte	W06
	.byte		N06   , Cn3 , v112
	.byte	W06
	.byte		N03   , Cn4
	.byte	W06
	.byte		        Cn4 , v064
	.byte	W06
	.byte		        Cn3 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Cn4
	.byte	W06
	.byte		        Cn4 , v116
	.byte	W06
	.byte		N06   , Cn3 , v112
	.byte	W06
	.byte		N03   , Cn4
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		N06   , Cn3
	.byte	W06
	.byte		N03   , Cn4
	.byte	W06
	.byte		N06   , Fn2
	.byte	W06
	.byte		        Fn2 , v064
	.byte	W06
	.byte		N03   , Fn3 , v112
	.byte	W06
	.byte		        Fn3 , v064
	.byte	W06
	.byte		N06   , Fn2 , v112
	.byte	W06
	.byte		N03   , Fn3
	.byte	W06
	.byte		        Fn3 , v064
	.byte	W06
	.byte		        Fn2 , v112
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
	.byte		N06   , Gn2
	.byte	W06
	.byte		        Gn2 , v064
	.byte	W06
	.byte		N03   , Bn3 , v112
	.byte	W06
	.byte		        Bn3 , v064
	.byte	W06
	.byte		N06   , Gn2 , v112
	.byte	W06
	.byte		N03   , Bn3
	.byte	W06
	.byte		        Bn3 , v064
	.byte	W06
	.byte		        Gn2 , v112
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
	.byte		VOL   , 40*mus_dd_drill_missile_mvl/mxv
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
mus_dd_drill_missile_6_002:
	.byte		N06   , An2 , v112
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
	.byte		PEND
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
	.byte	PATT
	 .word	mus_dd_drill_missile_6_002
	.byte		N06   , Bn2 , v112
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
	.byte		N03   , Gn3
	.byte	W06
	.byte		N06
	.byte	W30
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W54
	.byte	PATT
	 .word	mus_dd_drill_missile_6_000
	.byte	GOTO
	 .word	mus_dd_drill_missile_6_001
	.byte		FINE

@**************** Track 7 ****************@

mus_dd_drill_missile_7:
	.byte		KEYSH , mus_dd_drill_missile_key+0
	.byte		VOICE , 87
	.byte		LFOS  , 49
	.byte		XCMD  , 8 , 18
	.byte		        8
	.byte		        16
	.byte		BENDR , 12
	.byte		VOL   , 40*mus_dd_drill_missile_mvl/mxv
	.byte		PAN   , c_v+63
	.byte		N03   , Dn4 , v112
	.byte	W06
	.byte		N06
	.byte	W30
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W54
mus_dd_drill_missile_7_000:
	.byte		N03   , Dn4 , v112
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
	.byte		PEND
mus_dd_drill_missile_7_001:
	.byte	W12
	.byte		N06   , Gn3 , v112
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
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_drill_missile_7_001
	.byte	PATT
	 .word	mus_dd_drill_missile_7_001
	.byte	W12
	.byte		N06   , Gn3 , v112
	.byte	W18
	.byte		N06
	.byte	W18
	.byte		N15
	.byte	W18
	.byte		N06   , As3
	.byte	W18
	.byte		        Cn4
	.byte	W12
	.byte	PATT
	 .word	mus_dd_drill_missile_7_001
	.byte	W12
	.byte		N06   , An3 , v112
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
	.byte		VOICE , 86
	.byte		VOL   , 40*mus_dd_drill_missile_mvl/mxv
	.byte		N06   , Gs3
	.byte	W06
	.byte		        Gs3 , v064
	.byte	W06
	.byte		N03   , Gn4 , v112
	.byte	W06
	.byte		        Gn4 , v064
	.byte	W06
	.byte		N06   , Gs3 , v112
	.byte	W06
	.byte		N03   , Gn4
	.byte	W06
	.byte		        Gn4 , v064
	.byte	W06
	.byte		        Gs3 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Gn4
	.byte	W06
	.byte		        Gn4 , v064
	.byte	W06
	.byte		N06   , Gs3 , v112
	.byte	W06
	.byte		N03   , Gn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		N06   , Gs3
	.byte	W06
	.byte		N03   , Gn4
	.byte	W06
	.byte		N06   , Gs3
	.byte	W06
	.byte		        Gs3 , v064
	.byte	W06
	.byte		N03   , Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v064
	.byte	W06
	.byte		N06   , Gs3 , v112
	.byte	W06
	.byte		N03   , Fn4
	.byte	W06
	.byte		        Fn4 , v064
	.byte	W06
	.byte		        Gs3 , v112
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
	.byte		N06   , Gn3
	.byte	W06
	.byte		        Gn3 , v064
	.byte	W06
	.byte		N03   , Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v064
	.byte	W06
	.byte		N06   , Gn3 , v112
	.byte	W06
	.byte		N03   , Fn4
	.byte	W06
	.byte		        Fn4 , v064
	.byte	W06
	.byte		        Gn3 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Fn4
	.byte	W06
	.byte		        Fn4 , v064
	.byte	W06
	.byte		N06   , Gn3 , v112
	.byte	W06
	.byte		N03   , Fn4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		N06   , Gn3
	.byte	W06
	.byte		N03   , Fn4
	.byte	W06
	.byte		N06   , Cn4
	.byte	W06
	.byte		        Cn4 , v064
	.byte	W06
	.byte		N03   , As4 , v112
	.byte	W06
	.byte		        As4 , v064
	.byte	W06
	.byte		N06   , Cn4 , v112
	.byte	W06
	.byte		N03   , As4
	.byte	W06
	.byte		        As4 , v064
	.byte	W06
	.byte		        Cn4 , v112
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
	.byte		N06   , Gs3
	.byte	W06
	.byte		        Gs3 , v064
	.byte	W06
	.byte		N03   , Gn4 , v112
	.byte	W06
	.byte		        Gn4 , v064
	.byte	W06
	.byte		N06   , Gs3 , v112
	.byte	W06
	.byte		N03   , Gn4
	.byte	W06
	.byte		        Gn4 , v064
	.byte	W06
	.byte		        Gs3 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Gn4
	.byte	W06
	.byte		        Gn4 , v116
	.byte	W06
	.byte		N06   , Gs3 , v112
	.byte	W06
	.byte		N03   , Gn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		N06   , Gs3
	.byte	W06
	.byte		N03   , Gn4
	.byte	W06
	.byte		N06   , Cn3
	.byte	W06
	.byte		        Cn3 , v064
	.byte	W06
	.byte		N03   , Cn4 , v112
	.byte	W06
	.byte		        Cn4 , v064
	.byte	W06
	.byte		N06   , Cn3 , v112
	.byte	W06
	.byte		N03   , Cn4
	.byte	W06
	.byte		        Cn4 , v064
	.byte	W06
	.byte		        Cn3 , v112
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
	.byte		N06   , Dn3
	.byte	W06
	.byte		        Dn3 , v064
	.byte	W06
	.byte		N03   , Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v064
	.byte	W06
	.byte		N06   , Dn3 , v112
	.byte	W06
	.byte		N03   , Fn4
	.byte	W06
	.byte		        Fn4 , v064
	.byte	W06
	.byte		        Dn3 , v112
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
	.byte		VOL   , 40*mus_dd_drill_missile_mvl/mxv
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
mus_dd_drill_missile_7_002:
	.byte		N06   , An3 , v112
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
	.byte		PEND
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
	.byte	PATT
	 .word	mus_dd_drill_missile_7_002
	.byte		N06   , Bn3 , v112
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
	.byte		N03   , Dn4
	.byte	W06
	.byte		N06
	.byte	W30
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W54
	.byte	PATT
	 .word	mus_dd_drill_missile_7_000
	.byte	GOTO
	 .word	mus_dd_drill_missile_7_001
	.byte		FINE

@**************** Track 8 ****************@

mus_dd_drill_missile_8:
	.byte		KEYSH , mus_dd_drill_missile_key+0
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 67*mus_dd_drill_missile_mvl/mxv
	.byte		N06   , En1 , v112
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
mus_dd_drill_missile_8_000:
	.byte		N06   , En1 , v112
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
	.byte		PEND
mus_dd_drill_missile_8_001:
	.byte		N06   , Cn1 , v112
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
	.byte		        Dn1 , v108
	.byte	W06
	.byte		        Bn1 , v112
	.byte	W06
	.byte		        Gn1
	.byte	W06
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
mus_dd_drill_missile_8_002:
	.byte		N06   , Cn1 , v112
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
	.byte		PEND
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
	.byte	PATT
	 .word	mus_dd_drill_missile_8_002
	.byte		N06   , Dn1 , v112
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
mus_dd_drill_missile_8_003:
	.byte		N06   , Cn1 , v112
	.byte	W06
	.byte		N03   , Dn1 , v068
	.byte	W03
	.byte		        Dn1 , v064
	.byte	W03
	.byte		N06   , Dn1 , v112
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
	.byte		N03   , Dn1 , v068
	.byte	W03
	.byte		        Dn1 , v064
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W03
	.byte		        Dn1 , v064
	.byte	W03
	.byte		N06   , Dn1 , v112
	.byte	W06
	.byte		        Cn1
	.byte	W06
	.byte		        Dn1
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		PEND
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
	.byte	PATT
	 .word	mus_dd_drill_missile_8_003
	.byte		N06   , Cn1 , v112
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
	.byte		N06
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W06
	.byte		N03   , Dn1 , v040
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v064
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W06
	.byte		N03   , Dn1 , v068
	.byte	W03
	.byte		        Dn1 , v064
	.byte	W03
	.byte		N06   , Dn1 , v088
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W12
	.byte		        En1 , v096
	.byte	W06
	.byte		        Fn1 , v112
	.byte	W06
	.byte		        Cn1
	.byte	W12
	.byte		        Dn1 , v060
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W06
	.byte		N03   , Dn1 , v040
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v080
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W06
	.byte		N03   , Dn1 , v068
	.byte	W03
	.byte		        Dn1 , v064
	.byte	W03
	.byte		N06   , Dn1 , v092
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W12
	.byte		        En1 , v096
	.byte	W06
	.byte		        Cn1 , v112
	.byte		N06   , Fn1
	.byte	W06
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
	.byte	PATT
	 .word	mus_dd_drill_missile_8_000
	.byte	GOTO
	 .word	mus_dd_drill_missile_8_001
	.byte		FINE

@**************** Track 9 ****************@

mus_dd_drill_missile_9:
	.byte		KEYSH , mus_dd_drill_missile_key+0
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		XCMD  , 8 , 18
	.byte		        8
	.byte		        16
	.byte		VOL   , 40*mus_dd_drill_missile_mvl/mxv
	.byte		N03   , Cn5 , v064
	.byte	W06
	.byte		N06   , Cn5 , v080
	.byte	W18
	.byte		N03   , Cn5 , v060
	.byte	W12
	.byte		N02   , Cn5 , v112
	.byte	W06
	.byte		N06   , Cn5 , v080
	.byte	W06
	.byte		N03   , Cn5 , v060
	.byte	W24
	.byte		        Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N12   , Fn5 , v080
	.byte	W12
	.byte		N03   , Cn5 , v064
	.byte	W06
	.byte		N06   , Cn5 , v112
	.byte	W18
	.byte		N03   , Cn5 , v060
	.byte	W12
	.byte		N02   , Cn5 , v112
	.byte	W06
	.byte		N06   , Cn5 , v080
	.byte	W06
	.byte		N01   , Cn5 , v060
	.byte	W06
	.byte		N06   , Dn5 , v048
	.byte	W12
	.byte		        Dn5 , v060
	.byte	W12
	.byte		        Dn5 , v068
	.byte	W12
	.byte		        Fn5 , v072
	.byte	W06
mus_dd_drill_missile_9_000:
	.byte		N01   , Fn5 , v092
	.byte	W06
	.byte		        Fn5 , v060
	.byte	W06
	.byte		        Fn5 , v080
	.byte	W06
	.byte		        Fn5 , v060
	.byte	W06
	.byte		N04   , Fn5 , v076
	.byte	W06
	.byte		N01   , Fn5 , v096
	.byte	W06
	.byte		        Fn5 , v080
	.byte	W06
	.byte		        Fn5 , v060
	.byte	W06
	.byte		        Fn5 , v064
	.byte	W03
	.byte		        Fn5 , v100
	.byte	W03
	.byte		        Fn5 , v060
	.byte	W06
	.byte		        Fn5 , v080
	.byte	W06
	.byte		        Fn5 , v060
	.byte	W06
	.byte		N04   , Fn5 , v076
	.byte	W06
	.byte		N01   , Fn5 , v096
	.byte	W06
	.byte		        Fn5 , v080
	.byte	W06
	.byte		        Fn5 , v060
	.byte	W06
mus_dd_drill_missile_9_001:
	.byte		N01   , Fn5 , v092
	.byte	W06
	.byte		        Fn5 , v060
	.byte	W06
	.byte		        Fn5 , v080
	.byte	W06
	.byte		        Fn5 , v060
	.byte	W06
	.byte		N04   , Fn5 , v076
	.byte	W06
	.byte		N01   , Fn5 , v096
	.byte	W06
	.byte		        Fn5 , v080
	.byte	W06
	.byte		        Fn5 , v060
	.byte	W06
	.byte		        Fn5 , v064
	.byte	W03
	.byte		        Fn5 , v112
	.byte	W03
	.byte		        Fn5 , v060
	.byte	W06
	.byte		        Fn5 , v080
	.byte	W06
	.byte		        Fn5 , v060
	.byte	W06
	.byte		N04   , Fn5 , v076
	.byte	W06
	.byte		N01   , Fn5 , v096
	.byte	W06
	.byte		        Fn5 , v080
	.byte	W06
	.byte		        Fn5 , v060
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_drill_missile_9_001
	.byte		N01   , Fn5 , v092
	.byte	W06
	.byte		        Fn5 , v060
	.byte	W06
	.byte		        Fn5 , v080
	.byte	W06
	.byte		        Fn5 , v060
	.byte	W06
	.byte		N04   , Fn5 , v076
	.byte	W06
	.byte		N01   , Fn5 , v096
	.byte	W06
	.byte		        Fn5 , v080
	.byte	W06
	.byte		        Fn5 , v060
	.byte	W06
	.byte		        Fn5 , v064
	.byte	W06
	.byte		        Fn5 , v060
	.byte	W06
	.byte		        Fn5 , v080
	.byte	W06
	.byte		        Fn5 , v060
	.byte	W06
	.byte		N04   , Fn5 , v076
	.byte	W06
	.byte		N01   , Fn5 , v096
	.byte	W06
	.byte		        Fn5 , v080
	.byte	W06
	.byte		        Fn5 , v060
	.byte	W06
	.byte	PATT
	 .word	mus_dd_drill_missile_9_001
	.byte	PATT
	 .word	mus_dd_drill_missile_9_001
	.byte	PATT
	 .word	mus_dd_drill_missile_9_001
	.byte		N01   , Cn5 , v076
	.byte	W06
	.byte		N12   , Gn5
	.byte	W12
	.byte		N01   , Cn5 , v112
	.byte	W06
	.byte		N12   , Gn5 , v080
	.byte	W12
	.byte		N01   , Cn5 , v112
	.byte	W06
	.byte		N02   , Gn5 , v080
	.byte	W06
	.byte		N03   , Cn5 , v112
	.byte	W06
	.byte		N04   , Cn5 , v096
	.byte	W06
	.byte		N01   , Cn5 , v084
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		        Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		N03   , Cn5 , v112
	.byte	W06
	.byte		N06   , Fs5
	.byte	W06
mus_dd_drill_missile_9_002:
	.byte		N01   , Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		N04   , Cn5 , v076
	.byte	W06
	.byte		N01   , Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W03
	.byte		        Cn5 , v112
	.byte	W03
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		N04   , Cn5 , v076
	.byte	W06
	.byte		N01   , Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_drill_missile_9_002
	.byte	PATT
	 .word	mus_dd_drill_missile_9_002
	.byte		N01   , Cn5 , v088
	.byte	W06
	.byte		N12   , Gn5 , v076
	.byte	W12
	.byte		N02   , Cn5 , v096
	.byte	W06
	.byte		N12   , Gn5 , v072
	.byte	W12
	.byte		N01   , Cn5 , v112
	.byte	W04
	.byte		        Cn5 , v092
	.byte	W08
	.byte		N12   , Gn5 , v072
	.byte	W12
	.byte		N01   , Cn5 , v096
	.byte	W04
	.byte		N02
	.byte	W08
	.byte		N01   , Cs5 , v092
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N12   , Gn5 , v080
	.byte	W12
	.byte		VOL   , 40*mus_dd_drill_missile_mvl/mxv
	.byte		N02   , Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W03
	.byte		        Cn5 , v072
	.byte	W03
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v072
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N05   , Cn5 , v092
	.byte	W06
	.byte		N02   , Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
mus_dd_drill_missile_9_003:
	.byte		N02   , Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		PEND
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		N11   , Cn5 , v080
	.byte	W12
	.byte	PATT
	 .word	mus_dd_drill_missile_9_003
	.byte	PATT
	 .word	mus_dd_drill_missile_9_003
	.byte	PATT
	 .word	mus_dd_drill_missile_9_003
	.byte	W96
mus_dd_drill_missile_9_004:
	.byte		N03   , Cn5 , v100
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W06
	.byte		N12   , Gn5 , v056
	.byte	W12
	.byte		N03   , Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W06
	.byte		N12   , Gn5 , v056
	.byte	W12
	.byte		N03   , Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W06
	.byte		N12   , Gn5 , v056
	.byte	W12
	.byte		N03   , Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W06
	.byte		N12   , Gn5 , v056
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_drill_missile_9_004
	.byte	PATT
	 .word	mus_dd_drill_missile_9_004
	.byte	PATT
	 .word	mus_dd_drill_missile_9_004
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_dd_drill_missile_9_000
	.byte		FINE

@**************** Track 10 ****************@

mus_dd_drill_missile_10:
	.byte		KEYSH , mus_dd_drill_missile_key+0
	.byte		VOICE , 98
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 76*mus_dd_drill_missile_mvl/mxv
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
mus_dd_drill_missile_10_000:
	.byte		VOICE , 99
	.byte		N12   , Cn2 , v127
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
	.byte		VOL   , 50*mus_dd_drill_missile_mvl/mxv
	.byte	W12
	.byte		N03   , As2 , v112
	.byte	W03
	.byte		        Bn2
	.byte	W03
	.byte		        Cn3
	.byte	W03
	.byte		        Dn3
	.byte	W03
	.byte		VOL   , 50*mus_dd_drill_missile_mvl/mxv
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
	.byte		VOL   , 40*mus_dd_drill_missile_mvl/mxv
	.byte	W03
	.byte		N06   , Gs4
	.byte	W06
	.byte		VOL   , 40*mus_dd_drill_missile_mvl/mxv
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
	.byte		N96   , As4
	.byte	W96
	.byte		BEND  , c_v+0
	.byte		N03   , Gn2 , v127
	.byte	W06
	.byte		N06   , Gn1
	.byte	W30
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W54
	.byte	W96
	.byte	W48
	.byte		VOICE , 83
	.byte	W24
	.byte		N03   , Cn2 , v112
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
	.byte		VOL   , 40*mus_dd_drill_missile_mvl/mxv
	.byte		N03   , Gn2 , v127
	.byte	W06
	.byte		N06   , Gn1
	.byte	W30
	.byte		N03   , Gn2
	.byte	W06
	.byte		N06   , Gn1
	.byte	W54
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
	.byte	GOTO
	 .word	mus_dd_drill_missile_10_000
	.byte		FINE

@******************************************************@
	.align	2

mus_dd_drill_missile:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_dd_drill_missile_pri	@ Priority
	.byte	mus_dd_drill_missile_rev	@ Reverb.

	.word	mus_dd_drill_missile_grp

	.word	mus_dd_drill_missile_1
	.word	mus_dd_drill_missile_2
	.word	mus_dd_drill_missile_3
	.word	mus_dd_drill_missile_4
	.word	mus_dd_drill_missile_5
	.word	mus_dd_drill_missile_6
	.word	mus_dd_drill_missile_7
	.word	mus_dd_drill_missile_8
	.word	mus_dd_drill_missile_9
	.word	mus_dd_drill_missile_10

	.end
