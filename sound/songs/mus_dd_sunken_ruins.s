	.include "MPlayDef.s"

	.equ	mus_dd_sunken_ruins_grp, voicegroup_dd_sunken_ruins
	.equ	mus_dd_sunken_ruins_pri, 0
	.equ	mus_dd_sunken_ruins_rev, 0x9e
	.equ	mus_dd_sunken_ruins_mvl, 127
	.equ	mus_dd_sunken_ruins_key, 0
	.equ	mus_dd_sunken_ruins_tbs, 1
	.equ	mus_dd_sunken_ruins_exg, 0
	.equ	mus_dd_sunken_ruins_cmp, 1

	.section .rodata
	.global	mus_dd_sunken_ruins
	.align	2

@**************** Track 1 ****************@

mus_dd_sunken_ruins_1:
	.byte		KEYSH , mus_dd_sunken_ruins_key+0
	.byte		TEMPO , 102*mus_dd_sunken_ruins_tbs/2
	.byte		VOICE , 48
	.byte		VOL   , 60*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v-32
	.byte	W84
	.byte		BENDR , 44
	.byte	W12
	.byte	W72
	.byte		VOICE , 48
	.byte	W24
	.byte		VOL   , 11*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v-41
	.byte		N96   , An3 , v127
	.byte	W12
	.byte		VOL   , 12*mus_dd_sunken_ruins_mvl/mxv
	.byte	W08
	.byte		        13*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        14*mus_dd_sunken_ruins_mvl/mxv
	.byte	W06
	.byte		        15*mus_dd_sunken_ruins_mvl/mxv
	.byte	W04
	.byte		        15*mus_dd_sunken_ruins_mvl/mxv
	.byte	W06
	.byte		        17*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        17*mus_dd_sunken_ruins_mvl/mxv
	.byte	W06
	.byte		        18*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        20*mus_dd_sunken_ruins_mvl/mxv
	.byte	W04
	.byte		        22*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        22*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        25*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        25*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        27*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        30*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        33*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        36*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        40*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        47*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        50*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v-32
	.byte	W02
	.byte		VOL   , 55*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        60*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        64*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v-25
	.byte	W02
	.byte		VOL   , 68*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v-21
	.byte	W02
	.byte		VOL   , 74*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        80*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v-16
	.byte	W02
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-6
	.byte	W08
	.byte		VOICE , 24
	.byte		PAN   , c_v+0
	.byte		N08   , Dn4
	.byte	W08
	.byte		N04   , Fs3 , v112
	.byte	W04
	.byte		        As3
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		N08   , Cs4 , v127
	.byte	W08
	.byte		N04   , Fs3 , v112
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		N08   , Dn4 , v127
	.byte	W08
	.byte		N04   , Fs3 , v112
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		N08   , En4 , v127
	.byte	W08
	.byte		N04   , Fs3 , v112
	.byte	W04
	.byte		        Gs3
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        En4
	.byte	W04
mus_dd_sunken_ruins_1_000:
	.byte		VOICE , 24
	.byte		VOL   , 80*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N04   , Fs4 , v127
	.byte	W04
	.byte		        Fs4 , v056
	.byte	W04
	.byte		        Gn4 , v127
	.byte	W08
	.byte		N02   , Gn4 , v048
	.byte	W02
	.byte		        Fn4 , v072
	.byte	W02
	.byte		N04   , Fs4 , v127
	.byte	W04
	.byte		        Fs4 , v056
	.byte	W04
	.byte		        Fs4 , v048
	.byte	W04
	.byte		        Dn4 , v127
	.byte	W04
	.byte		        Dn4 , v056
	.byte	W04
	.byte		        Dn4 , v048
	.byte	W04
	.byte		N16   , Bn3 , v127
	.byte	W16
	.byte		N08   , Gn3
	.byte	W08
	.byte		N04   , Dn3
	.byte	W04
	.byte		N08   , Bn3
	.byte	W08
	.byte		N04   , Gn3
	.byte	W04
	.byte		N08   , Dn4
	.byte	W08
	.byte		N04   , Bn3
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Fs4 , v056
	.byte	W04
	.byte		        Gn4 , v127
	.byte	W04
	.byte		        Gn4 , v056
	.byte	W04
	.byte		N02   , Gn4 , v044
	.byte	W02
	.byte		        Fn4 , v080
	.byte	W02
	.byte		N04   , Fs4 , v127
	.byte	W04
	.byte		        Fs4 , v056
	.byte	W04
	.byte		        Fs4 , v048
	.byte	W04
	.byte		        Dn4 , v127
	.byte	W04
	.byte		        Dn4 , v056
	.byte	W04
	.byte		        Dn4 , v048
	.byte	W04
	.byte		N28   , As3 , v127
	.byte	W16
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N04   , As3 , v056
	.byte	W04
	.byte		        As3 , v032
	.byte	W04
	.byte		        As3 , v127
	.byte	W04
	.byte		N08   , Cn4
	.byte	W08
	.byte		N04   , As3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        An3 , v056
	.byte	W04
	.byte		        En3 , v127
	.byte	W04
	.byte		        En3 , v056
	.byte	W04
	.byte		        En3 , v052
	.byte	W04
	.byte		N40   , An4 , v127
	.byte	W16
	.byte		VOL   , 70*mus_dd_sunken_ruins_mvl/mxv
	.byte		MOD   , 6
	.byte	W24
	.byte		VOL   , 80*mus_dd_sunken_ruins_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Gn4
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		N12   , An4
	.byte	W02
	.byte		MOD   , 0
	.byte	W10
	.byte		N04   , Bn4
	.byte	W04
	.byte		        Bn4 , v056
	.byte	W04
	.byte		        Fs4 , v127
	.byte	W04
	.byte		        Fs4 , v056
	.byte	W04
	.byte		        Fs4 , v048
	.byte	W04
	.byte		N12   , En4 , v127
	.byte	W12
	.byte		N04   , Fs4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		        En4 , v056
	.byte	W04
	.byte		N28   , Ds4 , v127
	.byte	W10
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N06   , Ds4 , v056
	.byte	W24
	.byte		N04   , Fs4 , v127
	.byte	W04
	.byte		        Fs4 , v056
	.byte	W04
	.byte		N12   , Gn4 , v127
	.byte	W12
	.byte		N04   , Fs4
	.byte	W04
	.byte		        Fs4 , v056
	.byte	W04
	.byte		        Fs4 , v048
	.byte	W04
	.byte		        Dn4 , v127
	.byte	W04
	.byte		        Dn4 , v056
	.byte	W04
	.byte		        Dn4 , v048
	.byte	W04
	.byte		N16   , Bn4 , v127
	.byte	W04
	.byte		MOD   , 5
	.byte	W12
	.byte		N08   , Bn3
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte		N04   , Fs3
	.byte	W04
	.byte		N08   , Dn4
	.byte	W08
	.byte		N04   , Bn3
	.byte	W04
	.byte		N08   , En4
	.byte	W08
	.byte		N04   , Dn4
	.byte	W04
	.byte		VOL   , 80*mus_dd_sunken_ruins_mvl/mxv
	.byte		N04   , Fs4
	.byte	W04
	.byte		        Fs4 , v056
	.byte	W04
	.byte		N12   , Gn4 , v127
	.byte	W12
	.byte		N04   , Fs4
	.byte	W04
	.byte		        Fs4 , v056
	.byte	W04
	.byte		        Fs4 , v044
	.byte	W04
	.byte		        Dn4 , v127
	.byte	W04
	.byte		N02   , Fs4 , v060
	.byte	W02
	.byte		        Gn4
	.byte	W02
	.byte		        Gs4
	.byte	W02
	.byte		        An4
	.byte	W02
	.byte		N28   , As4 , v127
	.byte	W04
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N04   , As4 , v056
	.byte	W04
	.byte		        As4 , v044
	.byte	W04
	.byte		        Cn5 , v127
	.byte	W04
	.byte		        As4
	.byte	W04
	.byte		        As4 , v056
	.byte	W04
	.byte		        An4 , v127
	.byte	W04
	.byte		        An4 , v056
	.byte	W04
	.byte		        An4 , v048
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		N12   , An3 , v127
	.byte	W12
	.byte		N08   , An4
	.byte	W08
	.byte		N06   , An3
	.byte	W06
	.byte		N04   , An3 , v056
	.byte	W06
	.byte		        An4 , v127
	.byte	W04
	.byte		N08   , An3
	.byte	W08
	.byte		N04   , An3 , v056
	.byte	W04
	.byte		N06   , An4 , v127
	.byte	W08
	.byte		N12   , An3
	.byte	W12
	.byte		N04   , An4
	.byte	W04
	.byte		        En4
	.byte	W08
	.byte		N02   , Cs4
	.byte	W02
	.byte		        Fn4 , v076
	.byte	W02
	.byte		N04   , Fs4 , v127
	.byte	W04
	.byte		        Fs4 , v056
	.byte	W04
	.byte		        Fs4 , v127
	.byte	W04
	.byte		        Fs4 , v056
	.byte	W04
	.byte		        Fs4 , v048
	.byte	W04
	.byte		        Gn4 , v127
	.byte	W04
	.byte		        Gn4 , v056
	.byte	W04
	.byte		        Gn4 , v048
	.byte	W04
	.byte		N16   , An4 , v127
	.byte	W04
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N04   , Bn4
	.byte	W04
	.byte		        Bn4 , v056
	.byte	W04
	.byte		        Fs4 , v127
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		        En4 , v056
	.byte	W04
	.byte		N12   , Ds4 , v127
	.byte	W12
	.byte		VOICE , 17
	.byte		N04   , Bn4
	.byte	W04
	.byte		N08   , Cs5
	.byte	W08
	.byte		N04   , Bn4
	.byte	W04
	.byte		N08   , An5 , v112
	.byte	W08
	.byte		N04   , As5
	.byte	W08
	.byte		        As5 , v044
	.byte	W04
	.byte		        An5 , v112
	.byte	W08
	.byte		        An5 , v048
	.byte	W04
	.byte		        Fn5 , v112
	.byte	W08
	.byte		        Fn5 , v048
	.byte	W04
	.byte		N28   , Dn5 , v112
	.byte	W28
	.byte		N08   , En5
	.byte	W08
	.byte		N04   , Fn5
	.byte	W04
	.byte		N02   , En5
	.byte	W02
	.byte		        Fn5
	.byte	W02
	.byte		N04   , En5
	.byte	W04
	.byte		        Dn5
	.byte	W04
	.byte		VOL   , 70*mus_dd_sunken_ruins_mvl/mxv
	.byte		N06   , Dn5 , v056
	.byte	W08
	.byte		N04
	.byte	W04
	.byte		VOICE , 24
	.byte		N04   , Cn4 , v127
	.byte	W04
	.byte		        Cn4 , v056
	.byte	W04
	.byte		N12   , Fn4 , v127
	.byte	W12
	.byte		N04   , En4
	.byte	W04
	.byte		N12   , Gn4
	.byte	W12
	.byte		N04   , Fn4
	.byte	W04
	.byte		        Fn4 , v056
	.byte	W04
	.byte		N12   , An4 , v127
	.byte	W12
	.byte		N04   , Gn4
	.byte	W04
	.byte		        As4
	.byte	W04
	.byte		        Gn4
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		N08   , An4
	.byte	W08
	.byte		N04   , Cn5
	.byte	W04
	.byte		VOICE , 17
	.byte		VOL   , 56*mus_dd_sunken_ruins_mvl/mxv
	.byte		N08   , An5 , v112
	.byte	W08
	.byte		N04   , As5
	.byte	W08
	.byte		        As5 , v048
	.byte	W04
	.byte		        Cn6 , v112
	.byte	W08
	.byte		        Cn6 , v048
	.byte	W04
	.byte		        Fn5 , v112
	.byte	W08
	.byte		        Fn5 , v044
	.byte	W04
	.byte		N12   , Gn5 , v112
	.byte	W12
	.byte		N04   , Fn5
	.byte	W04
	.byte		N08   , En5
	.byte	W08
	.byte		N04   , Dn5
	.byte	W04
	.byte		N08   , Cn5
	.byte	W08
	.byte		N04   , Dn5
	.byte	W04
	.byte		N08   , En5
	.byte	W08
	.byte		N04   , Cn5
	.byte	W04
	.byte		VOL   , 69*mus_dd_sunken_ruins_mvl/mxv
	.byte	W04
	.byte		N04   , Cn5 , v052
	.byte	W08
	.byte		VOICE , 24
	.byte		N04   , Cn5 , v120
	.byte	W08
	.byte		N12   , An4
	.byte	W12
	.byte		N04   , As4 , v116
	.byte	W04
	.byte		N12   , Gn4
	.byte	W12
	.byte		N04   , An4
	.byte	W04
	.byte		        An4 , v056
	.byte	W04
	.byte		N12   , Fn4 , v116
	.byte	W12
	.byte		N04   , Gn4 , v120
	.byte	W04
	.byte		        An4
	.byte	W04
	.byte		        Gn4 , v112
	.byte	W04
	.byte		        En4 , v127
	.byte	W04
	.byte		N08   , Fn4 , v112
	.byte	W08
	.byte		N04   , Gn4 , v127
	.byte	W04
	.byte		VOICE , 48
	.byte		VOL   , 49*mus_dd_sunken_ruins_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N48   , Bn4 , v124
	.byte	W48
	.byte		N04   , Dn5 , v112
	.byte	W04
	.byte		        Dn5 , v056
	.byte	W04
	.byte		        Bn4 , v112
	.byte	W04
	.byte		        Bn4 , v056
	.byte	W04
	.byte		        Bn4 , v048
	.byte	W04
	.byte		        An4 , v112
	.byte	W04
	.byte		N12   , Gn4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		N48   , As4 , v124
	.byte	W48
	.byte		N04   , Dn5 , v112
	.byte	W04
	.byte		        Dn5 , v056
	.byte	W04
	.byte		        Cn5 , v112
	.byte	W04
	.byte		        Cn5 , v056
	.byte	W04
	.byte		        Cn5 , v048
	.byte	W04
	.byte		        As4 , v112
	.byte	W04
	.byte		N08   , An4
	.byte	W08
	.byte		N02   , As4
	.byte	W02
	.byte		        An4
	.byte	W02
	.byte		N12   , Gn4
	.byte	W12
	.byte		N72   , An4
	.byte	W72
	.byte		N08   , An4 , v056
	.byte	W24
	.byte		VOICE , 48
	.byte		VOL   , 59*mus_dd_sunken_ruins_mvl/mxv
	.byte		N08   , Dn3 , v112
	.byte	W08
	.byte		        An2
	.byte	W08
	.byte		        Dn3
	.byte	W08
	.byte		        En3
	.byte	W08
	.byte		        Dn3
	.byte	W08
	.byte		        En3
	.byte	W08
	.byte		        Gn3
	.byte	W08
	.byte		        En3
	.byte	W08
	.byte		        Gn3
	.byte	W08
	.byte		N04   , An3
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		        Gn4
	.byte	W04
	.byte		        An4
	.byte	W04
	.byte		        Cs5
	.byte	W04
	.byte		VOICE , 24
	.byte		VOL   , 80*mus_dd_sunken_ruins_mvl/mxv
	.byte		N24   , Dn5
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N04   , Dn5 , v056
	.byte	W08
	.byte		        Dn5 , v048
	.byte	W04
	.byte		        An4 , v112
	.byte	W04
	.byte		        An4 , v056
	.byte	W04
	.byte		        An4 , v048
	.byte	W04
	.byte		        Gn4 , v112
	.byte	W04
	.byte		        Gn4 , v056
	.byte	W04
	.byte		        Fs4 , v112
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		        En4 , v056
	.byte	W04
	.byte		        Cn4 , v112
	.byte	W04
	.byte		N12   , Dn4
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte		N12   , En4
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte		N08   , Bn3
	.byte	W08
	.byte		N04   , Dn4
	.byte	W04
	.byte		        Gn4
	.byte	W04
	.byte		        Gn4 , v056
	.byte	W04
	.byte		N16   , An4 , v112
	.byte	W04
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N12   , Gn4
	.byte	W12
	.byte		N04   , Fn4
	.byte	W04
	.byte		        Fn4 , v056
	.byte	W04
	.byte		        An4 , v112
	.byte	W04
	.byte		        Fn4
	.byte	W04
	.byte		        Fn4 , v056
	.byte	W04
	.byte		        Dn4 , v112
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		        En4 , v056
	.byte	W04
	.byte		        Gn4 , v112
	.byte	W04
	.byte		N12   , Cn5
	.byte	W12
	.byte		VOICE , 48
	.byte		VOL   , 50*mus_dd_sunken_ruins_mvl/mxv
	.byte		N24   , Dn5
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N08   , Dn5 , v056
	.byte	W08
	.byte		N04   , Dn5 , v048
	.byte	W04
	.byte		N12   , An4 , v112
	.byte	W12
	.byte		N08   , Gn4
	.byte	W08
	.byte		N04   , Fs4
	.byte	W04
	.byte		N08   , En4
	.byte	W08
	.byte		N04   , Cn4
	.byte	W04
	.byte		N12   , Dn4
	.byte	W06
	.byte		MOD   , 4
	.byte	W06
	.byte		        0
	.byte		N12   , En4
	.byte	W06
	.byte		MOD   , 4
	.byte	W06
	.byte		        0
	.byte		N08   , Bn3
	.byte	W08
	.byte		        Dn4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        An4
	.byte	W08
	.byte		N16   , Gn4
	.byte	W16
	.byte		N08   , As4
	.byte	W08
	.byte		        Fn4
	.byte	W08
	.byte		        As4
	.byte	W08
	.byte		        Cn5
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        Cn5
	.byte	W08
	.byte		VOICE , 24
	.byte		VOL   , 80*mus_dd_sunken_ruins_mvl/mxv
	.byte		N04   , Bn3 , v127
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		N12   , Dn4
	.byte	W12
	.byte		N04   , Fs3
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		N16   , Cs4
	.byte	W16
	.byte		N04   , An3
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		N16   , Dn4
	.byte	W16
	.byte		N04   , Gs3
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		N16   , En4
	.byte	W16
	.byte	GOTO
	 .word	mus_dd_sunken_ruins_1_000
	.byte		FINE

@**************** Track 2 ****************@

mus_dd_sunken_ruins_2:
	.byte		KEYSH , mus_dd_sunken_ruins_key+0
	.byte		VOICE , 48
	.byte		LFOS  , 62
	.byte		VOL   , 45*mus_dd_sunken_ruins_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		PAN   , c_v+16
	.byte	W72
	.byte		VOL   , 19*mus_dd_sunken_ruins_mvl/mxv
	.byte		N24   , En3 , v112
	.byte	W02
	.byte		VOL   , 25*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        28*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        32*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        37*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        43*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        46*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        55*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        58*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        62*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        66*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        68*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
mus_dd_sunken_ruins_2_000:
	.byte		VOL   , 46*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v+16
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOL   , 40*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v-33
	.byte		N06   , Cn5 , v112
	.byte	W08
	.byte		        Cn5 , v044
	.byte	W16
	.byte		PAN   , c_v+34
	.byte		N06   , Cn5 , v112
	.byte	W08
	.byte		        Cn5 , v044
	.byte	W16
	.byte		PAN   , c_v-35
	.byte		N06   , Cn5 , v112
	.byte	W08
	.byte		        Cn5 , v040
	.byte	W16
	.byte		PAN   , c_v+34
	.byte		N06   , Cn5 , v112
	.byte	W08
	.byte		        Cn5 , v044
	.byte	W16
mus_dd_sunken_ruins_2_001:
	.byte		PAN   , c_v-33
	.byte		N06   , An4 , v112
	.byte	W08
	.byte		        An4 , v044
	.byte	W16
	.byte		PAN   , c_v+34
	.byte		N06   , An4 , v112
	.byte	W08
	.byte		        An4 , v044
	.byte	W16
	.byte		PAN   , c_v-35
	.byte		N06   , An4 , v112
	.byte	W08
	.byte		        An4 , v040
	.byte	W16
	.byte		PAN   , c_v+34
	.byte		N06   , An4 , v112
	.byte	W08
	.byte		        An4 , v044
	.byte	W16
	.byte		PEND
	.byte		PAN   , c_v-33
	.byte		N06   , Cn5 , v112
	.byte	W08
	.byte		        Cn5 , v044
	.byte	W16
	.byte		PAN   , c_v+34
	.byte		N06   , Cn5 , v112
	.byte	W08
	.byte		        Cn5 , v044
	.byte	W16
	.byte		PAN   , c_v-35
	.byte		N06   , Cn5 , v112
	.byte	W08
	.byte		        Cn5 , v040
	.byte	W16
	.byte		PAN   , c_v+34
	.byte		N06   , Cn5 , v112
	.byte	W08
	.byte		        Cn5 , v044
	.byte	W16
	.byte	PATT
	 .word	mus_dd_sunken_ruins_2_001
mus_dd_sunken_ruins_2_002:
	.byte		PAN   , c_v-33
	.byte		N06   , Dn5 , v112
	.byte	W08
	.byte		        Dn5 , v044
	.byte	W16
	.byte		PAN   , c_v+34
	.byte		N06   , Dn5 , v112
	.byte	W08
	.byte		        Dn5 , v044
	.byte	W16
	.byte		PAN   , c_v-35
	.byte		N06   , Dn5 , v112
	.byte	W08
	.byte		        Dn5 , v040
	.byte	W16
	.byte		PAN   , c_v+34
	.byte		N06   , Dn5 , v112
	.byte	W08
	.byte		        Dn5 , v044
	.byte	W16
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_sunken_ruins_2_002
	.byte		PAN   , c_v-17
	.byte		N04   , En3 , v112
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N04   , Gn3
	.byte	W08
	.byte		N16
	.byte	W16
	.byte		N04   , Cn4
	.byte	W08
	.byte		N08   , Gn3
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		N12   , Fn4
	.byte	W12
	.byte		        As4
	.byte	W12
	.byte		VOL   , 47*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v-33
	.byte	W24
	.byte		        c_v+34
	.byte	W24
	.byte		        c_v-35
	.byte	W24
	.byte		        c_v+34
	.byte	W24
	.byte		        c_v-17
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		VOL   , 50*mus_dd_sunken_ruins_mvl/mxv
	.byte	W24
	.byte		PAN   , c_v-24
	.byte		N72   , Dn5 , v120
	.byte	W06
	.byte		PAN   , c_v-6
	.byte	W06
	.byte		VOL   , 45*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v+5
	.byte	W02
	.byte		VOL   , 43*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+12
	.byte	W02
	.byte		VOL   , 42*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        40*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v+18
	.byte	W04
	.byte		VOL   , 39*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v+26
	.byte	W02
	.byte		VOL   , 37*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+31
	.byte	W02
	.byte		VOL   , 34*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        32*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v+37
	.byte	W02
	.byte		VOL   , 31*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        28*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        28*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        27*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        26*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        25*mus_dd_sunken_ruins_mvl/mxv
	.byte	W04
	.byte		        23*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        22*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        20*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        19*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        18*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        16*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        15*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        15*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        13*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        12*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        10*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        9*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        6*mus_dd_sunken_ruins_mvl/mxv
	.byte	W24
	.byte	GOTO
	 .word	mus_dd_sunken_ruins_2_000
	.byte		FINE

@**************** Track 3 ****************@

mus_dd_sunken_ruins_3:
	.byte		KEYSH , mus_dd_sunken_ruins_key+0
	.byte		VOICE , 38
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 80*mus_dd_sunken_ruins_mvl/mxv
	.byte		N12   , Bn0 , v127
	.byte	W12
	.byte		N08   , Bn0 , v032
	.byte	W08
	.byte		N04   , Bn0 , v127
	.byte	W04
	.byte		N16   , Bn0 , v048
	.byte	W72
	.byte		N04   , Bn0 , v127
	.byte	W04
	.byte		N08   , Bn0 , v032
	.byte	W08
	.byte		N02   , Bn0 , v127
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W02
	.byte		N06   , Bn0 , v048
	.byte	W72
	.byte	W02
	.byte		N12   , Bn0 , v127
	.byte	W12
	.byte		N08   , Bn0 , v032
	.byte	W08
	.byte		N04   , Bn0 , v127
	.byte	W04
	.byte		N16   , Bn0 , v048
	.byte	W72
	.byte		VOL   , 80*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N24   , Bn1 , v120
	.byte	W24
	.byte		        As1
	.byte	W24
	.byte		        An1
	.byte	W24
	.byte		        Gs1
	.byte	W24
mus_dd_sunken_ruins_3_000:
	.byte		N08   , Gn1 , v120
	.byte	W08
	.byte		        Gn1 , v056
	.byte	W16
	.byte		        Gn1 , v120
	.byte	W08
	.byte		        Gn1 , v056
	.byte	W16
	.byte		        Gn1 , v120
	.byte	W08
	.byte		        Gn1 , v056
	.byte	W12
	.byte		N04   , Gn1 , v120
	.byte	W04
	.byte		        Gn1 , v048
	.byte	W08
	.byte		N16   , Dn1 , v120
	.byte	W16
	.byte		N08   , Gn1
	.byte	W08
	.byte		        Gn1 , v056
	.byte	W16
	.byte		        Gn1 , v120
	.byte	W08
	.byte		        Gn1 , v056
	.byte	W16
	.byte		        Gn1 , v120
	.byte	W08
	.byte		        Gn1 , v056
	.byte	W12
	.byte		N04   , Gn1 , v120
	.byte	W04
	.byte		        Gn1 , v056
	.byte	W08
	.byte		N16   , Dn1 , v120
	.byte	W16
	.byte		N08   , Fs1
	.byte	W08
	.byte		        Fs1 , v056
	.byte	W16
	.byte		        Fs1 , v120
	.byte	W08
	.byte		        Fs1 , v056
	.byte	W16
	.byte		        Fs1 , v120
	.byte	W08
	.byte		        Fs1 , v056
	.byte	W12
	.byte		N04   , Fs1 , v120
	.byte	W04
	.byte		        Fs1 , v056
	.byte	W08
	.byte		N16   , Cs1 , v120
	.byte	W16
	.byte		N08   , Bn1
	.byte	W08
	.byte		        Bn1 , v056
	.byte	W16
	.byte		        Bn1 , v120
	.byte	W08
	.byte		        Bn1 , v056
	.byte	W16
	.byte		        Bn1 , v120
	.byte	W08
	.byte		        Bn1 , v056
	.byte	W12
	.byte		N04   , Bn1 , v120
	.byte	W04
	.byte		        Bn1 , v056
	.byte	W08
	.byte		N16   , Fs1 , v120
	.byte	W16
	.byte		N04   , Gn1
	.byte	W04
	.byte		        Gn1 , v056
	.byte	W08
	.byte		N12   , Gn1 , v120
	.byte	W12
	.byte		N04   , Bn1
	.byte	W08
	.byte		N16   , Dn2
	.byte	W16
	.byte		N08   , Gn2
	.byte	W08
	.byte		N04   , Dn2
	.byte	W04
	.byte		N08   , Gn2
	.byte	W08
	.byte		N04   , Bn2
	.byte	W04
	.byte		N08   , Bn1
	.byte	W08
	.byte		N04   , Dn2
	.byte	W04
	.byte		N08   , An1
	.byte	W08
	.byte		N04   , Bn1
	.byte	W04
	.byte		N08   , Gn1
	.byte	W12
	.byte		N02   , Gn2
	.byte	W04
	.byte		        Gn1
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N12   , Gn2
	.byte	W12
	.byte		N08   , As1
	.byte	W08
	.byte		N04   , Gn1
	.byte	W04
	.byte		N08   , Dn2
	.byte	W08
	.byte		N04   , As1
	.byte	W04
	.byte		        En2
	.byte	W04
	.byte		        Dn2
	.byte	W04
	.byte		        As1
	.byte	W04
	.byte		N08   , Gn1
	.byte	W08
	.byte		N04   , Dn2
	.byte	W04
	.byte		N08   , Dn1
	.byte	W08
	.byte		N04   , As1
	.byte	W04
	.byte		N08   , Fs1
	.byte	W08
	.byte		        Fs1 , v056
	.byte	W24
	.byte		N04   , Fs1 , v120
	.byte	W04
	.byte		N08   , Fs1 , v056
	.byte	W08
	.byte		N04   , En1 , v120
	.byte	W04
	.byte		N08   , Fs1
	.byte	W08
	.byte		        Fs1 , v056
	.byte	W12
	.byte		N04   , Fs1 , v120
	.byte	W04
	.byte		        Fs1 , v056
	.byte	W08
	.byte		N16   , Cs1 , v120
	.byte	W16
	.byte		N08   , Bn1
	.byte	W08
	.byte		        Bn1 , v056
	.byte	W12
	.byte		N04   , Fs1 , v120
	.byte	W04
	.byte		N12   , Bn1
	.byte	W12
	.byte		N08   , Ds2
	.byte	W08
	.byte		N04   , Cs2
	.byte	W04
	.byte		N10   , Bn1
	.byte	W10
	.byte		N04   , Bn2
	.byte	W04
	.byte		N06   , Bn2 , v060
	.byte	W06
	.byte		N04   , Bn1 , v120
	.byte	W04
	.byte		        Bn1 , v056
	.byte	W08
	.byte		        Bn1 , v120
	.byte	W04
	.byte		N08   , Ds1
	.byte	W08
	.byte		N04   , Fs1
	.byte	W04
	.byte		        As1
	.byte	W04
	.byte		N08   , As1 , v044
	.byte	W08
	.byte		N12   , As1 , v120
	.byte	W12
	.byte		N04   , Cn2
	.byte	W08
	.byte		N16   , Dn2
	.byte	W16
	.byte		N08   , Fn2
	.byte	W08
	.byte		N04   , As1
	.byte	W04
	.byte		N08   , En2
	.byte	W08
	.byte		N04   , Gn2
	.byte	W04
	.byte		N08   , An2
	.byte	W08
	.byte		N04   , Dn2
	.byte	W04
	.byte		N08   , Cn2
	.byte	W08
	.byte		N04   , As1
	.byte	W04
	.byte		        Fn1
	.byte	W04
	.byte		N08   , Fn1 , v048
	.byte	W08
	.byte		N12   , Fn1 , v120
	.byte	W12
	.byte		N04   , An1
	.byte	W04
	.byte		        An1 , v060
	.byte	W04
	.byte		N16   , Cn2 , v120
	.byte	W16
	.byte		N08   , En2
	.byte	W08
	.byte		N04   , Cn2
	.byte	W04
	.byte		N08   , Dn2
	.byte	W08
	.byte		N04   , En2
	.byte	W04
	.byte		        Dn2
	.byte	W04
	.byte		        En2
	.byte	W04
	.byte		        Dn2
	.byte	W04
	.byte		N08   , Cn2
	.byte	W08
	.byte		N04   , An1
	.byte	W04
	.byte		        As1
	.byte	W04
	.byte		N08   , As1 , v048
	.byte	W08
	.byte		N12   , As1 , v120
	.byte	W12
	.byte		N04   , Cn2
	.byte	W04
	.byte		        Cn2 , v060
	.byte	W04
	.byte		N16   , Dn2 , v120
	.byte	W16
	.byte		N08   , Fn2
	.byte	W08
	.byte		N04   , As1
	.byte	W04
	.byte		N08   , En2
	.byte	W08
	.byte		N04   , Fn2
	.byte	W04
	.byte		N08   , An2
	.byte	W08
	.byte		N04   , Dn2
	.byte	W04
	.byte		N08   , Cn2
	.byte	W08
	.byte		N04   , As1
	.byte	W04
	.byte		        Fn1
	.byte	W04
	.byte		N08   , Fn1 , v048
	.byte	W08
	.byte		N12   , Fn1 , v120
	.byte	W12
	.byte		N04   , An1
	.byte	W08
	.byte		N16   , Cn2
	.byte	W16
	.byte		N08   , En2
	.byte	W08
	.byte		N04   , Cn2
	.byte	W04
	.byte		N08   , Dn2
	.byte	W08
	.byte		N04   , En2
	.byte	W04
	.byte		        Dn2
	.byte	W04
	.byte		        En2
	.byte	W04
	.byte		        Dn2
	.byte	W04
	.byte		N08   , Cn2
	.byte	W08
	.byte		N04   , An1
	.byte	W04
	.byte		        Gn1
	.byte	W04
	.byte		N08   , Gn1 , v048
	.byte	W08
	.byte		N12   , Gn1 , v120
	.byte	W12
	.byte		N04   , An1
	.byte	W08
	.byte		N16   , Bn1
	.byte	W16
	.byte		N08   , Dn2
	.byte	W08
	.byte		N04   , Gn1
	.byte	W04
	.byte		N08   , Cs2
	.byte	W08
	.byte		N04   , Dn2
	.byte	W04
	.byte		N08   , Fs2
	.byte	W08
	.byte		N04   , Bn1
	.byte	W04
	.byte		N08   , An1
	.byte	W08
	.byte		N04   , Gn1
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		N08   , Gn1 , v048
	.byte	W08
	.byte		N12   , Gn1 , v120
	.byte	W12
	.byte		N04   , An1
	.byte	W08
	.byte		N16   , As1
	.byte	W16
	.byte		N08   , En2
	.byte	W08
	.byte		N04   , Gn1
	.byte	W04
	.byte		N08   , Dn2
	.byte	W08
	.byte		N04   , En2
	.byte	W04
	.byte		N08   , Gn2
	.byte	W08
	.byte		N04   , As1
	.byte	W04
	.byte		N08   , An1
	.byte	W08
	.byte		N04   , Gn1
	.byte	W04
	.byte		        An1
	.byte	W04
	.byte		N08   , An1 , v048
	.byte	W08
	.byte		N12   , An1 , v120
	.byte	W12
	.byte		N08   , Gs2
	.byte	W08
	.byte		N04   , An2
	.byte	W04
	.byte		N08   , Cs2
	.byte	W08
	.byte		N04   , Dn2
	.byte	W04
	.byte		        An1
	.byte	W08
	.byte		N16
	.byte	W16
	.byte		N04
	.byte	W04
	.byte		        An2
	.byte	W04
	.byte		N08   , An1
	.byte	W08
	.byte		        As1
	.byte	W08
	.byte		N04   , An1
	.byte	W04
	.byte		N08   , An1 , v048
	.byte	W08
	.byte		N12   , An1 , v120
	.byte	W12
	.byte		N04   , An2
	.byte	W08
	.byte		N12   , Dn2
	.byte	W12
	.byte		N04   , En2
	.byte	W04
	.byte		        An2
	.byte	W08
	.byte		N12   , An1
	.byte	W12
	.byte		N04   , En2
	.byte	W04
	.byte		        An2
	.byte	W08
	.byte		N12   , An1
	.byte	W12
	.byte		N04   , Cs2
	.byte	W04
	.byte		        Dn2
	.byte	W04
	.byte		N08   , Dn2 , v048
	.byte	W08
	.byte		N12   , Dn2 , v120
	.byte	W12
	.byte		N08   , Dn2 , v048
	.byte	W24
	.byte		N04   , Cn2 , v120
	.byte	W04
	.byte		N08   , Cn2 , v048
	.byte	W08
	.byte		N12   , Cn2 , v120
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N24   , Gn2
	.byte	W02
	.byte		BEND  , c_v-6
	.byte	W02
	.byte		        c_v-13
	.byte	W02
	.byte		        c_v-19
	.byte	W02
	.byte		        c_v-26
	.byte	W02
	.byte		        c_v-34
	.byte	W02
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v-46
	.byte	W02
	.byte		        c_v-53
	.byte	W02
	.byte		        c_v-61
	.byte	W02
	.byte		        c_v-64
	.byte	W04
	.byte		        c_v+0
	.byte		N04   , Bn1
	.byte	W04
	.byte		N08   , Bn1 , v048
	.byte	W08
	.byte		N12   , Bn1 , v120
	.byte	W12
	.byte		N08   , Bn1 , v048
	.byte	W24
	.byte		N04   , As1 , v120
	.byte	W04
	.byte		N08   , As1 , v048
	.byte	W08
	.byte		N12   , As1 , v120
	.byte	W12
	.byte		N08   , Cn2
	.byte	W08
	.byte		N04   , En1
	.byte	W04
	.byte		N08   , Gn1
	.byte	W08
	.byte		N04   , Cn2
	.byte	W04
	.byte		        Dn2
	.byte	W04
	.byte		N08   , Dn2 , v048
	.byte	W08
	.byte		N12   , Dn2 , v120
	.byte	W12
	.byte		N08   , Dn2 , v048
	.byte	W24
	.byte		N04   , Cn2 , v120
	.byte	W04
	.byte		N08   , Cn2 , v048
	.byte	W08
	.byte		N12   , Cn2 , v120
	.byte	W12
	.byte		N08   , Cn2 , v048
	.byte	W24
	.byte		N04   , Bn1 , v120
	.byte	W04
	.byte		N08   , Bn1 , v048
	.byte	W08
	.byte		N12   , Bn1 , v120
	.byte	W12
	.byte		N04   , Bn2
	.byte	W08
	.byte		N16   , Bn1
	.byte	W16
	.byte		N04   , As1
	.byte	W04
	.byte		N08   , As1 , v048
	.byte	W08
	.byte		N12   , As1 , v120
	.byte	W12
	.byte		N08   , Cn2
	.byte	W08
	.byte		N04   , En1
	.byte	W04
	.byte		N08   , Gn1
	.byte	W08
	.byte		N04   , Cn2
	.byte	W04
	.byte		N24   , Bn1
	.byte	W24
	.byte		        As1
	.byte	W24
	.byte		        An1
	.byte	W24
	.byte		        Gs1
	.byte	W24
	.byte	GOTO
	 .word	mus_dd_sunken_ruins_3_000
	.byte		FINE

@**************** Track 4 ****************@

mus_dd_sunken_ruins_4:
	.byte		KEYSH , mus_dd_sunken_ruins_key+0
	.byte		VOICE , 48
	.byte		LFOS  , 44
	.byte		VOL   , 30*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_dd_sunken_ruins_4_000:
	.byte		VOICE , 46
	.byte		VOL   , 50*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v+42
	.byte	W48
	.byte		N04   , An5 , v112
	.byte	W04
	.byte		        Fs5
	.byte	W04
	.byte		PAN   , c_v-32
	.byte		N04   , Dn5
	.byte	W04
	.byte		PAN   , c_v-32
	.byte		N04   , Bn4
	.byte	W04
	.byte		        An4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		VOICE , 48
	.byte		VOL   , 36*mus_dd_sunken_ruins_mvl/mxv
	.byte		N08   , Dn4
	.byte	W08
	.byte		N04   , Bn3
	.byte	W04
	.byte		PAN   , c_v+20
	.byte		N08   , Gn4
	.byte	W08
	.byte		N04   , Dn4
	.byte	W04
	.byte	W24
	.byte		VOL   , 50*mus_dd_sunken_ruins_mvl/mxv
	.byte	W12
	.byte		VOICE , 46
	.byte	W12
	.byte		PAN   , c_v-44
	.byte		N04   , As5
	.byte	W04
	.byte		        En5
	.byte	W04
	.byte		        Dn5
	.byte	W04
	.byte		PAN   , c_v+40
	.byte		N04   , As4
	.byte	W04
	.byte		        Gn4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		VOICE , 48
	.byte		VOL   , 37*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		N08   , Dn4
	.byte	W08
	.byte		N04   , As3
	.byte	W04
	.byte		PAN   , c_v+24
	.byte		N08   , Gn4
	.byte	W08
	.byte		N04   , Dn4
	.byte	W04
	.byte	W36
	.byte		VOICE , 46
	.byte		VOL   , 50*mus_dd_sunken_ruins_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N04   , Fs5
	.byte	W04
	.byte		        En5
	.byte	W04
	.byte		        Cs5
	.byte	W04
	.byte		PAN   , c_v-24
	.byte		N04   , An4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		VOICE , 48
	.byte		VOL   , 37*mus_dd_sunken_ruins_mvl/mxv
	.byte		N08   , Cs4
	.byte	W08
	.byte		N04   , An3
	.byte	W04
	.byte		PAN   , c_v+25
	.byte		N08   , En4
	.byte	W08
	.byte		N04   , Cs4
	.byte	W04
	.byte		VOL   , 37*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v-32
	.byte	W48
	.byte		VOL   , 43*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v+24
	.byte		N04   , Fs4
	.byte	W08
	.byte		        Ds4
	.byte	W04
	.byte		        Fs4
	.byte	W08
	.byte		        Gn4
	.byte	W12
	.byte		N16   , An4
	.byte	W04
	.byte		PAN   , c_v+24
	.byte	W12
	.byte		VOL   , 28*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v-32
	.byte	W60
	.byte		N08   , Bn4
	.byte	W08
	.byte		N04   , Gn4
	.byte	W04
	.byte		N08   , Dn5
	.byte	W08
	.byte		N04   , Bn4
	.byte	W04
	.byte		PAN   , c_v+32
	.byte		N08   , En5
	.byte	W08
	.byte		N04   , Dn5
	.byte	W04
	.byte		PAN   , c_v-32
	.byte	W60
	.byte		N08   , As4
	.byte	W08
	.byte		N04   , Gn4
	.byte	W04
	.byte		N08   , Dn5
	.byte	W08
	.byte		N04   , As4
	.byte	W04
	.byte		PAN   , c_v+27
	.byte		N08   , En5
	.byte	W08
	.byte		N04   , Dn5
	.byte	W04
	.byte	W12
	.byte		        An4
	.byte	W12
	.byte		PAN   , c_v+31
	.byte		N08   , An5 , v084
	.byte	W08
	.byte		PAN   , c_v-39
	.byte		N06   , Fn4 , v112
	.byte	W12
	.byte		N04   , An5 , v084
	.byte	W04
	.byte		N06   , Fs4 , v112
	.byte	W12
	.byte		PAN   , c_v+31
	.byte		N06   , An5 , v080
	.byte	W08
	.byte		N12   , Gn4 , v112
	.byte	W12
	.byte		PAN   , c_v-37
	.byte		N04   , An5 , v084
	.byte	W04
	.byte		        En5 , v076
	.byte	W08
	.byte		        Cs5 , v064
	.byte	W04
	.byte		VOL   , 44*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v-14
	.byte		N04   , Fs4 , v112
	.byte	W08
	.byte		N04
	.byte	W12
	.byte		        Gn4
	.byte	W12
	.byte		N10   , An4
	.byte	W16
	.byte		N08   , Bn4
	.byte	W08
	.byte		N04   , Fs4
	.byte	W04
	.byte		        En4
	.byte	W08
	.byte		        Ds4
	.byte	W04
	.byte		PAN   , c_v+32
	.byte	W08
	.byte		VOICE , 48
	.byte		N04   , Fs3
	.byte	W04
	.byte		N08   , An3
	.byte	W08
	.byte		N04   , Bn3
	.byte	W04
	.byte	W96
	.byte		VOICE , 24
	.byte		VOL   , 53*mus_dd_sunken_ruins_mvl/mxv
	.byte	W24
	.byte		PAN   , c_v-30
	.byte		N04   , Cn4 , v127
	.byte	W08
	.byte		N12   , Fn4
	.byte	W12
	.byte		N04   , En4
	.byte	W04
	.byte		PAN   , c_v+34
	.byte		N12   , Gn4
	.byte	W12
	.byte		N04   , Fn4
	.byte	W08
	.byte		N12   , An4
	.byte	W04
	.byte		PAN   , c_v-24
	.byte	W08
	.byte		N04   , Gn4
	.byte	W04
	.byte		        As4
	.byte	W04
	.byte		        Gn4
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		PAN   , c_v+29
	.byte	W12
	.byte		        c_v-24
	.byte	W84
	.byte	W24
	.byte		N04   , Cn5
	.byte	W08
	.byte		N12   , An4
	.byte	W12
	.byte		N04   , Bn1
	.byte	W04
	.byte		PAN   , c_v+27
	.byte		N12   , Gn4
	.byte	W12
	.byte		N04   , An4
	.byte	W08
	.byte		N12   , Fn4
	.byte	W04
	.byte		PAN   , c_v-24
	.byte	W08
	.byte		N04   , Gn4
	.byte	W04
	.byte		        An4
	.byte	W04
	.byte		        Gn4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		PAN   , c_v+25
	.byte	W12
	.byte		        c_v-23
	.byte	W84
	.byte	W96
	.byte	W96
	.byte		VOICE , 46
	.byte		VOL   , 58*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		N02   , An5 , v112
	.byte	W02
	.byte		        En5
	.byte	W02
	.byte		        Dn5
	.byte	W02
	.byte		PAN   , c_v-32
	.byte		N02   , As4
	.byte	W02
	.byte		        En5
	.byte	W02
	.byte		        Dn5
	.byte	W02
	.byte		PAN   , c_v+32
	.byte		N02   , As4
	.byte	W02
	.byte		        An4
	.byte	W02
	.byte		        Dn5
	.byte	W02
	.byte		PAN   , c_v-32
	.byte		N02   , As4
	.byte	W02
	.byte		        An4
	.byte	W02
	.byte		        En4
	.byte	W02
	.byte		PAN   , c_v+32
	.byte		N02   , As4
	.byte	W02
	.byte		        An4
	.byte	W02
	.byte		        En4
	.byte	W02
	.byte		PAN   , c_v-32
	.byte		N02   , Dn4
	.byte	W02
	.byte		        An4
	.byte	W02
	.byte		        En4
	.byte	W02
	.byte		PAN   , c_v+32
	.byte		N02   , Dn4
	.byte	W02
	.byte		        As3
	.byte	W02
	.byte		        En4
	.byte	W02
	.byte		PAN   , c_v-32
	.byte		N02   , Dn4
	.byte	W02
	.byte		        As3
	.byte	W02
	.byte		        An3
	.byte	W02
	.byte		PAN   , c_v+32
	.byte		N02   , En3
	.byte	W02
	.byte		        An3
	.byte	W02
	.byte		        Cs4
	.byte	W02
	.byte		PAN   , c_v-32
	.byte		N02   , En4
	.byte	W02
	.byte		        An3
	.byte	W02
	.byte		        Cs4
	.byte	W02
	.byte		PAN   , c_v+32
	.byte		N02   , En4
	.byte	W02
	.byte		        Gn4
	.byte	W02
	.byte		        En4
	.byte	W02
	.byte		PAN   , c_v-32
	.byte		N02   , Gn4
	.byte	W02
	.byte		        An4
	.byte	W02
	.byte		        Cs5
	.byte	W02
	.byte		        An4
	.byte	W02
	.byte		        Cs5
	.byte	W02
	.byte		        En5
	.byte	W02
	.byte		        Gn5
	.byte	W02
	.byte		        Cs5
	.byte	W02
	.byte		        En5
	.byte	W02
	.byte		PAN   , c_v+32
	.byte		N02   , Gn5
	.byte	W02
	.byte		        An5
	.byte	W02
	.byte		        En5
	.byte	W02
	.byte		        An5
	.byte	W02
	.byte		        Cs6
	.byte	W02
	.byte		        En6
	.byte	W02
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_dd_sunken_ruins_4_000
	.byte		FINE

@**************** Track 5 ****************@

mus_dd_sunken_ruins_5:
	.byte		KEYSH , mus_dd_sunken_ruins_key+0
	.byte		VOICE , 8
	.byte		LFOS  , 44
	.byte		PAN   , c_v-30
	.byte		VOL   , 34*mus_dd_sunken_ruins_mvl/mxv
	.byte		N24   , Gs1 , v112
	.byte	W24
	.byte		N04   , Ds1
	.byte	W04
	.byte		        Fs1
	.byte	W04
	.byte		        An1
	.byte	W08
	.byte		        Cs2
	.byte	W08
	.byte		        Gs2
	.byte	W04
	.byte		PAN   , c_v+21
	.byte	W04
	.byte		N04   , Ds2
	.byte	W04
	.byte		PAN   , c_v-22
	.byte		N04   , Bn2
	.byte	W06
	.byte		PAN   , c_v-25
	.byte	W02
	.byte		N04   , Dn3
	.byte	W28
	.byte	W24
	.byte		        Bn1
	.byte	W08
	.byte		        Gs2
	.byte	W04
	.byte		        Bn2
	.byte	W06
	.byte		PAN   , c_v+17
	.byte	W02
	.byte		N04   , As3
	.byte	W04
	.byte		PAN   , c_v-26
	.byte	W14
	.byte		        c_v+0
	.byte	W02
	.byte		N14   , As1
	.byte	W10
	.byte		PAN   , c_v+35
	.byte	W06
	.byte		        c_v-28
	.byte		N16   , Gn1
	.byte	W04
	.byte		PAN   , c_v-29
	.byte	W12
	.byte		N12   , Gn2
	.byte	W12
	.byte		N04   , Dn2
	.byte	W04
	.byte		        Bn1
	.byte	W04
	.byte		        Fs2
	.byte	W04
	.byte		N08   , An2
	.byte	W08
	.byte		N04   , Ds2
	.byte	W04
	.byte		PAN   , c_v+24
	.byte		N04   , Ds3
	.byte	W08
	.byte		        Gs2
	.byte	W04
	.byte		PAN   , c_v-29
	.byte	W48
	.byte		VOL   , 34*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v-33
	.byte		N08   , Fn2
	.byte	W06
	.byte		PAN   , c_v+31
	.byte	W02
	.byte		N04   , Gn2
	.byte	W04
	.byte		N08   , An2
	.byte	W06
	.byte		PAN   , c_v-37
	.byte	W02
	.byte		N04   , Dn3
	.byte	W04
	.byte		PAN   , c_v+31
	.byte		N12   , Gn2
	.byte	W12
	.byte		PAN   , c_v-33
	.byte		N04   , Dn2
	.byte	W04
	.byte		        Bn1
	.byte	W04
	.byte		PAN   , c_v+29
	.byte		N04   , Fs2
	.byte	W04
	.byte		        An2
	.byte	W08
	.byte		PAN   , c_v-35
	.byte		N04   , Ds2
	.byte	W04
	.byte		        Fs3
	.byte	W08
	.byte		PAN   , c_v+29
	.byte		N04   , Cs3
	.byte	W14
	.byte		PAN   , c_v-33
	.byte	W14
mus_dd_sunken_ruins_5_000:
	.byte		PAN   , c_v-48
	.byte	W24
	.byte		N04   , Bn1 , v112
	.byte	W08
	.byte		        Gs2
	.byte	W04
	.byte		PAN   , c_v+16
	.byte		N04   , Bn2
	.byte	W08
	.byte		        As3
	.byte	W52
	.byte		PAN   , c_v+36
	.byte		N12   , Gn2
	.byte	W12
	.byte		PAN   , c_v-33
	.byte		N04   , Dn2
	.byte	W04
	.byte		        Bn1
	.byte	W04
	.byte		        Fs2
	.byte	W04
	.byte		PAN   , c_v+34
	.byte		N04   , An2
	.byte	W08
	.byte		        Ds2
	.byte	W04
	.byte		PAN   , c_v-32
	.byte		N04   , Fs3
	.byte	W08
	.byte		        Ds3
	.byte	W52
	.byte		PAN   , c_v-44
	.byte		N12   , Fs2
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Dn2
	.byte	W12
	.byte		PAN   , c_v-42
	.byte		N04   , En2
	.byte	W04
	.byte		PAN   , c_v+24
	.byte		N04   , Gs2
	.byte	W04
	.byte		PAN   , c_v-44
	.byte		N04   , Cs3
	.byte	W04
	.byte		PAN   , c_v+24
	.byte		N04   , Gs3 , v096
	.byte	W04
	.byte		PAN   , c_v-48
	.byte	W04
	.byte		N04   , Dn4 , v088
	.byte	W52
	.byte		        Ds2 , v112
	.byte	W08
	.byte		N08   , Gn2
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N08   , Dn2
	.byte	W08
	.byte		PAN   , c_v-26
	.byte		N12   , En2
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N04   , Bn3 , v080
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , Fn3 , v112
	.byte	W52
	.byte		N08   , Fs2
	.byte	W08
	.byte		        En2
	.byte	W08
	.byte		        Cn2
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N08   , Gs2
	.byte	W08
	.byte		N04   , Fs3
	.byte	W04
	.byte		N08   , Dn3
	.byte	W08
	.byte		N04   , Bn3
	.byte	W52
	.byte		        En2
	.byte	W08
	.byte		        Fs2
	.byte	W04
	.byte		        Gs2
	.byte	W08
	.byte		        En2
	.byte	W04
	.byte		PAN   , c_v-30
	.byte		N04   , Cs3
	.byte	W08
	.byte		        Gs2
	.byte	W04
	.byte		        Fs3
	.byte	W08
	.byte		        Dn3
	.byte	W52
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N08   , En2
	.byte	W08
	.byte		N04   , Gs2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Gs3
	.byte	W04
	.byte		N08   , Ds2
	.byte	W08
	.byte		        Gn2
	.byte	W08
	.byte		        Fs2
	.byte	W08
	.byte		        An2
	.byte	W08
	.byte		N04   , Bn2
	.byte	W04
	.byte		        Cs3
	.byte	W02
	.byte		        Gn3
	.byte	W06
	.byte		        Ds3
	.byte	W04
	.byte		N08   , Bn2
	.byte	W08
	.byte		N04   , An2
	.byte	W04
	.byte		N08   , Fs2
	.byte	W08
	.byte		N04   , An2
	.byte	W04
	.byte	GOTO
	 .word	mus_dd_sunken_ruins_5_000
	.byte		FINE

@**************** Track 6 ****************@

mus_dd_sunken_ruins_6:
	.byte		KEYSH , mus_dd_sunken_ruins_key+0
	.byte		VOICE , 80
	.byte		LFOS  , 56
	.byte		XCMD  , 8 , 18
	.byte		        8
	.byte		        16
	.byte		BENDR , 12
	.byte		VOL   , 43*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v-63
	.byte	W96
	.byte	W72
	.byte		VOL   , 10*mus_dd_sunken_ruins_mvl/mxv
	.byte	W24
	.byte		N96   , Dn3 , v112
	.byte	W48
	.byte		VOL   , 20*mus_dd_sunken_ruins_mvl/mxv
	.byte	W12
	.byte		        30*mus_dd_sunken_ruins_mvl/mxv
	.byte	W12
	.byte		        59*mus_dd_sunken_ruins_mvl/mxv
	.byte	W16
	.byte		        68*mus_dd_sunken_ruins_mvl/mxv
	.byte	W08
	.byte		        43*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v-63
	.byte		N08   , Bn2
	.byte	W08
	.byte		        Fs2
	.byte	W08
	.byte		        Dn3
	.byte	W08
	.byte		        As2
	.byte	W08
	.byte		N04   , Fs2
	.byte	W04
	.byte		        As2
	.byte	W04
	.byte		N08   , Dn3
	.byte	W08
	.byte		N04   , An2
	.byte	W04
	.byte		        Gs2
	.byte	W04
	.byte		N08   , Fs2
	.byte	W08
	.byte		        Dn3
	.byte	W08
	.byte		        Gs2
	.byte	W08
	.byte		N04   , Fs2
	.byte	W04
	.byte		        Gs2
	.byte	W04
	.byte		        Bn2
	.byte	W04
	.byte		        Dn3
	.byte	W04
mus_dd_sunken_ruins_6_000:
	.byte		N04   , Bn2 , v120
	.byte	W24
	.byte		N04
	.byte	W24
	.byte		VOL   , 6*mus_dd_sunken_ruins_mvl/mxv
	.byte		N24
	.byte	W04
	.byte		VOL   , 10*mus_dd_sunken_ruins_mvl/mxv
	.byte	W04
	.byte		        12*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        15*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        18*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        22*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        28*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        37*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        42*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        42*mus_dd_sunken_ruins_mvl/mxv
	.byte	W10
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W04
mus_dd_sunken_ruins_6_001:
	.byte		N04   , As2 , v120
	.byte	W24
	.byte		N04
	.byte	W24
	.byte		VOL   , 6*mus_dd_sunken_ruins_mvl/mxv
	.byte		N24
	.byte	W04
	.byte		VOL   , 10*mus_dd_sunken_ruins_mvl/mxv
	.byte	W04
	.byte		        12*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        15*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        18*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        22*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        28*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        37*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        42*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        42*mus_dd_sunken_ruins_mvl/mxv
	.byte	W10
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		PEND
mus_dd_sunken_ruins_6_002:
	.byte		N04   , An2 , v120
	.byte	W24
	.byte		N04
	.byte	W24
	.byte		VOL   , 6*mus_dd_sunken_ruins_mvl/mxv
	.byte		N24
	.byte	W04
	.byte		VOL   , 10*mus_dd_sunken_ruins_mvl/mxv
	.byte	W04
	.byte		        12*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        15*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        18*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        22*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        28*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        37*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        42*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        42*mus_dd_sunken_ruins_mvl/mxv
	.byte	W10
	.byte		N04
	.byte	W12
	.byte		        As2
	.byte	W04
	.byte		PEND
	.byte		        Ds3
	.byte	W24
	.byte		N04
	.byte	W24
	.byte		VOL   , 43*mus_dd_sunken_ruins_mvl/mxv
	.byte		N04
	.byte	W08
	.byte		        Bn2
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		N16   , Fs3
	.byte	W04
	.byte		VOL   , 30*mus_dd_sunken_ruins_mvl/mxv
	.byte	W12
	.byte		        43*mus_dd_sunken_ruins_mvl/mxv
	.byte		N04   , Bn2
	.byte	W24
	.byte		N04
	.byte	W24
	.byte		VOL   , 6*mus_dd_sunken_ruins_mvl/mxv
	.byte		N24
	.byte	W04
	.byte		VOL   , 10*mus_dd_sunken_ruins_mvl/mxv
	.byte	W04
	.byte		        12*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        15*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        18*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        22*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        28*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        37*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        42*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        42*mus_dd_sunken_ruins_mvl/mxv
	.byte	W10
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W04
	.byte	PATT
	 .word	mus_dd_sunken_ruins_6_001
	.byte	PATT
	 .word	mus_dd_sunken_ruins_6_002
	.byte		N04   , Ds3 , v120
	.byte	W24
	.byte		N04
	.byte	W24
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		N16   , Fs3
	.byte	W16
	.byte		VOL   , 43*mus_dd_sunken_ruins_mvl/mxv
	.byte		N04   , Dn3 , v112
	.byte	W08
	.byte		        As2
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        Dn3
	.byte	W08
	.byte		        As2
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        Dn3
	.byte	W08
	.byte		        As2
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        Dn3
	.byte	W08
	.byte		        As2
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        An2
	.byte	W08
	.byte		        Fn2
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        An2
	.byte	W08
	.byte		        Fn2
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        An2
	.byte	W08
	.byte		        Fn2
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        An2
	.byte	W08
	.byte		        Fn2
	.byte	W12
	.byte		        Fs2
	.byte	W04
	.byte		        Dn3
	.byte	W08
	.byte		        As2
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        Dn3
	.byte	W08
	.byte		        As2
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        Dn3
	.byte	W08
	.byte		        As2
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        Dn3
	.byte	W08
	.byte		        As2
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        An2
	.byte	W08
	.byte		        Fn2
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        An2
	.byte	W08
	.byte		        Fn2
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        An2
	.byte	W08
	.byte		        Fn2
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        An2
	.byte	W08
	.byte		        Fn2
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        Bn2
	.byte	W08
	.byte		        Gn2
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        Bn2
	.byte	W08
	.byte		        Gn2
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        Bn2
	.byte	W08
	.byte		        Gn2
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        Bn2
	.byte	W08
	.byte		        Gn2
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        As2
	.byte	W08
	.byte		        Gn2
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        As2
	.byte	W08
	.byte		        Gn2
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        As2
	.byte	W08
	.byte		        Gn2
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        As2
	.byte	W08
	.byte		        Gn2
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        Dn3
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N04
	.byte	W08
	.byte		N16
	.byte	W16
	.byte		N04   , Gn3
	.byte	W08
	.byte		N08   , Dn3
	.byte	W08
	.byte		        Gn3
	.byte	W08
	.byte		N12   , Cn4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		BEND  , c_v+1
	.byte		N08   , En5
	.byte	W08
	.byte		BEND  , c_v+0
	.byte		N04   , Dn2
	.byte	W12
	.byte		        Dn3
	.byte	W04
	.byte		PAN   , c_v+63
	.byte		BEND  , c_v+1
	.byte		N08   , Dn5 , v116
	.byte	W08
	.byte		BEND  , c_v+0
	.byte		N04   , Dn2 , v112
	.byte	W12
	.byte		        Dn3
	.byte	W04
	.byte		PAN   , c_v-63
	.byte		BEND  , c_v+1
	.byte		N08   , Cs5
	.byte	W08
	.byte		BEND  , c_v+0
	.byte		N04   , En2
	.byte	W12
	.byte		        Cs3
	.byte	W04
	.byte		PAN   , c_v+63
	.byte		BEND  , c_v+1
	.byte		N08   , Cs5 , v116
	.byte	W08
	.byte		BEND  , c_v+0
	.byte		N04   , En3 , v112
	.byte	W12
	.byte		        An3
	.byte	W04
	.byte		PAN   , c_v-62
	.byte		N04   , Fs3
	.byte	W12
	.byte		N08   , An3
	.byte	W08
	.byte		N04   , Fs3
	.byte	W04
	.byte		N12   , An2
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		N04   , Fs3
	.byte	W12
	.byte		N08   , An3
	.byte	W08
	.byte		N04   , Fs3
	.byte	W04
	.byte		N12   , Dn3
	.byte	W12
	.byte		        En3
	.byte	W12
mus_dd_sunken_ruins_6_003:
	.byte		N04   , Dn3 , v112
	.byte	W12
	.byte		N08   , Gn3
	.byte	W08
	.byte		N04   , Dn3
	.byte	W04
	.byte		N12   , Bn2
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N08   , Fn3
	.byte	W08
	.byte		N04   , Dn3
	.byte	W04
	.byte		N12   , Gn2
	.byte	W12
	.byte		N04   , Cn3
	.byte	W04
	.byte		        En3
	.byte	W04
	.byte		        Gn3
	.byte	W04
	.byte		PEND
	.byte		        Fs3
	.byte	W12
	.byte		N08   , An3
	.byte	W08
	.byte		N04   , Fs3
	.byte	W04
	.byte		N12   , An2
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		N04   , Fs3
	.byte	W12
	.byte		N08   , An3
	.byte	W08
	.byte		N04   , Fs3
	.byte	W04
	.byte		N12   , Dn3
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte	PATT
	 .word	mus_dd_sunken_ruins_6_003
	.byte		N08   , Bn2 , v112
	.byte	W08
	.byte		        Fs2
	.byte	W08
	.byte		        Dn3
	.byte	W08
	.byte		        As2
	.byte	W08
	.byte		N04   , Fs2
	.byte	W04
	.byte		        As2
	.byte	W04
	.byte		N08   , Dn3
	.byte	W08
	.byte		N04   , An2
	.byte	W04
	.byte		        Gs2
	.byte	W04
	.byte		N08   , Fs2
	.byte	W08
	.byte		        Dn3
	.byte	W08
	.byte		        Gs2
	.byte	W08
	.byte		N04   , Fs2
	.byte	W04
	.byte		        Gs2
	.byte	W04
	.byte		        Bn2
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte	GOTO
	 .word	mus_dd_sunken_ruins_6_000
	.byte		FINE

@**************** Track 7 ****************@

mus_dd_sunken_ruins_7:
	.byte		KEYSH , mus_dd_sunken_ruins_key+0
	.byte		VOICE , 87
	.byte		LFOS  , 49
	.byte		XCMD  , 8 , 18
	.byte		        8
	.byte		        16
	.byte		VOL   , 43*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v+63
	.byte	W96
	.byte	W72
	.byte		VOL   , 10*mus_dd_sunken_ruins_mvl/mxv
	.byte	W24
	.byte		N96   , Fs3 , v112
	.byte	W48
	.byte		VOL   , 20*mus_dd_sunken_ruins_mvl/mxv
	.byte	W12
	.byte		        30*mus_dd_sunken_ruins_mvl/mxv
	.byte	W12
	.byte		        61*mus_dd_sunken_ruins_mvl/mxv
	.byte	W16
	.byte		        69*mus_dd_sunken_ruins_mvl/mxv
	.byte	W08
	.byte		        43*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v+63
	.byte		N08   , Dn3
	.byte	W08
	.byte		        Bn2
	.byte	W08
	.byte		        Fs3
	.byte	W08
	.byte		        Dn3
	.byte	W08
	.byte		N04   , As2
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		N08   , Fs3
	.byte	W08
	.byte		N04   , Dn3
	.byte	W04
	.byte		        Bn2
	.byte	W04
	.byte		N08   , An2
	.byte	W08
	.byte		        Fs3
	.byte	W08
	.byte		        Dn3
	.byte	W08
	.byte		N04   , Gs2
	.byte	W04
	.byte		        Bn2
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Fs3
	.byte	W04
mus_dd_sunken_ruins_7_000:
	.byte		N04   , Fs3 , v120
	.byte	W24
	.byte		N04
	.byte	W24
	.byte		VOL   , 6*mus_dd_sunken_ruins_mvl/mxv
	.byte		N24
	.byte	W04
	.byte		VOL   , 10*mus_dd_sunken_ruins_mvl/mxv
	.byte	W04
	.byte		        12*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        15*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        18*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        22*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        28*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        37*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        42*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        42*mus_dd_sunken_ruins_mvl/mxv
	.byte	W10
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W04
mus_dd_sunken_ruins_7_001:
	.byte		N04   , En3 , v120
	.byte	W24
	.byte		N04
	.byte	W24
	.byte		VOL   , 6*mus_dd_sunken_ruins_mvl/mxv
	.byte		N24
	.byte	W04
	.byte		VOL   , 10*mus_dd_sunken_ruins_mvl/mxv
	.byte	W04
	.byte		        12*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        15*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        18*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        22*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        28*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        37*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        42*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        42*mus_dd_sunken_ruins_mvl/mxv
	.byte	W10
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		PEND
mus_dd_sunken_ruins_7_002:
	.byte		N04   , En3 , v120
	.byte	W24
	.byte		N04
	.byte	W24
	.byte		VOL   , 6*mus_dd_sunken_ruins_mvl/mxv
	.byte		N24
	.byte	W04
	.byte		VOL   , 10*mus_dd_sunken_ruins_mvl/mxv
	.byte	W04
	.byte		        12*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        15*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        18*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        22*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        28*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        37*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        42*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        42*mus_dd_sunken_ruins_mvl/mxv
	.byte	W10
	.byte		N04
	.byte	W12
	.byte		        Fn3
	.byte	W04
	.byte		PEND
	.byte		        Fs3
	.byte	W24
	.byte		N04
	.byte	W24
	.byte		VOL   , 50*mus_dd_sunken_ruins_mvl/mxv
	.byte		N04
	.byte	W08
	.byte		        Ds3
	.byte	W12
	.byte		        Gn3
	.byte	W10
	.byte		VOL   , 40*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		N16   , An3
	.byte	W04
	.byte		VOL   , 15*mus_dd_sunken_ruins_mvl/mxv
	.byte	W12
	.byte		        43*mus_dd_sunken_ruins_mvl/mxv
	.byte		N04   , Fs3
	.byte	W24
	.byte		N04
	.byte	W24
	.byte		VOL   , 6*mus_dd_sunken_ruins_mvl/mxv
	.byte		N24
	.byte	W04
	.byte		VOL   , 10*mus_dd_sunken_ruins_mvl/mxv
	.byte	W04
	.byte		        12*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        15*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        18*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        22*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        28*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        37*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        42*mus_dd_sunken_ruins_mvl/mxv
	.byte	W02
	.byte		        42*mus_dd_sunken_ruins_mvl/mxv
	.byte	W10
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W04
	.byte	PATT
	 .word	mus_dd_sunken_ruins_7_001
	.byte	PATT
	 .word	mus_dd_sunken_ruins_7_002
	.byte		N04   , Fs3 , v120
	.byte	W24
	.byte		N04
	.byte	W24
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		N16   , Bn3
	.byte	W16
	.byte		VOL   , 43*mus_dd_sunken_ruins_mvl/mxv
	.byte		N04   , An3 , v112
	.byte	W08
	.byte		        Fn3
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        An3
	.byte	W08
	.byte		        Fn3
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        An3
	.byte	W08
	.byte		        Fn3
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        An3
	.byte	W08
	.byte		        Fn3
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        En3
	.byte	W08
	.byte		        Cn3
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        En3
	.byte	W08
	.byte		        Cn3
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        En3
	.byte	W08
	.byte		        Cn3
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        En3
	.byte	W08
	.byte		        Cn3
	.byte	W12
	.byte		        Cs3
	.byte	W04
	.byte		        An3
	.byte	W08
	.byte		        Fn3
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        An3
	.byte	W08
	.byte		        Fn3
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        An3
	.byte	W08
	.byte		        Fn3
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        An3
	.byte	W08
	.byte		        Fn3
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        En3
	.byte	W08
	.byte		        Cn3
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        En3
	.byte	W08
	.byte		        Cn3
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        En3
	.byte	W08
	.byte		        Cn3
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        En3
	.byte	W08
	.byte		        Cn3
	.byte	W12
	.byte		N04
	.byte	W04
mus_dd_sunken_ruins_7_003:
	.byte		N04   , Fs3 , v112
	.byte	W08
	.byte		        Dn3
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        Fs3
	.byte	W08
	.byte		        Dn3
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        Fs3
	.byte	W08
	.byte		        Dn3
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        Fs3
	.byte	W08
	.byte		        Dn3
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_sunken_ruins_7_003
	.byte		N04   , En3 , v112
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N04   , Gn3
	.byte	W08
	.byte		N16
	.byte	W16
	.byte		N04   , Cn4
	.byte	W08
	.byte		N08   , Gn3
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		N12   , Fn4
	.byte	W12
	.byte		        As4
	.byte	W12
	.byte		PAN   , c_v-63
	.byte		N08   , En5
	.byte	W08
	.byte		N04   , An2
	.byte	W12
	.byte		        En3
	.byte	W04
	.byte		PAN   , c_v+63
	.byte		N08   , Dn5 , v116
	.byte	W08
	.byte		N04   , An2 , v112
	.byte	W12
	.byte		        En3
	.byte	W04
	.byte		PAN   , c_v-63
	.byte		N08   , Cs5 , v116
	.byte	W08
	.byte		N04   , An2 , v112
	.byte	W12
	.byte		        En3
	.byte	W04
	.byte		PAN   , c_v+63
	.byte		N08   , Cs5 , v116
	.byte	W08
	.byte		N04   , An3 , v112
	.byte	W12
	.byte		        Cs4
	.byte	W04
mus_dd_sunken_ruins_7_004:
	.byte		N04   , An3 , v112
	.byte	W12
	.byte		N08   , Dn4
	.byte	W08
	.byte		N04   , An3
	.byte	W04
	.byte		N12   , Dn3
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		N04   , An3
	.byte	W12
	.byte		N08   , Cn4
	.byte	W08
	.byte		N04   , An3
	.byte	W04
	.byte		N12   , Gn3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		PEND
mus_dd_sunken_ruins_7_005:
	.byte		N04   , Gn3 , v112
	.byte	W12
	.byte		N08   , Bn3
	.byte	W08
	.byte		N04   , Gn3
	.byte	W04
	.byte		N12   , Dn3
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		N04   , Fn3
	.byte	W12
	.byte		N08   , An3
	.byte	W08
	.byte		N04   , Fn3
	.byte	W04
	.byte		N12   , Cn3
	.byte	W12
	.byte		N04   , En3
	.byte	W04
	.byte		        Gn3
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_sunken_ruins_7_004
	.byte	PATT
	 .word	mus_dd_sunken_ruins_7_005
	.byte		N08   , Dn3 , v112
	.byte	W08
	.byte		        Bn2
	.byte	W08
	.byte		        Fs3
	.byte	W08
	.byte		        Dn3
	.byte	W08
	.byte		N04   , As2
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		N08   , Fs3
	.byte	W08
	.byte		N04   , Dn3
	.byte	W04
	.byte		        Bn2
	.byte	W04
	.byte		N08   , An2
	.byte	W08
	.byte		        Fs3
	.byte	W08
	.byte		        Dn3
	.byte	W08
	.byte		N04   , Gs2
	.byte	W04
	.byte		        Bn2
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte	GOTO
	 .word	mus_dd_sunken_ruins_7_000
	.byte		FINE

@**************** Track 8 ****************@

mus_dd_sunken_ruins_8:
	.byte		KEYSH , mus_dd_sunken_ruins_key+0
	.byte		VOICE , 0
	.byte		VOL   , 60*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N04   , Cn1 , v112
	.byte	W20
	.byte		N04
	.byte	W04
	.byte		        En1
	.byte	W08
	.byte		        En1 , v048
	.byte	W04
	.byte		        Cn1 , v112
	.byte	W08
	.byte		        En1
	.byte	W04
	.byte		        Cn1
	.byte	W08
	.byte		        En1
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		        Cn1
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		N04
	.byte	W12
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N04   , En1
	.byte	W08
	.byte		        En1 , v056
	.byte	W04
	.byte		        Cn1 , v112
	.byte	W08
	.byte		        En1
	.byte	W04
	.byte		        Cn1
	.byte	W08
	.byte		        En1
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W04
	.byte		N08   , Fn1 , v092
	.byte	W08
	.byte		N04   , Cn1 , v112
	.byte	W04
	.byte		N12
	.byte	W20
	.byte		N04
	.byte	W04
	.byte		        En1
	.byte	W08
	.byte		        En1 , v056
	.byte	W04
	.byte		        Cn1 , v112
	.byte	W08
	.byte		        En1
	.byte	W04
	.byte		        Cn1
	.byte	W08
	.byte		        En1
	.byte	W08
	.byte		        En1 , v064
	.byte	W08
	.byte		        En1 , v112
	.byte	W08
	.byte		        En1 , v064
	.byte	W08
	.byte		N08   , En1 , v112
	.byte	W08
	.byte		N04   , Cn1
	.byte	W12
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N04   , En1
	.byte	W12
	.byte		        Cn1
	.byte	W08
	.byte		        En1
	.byte	W04
	.byte		        Cn1
	.byte	W08
	.byte		        En1
	.byte	W16
	.byte		        Cn1
	.byte	W08
	.byte		        En1
	.byte	W04
	.byte		        Cn1
	.byte	W08
	.byte		N04
	.byte	W04
mus_dd_sunken_ruins_8_000:
	.byte		N04   , Cn1 , v112
	.byte	W20
	.byte		N04
	.byte	W04
	.byte		        En1
	.byte	W08
	.byte		        En1 , v060
	.byte	W04
	.byte		        Cn1 , v112
	.byte	W08
	.byte		        En1
	.byte	W04
	.byte		        Cn1
	.byte	W08
	.byte		        En1
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		        Cn1
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		PEND
mus_dd_sunken_ruins_8_001:
	.byte		N04   , Cn1 , v112
	.byte	W12
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N04   , En1
	.byte	W08
	.byte		        En1 , v060
	.byte	W04
	.byte		        Cn1 , v112
	.byte	W08
	.byte		        En1
	.byte	W04
	.byte		        Cn1
	.byte	W08
	.byte		        En1
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W04
	.byte		N08   , Fn1 , v092
	.byte	W08
	.byte		N04   , Cn1 , v112
	.byte	W04
	.byte		PEND
	.byte		N04
	.byte	W20
	.byte		N04
	.byte	W04
	.byte		        En1
	.byte	W08
	.byte		        En1 , v060
	.byte	W04
	.byte		        Cn1 , v112
	.byte	W08
	.byte		        En1
	.byte	W04
	.byte		        Cn1
	.byte	W08
	.byte		        En1
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		        En1 , v064
	.byte	W12
	.byte		        Cn1 , v112
	.byte	W04
mus_dd_sunken_ruins_8_002:
	.byte		N04   , Cn1 , v112
	.byte	W12
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N04   , En1
	.byte	W08
	.byte		        En1 , v060
	.byte	W04
	.byte		        Cn1 , v112
	.byte	W08
	.byte		        En1
	.byte	W04
	.byte		        Cn1
	.byte	W08
	.byte		        En1
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W04
	.byte		N08   , Fn1 , v088
	.byte	W08
	.byte		N04   , Cn1 , v112
	.byte	W04
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_sunken_ruins_8_000
	.byte	PATT
	 .word	mus_dd_sunken_ruins_8_001
	.byte		N04   , Cn1 , v112
	.byte	W20
	.byte		N04
	.byte	W04
	.byte		        En1
	.byte	W08
	.byte		        En1 , v060
	.byte	W04
	.byte		        Cn1 , v112
	.byte	W08
	.byte		        En1
	.byte	W04
	.byte		        Cn1
	.byte	W08
	.byte		        En1
	.byte	W16
	.byte		N04
	.byte	W20
	.byte		        Cn1
	.byte	W04
	.byte	PATT
	 .word	mus_dd_sunken_ruins_8_002
	.byte		N04   , Cn1 , v112
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		        Dn1
	.byte	W04
	.byte		        Dn1 , v080
	.byte	W04
	.byte		        Dn1 , v108
	.byte	W04
	.byte		N08   , Dn2 , v112
	.byte	W08
	.byte		N04   , Bn1
	.byte	W04
	.byte		        Cn1
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		        Dn1
	.byte	W04
	.byte		        Dn1 , v080
	.byte	W04
	.byte		        Cs1 , v088
	.byte	W04
	.byte		N08   , An1 , v112
	.byte	W08
	.byte		N04   , Fn1
	.byte	W04
	.byte		        Cn1
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		        Cn1
	.byte	W08
	.byte		        Dn1
	.byte	W04
	.byte		        Cn1
	.byte	W08
	.byte		        Dn1
	.byte	W04
	.byte		        Cn1
	.byte	W12
	.byte		        Dn1
	.byte	W08
	.byte		        Cn1 , v088
	.byte	W04
	.byte		        En1 , v112
	.byte	W08
	.byte		        Dn1
	.byte	W04
	.byte		        Cn1
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		        Dn1
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		        Dn2
	.byte	W08
	.byte		        Cn2
	.byte	W04
	.byte		        Bn1
	.byte	W08
	.byte		        An1
	.byte	W04
	.byte		        Gn1
	.byte	W04
	.byte		        Dn1 , v064
	.byte	W04
	.byte		        Fn1 , v112
	.byte	W04
	.byte		        Dn1
	.byte	W04
	.byte		        Dn1 , v080
	.byte	W04
	.byte		        Cs1 , v088
	.byte	W04
	.byte		        En1 , v112
	.byte	W08
	.byte		        Cs1
	.byte	W04
	.byte		        Cn1
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		        Dn1
	.byte	W08
	.byte		        Cn1
	.byte	W04
	.byte		N08   , Dn2
	.byte	W08
	.byte		N04   , Dn1
	.byte		N04   , An1 , v108
	.byte	W04
	.byte		        Cn1 , v112
	.byte	W08
	.byte		        Dn1
	.byte	W04
	.byte		        Cn1
	.byte	W12
	.byte		        Dn1
	.byte	W08
	.byte		        Dn1 , v088
	.byte	W04
	.byte		        Fn1 , v112
	.byte	W08
	.byte		        Cn1
	.byte	W04
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		        Dn1
	.byte	W08
	.byte		        Cn1
	.byte	W12
	.byte		        Dn1
	.byte	W04
	.byte		        Cn1
	.byte	W08
	.byte		        Dn1
	.byte	W04
	.byte		        Cn1
	.byte	W12
	.byte		        Dn1
	.byte	W08
	.byte		        Cn1 , v088
	.byte	W04
	.byte		        En1 , v112
	.byte	W08
	.byte		        Cn1
	.byte	W04
	.byte		N04
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		        Cn1
	.byte	W08
	.byte		        Dn1
	.byte	W04
	.byte		        Cn1
	.byte	W08
	.byte		        Dn1
	.byte	W04
	.byte		        Cn1
	.byte	W12
	.byte		        Dn1
	.byte	W08
	.byte		        Cn1 , v088
	.byte	W04
	.byte		        En1 , v112
	.byte	W08
	.byte		        Cs1
	.byte	W04
	.byte		        Cn1
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		        Dn1
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		        An1
	.byte	W08
	.byte		        Fs1
	.byte	W04
	.byte		        Dn2
	.byte	W04
	.byte		        Dn2 , v092
	.byte	W04
	.byte		        Gn1 , v112
	.byte	W04
	.byte		        Bn1
	.byte	W04
	.byte		        En1
	.byte	W04
	.byte		        Fn1
	.byte	W04
	.byte		        Dn1
	.byte	W04
	.byte		        Dn1 , v080
	.byte	W04
	.byte		        Cs1 , v088
	.byte	W04
	.byte		        En1 , v112
	.byte	W08
	.byte		        Cs1
	.byte	W04
	.byte		        Cn1
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		        Dn1
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		        Fs2
	.byte	W08
	.byte		        Fs2 , v060
	.byte	W04
	.byte		        Cn1 , v112
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		        Dn1
	.byte	W04
	.byte		        Dn1 , v080
	.byte	W04
	.byte		        Cs1 , v088
	.byte	W04
	.byte		        En1 , v112
	.byte	W08
	.byte		        Cs1
	.byte	W04
mus_dd_sunken_ruins_8_003:
	.byte		N04   , Cn1 , v112
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		        As5
	.byte	W04
	.byte		N02   , As5 , v064
	.byte	W04
	.byte		N04   , As5 , v112
	.byte	W04
	.byte		        Cn1
	.byte	W08
	.byte		        En1
	.byte	W04
	.byte		        Cn1
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		        Cn1
	.byte	W08
	.byte		        En1
	.byte	W04
	.byte		PEND
mus_dd_sunken_ruins_8_004:
	.byte		N04   , Cn1 , v112
	.byte	W08
	.byte		        Cn1 , v088
	.byte	W04
	.byte		        Cn1 , v112
	.byte	W04
	.byte		        Cn1 , v088
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		        En1 , v112
	.byte	W08
	.byte		N04
	.byte	W04
	.byte		N08   , Gn1
	.byte	W08
	.byte		N04   , Fn1
	.byte	W04
	.byte		        Cn1
	.byte	W08
	.byte		        En1
	.byte	W04
	.byte		        Cn1
	.byte	W12
	.byte		        En1
	.byte	W08
	.byte		        Cn1
	.byte	W12
	.byte		        En1
	.byte	W04
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_sunken_ruins_8_003
	.byte	PATT
	 .word	mus_dd_sunken_ruins_8_004
	.byte	W72
	.byte		N04   , Cn1 , v112
	.byte	W08
	.byte		        En1
	.byte	W04
	.byte		        Cn1
	.byte	W08
	.byte		N04
	.byte	W04
	.byte	GOTO
	 .word	mus_dd_sunken_ruins_8_000
	.byte		FINE

@**************** Track 9 ****************@

mus_dd_sunken_ruins_9:
	.byte		KEYSH , mus_dd_sunken_ruins_key+0
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		XCMD  , 8 , 18
	.byte		        8
	.byte		        16
	.byte		VOL   , 46*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Gn5 , v064
	.byte	W08
	.byte		        Gn5 , v036
	.byte	W04
	.byte		        Gn5 , v064
	.byte	W08
	.byte		        Gn5 , v036
	.byte	W04
	.byte		N04   , Gn5 , v096
	.byte	W08
	.byte		N02   , Gn5 , v036
	.byte	W04
	.byte		        Gn5 , v064
	.byte	W08
	.byte		        Gn5 , v036
	.byte	W04
	.byte		        Gn5 , v064
	.byte	W08
	.byte		        Gn5 , v036
	.byte	W04
	.byte		N12   , Gn5 , v048
	.byte	W12
	.byte		N04   , Gn5 , v088
	.byte	W08
	.byte		N02   , Gn5 , v036
	.byte	W04
	.byte		        Gn5 , v064
	.byte	W08
	.byte		        Gn5 , v036
	.byte	W04
mus_dd_sunken_ruins_9_000:
	.byte		N02   , Gn5 , v064
	.byte	W08
	.byte		        Gn5 , v036
	.byte	W04
	.byte		        Gn5 , v048
	.byte	W04
	.byte		        Gn5 , v080
	.byte	W04
	.byte		        Gn5 , v036
	.byte	W04
	.byte		N04   , Gn5 , v092
	.byte	W08
	.byte		N02   , Gn5 , v036
	.byte	W04
	.byte		        Gn5 , v064
	.byte	W08
	.byte		        Gn5 , v036
	.byte	W04
	.byte		        Gn5 , v064
	.byte	W08
	.byte		        Gn5 , v036
	.byte	W04
	.byte		N12   , Gn5 , v048
	.byte	W12
	.byte		N04   , Gn5 , v088
	.byte	W08
	.byte		N02   , Gn5 , v036
	.byte	W04
	.byte		        Gn5 , v064
	.byte	W08
	.byte		        Gn5 , v036
	.byte	W04
	.byte		PEND
mus_dd_sunken_ruins_9_001:
	.byte		N02   , Gn5 , v064
	.byte	W08
	.byte		        Gn5 , v036
	.byte	W04
	.byte		        Gn5 , v064
	.byte	W08
	.byte		        Gn5 , v036
	.byte	W04
	.byte		N04   , Gn5 , v096
	.byte	W08
	.byte		N02   , Gn5 , v036
	.byte	W04
	.byte		        Gn5 , v064
	.byte	W08
	.byte		        Gn5 , v036
	.byte	W04
	.byte		        Gn5 , v064
	.byte	W08
	.byte		        Gn5 , v036
	.byte	W04
	.byte		N12   , Gn5 , v048
	.byte	W12
	.byte		N04   , Gn5 , v088
	.byte	W08
	.byte		N02   , Gn5 , v036
	.byte	W04
	.byte		        Gn5 , v064
	.byte	W08
	.byte		        Gn5 , v036
	.byte	W04
	.byte		PEND
	.byte		        Cn5 , v084
	.byte	W08
	.byte		N08   , Gn5 , v056
	.byte	W12
	.byte		N02   , Cn5 , v068
	.byte	W04
	.byte		        Cn5 , v060
	.byte	W08
	.byte		N08   , Gn5 , v064
	.byte	W12
	.byte		N02   , Cn5 , v068
	.byte	W04
	.byte		        Cn5 , v084
	.byte	W08
	.byte		N08   , Gn5
	.byte	W12
	.byte		N02   , Cn5 , v068
	.byte	W04
	.byte		        Cn5 , v084
	.byte	W04
	.byte		        Cn5 , v048
	.byte	W04
	.byte		        Cn5 , v064
	.byte	W04
	.byte		N12   , Gn5 , v092
	.byte	W12
mus_dd_sunken_ruins_9_002:
	.byte	PATT
	 .word	mus_dd_sunken_ruins_9_001
	.byte	PATT
	 .word	mus_dd_sunken_ruins_9_000
	.byte	PATT
	 .word	mus_dd_sunken_ruins_9_001
	.byte	PATT
	 .word	mus_dd_sunken_ruins_9_000
	.byte	PATT
	 .word	mus_dd_sunken_ruins_9_001
	.byte	PATT
	 .word	mus_dd_sunken_ruins_9_000
	.byte	PATT
	 .word	mus_dd_sunken_ruins_9_001
	.byte	PATT
	 .word	mus_dd_sunken_ruins_9_000
mus_dd_sunken_ruins_9_003:
	.byte		N02   , Gn5 , v080
	.byte	W08
	.byte		        Gn5 , v040
	.byte	W04
	.byte		N12   , Gn5 , v064
	.byte	W12
	.byte		N02   , Gn5 , v080
	.byte	W04
	.byte		        Gn5 , v064
	.byte	W04
	.byte		        Gn5 , v076
	.byte	W04
	.byte		N12   , Ds4 , v056
	.byte	W12
	.byte		N02   , Gn5 , v080
	.byte	W08
	.byte		        Gn5 , v032
	.byte	W04
	.byte		N12   , Gn5 , v064
	.byte	W12
	.byte		N02   , Gn5 , v080
	.byte	W04
	.byte		        Gn5 , v064
	.byte	W04
	.byte		        Gn5 , v076
	.byte	W04
	.byte		N12   , Ds4 , v056
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_sunken_ruins_9_003
	.byte	PATT
	 .word	mus_dd_sunken_ruins_9_003
	.byte	PATT
	 .word	mus_dd_sunken_ruins_9_003
	.byte		N02   , Gn5 , v080
	.byte	W08
	.byte		        Gn5 , v040
	.byte	W04
	.byte		N12   , Gn5 , v064
	.byte	W12
	.byte		N02   , Gn5 , v080
	.byte	W04
	.byte		        Gn5 , v064
	.byte	W04
	.byte		        Gn5 , v076
	.byte	W04
	.byte		N12   , Ds4 , v056
	.byte	W12
	.byte		N02   , Gn5 , v080
	.byte	W04
	.byte		        Gn5 , v064
	.byte	W04
	.byte		        Gn5 , v032
	.byte	W04
	.byte		N12   , Gn5 , v064
	.byte	W12
	.byte		N02   , Gn5 , v080
	.byte	W08
	.byte		        Gn5 , v076
	.byte	W04
	.byte		N12   , Ds4 , v056
	.byte		N12   , Gn5 , v064
	.byte	W12
	.byte	PATT
	 .word	mus_dd_sunken_ruins_9_003
	.byte	PATT
	 .word	mus_dd_sunken_ruins_9_003
	.byte	PATT
	 .word	mus_dd_sunken_ruins_9_003
mus_dd_sunken_ruins_9_004:
	.byte		N02   , Cn5 , v084
	.byte	W08
	.byte		        Cn5 , v064
	.byte	W04
	.byte		        Cn5 , v092
	.byte	W08
	.byte		        Cn5 , v064
	.byte	W04
	.byte		N12   , Gn5 , v092
	.byte	W12
	.byte		N02   , Cn5
	.byte	W04
	.byte		        Cn5 , v064
	.byte	W04
	.byte		        Cn5 , v080
	.byte	W04
	.byte		        Cn5 , v084
	.byte	W08
	.byte		        Cn5 , v064
	.byte	W04
	.byte		        Cn5 , v092
	.byte	W08
	.byte		        Cn5 , v064
	.byte	W04
	.byte		N12   , Gn5 , v092
	.byte	W12
	.byte		N02   , Cn5
	.byte	W04
	.byte		        Cn5 , v064
	.byte	W04
	.byte		        Cn5 , v080
	.byte	W04
	.byte		PEND
mus_dd_sunken_ruins_9_005:
	.byte		N02   , Cn5 , v084
	.byte	W08
	.byte		        Cn5 , v064
	.byte	W04
	.byte		N12   , Gn5 , v092
	.byte	W12
	.byte		N02   , Cn5
	.byte	W08
	.byte		        Cn5 , v064
	.byte	W04
	.byte		        Cn5 , v092
	.byte	W04
	.byte		        Cn5 , v064
	.byte	W04
	.byte		        Cn5 , v080
	.byte	W04
	.byte		        Cn5 , v084
	.byte	W08
	.byte		        Cn5 , v064
	.byte	W04
	.byte		N12   , Gn5 , v092
	.byte	W12
	.byte		N02   , Cn5 , v084
	.byte	W04
	.byte		        Cn5 , v048
	.byte	W04
	.byte		        Cn5 , v064
	.byte	W04
	.byte		N12   , Gn5 , v092
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_sunken_ruins_9_004
	.byte	PATT
	 .word	mus_dd_sunken_ruins_9_005
	.byte	W72
	.byte		N02   , Cn5 , v084
	.byte	W04
	.byte		        Cn5 , v048
	.byte	W04
	.byte		        Cn5 , v064
	.byte	W04
	.byte		N12   , Gn5 , v092
	.byte	W12
	.byte	GOTO
	 .word	mus_dd_sunken_ruins_9_002
	.byte		FINE

@**************** Track 10 ****************@

mus_dd_sunken_ruins_10:
	.byte		KEYSH , mus_dd_sunken_ruins_key+0
	.byte		VOICE , 92
	.byte		LFOS  , 44
	.byte		VOL   , 42*mus_dd_sunken_ruins_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		BEND  , c_v+0
	.byte	W96
mus_dd_sunken_ruins_10_000:
	.byte		N04   , Dn4 , v127
	.byte	W08
	.byte		        En4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		N08   , Gn3
	.byte	W08
	.byte		N04   , Fs3 , v112
	.byte	W04
	.byte		        Ds3
	.byte	W04
	.byte		N08   , Dn3 , v127
	.byte	W08
	.byte		N04   , Bn2
	.byte	W04
	.byte		N08   , Gn3
	.byte	W08
	.byte		N04   , Dn3
	.byte	W04
	.byte		N08   , Bn3
	.byte	W08
	.byte		N04   , Gn3
	.byte	W04
	.byte		        Dn4
	.byte	W08
	.byte		        En4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        As3
	.byte	W12
	.byte		N12   , Gn3
	.byte	W12
	.byte		N04   , Fs3 , v112
	.byte	W04
	.byte		        Fn3
	.byte	W04
	.byte		N08   , En3
	.byte	W08
	.byte		        As3
	.byte	W08
	.byte		N04   , Gn3 , v127
	.byte	W04
	.byte		N08   , As3
	.byte	W08
	.byte		N04   , Gn3
	.byte	W04
	.byte		        Fs3
	.byte	W08
	.byte		        Cs3
	.byte	W12
	.byte		N12   , En4
	.byte	W12
	.byte		N04   , Fs4 , v112
	.byte	W12
	.byte		        En4
	.byte	W04
	.byte		N08   , Cs4
	.byte	W08
	.byte		N02   , Bn3
	.byte	W02
	.byte		        As3
	.byte	W02
	.byte		N08   , An3 , v127
	.byte	W08
	.byte		N04   , Cs4 , v112
	.byte	W04
	.byte		N08   , En4
	.byte	W08
	.byte		N04   , Fn4
	.byte	W04
	.byte		N08   , Fs4 , v127
	.byte	W08
	.byte		N04   , An4 , v112
	.byte	W04
	.byte		        Ds4 , v127
	.byte	W08
	.byte		        Bn3 , v112
	.byte	W12
	.byte		N12   , An3
	.byte	W12
	.byte		N04   , Bn3
	.byte	W04
	.byte		        Fs3
	.byte	W08
	.byte		N08   , An3
	.byte	W08
	.byte		N04   , Gs3
	.byte	W04
	.byte		        Gn3
	.byte	W04
	.byte		N12   , Fs3
	.byte	W12
	.byte		N08   , Bn3
	.byte	W08
	.byte		N12   , Ds4
	.byte	W12
	.byte		N04   , Fs4
	.byte	W04
	.byte		        Dn4 , v127
	.byte	W08
	.byte		N08   , En4
	.byte	W08
	.byte		N04   , Ds4 , v112
	.byte	W04
	.byte		        Dn4 , v127
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		N12   , Gn4
	.byte	W12
	.byte		N04   , En4 , v112
	.byte	W04
	.byte		N08   , Gn3 , v127
	.byte	W08
	.byte		N04   , Dn3
	.byte	W04
	.byte		N08   , Bn3
	.byte	W08
	.byte		N04   , Gn3
	.byte	W04
	.byte		N08   , Dn4
	.byte	W08
	.byte		N04   , Bn3
	.byte	W04
	.byte		        Dn4
	.byte	W08
	.byte		N08   , En4
	.byte	W08
	.byte		N04   , Ds4 , v112
	.byte	W04
	.byte		        Dn4 , v127
	.byte	W12
	.byte		        As3
	.byte	W12
	.byte		N12   , Dn4
	.byte	W12
	.byte		N04   , Ds4 , v112
	.byte	W04
	.byte		N08   , En4
	.byte	W08
	.byte		N04   , Fs4
	.byte	W04
	.byte		N08   , Gn4
	.byte	W08
	.byte		N04   , An4 , v127
	.byte	W04
	.byte		        Gn4
	.byte	W08
	.byte		        Fs4
	.byte	W04
	.byte	W12
	.byte		N12   , En3 , v112
	.byte	W12
	.byte		N08   , En4
	.byte	W08
	.byte		N06   , Fn3
	.byte	W12
	.byte		N04   , Fn4
	.byte	W04
	.byte		N06   , Fs3
	.byte	W12
	.byte		        Fs4
	.byte	W08
	.byte		N12   , Gn3
	.byte	W12
	.byte		N04   , Gn4
	.byte	W04
	.byte		        Cs4
	.byte	W08
	.byte		        An3
	.byte	W04
	.byte		        Ds4
	.byte	W08
	.byte		N04
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		N12   , Fs4
	.byte	W12
	.byte		N04   , Ds4
	.byte	W04
	.byte		        Fs4
	.byte	W08
	.byte		        Ds4
	.byte	W04
	.byte		        Bn3
	.byte	W08
	.byte		N12
	.byte	W12
	.byte		N04   , Ds3
	.byte	W04
	.byte		N08   , Fs3
	.byte	W08
	.byte		N04   , Bn3
	.byte	W04
	.byte		VOICE , 81
	.byte		N08   , Fn4
	.byte	W08
	.byte		N04   , Gn4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		N28   , As3
	.byte	W28
	.byte		N08   , Cn4
	.byte	W08
	.byte		N04   , Dn4
	.byte	W04
	.byte		N02   , Cn4
	.byte	W02
	.byte		        Dn4
	.byte	W02
	.byte		N04   , Cn4
	.byte	W04
	.byte		        As3
	.byte	W04
	.byte		VOICE , 92
	.byte		BEND  , c_v+3
	.byte	W12
	.byte		N04   , Cn4 , v120
	.byte	W08
	.byte		N12   , Fn4
	.byte	W12
	.byte		N04   , En4 , v116
	.byte	W04
	.byte		N12   , Gn4
	.byte	W12
	.byte		N04   , Fn4
	.byte	W08
	.byte		N12   , An4
	.byte	W12
	.byte		N04   , Gn4 , v120
	.byte	W04
	.byte		        As4
	.byte	W04
	.byte		        Gn4 , v112
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		N08   , An4 , v127
	.byte	W08
	.byte		N04   , Cn5 , v112
	.byte	W04
	.byte		VOICE , 81
	.byte		BEND  , c_v+0
	.byte		N08   , Fn4
	.byte	W08
	.byte		N04   , Gn4
	.byte	W12
	.byte		        An4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		N12   , En4
	.byte	W12
	.byte		N04   , Dn4
	.byte	W04
	.byte		N08   , Cn4
	.byte	W08
	.byte		N04   , As3
	.byte	W04
	.byte		N08   , An3
	.byte	W08
	.byte		N04   , As3
	.byte	W04
	.byte		N08   , Cn4
	.byte	W08
	.byte		N04   , Fn3
	.byte	W04
	.byte		VOICE , 92
	.byte		BEND  , c_v+2
	.byte	W12
	.byte		N04   , Cn5 , v120
	.byte	W08
	.byte		N12   , An4
	.byte	W12
	.byte		N04   , As4 , v116
	.byte	W04
	.byte		N12   , Gn4
	.byte	W12
	.byte		N04   , An4
	.byte	W08
	.byte		N12   , Fn4
	.byte	W12
	.byte		N04   , Gn4 , v120
	.byte	W04
	.byte		        An4
	.byte	W04
	.byte		        Gn4 , v112
	.byte	W04
	.byte		        En4 , v127
	.byte	W04
	.byte		N08   , Fn4 , v112
	.byte	W08
	.byte		N04   , Gn4 , v127
	.byte	W04
	.byte		VOICE , 81
	.byte		VOL   , 32*mus_dd_sunken_ruins_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N08   , Gn3 , v112
	.byte	W08
	.byte		N04   , An3
	.byte	W04
	.byte		N08   , Gn3
	.byte	W08
	.byte		N04   , An3
	.byte	W04
	.byte		N08   , Bn3
	.byte	W08
	.byte		N04   , An3
	.byte	W04
	.byte		N08   , Gn3
	.byte	W08
	.byte		N04   , Dn3
	.byte	W04
	.byte		        Bn3
	.byte	W08
	.byte		        Gn3
	.byte	W12
	.byte		        Fs3
	.byte	W04
	.byte		N12   , Dn3
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		N08   , Gn3
	.byte	W08
	.byte		N04   , An3
	.byte	W04
	.byte		N08   , Gn3
	.byte	W08
	.byte		N04   , An3
	.byte	W04
	.byte		N08   , As3
	.byte	W08
	.byte		N04   , An3
	.byte	W04
	.byte		N08   , Gn3
	.byte	W08
	.byte		N04   , Dn3
	.byte	W04
	.byte		        As3
	.byte	W08
	.byte		        An3
	.byte	W12
	.byte		        Gn3
	.byte	W04
	.byte		N08   , En3
	.byte	W08
	.byte		N02   , Fs3
	.byte	W02
	.byte		        En3
	.byte	W02
	.byte		N12   , Dn3
	.byte	W12
	.byte		VOICE , 81
	.byte		N04
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N04   , En3
	.byte	W08
	.byte		N16
	.byte	W16
	.byte		N04   , Gn3
	.byte	W08
	.byte		N08   , Dn3
	.byte	W08
	.byte		        Gn3
	.byte	W08
	.byte		N12   , Cn4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		VOICE , 81
	.byte		N08   , An2
	.byte	W08
	.byte		        En2
	.byte	W08
	.byte		        An2
	.byte	W08
	.byte		        Dn3
	.byte	W08
	.byte		        An2
	.byte	W08
	.byte		        Dn3
	.byte	W08
	.byte		        En3
	.byte	W08
	.byte		        Cs3
	.byte	W08
	.byte		        En3
	.byte	W08
	.byte		N04   , Gn3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		        Gn4
	.byte	W04
	.byte		        An4
	.byte	W04
	.byte		VOICE , 92
	.byte		N24
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte	W12
	.byte		N04   , Dn4
	.byte	W12
	.byte		        Cn4
	.byte	W08
	.byte		        Bn3
	.byte	W04
	.byte		        An3
	.byte	W08
	.byte		        Fs3
	.byte	W04
	.byte		N12   , As3
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte		N12   , Cn4
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte		N08   , Gn3
	.byte	W08
	.byte		N04   , Bn3
	.byte	W04
	.byte		        Dn4
	.byte	W08
	.byte		N16   , Gn4
	.byte	W04
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N12   , Dn4
	.byte	W12
	.byte		N04
	.byte	W08
	.byte		        Gn4
	.byte	W04
	.byte		        Dn4
	.byte	W08
	.byte		        Gn3
	.byte	W04
	.byte		        Bn3
	.byte	W08
	.byte		        Dn4
	.byte	W04
	.byte		N12   , Gn4
	.byte	W12
	.byte		VOICE , 81
	.byte		N24   , An4
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte	W12
	.byte		N12   , Fs4
	.byte	W12
	.byte		N08   , En4
	.byte	W08
	.byte		N04   , Dn4
	.byte	W04
	.byte		N08   , Cn4
	.byte	W08
	.byte		N04   , An3
	.byte	W04
	.byte		N12   , Bn3
	.byte	W06
	.byte		MOD   , 4
	.byte	W06
	.byte		        0
	.byte		N12   , Cn4
	.byte	W06
	.byte		MOD   , 4
	.byte	W06
	.byte		        0
	.byte		N08   , Gn3
	.byte	W08
	.byte		        Bn3
	.byte	W08
	.byte		        Dn4
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		        Dn4
	.byte	W08
	.byte		N04   , Ds4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		N08   , Gn4
	.byte	W08
	.byte		        Dn4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		        Dn4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		VOICE , 92
	.byte		N04   , Bn4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		        As3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        As3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        An4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		        Gs3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Gs3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte	GOTO
	 .word	mus_dd_sunken_ruins_10_000
	.byte		FINE

@******************************************************@
	.align	2

mus_dd_sunken_ruins:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_dd_sunken_ruins_pri	@ Priority
	.byte	mus_dd_sunken_ruins_rev	@ Reverb.

	.word	mus_dd_sunken_ruins_grp

	.word	mus_dd_sunken_ruins_1
	.word	mus_dd_sunken_ruins_2
	.word	mus_dd_sunken_ruins_3
	.word	mus_dd_sunken_ruins_4
	.word	mus_dd_sunken_ruins_5
	.word	mus_dd_sunken_ruins_6
	.word	mus_dd_sunken_ruins_7
	.word	mus_dd_sunken_ruins_8
	.word	mus_dd_sunken_ruins_9
	.word	mus_dd_sunken_ruins_10

	.end
