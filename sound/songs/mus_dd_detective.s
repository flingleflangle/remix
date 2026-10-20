	.include "MPlayDef.s"

	.equ	mus_dd_detective_grp, voicegroup_dd_detective
	.equ	mus_dd_detective_pri, 0
	.equ	mus_dd_detective_rev, 0x9e
	.equ	mus_dd_detective_mvl, 127
	.equ	mus_dd_detective_key, 0
	.equ	mus_dd_detective_tbs, 1
	.equ	mus_dd_detective_exg, 0
	.equ	mus_dd_detective_cmp, 1

	.section .rodata
	.global	mus_dd_detective
	.align	2

@**************** Track 1 ****************@

mus_dd_detective_1:
	.byte		KEYSH , mus_dd_detective_key+0
	.byte		TEMPO , 158*mus_dd_detective_tbs/2
	.byte		VOICE , 38
	.byte		LFOS  , 44
	.byte		VOL   , 80*mus_dd_detective_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N06   , Fn1 , v127
	.byte	W06
	.byte		N03   , Fn1 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Fn1 , v127
	.byte	W06
	.byte		N03   , Fn1 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Fn1 , v127
	.byte	W06
	.byte		N03   , Fn1 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Fn1 , v127
	.byte	W06
	.byte		N03   , Fn1 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Ds1 , v127
	.byte	W06
	.byte		N03   , Ds1 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N06   , Ds1 , v127
	.byte	W06
	.byte		        Ds1 , v064
	.byte	W18
	.byte		        As1 , v127
	.byte	W06
	.byte		        Cn2 , v112
	.byte	W06
	.byte		N12   , Gn1
	.byte	W06
	.byte		BEND  , c_v-8
	.byte	W03
	.byte		        c_v-32
	.byte	W03
mus_dd_detective_1_000:
	.byte		BEND  , c_v+0
	.byte		N18   , Fn1 , v127
	.byte	W18
	.byte		N06   , Cn2
	.byte	W06
	.byte		        Cn2 , v064
	.byte	W12
	.byte		N24   , Gs2 , v127
	.byte	W24
	.byte		N06   , Cn2
	.byte	W06
	.byte		        Cn2 , v064
	.byte	W06
	.byte		N12   , Bn1 , v127
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		PEND
mus_dd_detective_1_001:
	.byte		N18   , Ds1 , v127
	.byte	W18
	.byte		N06   , As1
	.byte	W06
	.byte		        As1 , v064
	.byte	W12
	.byte		N24   , Gn2 , v127
	.byte	W24
	.byte		N06   , Ds1
	.byte	W06
	.byte		        Ds1 , v064
	.byte	W06
	.byte		        Gn2 , v127
	.byte	W06
	.byte		N12   , Ds1
	.byte	W12
	.byte		N06   , Ds1 , v064
	.byte	W06
	.byte		PEND
mus_dd_detective_1_002:
	.byte		N18   , Fn1 , v127
	.byte	W18
	.byte		N06   , Cn2
	.byte	W06
	.byte		        Cn2 , v064
	.byte	W12
	.byte		N24   , Gs2 , v127
	.byte	W24
	.byte		N06   , Cn2
	.byte	W06
	.byte		        Cn2 , v064
	.byte	W06
	.byte		N12   , Bn1 , v127
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_detective_1_001
mus_dd_detective_1_003:
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cs1 , v064
	.byte	W12
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Cs1 , v064
	.byte	W06
	.byte		N03   , Cs1 , v127
	.byte	W03
	.byte		N06   , Cs1 , v064
	.byte	W09
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		N06   , Cs1
	.byte	W06
	.byte		        Cs2
	.byte	W06
	.byte		        Gs1
	.byte	W06
	.byte		        Fn1
	.byte	W06
	.byte		PEND
mus_dd_detective_1_004:
	.byte		N06   , Ds1 , v127
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Ds1 , v064
	.byte	W12
	.byte		        Ds1 , v127
	.byte	W06
	.byte		        Ds1 , v064
	.byte	W06
	.byte		N03   , Ds1 , v127
	.byte	W03
	.byte		N06   , Ds1 , v064
	.byte	W09
	.byte		N12   , Dn1 , v127
	.byte	W12
	.byte		N06   , Ds1
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		        As1
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		PEND
mus_dd_detective_1_005:
	.byte		N12   , Fn1 , v127
	.byte	W12
	.byte		N06   , Fn2
	.byte	W06
	.byte		        Fn2 , v064
	.byte	W06
	.byte		        Fn1 , v127
	.byte	W06
	.byte		N12   , Ds2
	.byte	W12
	.byte		N06   , Ds2 , v064
	.byte	W06
	.byte		        Cn2 , v127
	.byte	W06
	.byte		        Cn2 , v064
	.byte	W06
	.byte		        As1 , v127
	.byte	W06
	.byte		        As1 , v064
	.byte	W06
	.byte		        Dn2 , v127
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		        As1
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		PEND
	.byte		        Ds1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N06   , Ds1 , v064
	.byte	W09
	.byte		N03   , Ds1 , v127
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N06   , Ds1 , v064
	.byte	W09
	.byte		        Ds1 , v127
	.byte	W06
	.byte		        Ds1 , v064
	.byte	W18
	.byte		        As1 , v127
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		N12   , Gn1
	.byte	W06
	.byte		BEND  , c_v-8
	.byte	W03
	.byte		        c_v-32
	.byte	W03
	.byte	PATT
	 .word	mus_dd_detective_1_000
	.byte	PATT
	 .word	mus_dd_detective_1_001
	.byte	PATT
	 .word	mus_dd_detective_1_002
	.byte	PATT
	 .word	mus_dd_detective_1_001
	.byte	PATT
	 .word	mus_dd_detective_1_003
	.byte	PATT
	 .word	mus_dd_detective_1_004
	.byte	PATT
	 .word	mus_dd_detective_1_005
	.byte		N06   , Ds1 , v127
	.byte	W06
	.byte		N03   , Ds1 , v124
	.byte	W06
	.byte		        Ds1 , v127
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N06   , Ds1 , v064
	.byte	W09
	.byte		N03   , Ds1 , v127
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N06   , Ds1 , v064
	.byte	W09
	.byte		        Ds1 , v127
	.byte	W06
	.byte		        Ds1 , v064
	.byte	W18
	.byte		        As1 , v127
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		N12   , Gn1
	.byte	W06
	.byte		BEND  , c_v-8
	.byte	W03
	.byte		        c_v-32
	.byte	W03
	.byte	GOTO
	 .word	mus_dd_detective_1_000
	.byte		FINE

@**************** Track 2 ****************@

mus_dd_detective_2:
	.byte		KEYSH , mus_dd_detective_key+0
	.byte		VOICE , 57
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 62*mus_dd_detective_mvl/mxv
	.byte		PAN   , c_v-32
	.byte	W12
	.byte		N18   , Gs3 , v112
	.byte	W18
	.byte		        Gn3
	.byte	W18
	.byte		        Fs3
	.byte	W18
	.byte		        Fn3
	.byte	W18
	.byte		N06   , Ds3
	.byte	W06
	.byte		        Ds3 , v060
	.byte	W06
	.byte		N03   , Gn4 , v112
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
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Gn4 , v060
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Gn4 , v028
	.byte	W36
mus_dd_detective_2_000:
	.byte		VOL   , 44*mus_dd_detective_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		N03   , Fn5 , v112
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-32
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N03
	.byte	W12
	.byte		        As5
	.byte	W06
	.byte		        Gn5
	.byte	W06
mus_dd_detective_2_001:
	.byte		PAN   , c_v-32
	.byte		N03   , Ds5 , v112
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-32
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N03
	.byte	W12
	.byte		N12   , En5
	.byte	W12
	.byte		PEND
	.byte		PAN   , c_v-32
	.byte		N03   , Fn5
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-32
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N03
	.byte	W12
	.byte		        As5
	.byte	W06
	.byte		        Gn5
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03   , Ds5
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-32
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N03
	.byte	W12
	.byte		        As5
	.byte	W06
	.byte		        Gn5
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03   , Cs5
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-32
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N03
	.byte	W12
	.byte		        Dn5
	.byte	W12
	.byte	PATT
	 .word	mus_dd_detective_2_001
	.byte		PAN   , c_v-32
	.byte		N03   , Fn5 , v112
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-32
	.byte	W06
	.byte		N03
	.byte	W09
	.byte		N03
	.byte	W09
	.byte		PAN   , c_v+16
	.byte		N03   , As5
	.byte	W06
	.byte		        Gn5
	.byte	W06
	.byte		        Ds5
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		VOICE , 57
	.byte		VOL   , 57*mus_dd_detective_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		N03   , Gn4
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+16
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06
	.byte	W24
	.byte		PAN   , c_v+16
	.byte	W24
	.byte		VOICE , 1
	.byte		VOL   , 29*mus_dd_detective_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		N03   , Fn5
	.byte	W12
	.byte		        Cn6
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N03   , Fn5
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		        Cn6
	.byte	W06
	.byte		PAN   , c_v-32
	.byte	W06
	.byte		N03   , Fn5
	.byte	W06
	.byte		        Cn6
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N03   , Fn5
	.byte	W12
	.byte		        Cn6
	.byte	W06
	.byte		        Gs5
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03   , Ds5
	.byte	W12
	.byte		        Cn6
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N03   , Ds5
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-32
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn6
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N03   , Ds5
	.byte	W12
	.byte		N12   , En5
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , Fn5
	.byte	W12
	.byte		        Cn6
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N03   , Fn5
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		        Cn6
	.byte	W06
	.byte		PAN   , c_v-32
	.byte	W06
	.byte		N03   , Fn5
	.byte	W06
	.byte		        Cn6
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N03   , Fn5
	.byte	W12
	.byte		        Cn6
	.byte	W06
	.byte		        Gs5
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03   , Ds5
	.byte	W12
	.byte		        Cn6
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N03   , Ds5
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		        Cn6
	.byte	W06
	.byte		PAN   , c_v-32
	.byte	W06
	.byte		N03   , Ds5
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N03
	.byte	W12
	.byte		        Cn6
	.byte	W06
	.byte		        Gn5
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03   , Cs5
	.byte	W12
	.byte		        Cn6
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N03   , Cs5
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		        Cn6
	.byte	W06
	.byte		PAN   , c_v-32
	.byte	W06
	.byte		N03   , Cs5
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N03
	.byte	W12
	.byte		        Dn5
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , Ds5
	.byte	W12
	.byte		        Cn6
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N03   , Ds5
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		        Cn6
	.byte	W06
	.byte		PAN   , c_v-32
	.byte	W06
	.byte		N03   , Ds5
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N03
	.byte	W12
	.byte		N12   , En5
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , Fn5
	.byte	W12
	.byte		        Cn6
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N03   , Fn5
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		        Cn6
	.byte	W06
	.byte		PAN   , c_v-32
	.byte	W06
	.byte		N03   , Fn5
	.byte	W09
	.byte		        Cn6
	.byte	W09
	.byte		PAN   , c_v+16
	.byte		N03   , As5
	.byte	W06
	.byte		        Gn5
	.byte	W06
	.byte		        Ds5
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		VOICE , 57
	.byte		VOL   , 51*mus_dd_detective_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N03   , Gn4
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
	.byte	W12
	.byte		N06
	.byte	W48
	.byte	GOTO
	 .word	mus_dd_detective_2_000
	.byte		FINE

@**************** Track 3 ****************@

mus_dd_detective_3:
	.byte		KEYSH , mus_dd_detective_key+0
	.byte		VOICE , 56
	.byte		LFOS  , 48
	.byte		BENDR , 12
	.byte		PAN   , c_v-1
	.byte		VOL   , 80*mus_dd_detective_mvl/mxv
	.byte	W12
	.byte		N18   , Ds5 , v127
	.byte	W18
	.byte		        Dn5
	.byte	W18
	.byte		        Cs5
	.byte	W18
	.byte		        Cn5
	.byte	W18
	.byte		N06   , As4
	.byte	W06
	.byte		        As4 , v060
	.byte	W06
	.byte		N03   , Gn4 , v127
	.byte	W03
	.byte		        Gn4 , v064
	.byte	W03
	.byte		        Gn4 , v127
	.byte	W03
	.byte		        Gn4 , v064
	.byte	W03
	.byte		        Gn4 , v127
	.byte	W03
	.byte		        Gn4 , v064
	.byte	W03
	.byte		        Gn4 , v127
	.byte	W03
	.byte		        Gn4 , v064
	.byte	W09
	.byte		        Gn4 , v127
	.byte	W03
	.byte		        Gn4 , v064
	.byte	W03
	.byte		        Gn4 , v127
	.byte	W03
	.byte		        Gn4 , v064
	.byte	W09
	.byte		N06   , Gn4 , v127
	.byte	W06
	.byte		        Gn4 , v064
	.byte	W06
	.byte		PAN   , c_v-37
	.byte		N06   , Gn4 , v044
	.byte	W12
	.byte		VOICE , 48
	.byte		VOL   , 11*mus_dd_detective_mvl/mxv
	.byte		N24   , En3 , v112
	.byte	W01
	.byte		VOL   , 15*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        17*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        22*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        25*mus_dd_detective_mvl/mxv
	.byte	W02
	.byte		        30*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        37*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        44*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        51*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        56*mus_dd_detective_mvl/mxv
	.byte	W02
	.byte		        64*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        69*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        74*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        80*mus_dd_detective_mvl/mxv
	.byte	W09
mus_dd_detective_3_000:
	.byte		VOL   , 80*mus_dd_detective_mvl/mxv
	.byte		PAN   , c_v-1
	.byte	W03
	.byte		VOICE , 56
	.byte	W06
	.byte		N03   , Bn3 , v064
	.byte	W03
	.byte		N06   , Cn4 , v112
	.byte	W06
	.byte		N12   , Cn4 , v064
	.byte	W12
	.byte		N06   , Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v064
	.byte	W06
	.byte		N18   , Gs4 , v112
	.byte	W06
	.byte		VOL   , 70*mus_dd_detective_mvl/mxv
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		VOL   , 80*mus_dd_detective_mvl/mxv
	.byte		N12   , Gn4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		        Cn5
	.byte	W12
	.byte		N06   , As4
	.byte	W06
	.byte		        Cn5
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		N54   , Gn4 , v112
	.byte	W06
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 70*mus_dd_detective_mvl/mxv
	.byte	W12
	.byte		        60*mus_dd_detective_mvl/mxv
	.byte	W06
	.byte		        50*mus_dd_detective_mvl/mxv
	.byte	W06
	.byte		        40*mus_dd_detective_mvl/mxv
	.byte	W06
	.byte		        30*mus_dd_detective_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 80*mus_dd_detective_mvl/mxv
	.byte		N24   , Gn4 , v020
	.byte	W24
	.byte	W09
	.byte		N03   , Bn3 , v064
	.byte	W03
	.byte		N06   , Cn4 , v112
	.byte	W06
	.byte		N12   , Cn4 , v064
	.byte	W12
	.byte		N06   , Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v064
	.byte	W06
	.byte		N18   , Gs4 , v112
	.byte	W06
	.byte		MOD   , 4
	.byte		VOL   , 70*mus_dd_detective_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 79*mus_dd_detective_mvl/mxv
	.byte		N12   , Gn4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		        Cn5
	.byte	W12
	.byte		N06   , As4
	.byte	W06
	.byte		        Cn5
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N18   , Ds5 , v112
	.byte	W06
	.byte		MOD   , 4
	.byte		VOL   , 70*mus_dd_detective_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 79*mus_dd_detective_mvl/mxv
	.byte		N12   , Cs5
	.byte	W12
	.byte		        Cn5
	.byte	W12
	.byte		        As4
	.byte	W12
	.byte		N06   , Gs4
	.byte	W06
	.byte		N12   , As4
	.byte	W12
	.byte		N03   , As4 , v064
	.byte	W03
	.byte		        Gn4
	.byte	W03
	.byte		N06   , Gs4 , v112
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		N03   , Fn4 , v064
	.byte	W03
	.byte		        Bn4
	.byte	W03
	.byte		N54   , Cn5 , v112
	.byte	W06
	.byte		MOD   , 0
	.byte	W12
	.byte		VOL   , 70*mus_dd_detective_mvl/mxv
	.byte		MOD   , 8
	.byte	W12
	.byte		VOL   , 60*mus_dd_detective_mvl/mxv
	.byte	W06
	.byte		        50*mus_dd_detective_mvl/mxv
	.byte	W06
	.byte		        40*mus_dd_detective_mvl/mxv
	.byte	W06
	.byte		        30*mus_dd_detective_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 80*mus_dd_detective_mvl/mxv
	.byte		N24   , Cn5 , v024
	.byte	W24
	.byte		VOL   , 80*mus_dd_detective_mvl/mxv
	.byte		N06   , Gn4 , v112
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		N03   , Ds4 , v064
	.byte	W03
	.byte		        Dn5
	.byte	W03
	.byte		N18   , Ds5 , v112
	.byte	W18
	.byte		N12   , Cs5
	.byte	W12
	.byte		        Cn5
	.byte	W12
	.byte		        As4
	.byte	W12
	.byte		N06   , Gs4
	.byte	W06
	.byte		N18   , As4
	.byte	W18
	.byte		N72   , Cn5
	.byte	W36
	.byte		MOD   , 6
	.byte		VOL   , 70*mus_dd_detective_mvl/mxv
	.byte	W12
	.byte		        60*mus_dd_detective_mvl/mxv
	.byte	W06
	.byte		        50*mus_dd_detective_mvl/mxv
	.byte	W06
	.byte		        40*mus_dd_detective_mvl/mxv
	.byte	W06
	.byte		        30*mus_dd_detective_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 80*mus_dd_detective_mvl/mxv
	.byte		N24   , Cn5 , v024
	.byte	W24
	.byte		N03   , Gn4 , v127
	.byte	W03
	.byte		        Gn4 , v064
	.byte	W03
	.byte		        Gn4 , v127
	.byte	W03
	.byte		        Gn4 , v064
	.byte	W03
	.byte		        Gn4 , v127
	.byte	W03
	.byte		        Gn4 , v064
	.byte	W03
	.byte		        Gn4 , v127
	.byte	W03
	.byte		N06   , Gn4 , v064
	.byte	W09
	.byte		N03   , Gn4 , v127
	.byte	W03
	.byte		        Gn4 , v064
	.byte	W03
	.byte		        Gn4 , v127
	.byte	W03
	.byte		        Gn4 , v064
	.byte	W09
	.byte		N06   , Gn4 , v127
	.byte	W06
	.byte		        Gn4 , v064
	.byte	W18
	.byte		VOICE , 48
	.byte		VOL   , 11*mus_dd_detective_mvl/mxv
	.byte		N24   , En3 , v112
	.byte	W01
	.byte		VOL   , 15*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        17*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        22*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        25*mus_dd_detective_mvl/mxv
	.byte	W02
	.byte		        30*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        37*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        44*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        51*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        56*mus_dd_detective_mvl/mxv
	.byte	W02
	.byte		        64*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        69*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        74*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        80*mus_dd_detective_mvl/mxv
	.byte	W09
	.byte		        80*mus_dd_detective_mvl/mxv
	.byte	W03
	.byte		VOICE , 17
	.byte	W06
	.byte		N03   , Bn4 , v064
	.byte	W03
	.byte		N06   , Cn5 , v112
	.byte	W06
	.byte		N12   , Cn5 , v064
	.byte	W12
	.byte		N06   , Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v064
	.byte	W06
	.byte		N18   , Gs5 , v112
	.byte	W06
	.byte		VOL   , 70*mus_dd_detective_mvl/mxv
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		VOL   , 80*mus_dd_detective_mvl/mxv
	.byte		N12   , Gn5
	.byte	W12
	.byte		        Fn5
	.byte	W12
	.byte		        Cn6
	.byte	W12
	.byte		N06   , As5
	.byte	W06
	.byte		        Cn6
	.byte	W06
	.byte		        Cn6 , v064
	.byte	W06
	.byte		N54   , Gn5 , v112
	.byte	W06
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 70*mus_dd_detective_mvl/mxv
	.byte	W12
	.byte		        60*mus_dd_detective_mvl/mxv
	.byte	W06
	.byte		        50*mus_dd_detective_mvl/mxv
	.byte	W06
	.byte		        40*mus_dd_detective_mvl/mxv
	.byte	W06
	.byte		        30*mus_dd_detective_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 80*mus_dd_detective_mvl/mxv
	.byte		N24   , Gn5 , v024
	.byte	W24
	.byte	W09
	.byte		N03   , Bn4 , v064
	.byte	W03
	.byte		N06   , Cn5 , v112
	.byte	W06
	.byte		N12   , Cn5 , v064
	.byte	W12
	.byte		N06   , Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v064
	.byte	W06
	.byte		N18   , Gs5 , v112
	.byte	W06
	.byte		MOD   , 4
	.byte		VOL   , 70*mus_dd_detective_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 79*mus_dd_detective_mvl/mxv
	.byte		N12   , Gn5
	.byte	W12
	.byte		        Fn5
	.byte	W12
	.byte		        Cn6
	.byte	W12
	.byte		N06   , As5
	.byte	W06
	.byte		        Cn6
	.byte	W06
	.byte		        Cn6 , v064
	.byte	W06
	.byte		N18   , Ds6 , v112
	.byte	W06
	.byte		MOD   , 4
	.byte		VOL   , 70*mus_dd_detective_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 79*mus_dd_detective_mvl/mxv
	.byte		N12   , Cs6
	.byte	W12
	.byte		        Cn6
	.byte	W12
	.byte		        As5
	.byte	W12
	.byte		N06   , Gs5
	.byte	W06
	.byte		N12   , As5
	.byte	W12
	.byte		N03   , As5 , v064
	.byte	W03
	.byte		        Gn5
	.byte	W03
	.byte		N06   , Gs5 , v112
	.byte	W06
	.byte		        Fn5
	.byte	W06
	.byte		N03   , Fn5 , v064
	.byte	W03
	.byte		        Bn5 , v088
	.byte	W03
	.byte		N54   , Cn6 , v112
	.byte	W06
	.byte		MOD   , 0
	.byte	W12
	.byte		VOL   , 70*mus_dd_detective_mvl/mxv
	.byte		MOD   , 8
	.byte	W12
	.byte		VOL   , 60*mus_dd_detective_mvl/mxv
	.byte	W06
	.byte		        50*mus_dd_detective_mvl/mxv
	.byte	W06
	.byte		        40*mus_dd_detective_mvl/mxv
	.byte	W06
	.byte		        30*mus_dd_detective_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 80*mus_dd_detective_mvl/mxv
	.byte	W24
	.byte		        80*mus_dd_detective_mvl/mxv
	.byte		N06   , Gn5
	.byte	W06
	.byte		        Ds5
	.byte	W06
	.byte		N03   , Ds5 , v064
	.byte	W03
	.byte		        Dn6 , v076
	.byte	W03
	.byte		N18   , Ds6 , v112
	.byte	W18
	.byte		N12   , Cs6
	.byte	W12
	.byte		        Cn6
	.byte	W12
	.byte		        As5
	.byte	W12
	.byte		N06   , Gs5
	.byte	W06
	.byte		N18   , As5
	.byte	W18
	.byte		N72   , Gs5
	.byte	W36
	.byte		MOD   , 6
	.byte		VOL   , 70*mus_dd_detective_mvl/mxv
	.byte	W12
	.byte		        60*mus_dd_detective_mvl/mxv
	.byte	W06
	.byte		        50*mus_dd_detective_mvl/mxv
	.byte	W06
	.byte		        40*mus_dd_detective_mvl/mxv
	.byte	W06
	.byte		        30*mus_dd_detective_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 80*mus_dd_detective_mvl/mxv
	.byte		N24   , Gs5 , v028
	.byte	W24
	.byte		VOICE , 56
	.byte		N03   , Gn4 , v127
	.byte	W03
	.byte		        Gn4 , v064
	.byte	W03
	.byte		        Gn4 , v127
	.byte	W03
	.byte		        Gn4 , v064
	.byte	W03
	.byte		        Gn4 , v127
	.byte	W03
	.byte		        Gn4 , v064
	.byte	W03
	.byte		        Gn4 , v127
	.byte	W03
	.byte		N06   , Gn4 , v064
	.byte	W09
	.byte		N03   , Gn4 , v127
	.byte	W03
	.byte		        Gn4 , v064
	.byte	W03
	.byte		        Gn4 , v127
	.byte	W03
	.byte		        Gn4 , v064
	.byte	W09
	.byte		N06   , Gn4 , v127
	.byte	W06
	.byte		N09   , Gn4 , v064
	.byte	W18
	.byte		VOICE , 48
	.byte		VOL   , 11*mus_dd_detective_mvl/mxv
	.byte		N24   , En3 , v112
	.byte	W01
	.byte		VOL   , 15*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        17*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        22*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        25*mus_dd_detective_mvl/mxv
	.byte	W02
	.byte		        30*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        37*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        44*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        51*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        56*mus_dd_detective_mvl/mxv
	.byte	W02
	.byte		        64*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        69*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        74*mus_dd_detective_mvl/mxv
	.byte	W01
	.byte		        80*mus_dd_detective_mvl/mxv
	.byte	W09
	.byte	GOTO
	 .word	mus_dd_detective_3_000
	.byte		FINE

@**************** Track 4 ****************@

mus_dd_detective_4:
	.byte		KEYSH , mus_dd_detective_key+0
	.byte		VOICE , 80
	.byte		LFOS  , 56
	.byte		XCMD  , 8 , 18
	.byte		        8
	.byte		        16
	.byte		BENDR , 12
	.byte		PAN   , c_v-64
	.byte		VOL   , 40*mus_dd_detective_mvl/mxv
	.byte	W12
	.byte		N18   , Gs4 , v112
	.byte	W18
	.byte		        Gn4
	.byte	W18
	.byte		        Fs4
	.byte	W18
	.byte		        Fn4
	.byte	W18
	.byte		N06   , Ds4
	.byte	W12
	.byte		N03   , As3
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
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        As3 , v060
	.byte	W18
	.byte		VOL   , 10*mus_dd_detective_mvl/mxv
	.byte		N24   , Gn2 , v112
	.byte	W06
	.byte		VOL   , 20*mus_dd_detective_mvl/mxv
	.byte	W03
	.byte		        30*mus_dd_detective_mvl/mxv
	.byte	W03
	.byte		        35*mus_dd_detective_mvl/mxv
	.byte	W03
	.byte		        60*mus_dd_detective_mvl/mxv
	.byte	W09
mus_dd_detective_4_000:
	.byte		VOL   , 40*mus_dd_detective_mvl/mxv
	.byte		N03   , Fn1 , v112
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		N06   , Fn3
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		N06   , Ds3
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		N06   , Fn3
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		N06   , Gn3
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		N06   , Gs3
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		PEND
mus_dd_detective_4_001:
	.byte		N06   , Ds3 , v112
	.byte	W06
	.byte		N03   , As2
	.byte	W06
	.byte		N06   , As3
	.byte	W06
	.byte		N03   , Gn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		N06   , As3
	.byte	W06
	.byte		N03   , Gn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		N06   , Gn3
	.byte	W06
	.byte		N03   , Ds3
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , As2
	.byte	W06
	.byte		N06   , Gn3
	.byte	W06
	.byte		N18   , As3
	.byte	W18
	.byte		PEND
mus_dd_detective_4_002:
	.byte		N03   , Fn1 , v112
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		N06   , Fn3
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		N06   , Ds3
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		N06   , Fn3
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		N06   , Gn3
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		N06   , Gs3
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		PEND
mus_dd_detective_4_003:
	.byte		N06   , Ds3 , v112
	.byte	W06
	.byte		N03   , As2
	.byte	W06
	.byte		N06   , As3
	.byte	W06
	.byte		N03   , Gn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		N06   , As3
	.byte	W06
	.byte		N03   , Gn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		N06   , Gn3
	.byte	W06
	.byte		N03   , Ds3
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , As2
	.byte	W06
	.byte		N06   , Gn3
	.byte	W06
	.byte		N18   , As3 , v060
	.byte	W18
	.byte		PEND
mus_dd_detective_4_004:
	.byte		N03   , Cs1 , v112
	.byte	W06
	.byte		        Cs2
	.byte	W06
	.byte		N06   , Fn3
	.byte	W06
	.byte		N03   , Cs3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		N06   , Fn3
	.byte	W06
	.byte		N03   , Cs3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		N06   , Fn3
	.byte	W06
	.byte		N03   , Cs3
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Gs2
	.byte	W06
	.byte		N06   , Fn3
	.byte	W06
	.byte		N18   , Gs3
	.byte	W18
	.byte		PEND
mus_dd_detective_4_005:
	.byte		N03   , Ds1 , v112
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		N06   , Gn3
	.byte	W06
	.byte		N03   , Ds3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		N06   , Ds3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		N06   , Gn3
	.byte	W06
	.byte		N03   , Ds3
	.byte	W06
	.byte		N06   , Fn3
	.byte	W06
	.byte		N03   , As2
	.byte	W06
	.byte		N06   , Gn3
	.byte	W06
	.byte		N18   , As3
	.byte	W18
	.byte		PEND
mus_dd_detective_4_006:
	.byte		N03   , Fn1 , v112
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		N06   , Cn4
	.byte	W06
	.byte		N03   , Gn3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		N06   , Gn3
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		N06   , Gn3
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		N06   , Gn3
	.byte	W06
	.byte		N03   , As2
	.byte	W06
	.byte		N06   , Gn3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		PEND
mus_dd_detective_4_007:
	.byte		N03   , As3 , v112
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
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		VOL   , 10*mus_dd_detective_mvl/mxv
	.byte		N24   , Gn2
	.byte	W06
	.byte		VOL   , 20*mus_dd_detective_mvl/mxv
	.byte	W03
	.byte		        30*mus_dd_detective_mvl/mxv
	.byte	W03
	.byte		        35*mus_dd_detective_mvl/mxv
	.byte	W03
	.byte		        60*mus_dd_detective_mvl/mxv
	.byte	W09
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_detective_4_000
	.byte	PATT
	 .word	mus_dd_detective_4_001
	.byte	PATT
	 .word	mus_dd_detective_4_002
	.byte	PATT
	 .word	mus_dd_detective_4_003
	.byte	PATT
	 .word	mus_dd_detective_4_004
	.byte	PATT
	 .word	mus_dd_detective_4_005
	.byte	PATT
	 .word	mus_dd_detective_4_006
	.byte	PATT
	 .word	mus_dd_detective_4_007
	.byte	GOTO
	 .word	mus_dd_detective_4_000
	.byte		FINE

@**************** Track 5 ****************@

mus_dd_detective_5:
	.byte		KEYSH , mus_dd_detective_key+0
	.byte		VOICE , 86
	.byte		LFOS  , 49
	.byte		XCMD  , 8 , 18
	.byte		        8
	.byte		        16
	.byte		BENDR , 12
	.byte		VOL   , 40*mus_dd_detective_mvl/mxv
	.byte		PAN   , c_v+63
	.byte	W12
	.byte		N18   , Cn5 , v112
	.byte	W18
	.byte		        Bn4
	.byte	W18
	.byte		        As4
	.byte	W18
	.byte		        Gs4
	.byte	W18
	.byte		N06   , Gn4
	.byte	W12
	.byte		N03   , Ds4
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
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Ds4 , v060
	.byte	W18
	.byte		VOL   , 10*mus_dd_detective_mvl/mxv
	.byte		N24   , Cn3 , v112
	.byte	W06
	.byte		VOL   , 20*mus_dd_detective_mvl/mxv
	.byte	W03
	.byte		        30*mus_dd_detective_mvl/mxv
	.byte	W03
	.byte		        35*mus_dd_detective_mvl/mxv
	.byte	W03
	.byte		        60*mus_dd_detective_mvl/mxv
	.byte	W09
mus_dd_detective_5_000:
	.byte		VOL   , 40*mus_dd_detective_mvl/mxv
	.byte		N03   , Fn1 , v112
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		N06   , Gs3
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		N06   , Gn3
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		N06   , Gs3
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		N06   , As3
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		N06   , Cn4
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		PEND
mus_dd_detective_5_001:
	.byte		N06   , As3 , v112
	.byte	W06
	.byte		N03   , As2
	.byte	W06
	.byte		N06   , Ds4
	.byte	W06
	.byte		N03   , Gn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		N06   , Cs4
	.byte	W06
	.byte		N03   , Gn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		N06   , Cn4
	.byte	W06
	.byte		N03   , Ds3
	.byte	W06
	.byte		N06   , As3
	.byte	W06
	.byte		N03   , As2
	.byte	W06
	.byte		N06   , Bn3
	.byte	W06
	.byte		N18   , Cn4
	.byte	W18
	.byte		PEND
mus_dd_detective_5_002:
	.byte		N03   , Fn1 , v112
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		N06   , Gs3
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		N06   , Gn3
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		N06   , Gs3
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		N06   , As3
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		N06   , Cn4
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		PEND
mus_dd_detective_5_003:
	.byte		N06   , As3 , v112
	.byte	W06
	.byte		N03   , As2
	.byte	W06
	.byte		N06   , Ds4
	.byte	W06
	.byte		N03   , Gn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		N06   , Cs4
	.byte	W06
	.byte		N03   , Gn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		N06   , Cn4
	.byte	W06
	.byte		N03   , Ds3
	.byte	W06
	.byte		N06   , As3
	.byte	W06
	.byte		N03   , As2
	.byte	W06
	.byte		N06   , Bn3
	.byte	W06
	.byte		N18   , Cn4 , v060
	.byte	W18
	.byte		PEND
mus_dd_detective_5_004:
	.byte		N03   , Cs1 , v112
	.byte	W06
	.byte		        Cs2
	.byte	W06
	.byte		N06   , Gs3
	.byte	W06
	.byte		N03   , Cs3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		N06   , Gn3
	.byte	W06
	.byte		N03   , Cs3
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		N06   , Gs3
	.byte	W06
	.byte		N03   , Cs3
	.byte	W06
	.byte		N06   , Gn3
	.byte	W06
	.byte		N03   , Gs2
	.byte	W06
	.byte		N06   , As3
	.byte	W06
	.byte		N18   , Cn4
	.byte	W18
	.byte		PEND
mus_dd_detective_5_005:
	.byte		N03   , Ds1 , v112
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		N06   , As3
	.byte	W06
	.byte		N03   , Ds3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		N06   , Gs3
	.byte	W06
	.byte		N03   , Ds3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		N06   , As3
	.byte	W06
	.byte		N03   , Ds3
	.byte	W06
	.byte		N06   , Gs3
	.byte	W06
	.byte		N03   , As2
	.byte	W06
	.byte		N06   , As3
	.byte	W06
	.byte		N18   , Cs4
	.byte	W18
	.byte		PEND
mus_dd_detective_5_006:
	.byte		N03   , Fn1 , v112
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		N06   , Ds4
	.byte	W06
	.byte		N03   , Gn3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		N06   , Cs4
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		N06   , Cn4
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		N06   , As3
	.byte	W06
	.byte		N03   , As2
	.byte	W06
	.byte		N06   , Cn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		PEND
mus_dd_detective_5_007:
	.byte		N03   , Ds4 , v112
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
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		VOL   , 10*mus_dd_detective_mvl/mxv
	.byte		N24   , Cn3
	.byte	W06
	.byte		VOL   , 20*mus_dd_detective_mvl/mxv
	.byte	W03
	.byte		        30*mus_dd_detective_mvl/mxv
	.byte	W03
	.byte		        35*mus_dd_detective_mvl/mxv
	.byte	W03
	.byte		        60*mus_dd_detective_mvl/mxv
	.byte	W09
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_detective_5_000
	.byte	PATT
	 .word	mus_dd_detective_5_001
	.byte	PATT
	 .word	mus_dd_detective_5_002
	.byte	PATT
	 .word	mus_dd_detective_5_003
	.byte	PATT
	 .word	mus_dd_detective_5_004
	.byte	PATT
	 .word	mus_dd_detective_5_005
	.byte	PATT
	 .word	mus_dd_detective_5_006
	.byte	PATT
	 .word	mus_dd_detective_5_007
	.byte	GOTO
	 .word	mus_dd_detective_5_000
	.byte		FINE

@**************** Track 6 ****************@

mus_dd_detective_6:
	.byte		VOL   , 80*mus_dd_detective_mvl/mxv
	.byte		KEYSH , mus_dd_detective_key+0
	.byte		VOICE , 0
	.byte		N06   , Cn1 , v112
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		        Cn1
	.byte	W06
	.byte		        Dn1
	.byte	W12
	.byte		        Cn1
	.byte	W06
	.byte		        Dn1
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Cn1
	.byte	W12
	.byte		        Dn1
	.byte	W12
mus_dd_detective_6_000:
	.byte		N06   , Dn1 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W48
	.byte		PEND
mus_dd_detective_6_001:
	.byte		N12   , Cn1 , v112
	.byte	W18
	.byte		N12
	.byte	W18
	.byte		N12
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Dn1
	.byte	W18
	.byte		PEND
mus_dd_detective_6_002:
	.byte		N06   , Cn1 , v112
	.byte	W18
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Dn1
	.byte	W18
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_detective_6_002
mus_dd_detective_6_003:
	.byte		N06   , Cn1 , v112
	.byte	W18
	.byte		        Dn1
	.byte	W06
	.byte		        Cn1
	.byte	W06
	.byte		        Dn1
	.byte	W06
	.byte		        Cn1
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Dn1
	.byte	W12
	.byte		        Cn1
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Dn1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		PEND
mus_dd_detective_6_004:
	.byte		N06   , Cn1 , v112
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
	.byte		PEND
mus_dd_detective_6_005:
	.byte		N06   , Cn1 , v112
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		        Cn1
	.byte	W06
	.byte		        Dn1
	.byte	W06
	.byte		        Cn1
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Dn1
	.byte	W06
	.byte		        Cs1
	.byte	W12
	.byte		        Cn1
	.byte	W06
	.byte		PEND
mus_dd_detective_6_006:
	.byte		N06   , Cn1 , v112
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
	.byte		        Cn2
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		        Fn1
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_detective_6_000
	.byte	PATT
	 .word	mus_dd_detective_6_001
	.byte	PATT
	 .word	mus_dd_detective_6_002
	.byte	PATT
	 .word	mus_dd_detective_6_002
	.byte	PATT
	 .word	mus_dd_detective_6_003
	.byte	PATT
	 .word	mus_dd_detective_6_004
	.byte	PATT
	 .word	mus_dd_detective_6_005
	.byte	PATT
	 .word	mus_dd_detective_6_006
	.byte	PATT
	 .word	mus_dd_detective_6_000
	.byte	GOTO
	 .word	mus_dd_detective_6_001
	.byte		FINE

@**************** Track 7 ****************@

mus_dd_detective_7:
	.byte		KEYSH , mus_dd_detective_key+0
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		XCMD  , 8 , 18
	.byte		        8
	.byte		        16
	.byte		VOL   , 48*mus_dd_detective_mvl/mxv
	.byte		N03   , Cn5 , v080
	.byte	W06
	.byte		N01   , Cn5 , v032
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03   , Cn5 , v080
	.byte	W06
	.byte		N01   , Cn5 , v032
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03   , Cn5 , v080
	.byte	W06
	.byte		N01   , Cn5 , v032
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03   , Cn5 , v080
	.byte	W06
	.byte		N01   , Cn5 , v032
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03   , Cn5 , v080
	.byte	W06
	.byte		N01   , Cn5 , v032
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03   , Cn5 , v080
	.byte	W06
	.byte		N01   , Cn5 , v032
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03   , Cn5 , v080
	.byte	W06
	.byte		N01   , Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		N03   , Cn5 , v080
	.byte	W06
	.byte		N01   , Cn5 , v032
	.byte	W06
	.byte		N12   , Gn5 , v060
	.byte	W12
mus_dd_detective_7_000:
	.byte		N03   , Cn5 , v080
	.byte	W06
	.byte		N01   , Cn5 , v032
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03   , Cn5 , v080
	.byte	W06
	.byte		N01   , Cn5 , v032
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03   , Cn5 , v080
	.byte	W06
	.byte		N01   , Cn5 , v032
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03   , Cn5 , v080
	.byte	W06
	.byte		N01   , Cn5 , v032
	.byte	W06
	.byte		N12   , Gn5 , v060
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_detective_7_000
	.byte	PATT
	 .word	mus_dd_detective_7_000
mus_dd_detective_7_001:
	.byte		N03   , Cn5 , v080
	.byte	W06
	.byte		N01   , Cn5 , v032
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03   , Cn5 , v080
	.byte	W06
	.byte		N01   , Cn5 , v032
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03   , Cn5 , v080
	.byte	W06
	.byte		N01   , Cn5 , v064
	.byte	W06
	.byte		N12   , Gn5 , v060
	.byte	W12
	.byte		N03   , Cn5 , v080
	.byte	W06
	.byte		N01   , Cn5 , v068
	.byte	W06
	.byte		N12   , Gn5 , v060
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_detective_7_000
	.byte	PATT
	 .word	mus_dd_detective_7_000
	.byte	PATT
	 .word	mus_dd_detective_7_000
	.byte	PATT
	 .word	mus_dd_detective_7_000
	.byte	PATT
	 .word	mus_dd_detective_7_000
	.byte	PATT
	 .word	mus_dd_detective_7_000
	.byte	PATT
	 .word	mus_dd_detective_7_000
	.byte	PATT
	 .word	mus_dd_detective_7_001
	.byte	PATT
	 .word	mus_dd_detective_7_000
	.byte	PATT
	 .word	mus_dd_detective_7_000
	.byte	PATT
	 .word	mus_dd_detective_7_000
	.byte	PATT
	 .word	mus_dd_detective_7_000
	.byte	GOTO
	 .word	mus_dd_detective_7_000
	.byte		FINE

@**************** Track 8 ****************@

mus_dd_detective_8:
	.byte		KEYSH , mus_dd_detective_key+0
	.byte		VOICE , 98
	.byte		LFOS  , 51
	.byte		VOL   , 40*mus_dd_detective_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
	.byte	W96
mus_dd_detective_8_000:
	.byte		VOICE , 96
	.byte	W12
	.byte		N06   , Gs3 , v100
	.byte	W18
	.byte		        Cn4
	.byte	W12
	.byte		N18   , Fn4
	.byte	W06
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N12   , Ds4
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        Gs4
	.byte	W12
	.byte		N06   , Ds4
	.byte	W06
	.byte		        Gn4
	.byte	W12
	.byte		N30   , Ds4
	.byte	W06
	.byte		MOD   , 7
	.byte	W24
	.byte		VOICE , 83
	.byte		MOD   , 0
	.byte		N03   , Cn4 , v096
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Cn5
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Cn5
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cn5
	.byte	W06
mus_dd_detective_8_001:
	.byte		VOICE , 96
	.byte	W12
	.byte		N06   , Gs3 , v064
	.byte	W18
	.byte		        Cn4
	.byte	W12
	.byte		N18   , Fn4
	.byte	W18
	.byte		N12   , Ds4
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        Gs4
	.byte	W12
	.byte		PEND
mus_dd_detective_8_002:
	.byte		N06   , Gn4 , v064
	.byte	W06
	.byte		        As4
	.byte	W12
	.byte		N18   , Cn5
	.byte	W18
	.byte		N12   , As4
	.byte	W12
	.byte		        Gs4
	.byte	W12
	.byte		        Gn4
	.byte	W12
	.byte		N06   , Fn4
	.byte	W06
	.byte		N12   , Gn4
	.byte	W18
	.byte		PEND
mus_dd_detective_8_003:
	.byte		N06   , Fn4 , v064
	.byte	W06
	.byte		        Cs4
	.byte	W12
	.byte		N54   , Gs4
	.byte	W78
	.byte		PEND
mus_dd_detective_8_004:
	.byte		N06   , Ds4 , v064
	.byte	W06
	.byte		        As3
	.byte	W12
	.byte		N18   , As4
	.byte	W18
	.byte		N12   , Gs4
	.byte	W12
	.byte		        Gn4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		N06   , Ds4
	.byte	W06
	.byte		N18   , Fn4
	.byte	W18
	.byte		PEND
	.byte		N48   , Gs4
	.byte	W48
	.byte		VOICE , 83
	.byte		N03   , Fn3
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte	W96
	.byte		VOICE , 96
	.byte	W12
	.byte		N06   , Gs3 , v100
	.byte	W18
	.byte		        Cn4
	.byte	W12
	.byte		N18   , Fn4
	.byte	W18
	.byte		N12   , Ds4
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        Gs4
	.byte	W12
	.byte		N06   , Ds4
	.byte	W06
	.byte		        Gn4
	.byte	W12
	.byte		N30   , Ds4
	.byte	W30
	.byte		VOICE , 83
	.byte		N03   , Cn4 , v096
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Cn5
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Cn5
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cn5
	.byte	W06
	.byte	PATT
	 .word	mus_dd_detective_8_001
	.byte	PATT
	 .word	mus_dd_detective_8_002
	.byte	PATT
	 .word	mus_dd_detective_8_003
	.byte	PATT
	 .word	mus_dd_detective_8_004
	.byte		N48   , Cn4 , v064
	.byte	W48
	.byte		VOICE , 83
	.byte		N03   , Fn3
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte	W96
	.byte	GOTO
	 .word	mus_dd_detective_8_000
	.byte		FINE

@******************************************************@
	.align	2

mus_dd_detective:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_dd_detective_pri	@ Priority
	.byte	mus_dd_detective_rev	@ Reverb.

	.word	mus_dd_detective_grp

	.word	mus_dd_detective_1
	.word	mus_dd_detective_2
	.word	mus_dd_detective_3
	.word	mus_dd_detective_4
	.word	mus_dd_detective_5
	.word	mus_dd_detective_6
	.word	mus_dd_detective_7
	.word	mus_dd_detective_8

	.end
