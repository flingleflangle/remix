	.include "MPlayDef.s"

	.equ	mus_dd_3rd_gear_grp, voicegroup_dd_3rd_gear
	.equ	mus_dd_3rd_gear_pri, 0
	.equ	mus_dd_3rd_gear_rev, 0x9e
	.equ	mus_dd_3rd_gear_mvl, 127
	.equ	mus_dd_3rd_gear_key, 0
	.equ	mus_dd_3rd_gear_tbs, 1
	.equ	mus_dd_3rd_gear_exg, 0
	.equ	mus_dd_3rd_gear_cmp, 1

	.section .rodata
	.global	mus_dd_3rd_gear
	.align	2

@**************** Track 1 ****************@

mus_dd_3rd_gear_1:
	.byte		KEYSH , mus_dd_3rd_gear_key+0
	.byte		TEMPO , 132*mus_dd_3rd_gear_tbs/2
	.byte		VOICE , 24
	.byte		PAN   , c_v-16
	.byte		VOL   , 42*mus_dd_3rd_gear_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Gs5 , v112
	.byte	W03
	.byte		        Gs5 , v048
	.byte	W03
	.byte		        Cs5 , v112
	.byte	W03
	.byte		        Cs5 , v048
	.byte	W03
	.byte		        Ds5 , v112
	.byte	W03
	.byte		        Ds5 , v048
	.byte	W03
	.byte		        Gs4 , v112
	.byte	W03
	.byte		        Gs4 , v048
	.byte	W03
	.byte		TEMPO , 150*mus_dd_3rd_gear_tbs/2
	.byte		VOL   , 52*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , Gs5 , v112
	.byte	W03
	.byte		        Gs5 , v048
	.byte	W03
	.byte		        Cs5 , v112
	.byte	W03
	.byte		        Cs5 , v048
	.byte	W03
	.byte		        Ds5 , v112
	.byte	W03
	.byte		        Ds5 , v048
	.byte	W03
	.byte		        Gs4 , v112
	.byte	W03
	.byte		        Gs4 , v048
	.byte	W03
	.byte		TEMPO , 176*mus_dd_3rd_gear_tbs/2
	.byte		VOL   , 63*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , Gs5 , v112
	.byte	W03
	.byte		        Gs5 , v048
	.byte	W03
	.byte		        Cs5 , v112
	.byte	W03
	.byte		        Cs5 , v048
	.byte	W03
	.byte		        Ds5 , v112
	.byte	W03
	.byte		        Ds5 , v048
	.byte	W03
	.byte		        Gs4 , v112
	.byte	W03
	.byte		        Gs4 , v048
	.byte	W03
	.byte		TEMPO , 182*mus_dd_3rd_gear_tbs/2
	.byte		VOL   , 84*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , Gs5 , v112
	.byte	W03
	.byte		        Gs5 , v048
	.byte	W03
	.byte		        Cs5 , v112
	.byte	W03
	.byte		        Cs5 , v048
	.byte	W03
	.byte		BENDR , 44
	.byte		N03   , Ds5 , v112
	.byte	W03
	.byte		        Ds5 , v048
	.byte	W03
	.byte		        Gs4 , v112
	.byte	W03
	.byte		        Gs4 , v048
	.byte	W03
	.byte		TEMPO , 184*mus_dd_3rd_gear_tbs/2
	.byte		PAN   , c_v+0
	.byte	W96
mus_dd_3rd_gear_1_000:
	.byte		VOICE , 30
	.byte		VOL   , 84*mus_dd_3rd_gear_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		        63*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v+18
	.byte		N06   , An2 , v112
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N18   , Bn2
	.byte	W12
	.byte		MOD   , 3
	.byte	W09
	.byte		        0
	.byte	W03
	.byte		N06
	.byte	W12
	.byte		N24   , Fs2
	.byte	W12
	.byte		MOD   , 3
	.byte	W12
	.byte		VOL   , 84*mus_dd_3rd_gear_mvl/mxv
	.byte		MOD   , 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 17
	.byte		VOL   , 41*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-19
	.byte		N06   , Fs4
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N21   , Gs4
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		        0
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Ds4
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        An4
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N18   , En5
	.byte	W09
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte	W03
	.byte		N12
	.byte	W12
	.byte		N24   , Ds5
	.byte	W24
	.byte		VOL   , 41*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-44
	.byte		N12   , Cs5
	.byte	W12
	.byte		N06   , Ds5
	.byte	W12
	.byte		        Fn5
	.byte	W12
	.byte		        Cs5
	.byte	W12
	.byte		N12   , Ds5
	.byte	W12
	.byte		N06   , Fn5
	.byte	W12
	.byte		        Cs5
	.byte	W12
	.byte		        Ds5
	.byte	W12
	.byte		N12   , Fn5
	.byte	W12
	.byte		N06   , En5
	.byte	W06
	.byte		        Fn5
	.byte	W18
	.byte		        Cs5
	.byte	W24
	.byte		        Ds5
	.byte	W24
	.byte		        Fn5
	.byte	W06
	.byte		        Fs5
	.byte	W06
	.byte		N36   , Gs5
	.byte	W36
	.byte		N06   , Fs5
	.byte	W06
	.byte		        Ds5
	.byte	W06
	.byte		N36   , Fn5
	.byte	W36
	.byte	W03
	.byte		VOICE , 56
	.byte	W03
	.byte		VOL   , 74*mus_dd_3rd_gear_mvl/mxv
	.byte		N03
	.byte	W03
	.byte		        Ds5
	.byte	W03
	.byte		VOL   , 76*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v+18
	.byte		N06   , Cs5 , v124
	.byte	W06
	.byte		        Cs5 , v064
	.byte	W06
	.byte		        Cs5 , v124
	.byte	W06
	.byte		N12   , Cs5 , v064
	.byte	W18
	.byte		N06   , Ds5 , v124
	.byte	W06
	.byte		N12   , Ds5 , v064
	.byte	W18
	.byte		N21   , Fn5 , v124
	.byte	W21
	.byte		N03   , Ds5 , v112
	.byte	W03
	.byte		        Cs5
	.byte	W03
	.byte		        Cn5
	.byte	W03
	.byte		VOICE , 17
	.byte		VOL   , 41*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , Fn5
	.byte	W03
	.byte		        Ds5
	.byte	W03
	.byte		PAN   , c_v-30
	.byte		N12   , Cs5
	.byte	W12
	.byte		N06   , Ds5
	.byte	W12
	.byte		        Fn5
	.byte	W12
	.byte		        Cs5
	.byte	W12
	.byte		N12   , Ds5
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte		N06   , Fn5
	.byte	W12
	.byte		        Cs5
	.byte	W12
	.byte		        Ds5
	.byte	W12
	.byte		        Fn5
	.byte	W12
	.byte		        En5
	.byte	W06
	.byte		N18   , Fn5
	.byte	W06
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N06   , Cs5
	.byte	W24
	.byte		        Ds5
	.byte	W24
	.byte		        Fn5
	.byte	W06
	.byte		        Fs5
	.byte	W06
	.byte		N36   , Gs5
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N06   , Ds5
	.byte	W06
	.byte		        Gs5
	.byte	W06
	.byte		N24   , Cn6
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , Ds6
	.byte	W12
	.byte		        Cn6
	.byte	W12
	.byte		N06   , As5
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        Cn6
	.byte	W24
	.byte		N24   , Dn6
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		PAN   , c_v-32
	.byte		MOD   , 0
	.byte		N03   , As5
	.byte	W03
	.byte		        Fn5
	.byte	W03
	.byte		        Dn5
	.byte	W03
	.byte		        As4
	.byte	W03
	.byte		VOL   , 42*mus_dd_3rd_gear_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 24
	.byte		PAN   , c_v-64
	.byte		VOL   , 55*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , Cs4
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
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , Cs4
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
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Cs4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , Cn5
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
	.byte		        Cs4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Cs4
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
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , Cs4
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
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		        Cn5
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , Ds5
	.byte	W06
	.byte		        Fn5
	.byte	W06
	.byte		        Ds5
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Cs4
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
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , Cs4
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
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Cs4
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
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , Fs5
	.byte	W06
	.byte		        Gs5
	.byte	W06
	.byte		        Fs5
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Cs4
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
	.byte		        An4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , En5
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Ds4
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        Ds5
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , Fs5
	.byte	W06
	.byte		        Ds5
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        Ds5
	.byte	W06
	.byte		VOL   , 54*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		N03   , Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N03   , Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
mus_dd_3rd_gear_1_001:
	.byte		PAN   , c_v-64
	.byte		N03   , Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N03   , Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_3rd_gear_1_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_1_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_1_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_1_001
	.byte		PAN   , c_v-64
	.byte		N06   , En4 , v080
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		        En5
	.byte	W06
	.byte		        Fs5
	.byte	W06
	.byte		        An5
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Cs6
	.byte	W06
	.byte		        An5
	.byte	W06
	.byte		        Fs5
	.byte	W06
	.byte		        En5
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		VOL   , 63*mus_dd_3rd_gear_mvl/mxv
	.byte		N06   , Fs4
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte		        Ds5
	.byte	W06
	.byte		        Fs5
	.byte	W06
	.byte		        Gs5
	.byte	W06
	.byte		        An5
	.byte	W06
	.byte		        Bn5
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Ds6
	.byte	W06
	.byte		        Bn5
	.byte	W06
	.byte		        Fs5
	.byte	W06
	.byte		        Ds5
	.byte	W06
	.byte		        Fs5
	.byte	W06
	.byte		        Ds5
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		        Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		        Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		        Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		        Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		        Gs5 , v084
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v080
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v084
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v084
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		VOL   , 74*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , Gs5 , v096
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v096
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v092
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v088
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		VOL   , 84*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , Gs5 , v100
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v096
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v104
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v096
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte	GOTO
	 .word	mus_dd_3rd_gear_1_000
	.byte		FINE

@**************** Track 2 ****************@

mus_dd_3rd_gear_2:
	.byte		KEYSH , mus_dd_3rd_gear_key+0
	.byte		VOICE , 57
	.byte		LFOS  , 62
	.byte	W96
	.byte		VOL   , 84*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N09   , Cs4 , v124
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N10   , Cs4 , v056
	.byte	W12
	.byte		N06   , Gs3 , v124
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		N06   , Cs4
	.byte	W12
	.byte		N03   , Gs3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Cs4
	.byte	W12
	.byte		N03   , Gs3
	.byte	W06
	.byte		N03
	.byte	W06
mus_dd_3rd_gear_2_000:
	.byte		VOICE , 48
	.byte		PAN   , c_v+0
	.byte		VOL   , 76*mus_dd_3rd_gear_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , Gs3 , v124
	.byte	W12
	.byte		        Fn3
	.byte	W12
	.byte		N09   , Fs3 , v116
	.byte	W12
	.byte		N12   , Gn3
	.byte	W12
	.byte		N09   , Gs3
	.byte	W12
	.byte		N06   , Ds4
	.byte	W06
	.byte		N12   , Ds4 , v056
	.byte	W18
	.byte		N36   , Cs4 , v116
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 74*mus_dd_3rd_gear_mvl/mxv
	.byte	W06
	.byte		        63*mus_dd_3rd_gear_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 76*mus_dd_3rd_gear_mvl/mxv
	.byte	W06
	.byte		N03   , Cs4 , v096
	.byte	W03
	.byte		        Ds4
	.byte	W03
	.byte		N18   , Fn4 , v104
	.byte	W18
	.byte		N06   , Fn4 , v056
	.byte	W06
	.byte		N12   , Fs4 , v116
	.byte	W12
	.byte		        Fs4 , v060
	.byte	W12
	.byte		        Fn4 , v116
	.byte	W12
	.byte		        Gs4
	.byte	W12
	.byte		N06   , Gs4 , v064
	.byte	W06
	.byte		N09   , Fs4 , v116
	.byte	W09
	.byte		        Fs4 , v064
	.byte	W09
	.byte		N06   , Fn4 , v116
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		N48   , Cs4
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		VOL   , 74*mus_dd_3rd_gear_mvl/mxv
	.byte	W06
	.byte		        63*mus_dd_3rd_gear_mvl/mxv
	.byte	W06
	.byte		        52*mus_dd_3rd_gear_mvl/mxv
	.byte	W06
	.byte		        42*mus_dd_3rd_gear_mvl/mxv
	.byte	W06
	.byte		VOICE , 24
	.byte		VOL   , 84*mus_dd_3rd_gear_mvl/mxv
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte	W96
	.byte		PAN   , c_v+13
	.byte		N12   , Gs4 , v112
	.byte	W12
	.byte		N06   , As3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cs4 , v127
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		N12   , Gs4
	.byte	W12
	.byte		N09   , Fn4
	.byte	W09
	.byte		N03   , Dn5 , v088
	.byte	W03
	.byte		N12   , Ds5 , v112
	.byte	W12
	.byte		N36   , Cs5 , v127
	.byte	W12
	.byte		MOD   , 5
	.byte	W24
	.byte		        0
	.byte	W06
	.byte		N03   , Cs5 , v104
	.byte	W03
	.byte		        Ds5
	.byte	W03
	.byte		N24   , Fn5 , v116
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N12   , Fs5 , v112
	.byte	W12
	.byte		        Fs5 , v064
	.byte	W12
	.byte		        Fn5 , v112
	.byte	W12
	.byte		N36   , Cs5 , v127
	.byte	W12
	.byte		MOD   , 5
	.byte	W24
	.byte		        0
	.byte		N24   , As4
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N12   , Cs5
	.byte	W12
	.byte		        Fs5
	.byte	W12
	.byte		        As5 , v112
	.byte	W06
	.byte		MOD   , 7
	.byte	W06
	.byte		        0
	.byte	W96
	.byte	W96
	.byte		PAN   , c_v+29
	.byte		N06   , Fn4 , v120
	.byte	W06
	.byte		        Fn4 , v064
	.byte	W06
	.byte		        Fs3 , v120
	.byte	W06
	.byte		        Fs3 , v064
	.byte	W06
	.byte		        Ds4 , v120
	.byte	W06
	.byte		        Ds4 , v064
	.byte	W06
	.byte		        Fs3 , v120
	.byte	W06
	.byte		N18   , Fs3 , v064
	.byte	W18
	.byte		N06   , Dn4 , v120
	.byte	W06
	.byte		N12   , Dn4 , v064
	.byte	W18
	.byte		N06   , Ds4 , v120
	.byte	W06
	.byte		        Ds4 , v064
	.byte	W06
	.byte		        Ds4 , v120
	.byte	W06
	.byte		        Ds4 , v064
	.byte	W06
	.byte		        Gs4 , v120
	.byte	W06
	.byte		        Gs4 , v064
	.byte	W06
	.byte		        Ds4 , v120
	.byte	W06
	.byte		        Ds4 , v064
	.byte	W06
	.byte		        As3 , v120
	.byte	W06
	.byte		N18   , As3 , v064
	.byte	W18
	.byte		N06   , Ds4 , v120
	.byte	W06
	.byte		N18   , Ds4 , v064
	.byte	W18
	.byte		N06   , Fn4 , v120
	.byte	W06
	.byte		        Fn4 , v064
	.byte	W06
	.byte		        Gs4 , v120
	.byte	W06
	.byte		N18   , Gs4 , v064
	.byte	W18
	.byte		N06   , Fs4 , v120
	.byte	W06
	.byte		N18   , Fs4 , v064
	.byte	W30
	.byte		N06   , Fn4 , v120
	.byte	W06
	.byte		        Fn4 , v064
	.byte	W06
	.byte		        Fs4 , v120
	.byte	W06
	.byte		        Fs4 , v064
	.byte	W06
	.byte		        Gs4 , v120
	.byte	W06
	.byte		        Gs4 , v064
	.byte	W06
	.byte	W96
	.byte		VOICE , 48
	.byte		VOL   , 52*mus_dd_3rd_gear_mvl/mxv
	.byte		N06   , Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v056
	.byte	W06
	.byte		        As3 , v112
	.byte	W06
	.byte		        As3 , v056
	.byte	W06
	.byte		        Ds4 , v112
	.byte	W06
	.byte		        Ds4 , v056
	.byte	W06
	.byte		        Gs3 , v112
	.byte	W06
	.byte		N12   , Gs3 , v056
	.byte	W18
	.byte		N06   , Dn4 , v112
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        As3 , v112
	.byte	W06
	.byte		        As3 , v056
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v056
	.byte	W06
	.byte		        Ds4 , v112
	.byte	W06
	.byte		        Ds4 , v056
	.byte	W06
	.byte		        Gs4 , v112
	.byte	W06
	.byte		        Gs4 , v056
	.byte	W06
	.byte		        As3 , v112
	.byte	W06
	.byte		        As3 , v056
	.byte	W06
	.byte		        Ds4 , v112
	.byte	W06
	.byte		N12   , Ds4 , v056
	.byte	W18
	.byte		N06   , Cn4 , v112
	.byte	W06
	.byte		N12   , Cn4 , v056
	.byte	W18
	.byte		N06   , Ds4 , v112
	.byte	W06
	.byte		        Ds4 , v056
	.byte	W06
	.byte		        Gs4 , v112
	.byte	W06
	.byte		        Gs4 , v056
	.byte	W06
	.byte		        Cn4 , v112
	.byte	W06
	.byte		        Cn4 , v056
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v056
	.byte	W06
	.byte		        Gs3 , v112
	.byte	W06
	.byte		N12   , Gs3 , v056
	.byte	W18
	.byte		N06   , Gs4 , v112
	.byte	W06
	.byte		        Gs4 , v056
	.byte	W06
	.byte		        Cn4 , v112
	.byte	W06
	.byte		        Cn4 , v056
	.byte	W06
	.byte		        An4 , v112
	.byte	W06
	.byte		        An4 , v056
	.byte	W06
	.byte		        As4 , v112
	.byte	W06
	.byte		        As4 , v056
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v056
	.byte	W06
	.byte		        Dn4 , v112
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        Cn4 , v112
	.byte	W06
	.byte		        Cn4 , v056
	.byte	W06
	.byte		        As3 , v112
	.byte	W06
	.byte		        As3 , v056
	.byte	W06
	.byte		        Gs4 , v112
	.byte	W06
	.byte		        Gs4 , v056
	.byte	W06
	.byte		        Fs4 , v112
	.byte	W06
	.byte		        Fs4 , v056
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v056
	.byte	W06
	.byte		VOICE , 48
	.byte		VOL   , 54*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-48
	.byte		N06   , Cs3 , v088
	.byte	W12
	.byte		        As2
	.byte	W12
	.byte		        Fn3
	.byte	W12
	.byte		N12   , Cs3
	.byte	W12
	.byte		PAN   , c_v+48
	.byte		N06   , Ds3
	.byte	W12
	.byte		        Cs3
	.byte	W12
	.byte		        An2
	.byte	W12
	.byte		N12   , Fs2
	.byte	W12
	.byte		PAN   , c_v-49
	.byte		N06   , Fn2
	.byte	W12
	.byte		        Gs2
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		        Ds3
	.byte	W12
	.byte		PAN   , c_v+44
	.byte		N06   , As3
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		        Fn3
	.byte	W12
	.byte		        As2
	.byte	W12
	.byte		PAN   , c_v-49
	.byte		N06   , Fs2
	.byte	W12
	.byte		        As2
	.byte	W12
	.byte		        Cs3
	.byte	W12
	.byte		        Fn3
	.byte	W12
	.byte		PAN   , c_v+46
	.byte		N06   , Gn3
	.byte	W12
	.byte		        Cs3
	.byte	W12
	.byte		        Fn3
	.byte	W12
	.byte		        As2
	.byte	W12
	.byte	W96
	.byte		VOICE , 48
	.byte		VOL   , 58*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v+11
	.byte	W30
	.byte		N06   , Gs3 , v112
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		N36   , Gs4
	.byte	W36
	.byte		N12   , Fs4
	.byte	W12
	.byte		N06   , Fn4
	.byte	W06
	.byte		        Fn4 , v064
	.byte	W06
	.byte		N24   , Fs4 , v112
	.byte	W24
	.byte		N12   , Gn4
	.byte	W12
	.byte		VOL   , 52*mus_dd_3rd_gear_mvl/mxv
	.byte		N24   , Gs4 , v116
	.byte	W06
	.byte		VOL   , 48*mus_dd_3rd_gear_mvl/mxv
	.byte	W06
	.byte		        42*mus_dd_3rd_gear_mvl/mxv
	.byte	W06
	.byte		        37*mus_dd_3rd_gear_mvl/mxv
	.byte	W06
	.byte		        58*mus_dd_3rd_gear_mvl/mxv
	.byte		N12   , Gs4 , v064
	.byte	W12
	.byte		N06   , As3 , v112
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		N24   , As4
	.byte	W24
	.byte		        Gs4
	.byte	W24
	.byte		        Fs4
	.byte	W24
	.byte		N06   , Fn4
	.byte	W12
	.byte		N36   , Fs4 , v116
	.byte	W12
	.byte	W24
	.byte		N06   , Fs4 , v064
	.byte	W06
	.byte		        As3 , v112
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		N36   , Gs4
	.byte	W36
	.byte		N06   , Fs4
	.byte	W06
	.byte		        Fs4 , v064
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v064
	.byte	W06
	.byte		N24   , Fs4 , v112
	.byte	W24
	.byte		N12   , Cs4
	.byte	W12
	.byte		        Cs4 , v064
	.byte	W12
	.byte		        An3 , v112
	.byte	W12
	.byte		        Cs4
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		N06   , En4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		N12   , En4
	.byte	W12
	.byte		        Fs4
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		        Cs4
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		N06   , Fs4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		N12   , Fs4
	.byte	W12
	.byte		        Bn4
	.byte	W12
	.byte	W30
	.byte		N06   , Gs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		N36   , Gs4
	.byte	W36
	.byte		N12   , Fs4
	.byte	W12
	.byte		N06   , Fn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Fn4 , v064
	.byte	W06
	.byte		N12   , Fs4 , v112
	.byte	W12
	.byte		N24   , Gs4
	.byte	W24
	.byte		N06   , Gs4 , v064
	.byte	W06
	.byte		        Gs3 , v112
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		N24   , As4
	.byte	W24
	.byte		        Gs4
	.byte	W24
	.byte		N06   , Fs4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Fs4
	.byte	W12
	.byte		N12   , Gs4
	.byte	W12
	.byte		N24   , Fs4
	.byte	W24
	.byte		N06   , Fs4 , v064
	.byte	W06
	.byte		        As3 , v112
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		N24   , Gs4
	.byte	W24
	.byte		N06   , Fs4
	.byte	W06
	.byte		N03   , Fn4
	.byte	W03
	.byte		N09   , Fn4 , v064
	.byte	W09
	.byte		N06   , Ds4 , v112
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Cs4 , v064
	.byte	W06
	.byte		N24   , Fs4 , v112
	.byte	W24
	.byte		N12   , As4
	.byte	W12
	.byte		N03   , En4
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		        Cs4
	.byte	W12
	.byte		N06   , En4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		N12   , En4
	.byte	W12
	.byte		        Fs4
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12   , En4
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		N06   , Fs4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		N12   , Fs4
	.byte	W12
	.byte		        Bn4
	.byte	W12
	.byte		VOL   , 11*mus_dd_3rd_gear_mvl/mxv
	.byte		N72   , Cs5
	.byte	W02
	.byte		VOL   , 15*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        21*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        26*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        31*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        36*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        41*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        48*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        57*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        64*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        65*mus_dd_3rd_gear_mvl/mxv
	.byte	W01
	.byte		        73*mus_dd_3rd_gear_mvl/mxv
	.byte	W18
	.byte		        66*mus_dd_3rd_gear_mvl/mxv
	.byte	W02
	.byte		        58*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        50*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        44*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        34*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        28*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        21*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        12*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        10*mus_dd_3rd_gear_mvl/mxv
	.byte	W01
	.byte		VOICE , 57
	.byte	W12
	.byte		VOL   , 74*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , Gs3 , v120
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N12   , Cs4
	.byte	W36
	.byte		N06   , Gs3
	.byte	W12
	.byte		        Cs4
	.byte	W12
	.byte		N03   , Gs3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Cs4
	.byte	W12
	.byte		N03   , Gs3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte	GOTO
	 .word	mus_dd_3rd_gear_2_000
	.byte		FINE

@**************** Track 3 ****************@

mus_dd_3rd_gear_3:
	.byte		KEYSH , mus_dd_3rd_gear_key+0
	.byte		VOICE , 87
	.byte		BENDR , 44
	.byte	W96
	.byte		VOL   , 69*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
mus_dd_3rd_gear_3_000:
	.byte		VOL   , 69*mus_dd_3rd_gear_mvl/mxv
	.byte		N15   , Cs1 , v112
	.byte	W12
	.byte		N03   , Cs3
	.byte	W12
	.byte		N06   , Cs2
	.byte	W12
	.byte		N03   , Cs3
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		        Cs3
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		        Cs3
	.byte	W12
mus_dd_3rd_gear_3_001:
	.byte		N12   , Bn1 , v112
	.byte	W12
	.byte		N03   , Bn2
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		PEND
mus_dd_3rd_gear_3_002:
	.byte		N12   , As1 , v112
	.byte	W12
	.byte		N03   , As2
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		        As2
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		        As2
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		        As2
	.byte	W12
	.byte		PEND
	.byte		VOL   , 83*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v084
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N21   , Fs1
	.byte	W06
	.byte		MOD   , 7
	.byte	W18
	.byte		        0
	.byte		N06
	.byte	W12
	.byte		N24   , Bn1
	.byte	W24
	.byte		VOL   , 69*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N12   , Cs1 , v112
	.byte	W12
	.byte		N03   , Cs3
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		        Cs3
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		        Cs3
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		        Cs3
	.byte	W12
	.byte	PATT
	 .word	mus_dd_3rd_gear_3_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_3_002
	.byte		VOL   , 74*mus_dd_3rd_gear_mvl/mxv
	.byte		N06   , Fs1 , v112
	.byte	W12
	.byte		        Fs2
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		N21   , Gs1
	.byte	W24
	.byte		N06   , Gs2
	.byte	W12
	.byte		N12   , Gs1
	.byte	W12
	.byte		N06   , Ds2
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        An1
	.byte	W12
	.byte		        An2
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		N24   , Bn1
	.byte	W24
	.byte		N06   , Fs2 , v124
	.byte	W12
	.byte		N12   , Ds2 , v112
	.byte	W12
	.byte		N06   , Bn1
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		VOICE , 33
	.byte		N06   , Fs1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N09   , Fs2
	.byte	W12
	.byte		N06   , Fs1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Ds2
	.byte	W06
	.byte		        Fs1
	.byte	W06
	.byte		N18   , Ds2
	.byte	W18
	.byte		N06   , Cn2
	.byte	W06
	.byte		        Fs1
	.byte	W12
	.byte		        Fs2
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		        Fn2
	.byte	W12
mus_dd_3rd_gear_3_003:
	.byte		N06   , Fn1 , v112
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N12   , Ds2
	.byte	W12
	.byte		N06   , Fn1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Ds2
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte		        Gs1
	.byte	W12
	.byte		PEND
	.byte		N12   , As1
	.byte	W12
	.byte		N06   , As2
	.byte	W12
	.byte		N12   , An1
	.byte	W12
	.byte		N06   , An2
	.byte	W12
	.byte		N12   , Gs1
	.byte	W12
	.byte		N06   , Gs2
	.byte	W12
	.byte		N12   , Gn1
	.byte	W12
	.byte		N06   , Gn2
	.byte	W06
	.byte		        As1
	.byte	W06
	.byte		VOL   , 74*mus_dd_3rd_gear_mvl/mxv
	.byte		N06   , Fs1
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v112
	.byte	W12
	.byte		N09   , Fs2
	.byte	W12
	.byte		N06   , Fs1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Ds2
	.byte	W06
	.byte		        Fs1
	.byte	W06
	.byte		N12   , Ds2
	.byte	W12
	.byte		N06   , Cn2
	.byte	W06
	.byte		        Gs1
	.byte	W06
	.byte		N12   , Fs1
	.byte	W12
	.byte		N06   , Fn2
	.byte	W12
	.byte		        Ds2
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte	PATT
	 .word	mus_dd_3rd_gear_3_003
	.byte		N12   , As1 , v112
	.byte	W12
	.byte		N06   , Fn2
	.byte	W12
	.byte		N12   , Dn2
	.byte	W12
	.byte		N06   , Cn2
	.byte	W12
	.byte		N12   , As1
	.byte	W12
	.byte		N03   , Gs2
	.byte	W12
	.byte		N12   , As1
	.byte	W12
	.byte		N06   , As2
	.byte	W12
	.byte		VOICE , 36
	.byte		VOL   , 83*mus_dd_3rd_gear_mvl/mxv
	.byte		N24   , Fs3 , v127
	.byte	W24
	.byte		N12   , Fs3 , v056
	.byte	W12
	.byte		N06   , Fs3 , v127
	.byte	W06
	.byte		        Fs3 , v056
	.byte	W06
	.byte		        Fs3 , v127
	.byte	W06
	.byte		        Fs3 , v056
	.byte	W06
	.byte		N24   , Ds4 , v127
	.byte	W24
	.byte		N06   , Cn4
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		N24   , Fn3
	.byte	W24
	.byte		N12   , Fn3 , v056
	.byte	W12
	.byte		N06   , Cn4 , v127
	.byte	W06
	.byte		N03   , Ds4
	.byte	W06
	.byte		N06   , Fn4
	.byte	W06
	.byte		        Fn4 , v056
	.byte	W06
	.byte		N24   , Dn4 , v127
	.byte	W24
	.byte		N06   , As3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		N24   , Fs3
	.byte	W24
	.byte		N12   , Fs3 , v056
	.byte	W12
	.byte		N06   , Cs4 , v127
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		N12   , Gn4 , v127
	.byte	W12
	.byte		N06   , Cs4
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		N12   , Gn3 , v127
	.byte	W12
	.byte		N06   , Fn3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		VOICE , 36
	.byte		N06   , Gs3
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		        Gs4 , v056
	.byte	W06
	.byte		        Gs3 , v127
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		        Gs4 , v056
	.byte	W06
	.byte		        Gs3 , v127
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Gs4 , v112
	.byte	W06
	.byte		VOICE , 87
	.byte		VOL   , 69*mus_dd_3rd_gear_mvl/mxv
	.byte		N06   , Gs1
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06   , Gs2
	.byte	W06
	.byte		N12   , Cn2
	.byte	W12
	.byte		VOL   , 69*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , Cs2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cs3
	.byte	W12
	.byte		        Gs2
	.byte	W12
	.byte		        Fn2
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		        Ds2
	.byte	W12
mus_dd_3rd_gear_3_004:
	.byte		N03   , Bn1 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PEND
	.byte		N06
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		        Fs2
	.byte	W12
	.byte		        Ds2
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		N03   , As1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        As2
	.byte	W12
	.byte		        Fs2
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		VOL   , 74*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , An1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte	PATT
	 .word	mus_dd_3rd_gear_3_004
	.byte		VOL   , 69*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , Cs2 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Cn3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Cs2
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cs3
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		        Cs3
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		        Cs3
	.byte	W12
	.byte		        Gs2
	.byte	W12
	.byte		        Fn2
	.byte	W12
	.byte		        Cs2
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		        As1
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		        Cs3
	.byte	W12
	.byte		        Ds2
	.byte	W12
	.byte		N03   , Bn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        As2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		        Bn1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		        Bn2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        Bn1
	.byte	W12
	.byte		N12   , Bn2
	.byte	W12
	.byte		        Fs2
	.byte	W12
	.byte		        Ds2
	.byte	W12
	.byte		N06   , Bn1
	.byte	W06
	.byte		        As1
	.byte	W06
	.byte		        Gs1
	.byte	W06
	.byte		        As1
	.byte	W06
	.byte		        Bn1
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		N03   , As1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        An2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        As1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        An2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        As1
	.byte	W12
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        As1
	.byte	W12
	.byte		N12   , As2
	.byte	W12
	.byte		        Fs2
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		N06   , As1
	.byte	W06
	.byte		        Gs1
	.byte	W06
	.byte		        Fs1
	.byte	W06
	.byte		        Gs1
	.byte	W06
	.byte		        Fs1
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		N03   , An1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03   , Bn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Bn2
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		        An2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		        Bn1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		VOL   , 13*mus_dd_3rd_gear_mvl/mxv
	.byte		N72   , Cs2
	.byte	W02
	.byte		VOL   , 19*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        26*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        33*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        39*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        45*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        52*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        58*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        62*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        63*mus_dd_3rd_gear_mvl/mxv
	.byte	W01
	.byte		        74*mus_dd_3rd_gear_mvl/mxv
	.byte	W21
	.byte		        59*mus_dd_3rd_gear_mvl/mxv
	.byte	W02
	.byte		        54*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        48*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        39*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        33*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        28*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        23*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        19*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        12*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        11*mus_dd_3rd_gear_mvl/mxv
	.byte	W22
	.byte	W96
	.byte	GOTO
	 .word	mus_dd_3rd_gear_3_000
	.byte		FINE

@**************** Track 4 ****************@

mus_dd_3rd_gear_4:
	.byte		KEYSH , mus_dd_3rd_gear_key+0
	.byte		VOICE , 54
	.byte		LFOS  , 44
	.byte	W96
	.byte		VOL   , 79*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		N10   , Cs4 , v120
	.byte	W36
	.byte		PAN   , c_v+25
	.byte		N08   , Gs3
	.byte	W12
	.byte		        Cs4
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N05   , Gs3
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N08   , Cs4
	.byte	W12
	.byte		PAN   , c_v+24
	.byte		N05   , Gs3
	.byte	W06
	.byte		N05
	.byte	W06
mus_dd_3rd_gear_4_000:
	.byte		VOL   , 79*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v+24
	.byte		N09   , Cs4 , v120
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N09   , Cs4 , v104
	.byte	W36
	.byte		        Cs4 , v112
	.byte	W24
	.byte		N09
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N09   , Bn3
	.byte	W24
	.byte		        Bn3 , v104
	.byte	W36
	.byte		        Bn3 , v112
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v-33
	.byte		N09   , As3
	.byte	W24
	.byte		        As3 , v096
	.byte	W36
	.byte		        As3 , v112
	.byte	W24
	.byte		N06
	.byte	W12
	.byte	W84
	.byte		PAN   , c_v-32
	.byte		N09   , Gs3
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N09   , Cs4
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N09   , Cs4 , v092
	.byte	W24
	.byte		PAN   , c_v-32
	.byte	W12
	.byte		N09   , Cs4 , v112
	.byte	W12
	.byte		PAN   , c_v-32
	.byte	W12
	.byte		N09   , Gs3
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N09   , Bn3
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N09
	.byte	W24
	.byte		PAN   , c_v-32
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		PAN   , c_v-32
	.byte	W12
	.byte		N09   , Gs3
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N09   , As3
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N09
	.byte	W24
	.byte		PAN   , c_v-32
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		PAN   , c_v-32
	.byte	W12
	.byte		N09   , Cs3
	.byte	W12
	.byte		VOICE , 54
	.byte		PAN   , c_v-48
	.byte		N09   , Fs3
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N09
	.byte	W24
	.byte		PAN   , c_v-46
	.byte	W12
	.byte		N09   , Gs3
	.byte	W36
	.byte		PAN   , c_v+48
	.byte		N09   , An3
	.byte	W24
	.byte		PAN   , c_v-44
	.byte		N09
	.byte	W24
	.byte		PAN   , c_v+50
	.byte	W12
	.byte		N09   , Bn3
	.byte	W12
	.byte		PAN   , c_v-48
	.byte		N09   , Ds4
	.byte	W24
	.byte		VOICE , 55
	.byte		PAN   , c_v-48
	.byte	W24
	.byte		        c_v-48
	.byte	W24
	.byte		        c_v+32
	.byte	W48
	.byte	W48
	.byte		        c_v-32
	.byte	W48
	.byte	W72
	.byte		VOICE , 57
	.byte	W18
	.byte		VOL   , 66*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , Cs4
	.byte	W03
	.byte		        Cn4
	.byte	W03
	.byte		VOL   , 68*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-30
	.byte		N06   , As3 , v120
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        Cn4
	.byte	W24
	.byte		N21   , Cs4
	.byte	W06
	.byte		MOD   , 5
	.byte	W15
	.byte		N03   , As3 , v112
	.byte	W03
	.byte		MOD   , 0
	.byte		N03   , Gn3
	.byte	W03
	.byte		        Fn3
	.byte	W09
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 24
	.byte		VOL   , 63*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		N06   , Fn5
	.byte	W06
	.byte		        Fn5 , v064
	.byte	W06
	.byte		        As4 , v112
	.byte	W06
	.byte		        As4 , v064
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Cs5 , v112
	.byte	W06
	.byte		        Cs5 , v064
	.byte	W06
	.byte		        As4 , v112
	.byte	W06
	.byte		        As4 , v064
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v064
	.byte	W06
	.byte		        As4 , v112
	.byte	W06
	.byte		        As4 , v064
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Cs5 , v112
	.byte	W06
	.byte		        Cs5 , v064
	.byte	W06
	.byte		        Ds5 , v112
	.byte	W06
	.byte		        Ds5 , v064
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , Ds5 , v112
	.byte	W06
	.byte		        Ds5 , v064
	.byte	W06
	.byte		        Cn5 , v112
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Ds5 , v096
	.byte	W06
	.byte		        Ds5 , v064
	.byte	W06
	.byte		        Gs5 , v092
	.byte	W06
	.byte		        An5
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , As5
	.byte	W06
	.byte		        As5 , v064
	.byte	W06
	.byte		        Dn5 , v096
	.byte	W06
	.byte		        Dn5 , v064
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Fn5 , v080
	.byte	W06
	.byte		        Fn5 , v064
	.byte	W06
	.byte		        As4 , v056
	.byte	W06
	.byte		        As4 , v064
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , As5 , v112
	.byte	W06
	.byte		        As5 , v064
	.byte	W06
	.byte		        Cs5 , v112
	.byte	W06
	.byte		        Cs5 , v064
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Fs5 , v112
	.byte	W06
	.byte		        Fs5 , v064
	.byte	W06
	.byte		        As4 , v112
	.byte	W06
	.byte		        Fs5
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , Gn5
	.byte	W06
	.byte		        Gn5 , v064
	.byte	W06
	.byte		        As4 , v112
	.byte	W06
	.byte		        As4 , v064
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Ds5 , v112
	.byte	W06
	.byte		        Ds5 , v064
	.byte	W06
	.byte		        Cs5 , v112
	.byte	W06
	.byte		        Cs5 , v064
	.byte	W06
	.byte		VOICE , 56
	.byte		VOL   , 84*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v+16
	.byte	W06
	.byte		N18   , Ds3 , v127
	.byte	W18
	.byte		N06   , Fs3
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		        Gs3
	.byte	W06
	.byte		        En4
	.byte	W12
	.byte		N12   , An4
	.byte	W12
	.byte		N06   , Gs4
	.byte	W06
	.byte		N12   , Fs4
	.byte	W12
	.byte		N03   , Fn4 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fn4 , v068
	.byte	W78
	.byte	W96
mus_dd_3rd_gear_4_001:
	.byte		N03   , Fn4 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fn4 , v072
	.byte	W78
	.byte		PEND
	.byte	W96
	.byte		N03   , Fs4 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fs4 , v068
	.byte	W78
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N03   , Fn4 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fn4 , v076
	.byte	W78
	.byte	W96
	.byte	PATT
	 .word	mus_dd_3rd_gear_4_001
	.byte	W96
	.byte		N03   , Fs4 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fs4 , v072
	.byte	W78
	.byte	W96
	.byte		PAN   , c_v-17
	.byte		N03   , En4 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En4 , v072
	.byte	W18
	.byte		        En4 , v112
	.byte	W06
	.byte		        En4 , v068
	.byte	W18
	.byte		        En4 , v112
	.byte	W06
	.byte		        En4 , v068
	.byte	W06
	.byte		        An4 , v112
	.byte	W06
	.byte		N03   , Gs4 , v080
	.byte	W03
	.byte		        Fs4
	.byte	W03
	.byte		        En4
	.byte	W12
	.byte		        Fs4 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fs4 , v068
	.byte	W18
	.byte		        Fs4 , v112
	.byte	W06
	.byte		        Fs4 , v068
	.byte	W18
	.byte		        Fs4 , v112
	.byte	W06
	.byte		        Fs4 , v072
	.byte	W06
	.byte		        Bn4 , v112
	.byte	W06
	.byte		N03   , An4 , v080
	.byte	W03
	.byte		        Gs4
	.byte	W03
	.byte		        Fs4
	.byte	W12
	.byte		VOICE , 54
	.byte		VOL   , 84*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-2
	.byte	W84
	.byte		N03   , Gs3 , v112
	.byte	W06
	.byte		PAN   , c_v-21
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-23
	.byte		N24   , Cs4
	.byte	W12
	.byte		VOL   , 74*mus_dd_3rd_gear_mvl/mxv
	.byte	W06
	.byte		        63*mus_dd_3rd_gear_mvl/mxv
	.byte	W06
	.byte		        84*mus_dd_3rd_gear_mvl/mxv
	.byte	W12
	.byte		N06   , Gs3
	.byte	W12
	.byte		PAN   , c_v+34
	.byte		N06   , Cs4
	.byte	W12
	.byte		PAN   , c_v-24
	.byte		N03   , Gs3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Cs4
	.byte	W12
	.byte		N03   , Gs3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte	GOTO
	 .word	mus_dd_3rd_gear_4_000
	.byte		FINE

@**************** Track 5 ****************@

mus_dd_3rd_gear_5:
	.byte		KEYSH , mus_dd_3rd_gear_key+0
	.byte		VOICE , 47
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte	W96
	.byte		VOL   , 74*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N30   , Cs2 , v127
	.byte	W12
	.byte		VOL   , 70*mus_dd_3rd_gear_mvl/mxv
	.byte	W02
	.byte		        64*mus_dd_3rd_gear_mvl/mxv
	.byte	W02
	.byte		        58*mus_dd_3rd_gear_mvl/mxv
	.byte	W02
	.byte		        52*mus_dd_3rd_gear_mvl/mxv
	.byte	W02
	.byte		        48*mus_dd_3rd_gear_mvl/mxv
	.byte	W16
	.byte		        74*mus_dd_3rd_gear_mvl/mxv
	.byte		N12   , Gs1
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		N03   , Gs1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Cs2
	.byte	W12
	.byte		N03   , Gs1
	.byte	W06
	.byte		N03
	.byte	W06
mus_dd_3rd_gear_5_000:
	.byte		VOICE , 21
	.byte		VOL   , 42*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		BEND  , c_v+1
	.byte	W24
	.byte		N09   , Fs3 , v116
	.byte	W12
	.byte		N12   , Gn3
	.byte	W12
	.byte		N09   , Gs3
	.byte	W12
	.byte		N06   , Ds4
	.byte	W24
	.byte		N36   , Cs4
	.byte	W12
	.byte	W30
	.byte		N03
	.byte	W03
	.byte		        Ds4
	.byte	W03
	.byte		N18   , Fn4
	.byte	W24
	.byte		N12   , Fs4
	.byte	W24
	.byte		        Fn4
	.byte	W12
	.byte		        Gs4
	.byte	W18
	.byte		N09   , Fs4
	.byte	W18
	.byte		N06   , Fn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		N48   , Cs4
	.byte	W48
	.byte		VOICE , 30
	.byte		VOL   , 70*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-44
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N06   , Cs2 , v112
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N18   , Ds2
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N24   , Bn1
	.byte	W24
	.byte		VOICE , 21
	.byte		VOL   , 31*mus_dd_3rd_gear_mvl/mxv
	.byte		BEND  , c_v+1
	.byte	W24
	.byte		N06   , Cs4 , v127
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		N12   , Gs4
	.byte	W12
	.byte		N09   , Fn4
	.byte	W09
	.byte		N03   , Dn5 , v088
	.byte	W03
	.byte		N12   , Ds5 , v112
	.byte	W12
	.byte		N36   , Cs5 , v127
	.byte	W12
	.byte	W30
	.byte		N03   , Cs5 , v104
	.byte	W03
	.byte		        Ds5
	.byte	W03
	.byte		N24   , Fn5 , v116
	.byte	W24
	.byte		N12   , Fs5 , v112
	.byte	W24
	.byte		        Fn5
	.byte	W12
	.byte		N36   , Cs5 , v127
	.byte	W36
	.byte		N24   , As4
	.byte	W24
	.byte		N12   , Cs5
	.byte	W12
	.byte		        Fs5
	.byte	W12
	.byte		        As5 , v096
	.byte	W06
	.byte		MOD   , 7
	.byte	W06
	.byte		VOICE , 17
	.byte		VOL   , 62*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v+4
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N06   , As4 , v112
	.byte	W06
	.byte		        As4 , v064
	.byte	W06
	.byte		        As4 , v112
	.byte	W06
	.byte		        As4 , v064
	.byte	W06
	.byte		        As4 , v112
	.byte	W06
	.byte		        As4 , v064
	.byte	W06
	.byte		N21   , Cn5 , v112
	.byte	W03
	.byte		MOD   , 6
	.byte	W21
	.byte		        0
	.byte		N06
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N12   , Cn5 , v112
	.byte	W12
	.byte		N06   , Gs4 , v120
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Cs5 , v112
	.byte	W06
	.byte		        Cs5 , v064
	.byte	W06
	.byte		        Cs5 , v112
	.byte	W06
	.byte		        Cs5 , v064
	.byte	W06
	.byte		        Cs5 , v112
	.byte	W06
	.byte		N03   , Fs5
	.byte	W03
	.byte		        Gn5
	.byte	W03
	.byte		N18   , Gs5
	.byte	W09
	.byte		MOD   , 6
	.byte	W09
	.byte		N06   , Gs5 , v064
	.byte	W03
	.byte		MOD   , 0
	.byte	W03
	.byte		N12   , Gs5 , v112
	.byte	W12
	.byte		N24   , Fs5
	.byte	W24
	.byte		VOL   , 50*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N12   , Fn5
	.byte	W12
	.byte		N06   , Fs5
	.byte	W06
	.byte		        Fs5 , v064
	.byte	W06
	.byte		        Gs5 , v112
	.byte	W06
	.byte		        Gs5 , v064
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v064
	.byte	W06
	.byte		N12   , Fs5 , v112
	.byte	W12
	.byte		N06   , Gs5
	.byte	W06
	.byte		        Gs5 , v064
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v064
	.byte	W06
	.byte		        Fs5 , v112
	.byte	W06
	.byte		        Fs5 , v064
	.byte	W06
	.byte		N12   , Gs5 , v112
	.byte	W12
	.byte		N06   , Gn5
	.byte	W06
	.byte		        Gs5
	.byte	W06
	.byte		N12   , Gs5 , v064
	.byte	W12
	.byte		N06   , Fn5 , v112
	.byte	W06
	.byte		N12   , Fn5 , v064
	.byte	W18
	.byte		N06   , Fs5 , v112
	.byte	W06
	.byte		N12   , Fs5 , v064
	.byte	W18
	.byte		N06   , Gs5 , v112
	.byte	W06
	.byte		        As5
	.byte	W06
	.byte		N36   , Cn6
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N06   , Bn5
	.byte	W06
	.byte		        As5
	.byte	W06
	.byte		N36   , Gs5
	.byte	W36
	.byte		N06   , Gs5 , v064
	.byte	W03
	.byte		VOICE , 57
	.byte	W03
	.byte		N03   , Gs4 , v112
	.byte	W03
	.byte		VOL   , 74*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , Fs4
	.byte	W03
	.byte		PAN   , c_v+2
	.byte		N06   , Fn4 , v124
	.byte	W06
	.byte		        Fn4 , v064
	.byte	W06
	.byte		        Fn4 , v124
	.byte	W06
	.byte		N12   , Fn4 , v064
	.byte	W18
	.byte		N06   , Fs4 , v124
	.byte	W06
	.byte		N12   , Fs4 , v064
	.byte	W18
	.byte		N21   , Gs4 , v124
	.byte	W06
	.byte		MOD   , 6
	.byte	W15
	.byte		N03   , Fs4
	.byte	W03
	.byte		MOD   , 0
	.byte		N03   , Ds4
	.byte	W03
	.byte		        Cn4
	.byte	W03
	.byte		VOICE , 17
	.byte		VOL   , 50*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , Gs5 , v120
	.byte	W03
	.byte		        Gn5 , v112
	.byte	W03
	.byte		VOL   , 50*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v+2
	.byte		N12   , Fn5
	.byte	W12
	.byte		N06   , Fs5
	.byte	W06
	.byte		        Fs5 , v064
	.byte	W06
	.byte		        Gs5 , v112
	.byte	W06
	.byte		        Gs5 , v064
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v064
	.byte	W06
	.byte		N12   , Fs5 , v112
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte		N06   , Gs5
	.byte	W06
	.byte		        Gs5 , v064
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v064
	.byte	W06
	.byte		        Fs5 , v112
	.byte	W06
	.byte		        Fs5 , v064
	.byte	W06
	.byte		        Gs5 , v112
	.byte	W06
	.byte		        Gs5 , v064
	.byte	W06
	.byte		        Gn5 , v112
	.byte	W06
	.byte		N18   , Gs5
	.byte	W06
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N06   , Fn5
	.byte	W06
	.byte		N12   , Fn5 , v064
	.byte	W18
	.byte		N06   , Fs5 , v112
	.byte	W06
	.byte		N12   , Fs5 , v064
	.byte	W18
	.byte		N06   , Gs5 , v112
	.byte	W06
	.byte		        As5
	.byte	W06
	.byte		N36   , Cn6
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N06   , Gs5
	.byte	W06
	.byte		        Cn6
	.byte	W06
	.byte		N24   , Ds6
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , Fn6
	.byte	W12
	.byte		        Ds6
	.byte	W12
	.byte		N06   , Dn6
	.byte	W06
	.byte		        Dn6 , v064
	.byte	W06
	.byte		        Dn6 , v112
	.byte	W06
	.byte		N12   , Dn6 , v064
	.byte	W18
	.byte		N06   , Ds6 , v112
	.byte	W06
	.byte		N12   , Ds6 , v064
	.byte	W18
	.byte		N24   , Fn6 , v112
	.byte	W09
	.byte		MOD   , 4
	.byte	W15
	.byte		        0
	.byte		N03   , Dn6
	.byte	W03
	.byte		        As5
	.byte	W03
	.byte		        Fn5
	.byte	W03
	.byte		        Dn5
	.byte	W03
	.byte		VOICE , 21
	.byte		VOL   , 58*mus_dd_3rd_gear_mvl/mxv
	.byte		N36   , Cs4
	.byte	W36
	.byte		N06   , As3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Cn4
	.byte	W12
	.byte		N24   , Ds4
	.byte	W24
	.byte		N12   , As3
	.byte	W12
	.byte		N18   , Cn4
	.byte	W18
	.byte		        Ds4
	.byte	W18
	.byte		N12   , Cn4
	.byte	W12
	.byte		N18   , Fn4
	.byte	W18
	.byte		        Dn4
	.byte	W18
	.byte		N12   , As3
	.byte	W12
	.byte		N21
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		N24   , As3
	.byte	W48
	.byte		VOICE , 56
	.byte		VOL   , 82*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-16
	.byte	W06
	.byte		N18   , Cs3
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		        Gs2
	.byte	W06
	.byte		        Bn3
	.byte	W12
	.byte		N12   , En4
	.byte	W12
	.byte		N06   , Ds4
	.byte	W06
	.byte		N12   , Cn4
	.byte	W12
	.byte		VOL   , 84*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		N03   , Cs4
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cs4 , v068
	.byte	W06
	.byte		VOICE , 48
	.byte		VOL   , 74*mus_dd_3rd_gear_mvl/mxv
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N06   , Fn3 , v064
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		PAN   , c_v-30
	.byte		N06   , Cs3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , As2
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , Fs2
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		VOL   , 63*mus_dd_3rd_gear_mvl/mxv
	.byte		N36   , Fn4
	.byte	W36
	.byte		N12   , Ds4
	.byte	W12
	.byte		N06   , Cs4
	.byte	W12
	.byte		N24   , Ds4
	.byte	W24
	.byte		N12   , En4 , v080
	.byte	W12
	.byte		VOICE , 56
	.byte		VOL   , 84*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , Bn3 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Bn3 , v072
	.byte	W06
	.byte		VOICE , 48
	.byte		VOL   , 74*mus_dd_3rd_gear_mvl/mxv
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N06   , Gs3 , v064
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N06   , Fn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , Cs3
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		PAN   , c_v-49
	.byte		N06   , As2
	.byte	W06
	.byte		        Gs2 , v112
	.byte	W06
	.byte		VOL   , 63*mus_dd_3rd_gear_mvl/mxv
	.byte		N24   , Fs4 , v064
	.byte	W24
	.byte		        Fn4
	.byte	W24
	.byte		        Ds4
	.byte	W24
	.byte		N06   , Cs4
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Ds4
	.byte	W12
	.byte		VOICE , 56
	.byte		VOL   , 84*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , As3 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , As3 , v068
	.byte	W06
	.byte		VOICE , 48
	.byte		VOL   , 74*mus_dd_3rd_gear_mvl/mxv
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N06   , Cs4 , v064
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		PAN   , c_v-19
	.byte		N06   , As3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		PAN   , c_v-33
	.byte		N06   , Fs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , Ds3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		VOL   , 63*mus_dd_3rd_gear_mvl/mxv
	.byte		N36   , Cs4
	.byte	W36
	.byte		N06   , As3
	.byte	W12
	.byte		        Gs3
	.byte	W12
	.byte		N24   , As3
	.byte	W24
	.byte		N09   , Fs3
	.byte	W12
	.byte	W12
	.byte		N12   , En3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		N06   , Cs4
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		N12   , Cs4
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		N06   , Ds4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		N12   , Ds4
	.byte	W12
	.byte		        Fs4
	.byte	W12
	.byte		VOICE , 56
	.byte		VOL   , 84*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , Cs4 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cs4 , v076
	.byte	W06
	.byte		VOICE , 48
	.byte		VOL   , 63*mus_dd_3rd_gear_mvl/mxv
	.byte	W12
	.byte		N06   , Cs3 , v064
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        As3 , v096
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		N12   , Ds4
	.byte	W12
	.byte		        Gs3
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Gs3
	.byte	W12
	.byte		N12   , Ds4
	.byte	W12
	.byte		VOICE , 56
	.byte		VOL   , 84*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , Bn3 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Bn3 , v072
	.byte	W06
	.byte		VOICE , 48
	.byte		VOL   , 63*mus_dd_3rd_gear_mvl/mxv
	.byte	W06
	.byte		N06   , Bn2 , v064
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Cs4 , v096
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		N12   , Fs4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		N06   , Ds4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W12
	.byte		N12   , Fn4
	.byte	W12
	.byte		VOICE , 56
	.byte		VOL   , 84*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , As3 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        As3 , v072
	.byte	W06
	.byte		VOICE , 48
	.byte		VOL   , 63*mus_dd_3rd_gear_mvl/mxv
	.byte	W06
	.byte		N06   , Fs3 , v064
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fs3 , v096
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cs4
	.byte	W18
	.byte		        As3
	.byte	W06
	.byte		        Fs3
	.byte	W12
	.byte		N24   , Cs4
	.byte	W24
	.byte		N12   , Fs4
	.byte	W12
	.byte		VOICE , 56
	.byte		VOL   , 84*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , An3 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        An3 , v072
	.byte	W18
	.byte		        An3 , v112
	.byte	W06
	.byte		        An3 , v068
	.byte	W18
	.byte		        An3 , v112
	.byte	W06
	.byte		        An3 , v068
	.byte	W06
	.byte		        En4 , v112
	.byte	W06
	.byte		N03   , Ds4 , v068
	.byte	W03
	.byte		        Cs4
	.byte	W03
	.byte		        An3
	.byte	W12
	.byte		        Bn3 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Bn3 , v068
	.byte	W18
	.byte		        Bn3 , v112
	.byte	W06
	.byte		        Bn3 , v068
	.byte	W18
	.byte		        Bn3 , v112
	.byte	W06
	.byte		        Bn3 , v072
	.byte	W06
	.byte		        Fs4 , v112
	.byte	W06
	.byte		N03   , En4 , v080
	.byte	W03
	.byte		        Ds4
	.byte	W03
	.byte		        Cs4
	.byte	W12
	.byte		VOICE , 48
	.byte		VOL   , 12*mus_dd_3rd_gear_mvl/mxv
	.byte		N72   , Fs4 , v112
	.byte	W02
	.byte		VOL   , 15*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        19*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        23*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        28*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        31*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        37*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        39*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        44*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        48*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        55*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        60*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        63*mus_dd_3rd_gear_mvl/mxv
	.byte	W16
	.byte		        57*mus_dd_3rd_gear_mvl/mxv
	.byte	W02
	.byte		        52*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        48*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        42*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        37*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        33*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        29*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        23*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        18*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        17*mus_dd_3rd_gear_mvl/mxv
	.byte	W01
	.byte		VOICE , 47
	.byte	W02
	.byte		VOL   , 13*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        11*mus_dd_3rd_gear_mvl/mxv
	.byte	W01
	.byte		N03   , Gs1 , v127
	.byte	W02
	.byte		VOL   , 10*mus_dd_3rd_gear_mvl/mxv
	.byte	W04
	.byte		N03
	.byte	W06
	.byte		VOL   , 74*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-21
	.byte		N30   , Cs2
	.byte	W12
	.byte		VOL   , 68*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        63*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        60*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        57*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        54*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        48*mus_dd_3rd_gear_mvl/mxv
	.byte	W03
	.byte		        44*mus_dd_3rd_gear_mvl/mxv
	.byte	W06
	.byte		        74*mus_dd_3rd_gear_mvl/mxv
	.byte		N12   , Gs1
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		N03   , Gs1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Cs2
	.byte	W12
	.byte		N03   , Gs1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte	GOTO
	 .word	mus_dd_3rd_gear_5_000
	.byte		FINE

@**************** Track 6 ****************@

mus_dd_3rd_gear_6:
	.byte		KEYSH , mus_dd_3rd_gear_key+0
	.byte		VOICE , 80
	.byte		LFOS  , 56
	.byte		XCMD  , 8 , 18
	.byte		        8
	.byte		        16
	.byte		PAN   , c_v-63
	.byte		VOL   , 21*mus_dd_3rd_gear_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		VOL   , 31*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		VOL   , 52*mus_dd_3rd_gear_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		VOL   , 83*mus_dd_3rd_gear_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Gs5 , v088
	.byte	W03
	.byte		        Gs5 , v048
	.byte	W03
	.byte		        Cs5 , v084
	.byte	W03
	.byte		        Cs5 , v048
	.byte	W03
	.byte		        Ds5 , v088
	.byte	W03
	.byte		        Ds5 , v048
	.byte	W03
	.byte		        Gs4 , v080
	.byte	W03
	.byte		        Gs4 , v048
	.byte	W03
	.byte		PAN   , c_v-64
	.byte		BEND  , c_v+1
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		PAN   , c_v-62
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		MOD   , 0
	.byte		N03   , Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
mus_dd_3rd_gear_6_000:
	.byte		PAN   , c_v-62
	.byte		VOL   , 74*mus_dd_3rd_gear_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		PAN   , c_v-62
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
mus_dd_3rd_gear_6_001:
	.byte		PAN   , c_v-61
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		PAN   , c_v-62
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		PEND
	.byte		PAN   , c_v-61
	.byte		VOL   , 74*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		PAN   , c_v-62
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		PAN   , c_v-61
	.byte		VOL   , 84*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , Fs5 , v064
	.byte	W03
	.byte		        Fs5 , v032
	.byte	W03
	.byte		        Ds5 , v064
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Cs5 , v064
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        An4 , v064
	.byte	W03
	.byte		        An4 , v032
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N03   , Cs5 , v064
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        An4 , v064
	.byte	W03
	.byte		        An4 , v032
	.byte	W03
	.byte		        Fs4 , v064
	.byte	W03
	.byte		        Fs4 , v032
	.byte	W03
	.byte		        Ds4 , v064
	.byte	W03
	.byte		        Ds4 , v032
	.byte	W03
	.byte		PAN   , c_v-62
	.byte		N03   , Gs3 , v064
	.byte	W03
	.byte		        Gs3 , v032
	.byte	W03
	.byte		        Bn3 , v064
	.byte	W03
	.byte		        Bn3 , v032
	.byte	W03
	.byte		        Ds4 , v064
	.byte	W03
	.byte		        Ds4 , v032
	.byte	W03
	.byte		        Fs4 , v064
	.byte	W03
	.byte		        Fs4 , v032
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N03   , Ds4 , v064
	.byte	W03
	.byte		        Ds4 , v032
	.byte	W03
	.byte		        Gs4 , v064
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		        Bn4 , v064
	.byte	W03
	.byte		        Bn4 , v032
	.byte	W03
	.byte		        Gs5 , v064
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		PAN   , c_v-62
	.byte		VOL   , 74*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		PAN   , c_v-62
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte	PATT
	 .word	mus_dd_3rd_gear_6_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_6_001
	.byte		PAN   , c_v-61
	.byte		VOL   , 84*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , As5 , v064
	.byte	W03
	.byte		        As5 , v032
	.byte	W03
	.byte		        Fs5 , v064
	.byte	W03
	.byte		        Fs5 , v032
	.byte	W03
	.byte		        Cs5 , v064
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        As4 , v064
	.byte	W03
	.byte		        As4 , v032
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N03   , Fs5 , v064
	.byte	W03
	.byte		        Fs5 , v032
	.byte	W03
	.byte		        Cs5 , v064
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Gs4 , v064
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		        Ds4 , v064
	.byte	W03
	.byte		        Ds4 , v032
	.byte	W03
	.byte		PAN   , c_v-62
	.byte		N03   , Ds5 , v064
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Cn5 , v064
	.byte	W03
	.byte		        Cn5 , v032
	.byte	W03
	.byte		        Gs4 , v064
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		        Ds4 , v064
	.byte	W03
	.byte		        Ds4 , v032
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N03   , Cn5 , v064
	.byte	W03
	.byte		        Cn5 , v032
	.byte	W03
	.byte		        Gs4 , v064
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		        Ds4 , v064
	.byte	W03
	.byte		        Ds4 , v032
	.byte	W03
	.byte		        Cn4 , v064
	.byte	W03
	.byte		        Cn4 , v032
	.byte	W03
	.byte		PAN   , c_v-64
	.byte		N03   , An5 , v064
	.byte	W03
	.byte		        An5 , v032
	.byte	W03
	.byte		        En5 , v064
	.byte	W03
	.byte		        En5 , v032
	.byte	W03
	.byte		        Cs5 , v064
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        An4 , v064
	.byte	W03
	.byte		        An4 , v032
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N03   , En5 , v064
	.byte	W03
	.byte		        En5 , v032
	.byte	W03
	.byte		        Cs5 , v064
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        An4 , v064
	.byte	W03
	.byte		        An4 , v032
	.byte	W03
	.byte		        En4 , v064
	.byte	W03
	.byte		        En4 , v032
	.byte	W03
	.byte		PAN   , c_v-64
	.byte		N03   , An4 , v064
	.byte	W03
	.byte		        An4 , v032
	.byte	W03
	.byte		        Cs5 , v064
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        En5 , v064
	.byte	W03
	.byte		        En5 , v032
	.byte	W03
	.byte		        Gs5 , v064
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N03   , Bn4 , v064
	.byte	W03
	.byte		        Bn4 , v032
	.byte	W03
	.byte		        Ds5 , v064
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Fs5 , v064
	.byte	W03
	.byte		        Fs5 , v032
	.byte	W03
	.byte		        Bn5 , v064
	.byte	W03
	.byte		        Bn5 , v032
	.byte	W03
	.byte		VOL   , 31*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-62
	.byte		MOD   , 0
	.byte		N06   , Cs4 , v112
	.byte	W12
	.byte		        Fn3
	.byte	W12
	.byte		        Cs4
	.byte	W36
	.byte		        As3
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        Fs3
	.byte	W24
	.byte		        As3
	.byte	W24
	.byte		        Cs4
	.byte	W12
	.byte		        Ds4
	.byte	W24
	.byte		N06
	.byte	W36
	.byte		        Cs4
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		VOL   , 42*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , Fn4 , v088
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        Fs4
	.byte	W24
	.byte		N21   , Gs4
	.byte	W21
	.byte		N03   , Fs4 , v080
	.byte	W03
	.byte		        Ds4
	.byte	W03
	.byte		        Cn4
	.byte	W09
	.byte		VOL   , 31*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-62
	.byte		N06   , Cs4 , v112
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		        As3
	.byte	W12
	.byte		        Ds3
	.byte	W24
	.byte		        As3
	.byte	W24
	.byte		        Cs4
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		        Cn4
	.byte	W24
	.byte		        As3
	.byte	W24
	.byte		        Cn4
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		        Fn3
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		        Ds3
	.byte	W24
	.byte		        Ds4
	.byte	W12
	.byte		        Gs3
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        As3
	.byte	W12
	.byte		        Gs3
	.byte	W12
	.byte		        Fn3
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		VOICE , 82
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		N03   , Cs4
	.byte	W03
	.byte		        Ds4
	.byte	W03
	.byte		VOL   , 31*mus_dd_3rd_gear_mvl/mxv
	.byte		BEND  , c_v-8
	.byte		N36   , Fn4
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W09
	.byte		VOL   , 21*mus_dd_3rd_gear_mvl/mxv
	.byte		MOD   , 9
	.byte	W24
	.byte		VOL   , 31*mus_dd_3rd_gear_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   , Ds4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Ds4 , v064
	.byte	W06
	.byte		N36   , Gs4 , v112
	.byte	W12
	.byte		VOL   , 21*mus_dd_3rd_gear_mvl/mxv
	.byte	W24
	.byte		        31*mus_dd_3rd_gear_mvl/mxv
	.byte		N18   , Fn4
	.byte	W18
	.byte		        Fs4
	.byte	W18
	.byte		N12   , Fn4
	.byte	W12
	.byte		BEND  , c_v-25
	.byte		N18   , As4 , v092
	.byte	W01
	.byte		BEND  , c_v-17
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-3
	.byte	W02
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		VOL   , 21*mus_dd_3rd_gear_mvl/mxv
	.byte	W09
	.byte		        31*mus_dd_3rd_gear_mvl/mxv
	.byte		N18   , Gs4 , v112
	.byte	W18
	.byte		N12   , Fn4
	.byte	W12
	.byte		BEND  , c_v-17
	.byte		N21   , Cs4
	.byte	W01
	.byte		BEND  , c_v-13
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-1
	.byte	W02
	.byte		        c_v+0
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		N24   , Cs4
	.byte	W24
	.byte		N12   , Cs4 , v064
	.byte	W12
	.byte		N06   , Fn4 , v112
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		VOL   , 59*mus_dd_3rd_gear_mvl/mxv
	.byte		N60   , Gs4
	.byte	W36
	.byte		VOL   , 52*mus_dd_3rd_gear_mvl/mxv
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 42*mus_dd_3rd_gear_mvl/mxv
	.byte	W06
	.byte		        31*mus_dd_3rd_gear_mvl/mxv
	.byte	W06
	.byte		        21*mus_dd_3rd_gear_mvl/mxv
	.byte	W18
	.byte		MOD   , 0
	.byte	W24
	.byte		VOICE , 82
	.byte		VOL   , 41*mus_dd_3rd_gear_mvl/mxv
	.byte	W96
	.byte		        52*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-61
	.byte	W06
	.byte		N04   , Gs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N04   , Cs3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		PAN   , c_v-62
	.byte		N04   , Fn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N04   , Gs3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		PAN   , c_v-61
	.byte		N04   , Gs3
	.byte	W06
	.byte		        Fn3 , v104
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N04   , Gs3 , v080
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		PAN   , c_v-62
	.byte		N04   , Gs3 , v048
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N04   , Gs3 , v032
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		PAN   , c_v-61
	.byte	W06
	.byte		N04   , Gs2 , v112
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N04   , Cs3
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		PAN   , c_v-62
	.byte		N04   , Fn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N04   , Gs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		PAN   , c_v-61
	.byte		N04   , As3
	.byte	W06
	.byte		        Fs3 , v108
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N04   , As3 , v080
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N04   , As3 , v048
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N04   , As3 , v032
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		PAN   , c_v-61
	.byte	W06
	.byte		N04   , As2 , v112
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N04   , Ds3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N04   , Fn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N04   , Gs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		PAN   , c_v-61
	.byte		N06   , En3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , An3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Bn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Cs4
	.byte	W12
	.byte		N12   , En4
	.byte	W12
	.byte		N06   , Ds3
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		PAN   , c_v-62
	.byte		N06   , Fs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Bn3
	.byte	W07
	.byte		        Fs3
	.byte	W05
	.byte		        Ds4
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		PAN   , c_v-62
	.byte		N06   , En4
	.byte	W12
	.byte		N12   , Fs4
	.byte	W12
	.byte		VOL   , 74*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		BEND  , c_v+0
	.byte		N24   , Cs5
	.byte	W12
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		PAN   , c_v+63
	.byte		BEND  , c_v+0
	.byte		N24   , Cs5 , v084
	.byte	W12
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		PAN   , c_v-64
	.byte		BEND  , c_v+0
	.byte		N24   , Cs5 , v064
	.byte	W12
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		PAN   , c_v+63
	.byte		BEND  , c_v+0
	.byte		N24   , Cs5 , v056
	.byte	W12
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		VOL   , 52*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		BEND  , c_v+0
	.byte		N06   , Gs2 , v112
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Cn3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Ds3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , As3
	.byte	W12
	.byte		N12   , Gs3
	.byte	W12
	.byte		VOL   , 74*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		BEND  , c_v+0
	.byte		N24   , Cs5
	.byte	W12
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		PAN   , c_v+63
	.byte		BEND  , c_v+0
	.byte		N24   , Cs5 , v076
	.byte	W12
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		PAN   , c_v-64
	.byte		BEND  , c_v+0
	.byte		N24   , Cs5 , v064
	.byte	W12
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		PAN   , c_v+63
	.byte		BEND  , c_v+0
	.byte		N24   , Cs5 , v060
	.byte	W12
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		VOL   , 52*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		N06   , Ds3 , v112
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Fs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Ds4
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Bn3
	.byte	W12
	.byte		N12   , Ds4
	.byte	W12
	.byte		VOL   , 74*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		BEND  , c_v+0
	.byte		N24   , Cs5
	.byte	W12
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		PAN   , c_v+63
	.byte		BEND  , c_v+0
	.byte		N24   , Cs5 , v080
	.byte	W12
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		PAN   , c_v-64
	.byte		BEND  , c_v+0
	.byte		N24   , Cs5 , v064
	.byte	W12
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		PAN   , c_v+63
	.byte		BEND  , c_v+0
	.byte		N24   , Cs5 , v060
	.byte	W12
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		VOL   , 52*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		N06   , Cs3 , v112
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Fs3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Fs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Cs4
	.byte	W12
	.byte		N12   , Fs4
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , An3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Cs3
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , An3
	.byte	W12
	.byte		N12   , Cs4
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Bn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Fs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Ds3
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Bn3
	.byte	W12
	.byte		N12   , Ds4
	.byte	W12
	.byte		VOL   , 52*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		PAN   , c_v-62
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N03   , Gs5 , v068
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Cs5 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Gs4 , v032
	.byte	W03
	.byte	PATT
	 .word	mus_dd_3rd_gear_6_001
	.byte	GOTO
	 .word	mus_dd_3rd_gear_6_000
	.byte		FINE

@**************** Track 7 ****************@

mus_dd_3rd_gear_7:
	.byte		KEYSH , mus_dd_3rd_gear_key+0
	.byte		VOICE , 81
	.byte		LFOS  , 49
	.byte		XCMD  , 8 , 18
	.byte		        8
	.byte		        16
	.byte		BENDR , 12
	.byte		VOL   , 31*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		VOL   , 42*mus_dd_3rd_gear_mvl/mxv
	.byte	W24
	.byte		        52*mus_dd_3rd_gear_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Gs5 , v068
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte		        Ds5
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		VOL   , 74*mus_dd_3rd_gear_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N03   , Gs5
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte		        Ds5
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		VOL   , 70*mus_dd_3rd_gear_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Gs5
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte		        Ds5
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		        Gs5
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte		        Ds5
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		        Gs5
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte		        Ds5
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		        Gs5
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte		        Ds5
	.byte	W06
	.byte		        Gs4
	.byte	W06
mus_dd_3rd_gear_7_000:
	.byte		VOICE , 81
	.byte		VOL   , 42*mus_dd_3rd_gear_mvl/mxv
	.byte		N06   , Fn3 , v112
	.byte	W12
	.byte		        Cs3
	.byte	W12
	.byte		N09   , Ds3
	.byte	W12
	.byte		N12   , En3
	.byte	W12
	.byte		N09   , Fn3
	.byte	W12
	.byte		N06   , Gs3
	.byte	W24
	.byte		N36
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte	W06
	.byte		N03   , Fn3
	.byte	W03
	.byte		        Fs3
	.byte	W03
	.byte		N18   , Gs3
	.byte	W24
	.byte		N12   , Bn3
	.byte	W24
	.byte		        Gs3
	.byte	W12
	.byte		        Cs4
	.byte	W18
	.byte		N09   , As3
	.byte	W18
	.byte		N06   , Gs3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		N44
	.byte	W12
	.byte		MOD   , 6
	.byte	W36
	.byte		VOICE , 81
	.byte		VOL   , 42*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BEND  , c_v+1
	.byte		N06   , An2 , v127
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N18   , Bn2
	.byte	W12
	.byte		MOD   , 9
	.byte	W09
	.byte		        0
	.byte	W03
	.byte		N06
	.byte	W12
	.byte		VOL   , 42*mus_dd_3rd_gear_mvl/mxv
	.byte		N24   , Fs2
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		VOICE , 81
	.byte		VOL   , 52*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N12   , Cs4 , v112
	.byte	W12
	.byte		N06   , Fn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		N12   , Ds4
	.byte	W12
	.byte		N09   , Cs4
	.byte	W09
	.byte		N03   , Gn4
	.byte	W03
	.byte		N12   , Gs4
	.byte	W12
	.byte		N36   , Fn4
	.byte	W12
	.byte		MOD   , 5
	.byte	W24
	.byte		        0
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		        Fs4
	.byte	W03
	.byte		N24   , Gs4
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N12   , As4
	.byte	W24
	.byte		        Gs4
	.byte	W12
	.byte		N36   , Fs4
	.byte	W12
	.byte		MOD   , 5
	.byte	W24
	.byte		        0
	.byte		N24   , Cs4
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N12   , Fs4
	.byte	W12
	.byte		        As4
	.byte	W12
	.byte		        Cs5
	.byte	W12
	.byte		VOICE , 81
	.byte		N06   , Cs4
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N21   , Ds4
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Cn4
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        En4
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N03   , Gn3
	.byte	W03
	.byte		        Gs3
	.byte	W03
	.byte		N18   , An4
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N23   , Bn4 , v080
	.byte	W24
	.byte		VOL   , 42*mus_dd_3rd_gear_mvl/mxv
	.byte		N06   , As3 , v112
	.byte	W12
	.byte		        Cs3
	.byte	W12
	.byte		        As3
	.byte	W12
	.byte		        Cs3
	.byte	W24
	.byte		        Fs3
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        As3
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		        Ds3
	.byte	W24
	.byte		        Fs3
	.byte	W24
	.byte		        As3
	.byte	W12
	.byte		        Cn4
	.byte	W24
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		VOL   , 41*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , Cn5
	.byte	W03
	.byte		VOL   , 42*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , Bn4
	.byte	W03
	.byte		VOL   , 63*mus_dd_3rd_gear_mvl/mxv
	.byte		N06   , As4 , v120
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        Cn5
	.byte	W24
	.byte		N21   , Cs5
	.byte	W21
	.byte		N03   , As4 , v112
	.byte	W03
	.byte		        Gn4
	.byte	W03
	.byte		        Fn4
	.byte	W09
	.byte		VOL   , 42*mus_dd_3rd_gear_mvl/mxv
	.byte		N06   , As3
	.byte	W24
	.byte		        Fs3
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		        As3
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cn4
	.byte	W24
	.byte		        As3
	.byte	W24
	.byte		        Fs3
	.byte	W24
	.byte		        As3
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        Gs3
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        Fn3
	.byte	W24
	.byte		        Cn4
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N06   , As4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        As3
	.byte	W12
	.byte		        Gs4
	.byte	W12
	.byte		        Fs4
	.byte	W12
	.byte		N03   , Fn4
	.byte	W03
	.byte		VOICE , 92
	.byte	W03
	.byte		VOL   , 26*mus_dd_3rd_gear_mvl/mxv
	.byte		N03   , Cs4
	.byte	W03
	.byte		        Ds4
	.byte	W03
	.byte		VOL   , 25*mus_dd_3rd_gear_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N36   , Fn4
	.byte	W36
	.byte		N06   , Ds4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W12
	.byte		N36   , Gs4
	.byte	W36
	.byte		N18   , Fn4
	.byte	W18
	.byte		        Fs4
	.byte	W18
	.byte		N12   , Fn4
	.byte	W12
	.byte		N18   , As4
	.byte	W18
	.byte		        Gs4
	.byte	W18
	.byte		N12   , Fn4
	.byte	W12
	.byte		N21   , Cs4
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		N24   , Cs4
	.byte	W36
	.byte		N06   , Fn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		VOL   , 52*mus_dd_3rd_gear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+1
	.byte	W03
	.byte		VOICE , 81
	.byte	W03
	.byte		N18   , Ds4 , v120
	.byte	W18
	.byte		N06   , Fs4
	.byte	W12
	.byte		        Bn4 , v127
	.byte	W12
	.byte		        Gs4 , v112
	.byte	W06
	.byte		        En5 , v120
	.byte	W12
	.byte		N12   , An5
	.byte	W12
	.byte		N06   , Gs5
	.byte	W06
	.byte		N12   , Fs5
	.byte	W12
	.byte		N03   , Fn5 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		VOICE , 92
	.byte	W06
	.byte		N06   , Gs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		N36   , Gs4
	.byte	W36
	.byte		N12   , Fs4
	.byte	W12
	.byte		N06   , Fn4
	.byte	W12
	.byte		N24   , Fs4
	.byte	W24
	.byte		N12   , Gn4
	.byte	W12
	.byte		VOICE , 81
	.byte		BEND  , c_v+1
	.byte		N03   , Fn5
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		VOICE , 92
	.byte	W12
	.byte		N06   , As3
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Cs4
	.byte	W03
	.byte		        Gs3
	.byte	W03
	.byte		        Bn3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		N24   , As4
	.byte	W24
	.byte		        Gs4
	.byte	W24
	.byte		        Fs4
	.byte	W24
	.byte		N06   , Fn4
	.byte	W12
	.byte		N12   , Fs4
	.byte	W12
	.byte		VOICE , 81
	.byte		N03   , Fs5
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		VOICE , 92
	.byte		VOL   , 52*mus_dd_3rd_gear_mvl/mxv
	.byte	W06
	.byte		N06   , As3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		N36   , Gs4
	.byte	W36
	.byte		N06   , Fs4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		N24   , Fs4
	.byte	W24
	.byte		N12   , Cs4
	.byte	W12
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		        Cs4
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		N06   , En4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		N12   , En4
	.byte	W12
	.byte		        Fs4
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		        Cs4
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		N06   , Fs4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		N12   , Fs4
	.byte	W12
	.byte		        Bn4
	.byte	W12
	.byte		VOICE , 81
	.byte		BEND  , c_v+0
	.byte		N03   , Fn5
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		        Gs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		VOICE , 92
	.byte		N36   , Gs4
	.byte	W36
	.byte		N12   , Fs4
	.byte	W12
	.byte		N06   , Fn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W12
	.byte		N12   , Fs4
	.byte	W12
	.byte		VOICE , 81
	.byte		BEND  , c_v+0
	.byte		N03   , Fn5
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		        Gs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		VOICE , 92
	.byte		N24   , As4
	.byte	W24
	.byte		        Gs4
	.byte	W24
	.byte		N06   , Fs4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Fs4
	.byte	W12
	.byte		N12   , Gs4
	.byte	W12
	.byte		VOICE , 81
	.byte		N03   , Fs5
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		VOICE , 92
	.byte		N06   , As3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		N24   , Gs4
	.byte	W24
	.byte		N06   , Fs4
	.byte	W06
	.byte		N03   , Fn4
	.byte	W12
	.byte		N06   , Ds4
	.byte	W06
	.byte		        Cs4
	.byte	W12
	.byte		N24   , Fs4
	.byte	W24
	.byte		N12   , As4
	.byte	W12
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		        Cs4
	.byte	W12
	.byte		N06   , En4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		N12   , En4
	.byte	W12
	.byte		        Fs4
	.byte	W12
	.byte		N03   , Fs5
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12   , En4
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		N06   , Fs4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		N12   , Fs4
	.byte	W12
	.byte		        Bn4
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_dd_3rd_gear_7_000
	.byte		FINE

@**************** Track 8 ****************@

mus_dd_3rd_gear_8:
	.byte		VOL   , 84*mus_dd_3rd_gear_mvl/mxv
	.byte		KEYSH , mus_dd_3rd_gear_key+0
	.byte		VOICE , 0
	.byte	W96
	.byte		PAN   , c_v+0
	.byte		N06   , Cn1 , v112
	.byte	W36
	.byte		N06
	.byte	W12
	.byte		N06
	.byte		N48   , Cn3
	.byte	W12
	.byte		N06   , Cn1
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Dn1
	.byte	W12
	.byte		VOL   , 68*mus_dd_3rd_gear_mvl/mxv
	.byte		N06   , En1
	.byte	W06
	.byte		N06
	.byte	W06
mus_dd_3rd_gear_8_000:
	.byte		N06   , Cn1 , v112
	.byte		N24   , An2
	.byte	W24
	.byte		N06   , Cn1
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12   , En1
	.byte	W12
	.byte		N06   , Cn1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12   , En1
	.byte	W12
	.byte		N06   , Cn1
	.byte	W12
	.byte		N12   , En1
	.byte	W12
	.byte		N06   , Cn1
	.byte	W24
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		        Cn1
	.byte	W06
	.byte		        Dn2
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		        Ds1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cn1
	.byte		N36   , Cs2
	.byte	W24
	.byte		N06   , Ds1
	.byte	W12
	.byte		        Cn1
	.byte	W12
	.byte		N06
	.byte		N12   , En2
	.byte	W12
	.byte		N06   , En1
	.byte		N24   , Bn2
	.byte	W12
	.byte		N06   , Cn1
	.byte	W12
	.byte		N12
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N06
	.byte	W12
mus_dd_3rd_gear_8_001:
	.byte		N06   , Cn1 , v112
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_3rd_gear_8_001
	.byte		N06   , En1 , v112
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cn1
	.byte	W12
	.byte		N21   , Cs2
	.byte	W24
	.byte		N06   , Ds1
	.byte	W12
	.byte		        Dn2
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		        Fn1
	.byte	W06
	.byte		        Dn2
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		N12   , Gn1 , v124
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		N06   , Cn1 , v112
	.byte	W12
	.byte		        Ds1 , v124
	.byte	W12
	.byte		        Cn1
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W06
	.byte		        Ds1
	.byte	W12
	.byte		        En1 , v124
	.byte	W06
	.byte		        Cn1
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N12   , Dn1
	.byte	W12
	.byte		N06   , Cn1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N12   , Dn1
	.byte	W12
	.byte		N06   , Cn1
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N18   , Dn1
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Cn1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N18   , Dn1
	.byte	W18
	.byte		N06   , Cn1
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Dn1
	.byte	W12
	.byte		N06   , Cn1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		        Cn1
	.byte	W06
	.byte		        Dn1
	.byte	W06
	.byte		N24   , Cs2
	.byte	W36
	.byte		        En2
	.byte	W24
	.byte		N21   , Gn2 , v124
	.byte	W36
	.byte		N06   , Cn1 , v112
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N12   , Dn1
	.byte	W12
	.byte		N06   , Cn1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N18   , Dn1
	.byte	W18
	.byte		N06   , Cn1
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N18   , Dn1
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Cn1
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N18   , Dn1
	.byte	W18
	.byte		N06   , Cn1
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Dn1
	.byte	W12
	.byte		N06   , Cn1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N18   , Dn1
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N12   , Cn1
	.byte	W12
	.byte		N06   , Dn1
	.byte	W12
	.byte		N12   , Cn1
	.byte	W12
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
	.byte		        Cn1
	.byte	W36
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12   , En1
	.byte	W36
	.byte		N06   , Cn1
	.byte	W36
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Dn1
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W36
	.byte		N06
	.byte	W12
	.byte		        Dn2
	.byte	W06
	.byte		        Bn1 , v116
	.byte	W06
	.byte		N12   , An1 , v112
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		        Fn1 , v116
	.byte	W12
	.byte		VOL   , 84*mus_dd_3rd_gear_mvl/mxv
	.byte		N06   , Cn1 , v112
	.byte	W06
	.byte		N12   , Dn1
	.byte	W12
	.byte		N06   , Cn1
	.byte	W06
	.byte		N12   , Dn1
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1
	.byte	W06
	.byte		N12   , An2
	.byte	W12
	.byte		N06   , Cn1
	.byte	W06
	.byte		N24   , Cs2
	.byte	W06
	.byte		N06   , Cn1
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		VOL   , 78*mus_dd_3rd_gear_mvl/mxv
	.byte		N06   , En1
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte	PATT
	 .word	mus_dd_3rd_gear_8_001
mus_dd_3rd_gear_8_002:
	.byte		N06   , En1 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_3rd_gear_8_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_8_002
	.byte	PATT
	 .word	mus_dd_3rd_gear_8_001
	.byte		N06   , En1 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		        Cn1
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		        Cn1
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		        Cn1
	.byte	W06
	.byte		        Dn1
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N06   , Cn1 , v112
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		        En1 , v080
	.byte	W12
	.byte		        Cn1 , v112
	.byte	W06
	.byte	PATT
	 .word	mus_dd_3rd_gear_8_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_8_002
	.byte	PATT
	 .word	mus_dd_3rd_gear_8_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_8_002
	.byte	PATT
	 .word	mus_dd_3rd_gear_8_001
	.byte		N06   , En1 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		        Cn1
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		        Cn1
	.byte	W06
	.byte		        Dn1
	.byte	W06
	.byte		        Cn1
	.byte	W06
	.byte		        Dn1
	.byte	W06
	.byte		        En1
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		        Cn1
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		        Cn1
	.byte	W12
	.byte		        Dn1
	.byte	W06
	.byte		N06
	.byte	W06
	.byte	W84
	.byte		        Cn1
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        En1
	.byte	W06
	.byte		N06
	.byte	W06
	.byte	GOTO
	 .word	mus_dd_3rd_gear_8_000
	.byte		FINE

@**************** Track 9 ****************@

mus_dd_3rd_gear_9:
	.byte		KEYSH , mus_dd_3rd_gear_key+0
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		XCMD  , 8 , 18
	.byte		        8
	.byte		        16
	.byte	W96
	.byte	W84
	.byte		VOL   , 51*mus_dd_3rd_gear_mvl/mxv
	.byte	W12
mus_dd_3rd_gear_9_000:
	.byte		N02   , Cn5 , v072
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W24
	.byte		PEND
mus_dd_3rd_gear_9_001:
	.byte		N02   , Cn5 , v072
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_3rd_gear_9_000
	.byte	PATT
	 .word	mus_dd_3rd_gear_9_000
mus_dd_3rd_gear_9_002:
	.byte		N02   , Cn5 , v072
	.byte	W24
	.byte		        Cn5 , v064
	.byte	W24
	.byte		N02
	.byte	W24
	.byte		N02
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_3rd_gear_9_002
	.byte	PATT
	 .word	mus_dd_3rd_gear_9_002
	.byte		N11   , Ds3 , v104
	.byte	W12
	.byte		N05   , Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W36
	.byte		N02   , Cn5 , v048
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		N03   , Cn5 , v060
	.byte	W06
	.byte		N02   , Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		N12   , En3 , v080
	.byte	W12
	.byte		N02   , Cn5 , v048
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W36
	.byte		        Cn5 , v048
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N03   , Cn5 , v048
	.byte	W18
	.byte	PATT
	 .word	mus_dd_3rd_gear_9_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_9_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_9_001
	.byte		N05   , Cs2 , v127
	.byte	W24
	.byte		N02   , Cn5 , v064
	.byte	W24
	.byte		N02
	.byte	W48
	.byte		        Cn5 , v072
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		N02
	.byte	W18
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		N02
	.byte	W18
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v072
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		N02
	.byte	W18
	.byte		N02
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		N02
	.byte	W18
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v072
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		N02
	.byte	W18
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		N02
	.byte	W18
	.byte		N02
	.byte	W12
	.byte	W18
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W18
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W48
	.byte		        Cn5 , v088
	.byte	W36
	.byte	W03
	.byte		        Cn5 , v068
	.byte	W03
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W24
	.byte		N02
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v072
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W24
	.byte		N02
	.byte	W15
	.byte		        En3
	.byte	W06
	.byte		N02
	.byte	W03
	.byte	PATT
	 .word	mus_dd_3rd_gear_9_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_9_001
mus_dd_3rd_gear_9_003:
	.byte		N02   , Cn5 , v072
	.byte	W06
	.byte		N03   , Gn5 , v096
	.byte	W18
	.byte		N02   , Cn5 , v064
	.byte	W24
	.byte		N02
	.byte	W06
	.byte		N03   , Gn5 , v096
	.byte	W18
	.byte		N02   , Cn5 , v064
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_3rd_gear_9_002
	.byte	PATT
	 .word	mus_dd_3rd_gear_9_003
	.byte	PATT
	 .word	mus_dd_3rd_gear_9_002
	.byte	PATT
	 .word	mus_dd_3rd_gear_9_003
	.byte	PATT
	 .word	mus_dd_3rd_gear_9_002
	.byte	PATT
	 .word	mus_dd_3rd_gear_9_003
	.byte	PATT
	 .word	mus_dd_3rd_gear_9_002
	.byte	PATT
	 .word	mus_dd_3rd_gear_9_003
	.byte	PATT
	 .word	mus_dd_3rd_gear_9_002
	.byte	PATT
	 .word	mus_dd_3rd_gear_9_003
	.byte	PATT
	 .word	mus_dd_3rd_gear_9_002
	.byte	PATT
	 .word	mus_dd_3rd_gear_9_003
	.byte	PATT
	 .word	mus_dd_3rd_gear_9_002
	.byte	PATT
	 .word	mus_dd_3rd_gear_9_003
	.byte	PATT
	 .word	mus_dd_3rd_gear_9_002
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_dd_3rd_gear_9_000
	.byte		FINE

@**************** Track 10 ****************@

mus_dd_3rd_gear_10:
	.byte		KEYSH , mus_dd_3rd_gear_key+0
	.byte		VOICE , 126
	.byte		LFOS  , 44
	.byte	W96
	.byte	W84
	.byte		VOL   , 48*mus_dd_3rd_gear_mvl/mxv
	.byte	W12
mus_dd_3rd_gear_10_000:
	.byte	W84
	.byte		N12   , Gn5 , v072
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		        Gn5 , v076
	.byte	W12
	.byte	W84
	.byte		        Gn5 , v080
	.byte	W12
mus_dd_3rd_gear_10_001:
	.byte	W12
	.byte		N12   , Gn5 , v060
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_3rd_gear_10_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_10_001
	.byte	W36
	.byte		N18   , Fn5 , v080
	.byte	W60
	.byte	W36
	.byte		N15   , Gn5
	.byte	W48
	.byte		N12   , Fn5
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W12
	.byte		        Gn5
	.byte	W24
	.byte		        Gn5 , v088
	.byte	W24
	.byte		N18   , Gn5 , v084
	.byte	W24
	.byte		N03   , Gn5 , v088
	.byte	W06
	.byte		N06   , Cn5
	.byte	W06
	.byte	W24
	.byte		        Fn3 , v080
	.byte	W48
	.byte		N06
	.byte	W24
	.byte	W24
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W30
	.byte		N06
	.byte	W24
	.byte	W24
	.byte		N06
	.byte	W48
	.byte		        En3
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W30
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte	W24
	.byte		N03   , Cn5 , v064
	.byte	W36
	.byte		N12   , Gn5 , v060
	.byte	W36
	.byte	W60
	.byte		N12
	.byte	W36
	.byte	W96
	.byte	W96
	.byte	PATT
	 .word	mus_dd_3rd_gear_10_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_10_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_10_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_10_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_10_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_10_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_10_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_10_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_10_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_10_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_10_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_10_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_10_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_10_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_10_001
	.byte	PATT
	 .word	mus_dd_3rd_gear_10_001
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_dd_3rd_gear_10_000
	.byte		FINE

@******************************************************@
	.align	2

mus_dd_3rd_gear:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_dd_3rd_gear_pri	@ Priority
	.byte	mus_dd_3rd_gear_rev	@ Reverb.

	.word	mus_dd_3rd_gear_grp

	.word	mus_dd_3rd_gear_1
	.word	mus_dd_3rd_gear_2
	.word	mus_dd_3rd_gear_3
	.word	mus_dd_3rd_gear_4
	.word	mus_dd_3rd_gear_5
	.word	mus_dd_3rd_gear_6
	.word	mus_dd_3rd_gear_7
	.word	mus_dd_3rd_gear_8
	.word	mus_dd_3rd_gear_9
	.word	mus_dd_3rd_gear_10

	.end
