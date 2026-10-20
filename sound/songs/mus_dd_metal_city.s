	.include "MPlayDef.s"

	.equ	mus_dd_metal_city_grp, voicegroup_dd_metal_city
	.equ	mus_dd_metal_city_pri, 0
	.equ	mus_dd_metal_city_rev, 0x9e
	.equ	mus_dd_metal_city_mvl, 127
	.equ	mus_dd_metal_city_key, 0
	.equ	mus_dd_metal_city_tbs, 1
	.equ	mus_dd_metal_city_exg, 0
	.equ	mus_dd_metal_city_cmp, 1

	.section .rodata
	.global	mus_dd_metal_city
	.align	2

@**************** Track 1 ****************@

mus_dd_metal_city_1:
	.byte		KEYSH , mus_dd_metal_city_key+0
	.byte		TEMPO , 128*mus_dd_metal_city_tbs/2
	.byte		VOICE , 1
	.byte		PAN   , c_v+0
	.byte		VOL   , 80*mus_dd_metal_city_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W84
	.byte		BENDR , 55
	.byte	W12
mus_dd_metal_city_1_000:
	.byte	W96
	.byte		PAN   , c_v+0
	.byte	W96
mus_dd_metal_city_1_001:
	.byte	W72
	.byte		VOICE , 24
	.byte	W12
	.byte		PAN   , c_v+16
	.byte	W04
	.byte		N04   , Fs3 , v127
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		PEND
	.byte		VOL   , 80*mus_dd_metal_city_mvl/mxv
	.byte		PAN   , c_v-1
	.byte		N40   , Cn4
	.byte	W12
	.byte		MOD   , 8
	.byte	W28
	.byte		        0
	.byte		N04   , Bn3
	.byte	W08
	.byte		N02   , An3 , v092
	.byte	W08
	.byte		        An4
	.byte	W08
	.byte		N32   , An3 , v127
	.byte	W08
	.byte		MOD   , 8
	.byte	W24
mus_dd_metal_city_1_002:
	.byte		MOD   , 0
	.byte		N04   , Cn3 , v127
	.byte	W16
	.byte		N24   , Cn4
	.byte	W08
	.byte		MOD   , 8
	.byte	W16
	.byte		N04   , Dn3
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte		N04   , Bn3
	.byte	W16
	.byte		        Dn3
	.byte	W08
	.byte		N16   , An3
	.byte	W16
	.byte		N04   , Fs3
	.byte	W08
	.byte		PEND
mus_dd_metal_city_1_003:
	.byte		N92   , An3 , v127
	.byte	W12
	.byte		MOD   , 8
	.byte	W36
	.byte		VOL   , 72*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        68*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        67*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        64*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        61*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        57*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        55*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        50*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        49*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        45*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        42*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        40*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        36*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        34*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        30*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        27*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        22*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        18*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        12*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        9*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        6*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        5*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        1*mus_dd_metal_city_mvl/mxv
	.byte	W04
	.byte		PEND
mus_dd_metal_city_1_004:
	.byte		MOD   , 0
	.byte		VOL   , 80*mus_dd_metal_city_mvl/mxv
	.byte	W72
	.byte		VOICE , 24
	.byte		VOL   , 80*mus_dd_metal_city_mvl/mxv
	.byte	W16
	.byte		N04   , Fs3 , v127
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		PEND
	.byte		PAN   , c_v+0
	.byte		VOL   , 80*mus_dd_metal_city_mvl/mxv
	.byte		N40   , Cn4
	.byte	W12
	.byte		MOD   , 8
	.byte	W28
	.byte		        0
	.byte		N04   , Bn3
	.byte	W08
	.byte		N02   , An3 , v096
	.byte	W08
	.byte		        An4
	.byte	W08
	.byte		N32   , An3 , v127
	.byte	W08
	.byte		MOD   , 8
	.byte	W24
	.byte	PATT
	 .word	mus_dd_metal_city_1_002
	.byte		VOL   , 80*mus_dd_metal_city_mvl/mxv
	.byte		N88   , An3 , v127
	.byte	W12
	.byte		MOD   , 8
	.byte	W36
	.byte		VOL   , 72*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        68*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        67*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        64*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        61*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        57*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        55*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        50*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        49*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        45*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        42*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        40*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        36*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        34*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        30*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        27*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        22*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        18*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        12*mus_dd_metal_city_mvl/mxv
	.byte	W04
	.byte		VOICE , 1
	.byte		VOL   , 80*mus_dd_metal_city_mvl/mxv
	.byte		MOD   , 0
	.byte		N04   , Dn4 , v112
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		VOICE , 1
	.byte		MOD   , 0
	.byte		N08   , Gs3
	.byte	W08
	.byte		N04   , An3
	.byte	W08
	.byte		        Fs3
	.byte	W08
	.byte		N08   , Fn3
	.byte	W08
	.byte		N04   , Fs3 , v100
	.byte	W08
	.byte		        Dn3 , v112
	.byte	W08
	.byte		N08   , Cn3
	.byte	W08
	.byte		N04   , Dn3
	.byte	W08
	.byte		        An2
	.byte	W08
	.byte		N08   , Cs3
	.byte	W08
	.byte		N04   , Dn3
	.byte	W08
	.byte		        An3
	.byte	W08
	.byte		PAN   , c_v+3
	.byte		N04   , En4 , v120
	.byte	W08
	.byte		        Fs4 , v112
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		        Gn4 , v116
	.byte	W08
	.byte		        Fs4 , v112
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		        Gn4 , v080
	.byte	W08
	.byte		        Gn4 , v092
	.byte	W08
	.byte		        Gn4 , v100
	.byte	W08
	.byte		        Gn4 , v120
	.byte	W08
	.byte		        Fs4 , v112
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		        Dn4 , v127
	.byte	W08
	.byte		        En4 , v112
	.byte	W08
	.byte		        Dn4 , v096
	.byte	W08
	.byte		        Fn4 , v127
	.byte	W08
	.byte		        En4 , v112
	.byte	W08
	.byte		        Dn4
	.byte	W08
	.byte		N16   , Fn4 , v127
	.byte	W16
	.byte		N04   , En4 , v092
	.byte	W08
	.byte		N08   , Cs4 , v127
	.byte	W08
	.byte		        An3 , v088
	.byte	W08
	.byte		        Gn3
	.byte	W08
	.byte		PAN   , c_v+0
	.byte	W96
	.byte	W96
	.byte		        c_v+0
	.byte	W96
	.byte	PATT
	 .word	mus_dd_metal_city_1_001
	.byte		VOL   , 80*mus_dd_metal_city_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		N40   , Cn4 , v127
	.byte	W12
	.byte		MOD   , 8
	.byte	W28
	.byte		        0
	.byte		N04   , Bn3
	.byte	W08
	.byte		N02   , An3 , v092
	.byte	W08
	.byte		        An4
	.byte	W08
	.byte		N32   , An3 , v127
	.byte	W08
	.byte		MOD   , 8
	.byte	W24
	.byte	PATT
	 .word	mus_dd_metal_city_1_002
	.byte	PATT
	 .word	mus_dd_metal_city_1_003
	.byte	PATT
	 .word	mus_dd_metal_city_1_004
	.byte		VOL   , 80*mus_dd_metal_city_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		N40   , Cn4 , v127
	.byte	W12
	.byte		MOD   , 8
	.byte	W28
	.byte		        0
	.byte		N04   , Bn3
	.byte	W08
	.byte		N02   , An3 , v096
	.byte	W08
	.byte		        An4
	.byte	W08
	.byte		N32   , An3 , v127
	.byte	W08
	.byte		MOD   , 8
	.byte	W24
	.byte	PATT
	 .word	mus_dd_metal_city_1_002
	.byte		VOL   , 80*mus_dd_metal_city_mvl/mxv
	.byte		N92   , An3 , v112
	.byte	W12
	.byte		MOD   , 8
	.byte	W36
	.byte		VOL   , 72*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        68*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        67*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        64*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        61*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        57*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        55*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        50*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        49*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        45*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        42*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        40*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        36*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        34*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        30*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        27*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        22*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        18*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        12*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        9*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        6*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        5*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        1*mus_dd_metal_city_mvl/mxv
	.byte	W04
	.byte		MOD   , 0
	.byte		VOL   , 80*mus_dd_metal_city_mvl/mxv
	.byte	W72
	.byte		VOICE , 48
	.byte		VOL   , 64*mus_dd_metal_city_mvl/mxv
	.byte	W24
	.byte		PAN   , c_v+3
	.byte	W16
	.byte		N04   , Dn4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		        Fn4
	.byte	W04
	.byte		        Fn4 , v056
	.byte	W04
	.byte		        En4 , v112
	.byte	W04
	.byte		        En4 , v056
	.byte	W04
	.byte		        Dn4 , v112
	.byte	W04
	.byte		        Dn4 , v056
	.byte	W04
	.byte		N16   , An4 , v112
	.byte	W16
	.byte		N04   , Gn4
	.byte	W04
	.byte		        Gn4 , v056
	.byte	W04
	.byte		N16   , Fn4 , v112
	.byte	W16
	.byte		N04   , An4
	.byte	W04
	.byte		        An4 , v056
	.byte	W04
	.byte		        Gn4 , v112
	.byte	W04
	.byte		        Gn4 , v056
	.byte	W04
	.byte		        Fn4 , v112
	.byte	W04
	.byte		        Fn4 , v056
	.byte	W04
	.byte		        En4 , v112
	.byte	W04
	.byte		        En4 , v056
	.byte	W04
	.byte		N08   , Cn4 , v112
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		N24   , Cn5
	.byte	W24
	.byte		        As4
	.byte	W24
	.byte		N08   , As4 , v056
	.byte	W16
	.byte		N04   , Fn4 , v112
	.byte	W04
	.byte		        Gn4
	.byte	W04
	.byte		        Gs4
	.byte	W04
	.byte		        Gs4 , v056
	.byte	W04
	.byte		        Gn4 , v112
	.byte	W04
	.byte		        Gn4 , v056
	.byte	W04
	.byte		        Fn4 , v112
	.byte	W04
	.byte		        Fn4 , v056
	.byte	W04
	.byte		N16   , Cn5 , v112
	.byte	W16
	.byte		N04   , As4
	.byte	W04
	.byte		        As4 , v056
	.byte	W04
	.byte		N16   , Gs4 , v112
	.byte	W16
	.byte		N04   , Cn5
	.byte	W04
	.byte		        Cn5 , v056
	.byte	W04
	.byte		        As4 , v112
	.byte	W04
	.byte		        As4 , v056
	.byte	W04
	.byte		        Gs4 , v112
	.byte	W04
	.byte		        Gs4 , v056
	.byte	W04
	.byte		        Gn4 , v112
	.byte	W04
	.byte		        Gn4 , v056
	.byte	W04
	.byte		N08   , Ds4 , v112
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        As4
	.byte	W08
	.byte		N24   , Ds5
	.byte	W24
	.byte		        En5
	.byte	W24
	.byte		VOICE , 24
	.byte		VOL   , 71*mus_dd_metal_city_mvl/mxv
	.byte		N12   , Fn5
	.byte	W12
	.byte		N04   , Fn5 , v052
	.byte	W04
	.byte		        Fn5 , v112
	.byte	W04
	.byte		        Fn5 , v052
	.byte	W04
	.byte		        Fn4 , v112
	.byte	W04
	.byte		        Fn4 , v052
	.byte	W04
	.byte		N02   , Fn5 , v112
	.byte	W02
	.byte		N06   , Fn5 , v052
	.byte	W06
	.byte		N04   , Fn4 , v112
	.byte	W04
	.byte		        Fn4 , v052
	.byte	W04
	.byte		N12   , Fn5 , v112
	.byte	W12
	.byte		N04   , Fn5 , v052
	.byte	W04
	.byte		        Fn5 , v112
	.byte	W04
	.byte		        Fn5 , v052
	.byte	W04
	.byte		        Fn4 , v112
	.byte	W04
	.byte		        Fn4 , v052
	.byte	W04
	.byte		N02   , Fn5 , v112
	.byte	W02
	.byte		N06   , Fn5 , v052
	.byte	W06
	.byte		N04   , Fn4 , v112
	.byte	W04
	.byte		        Fn4 , v052
	.byte	W04
	.byte		N12   , Fn5 , v112
	.byte	W12
	.byte		N04   , Fn5 , v052
	.byte	W04
	.byte		        Fn5 , v112
	.byte	W04
	.byte		        Fn5 , v052
	.byte	W04
	.byte		        Fn4 , v112
	.byte	W04
	.byte		        Fn4 , v052
	.byte	W04
	.byte		N02   , Fn5 , v112
	.byte	W02
	.byte		N06   , Fn5 , v052
	.byte	W06
	.byte		N04   , Fn4 , v112
	.byte	W04
	.byte		        Fn4 , v052
	.byte	W04
	.byte		        Fn5 , v112
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W04
	.byte		        Fn5 , v052
	.byte	W04
	.byte		N16   , Gn5 , v112
	.byte	W16
	.byte		N12   , Fn5
	.byte	W12
	.byte		N04   , Fn5 , v052
	.byte	W04
	.byte		        Fn5 , v112
	.byte	W04
	.byte		        Fn5 , v052
	.byte	W04
	.byte		        Fn4 , v112
	.byte	W04
	.byte		        Fn4 , v052
	.byte	W04
	.byte		N02   , Fn5 , v112
	.byte	W02
	.byte		N06   , Fn5 , v052
	.byte	W06
	.byte		N04   , Fn4 , v112
	.byte	W04
	.byte		        Fn4 , v052
	.byte	W04
	.byte		N12   , Fn5 , v112
	.byte	W12
	.byte		N04   , Fn5 , v052
	.byte	W04
	.byte		        Fn5 , v112
	.byte	W04
	.byte		        Fn5 , v052
	.byte	W04
	.byte		        Fn4 , v112
	.byte	W04
	.byte		        Fn4 , v052
	.byte	W04
	.byte		N02   , Fn5 , v112
	.byte	W02
	.byte		N06   , Fn5 , v052
	.byte	W06
	.byte		N04   , Fn4 , v112
	.byte	W04
	.byte		        Fn4 , v052
	.byte	W04
	.byte		N12   , Fn5 , v112
	.byte	W12
	.byte		N04   , Fn5 , v052
	.byte	W04
	.byte		        Fn5 , v112
	.byte	W04
	.byte		        Fn5 , v052
	.byte	W04
	.byte		        Fn4 , v112
	.byte	W04
	.byte		        Fn4 , v052
	.byte	W04
	.byte		N02   , Fn5 , v112
	.byte	W02
	.byte		N06   , Fn5 , v052
	.byte	W06
	.byte		N04   , Fn4 , v112
	.byte	W04
	.byte		        Fn4 , v052
	.byte	W04
	.byte		N08   , Fn5 , v112
	.byte	W08
	.byte		        Cs5
	.byte	W08
	.byte		        As4
	.byte	W08
	.byte		        Gs4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        Fn4
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		        Fn4
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		        Gs4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        As4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        Cn5
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		        Fn4
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		        As3
	.byte	W08
	.byte		        Gn3
	.byte	W08
	.byte		        As3
	.byte	W08
	.byte		        Gn3
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		        As3
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        An4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        Bn4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        Cn5
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        Bn4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        Cn5
	.byte	W08
	.byte		        Bn4
	.byte	W08
	.byte		        Dn5
	.byte	W08
	.byte		        En5
	.byte	W08
	.byte		        Cs5
	.byte	W08
	.byte		        Bn4
	.byte	W08
	.byte		        An4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		        An4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		        Cs4
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		        An4
	.byte	W08
	.byte		BEND  , c_v+0
	.byte		N72   , Dn4
	.byte	W08
	.byte		BEND  , c_v-6
	.byte	W08
	.byte		        c_v+0
	.byte	W32
	.byte		VOL   , 63*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        57*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        53*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        49*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        42*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        35*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        32*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        28*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        19*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        16*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        13*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        12*mus_dd_metal_city_mvl/mxv
	.byte	W24
	.byte	W02
	.byte	GOTO
	 .word	mus_dd_metal_city_1_000
	.byte		FINE

@**************** Track 2 ****************@

mus_dd_metal_city_2:
	.byte		KEYSH , mus_dd_metal_city_key+0
	.byte		VOICE , 1
	.byte		LFOS  , 62
	.byte		BENDR , 12
	.byte		VOL   , 80*mus_dd_metal_city_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
mus_dd_metal_city_2_000:
	.byte	W96
	.byte	W96
mus_dd_metal_city_2_001:
	.byte	W72
	.byte		VOICE , 24
	.byte	W12
	.byte		PAN   , c_v-16
	.byte	W12
	.byte		PEND
mus_dd_metal_city_2_002:
	.byte		N40   , En3 , v112
	.byte	W12
	.byte		MOD   , 8
	.byte	W28
	.byte		        0
	.byte		N04   , Fs3
	.byte	W24
	.byte		N24   , Gn3
	.byte	W08
	.byte		MOD   , 8
	.byte	W16
	.byte		N04   , Fs3
	.byte	W08
	.byte		PEND
mus_dd_metal_city_2_003:
	.byte		MOD   , 0
	.byte	W16
	.byte		N24   , En3 , v112
	.byte	W08
	.byte		MOD   , 8
	.byte	W16
	.byte		N04   , An2
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte		N04   , Fs3
	.byte	W16
	.byte		        An2
	.byte	W08
	.byte		N16   , Gn3
	.byte	W16
	.byte		N04   , Fs3
	.byte	W08
	.byte		PEND
mus_dd_metal_city_2_004:
	.byte		N92   , Fs3 , v112
	.byte	W12
	.byte		MOD   , 8
	.byte	W36
	.byte		VOL   , 72*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        68*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        67*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        64*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        61*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        57*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        55*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        50*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        49*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        45*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        42*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        40*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        36*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        34*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        30*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        27*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        22*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        18*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        12*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        9*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        6*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        5*mus_dd_metal_city_mvl/mxv
	.byte	W02
	.byte		        1*mus_dd_metal_city_mvl/mxv
	.byte	W04
	.byte		PEND
	.byte		VOICE , 1
	.byte		VOL   , 80*mus_dd_metal_city_mvl/mxv
	.byte		MOD   , 0
	.byte	W72
	.byte		VOICE , 24
	.byte		VOL   , 80*mus_dd_metal_city_mvl/mxv
	.byte	W16
	.byte		N04   , Cn3
	.byte	W04
	.byte		        Dn3
	.byte	W04
mus_dd_metal_city_2_005:
	.byte		PAN   , c_v-16
	.byte		N40   , En3 , v112
	.byte	W12
	.byte		MOD   , 8
	.byte	W28
	.byte		        0
	.byte		N04   , Fs3
	.byte	W24
	.byte		N24   , Gn3
	.byte	W08
	.byte		MOD   , 8
	.byte	W16
	.byte		N04   , Fs3
	.byte	W08
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_metal_city_2_003
	.byte	PATT
	 .word	mus_dd_metal_city_2_004
	.byte		VOICE , 1
	.byte		VOL   , 80*mus_dd_metal_city_mvl/mxv
	.byte		MOD   , 0
	.byte		VOL   , 80*mus_dd_metal_city_mvl/mxv
	.byte		MOD   , 0
	.byte		N08   , Fn4 , v112
	.byte	W08
	.byte		N04   , Fs4
	.byte	W08
	.byte		        Dn4
	.byte	W08
	.byte		N08   , Cs4
	.byte	W08
	.byte		N04   , Dn4 , v100
	.byte	W08
	.byte		        An3 , v112
	.byte	W08
	.byte		N08   , Gs3
	.byte	W08
	.byte		N04   , An3
	.byte	W08
	.byte		        Fs3
	.byte	W08
	.byte		N08   , Gn3
	.byte	W08
	.byte		N04   , Gs3
	.byte	W08
	.byte		        Fs4 , v100
	.byte	W08
	.byte		        An3 , v120
	.byte	W08
	.byte		        Cs4 , v112
	.byte	W08
	.byte		        An3
	.byte	W08
	.byte		        En4 , v116
	.byte	W08
	.byte		        Cs4 , v112
	.byte	W08
	.byte		        An3
	.byte	W08
	.byte		        Cs4 , v080
	.byte	W08
	.byte		        Cs4 , v092
	.byte	W08
	.byte		        Cs4 , v100
	.byte	W08
	.byte		        Cs4 , v120
	.byte	W08
	.byte		        An3 , v112
	.byte	W08
	.byte		        Gn3
	.byte	W08
	.byte		        Gn3 , v127
	.byte	W08
	.byte		        Bn3 , v112
	.byte	W08
	.byte		        Gn3
	.byte	W08
	.byte		        Dn4 , v127
	.byte	W08
	.byte		        Bn3 , v112
	.byte	W08
	.byte		        Gn3
	.byte	W08
	.byte		N16   , Cs4 , v127
	.byte	W16
	.byte		N04   , Bn3 , v112
	.byte	W08
	.byte		N08   , An3 , v127
	.byte	W08
	.byte		        En3 , v112
	.byte	W08
	.byte		        Cs3
	.byte	W08
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT
	 .word	mus_dd_metal_city_2_001
	.byte	PATT
	 .word	mus_dd_metal_city_2_002
	.byte	PATT
	 .word	mus_dd_metal_city_2_003
	.byte	PATT
	 .word	mus_dd_metal_city_2_004
	.byte		VOICE , 1
	.byte		VOL   , 80*mus_dd_metal_city_mvl/mxv
	.byte		MOD   , 0
	.byte	W72
	.byte		VOICE , 24
	.byte		VOL   , 80*mus_dd_metal_city_mvl/mxv
	.byte	W16
	.byte		N04   , Cs3 , v112
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte	PATT
	 .word	mus_dd_metal_city_2_005
	.byte	PATT
	 .word	mus_dd_metal_city_2_003
	.byte	PATT
	 .word	mus_dd_metal_city_2_004
	.byte		VOICE , 24
	.byte		VOL   , 80*mus_dd_metal_city_mvl/mxv
	.byte		MOD   , 0
	.byte	W72
	.byte		VOL   , 80*mus_dd_metal_city_mvl/mxv
	.byte	W24
	.byte		N04   , As3 , v112
	.byte	W04
	.byte		N12   , As3 , v052
	.byte	W12
	.byte		N02   , As3 , v112
	.byte	W08
	.byte		        Fn4
	.byte	W02
	.byte		N06   , Fn4 , v052
	.byte	W06
	.byte		N02   , Dn4 , v112
	.byte	W02
	.byte		N06   , Dn4 , v052
	.byte	W06
	.byte		N02   , As3 , v112
	.byte	W02
	.byte		N06   , As3 , v052
	.byte	W06
	.byte		N02   , Fn4 , v112
	.byte	W08
	.byte		        Dn4
	.byte	W08
	.byte		        As3
	.byte	W08
	.byte		        Fn3
	.byte	W08
	.byte		        Dn3
	.byte	W08
	.byte		N04   , As3
	.byte	W08
	.byte		N02   , Cn5
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		        Gn3
	.byte	W08
	.byte		        En3
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		        As3
	.byte	W08
	.byte		        Gn3
	.byte	W08
	.byte		        En3
	.byte	W08
	.byte		N04   , Fn4
	.byte	W04
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		N02   , Fn4 , v112
	.byte	W08
	.byte		        Gs4
	.byte	W08
	.byte		        Fn4
	.byte	W08
	.byte		        Cs4
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		        Cs4
	.byte	W08
	.byte		        Fn4
	.byte	W08
	.byte		        Cs4
	.byte	W08
	.byte		        Fn4
	.byte	W08
	.byte		        Gs4
	.byte	W08
	.byte		        As4
	.byte	W08
	.byte		        Gs4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        Ds4
	.byte	W08
	.byte		        As3
	.byte	W08
	.byte		        Gn3
	.byte	W08
	.byte		        Ds5
	.byte	W08
	.byte		        As4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        Cn5
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		VOL   , 62*mus_dd_metal_city_mvl/mxv
	.byte		N12   , Cn5
	.byte	W16
	.byte		N04
	.byte	W04
	.byte		N28   , Cn5 , v052
	.byte	W28
	.byte		N12   , Cn5 , v112
	.byte	W16
	.byte		N04
	.byte	W04
	.byte		N28   , Cn5 , v052
	.byte	W28
	.byte		N12   , Dn5 , v112
	.byte	W16
	.byte		N04
	.byte	W04
	.byte		N28   , Dn5 , v052
	.byte	W28
	.byte		N04   , Cs5 , v112
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N16   , En5
	.byte	W16
	.byte		N12   , Cn5
	.byte	W16
	.byte		N04
	.byte	W04
	.byte		N28   , Cn5 , v052
	.byte	W28
	.byte		N12   , Cn5 , v112
	.byte	W16
	.byte		N04
	.byte	W04
	.byte		N28   , Cn5 , v052
	.byte	W28
	.byte		N12   , Dn5 , v112
	.byte	W16
	.byte		N04
	.byte	W04
	.byte		N28   , Dn5 , v052
	.byte	W28
	.byte		N08   , Cs5 , v112
	.byte	W08
	.byte		        As4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        Fn4
	.byte	W08
	.byte		        Ds4
	.byte	W08
	.byte		        Cs4
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		        Cs4
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		        Fn4
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		        Gn3
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		        Gn3
	.byte	W08
	.byte		        Cs4
	.byte	W08
	.byte		        Gn3
	.byte	W08
	.byte		        En3
	.byte	W08
	.byte		        Cn3
	.byte	W08
	.byte		        En3
	.byte	W08
	.byte		        Cn3
	.byte	W08
	.byte		        Gn3
	.byte	W08
	.byte		        En3
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		        Dn4
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		        Dn4
	.byte	W08
	.byte		        Fs4
	.byte	W08
	.byte		        Dn4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        Dn4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        Dn4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        Dn4
	.byte	W08
	.byte		        An4
	.byte	W08
	.byte		        Bn4
	.byte	W08
	.byte		        An4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		        Cs4
	.byte	W08
	.byte		        An3
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		        Cs4
	.byte	W08
	.byte		        Bn3
	.byte	W08
	.byte		        An3
	.byte	W08
	.byte		        Gn3
	.byte	W08
	.byte		        En3
	.byte	W08
	.byte		VOL   , 80*mus_dd_metal_city_mvl/mxv
	.byte	W96
	.byte	GOTO
	 .word	mus_dd_metal_city_2_000
	.byte		FINE

@**************** Track 3 ****************@

mus_dd_metal_city_3:
	.byte		KEYSH , mus_dd_metal_city_key+0
	.byte		VOICE , 2
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 55*mus_dd_metal_city_mvl/mxv
	.byte		N12   , Dn3 , v112
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
mus_dd_metal_city_3_000:
	.byte		N12   , Dn3 , v112
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Bn2
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Cn3
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Cs3
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		PEND
mus_dd_metal_city_3_001:
	.byte		N12   , Dn3 , v112
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		PEND
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Bn2
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Cn3
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , An2
	.byte	W16
	.byte		N08
	.byte	W08
	.byte	PATT
	 .word	mus_dd_metal_city_3_001
	.byte	PATT
	 .word	mus_dd_metal_city_3_000
	.byte	PATT
	 .word	mus_dd_metal_city_3_001
	.byte	PATT
	 .word	mus_dd_metal_city_3_000
	.byte	PATT
	 .word	mus_dd_metal_city_3_001
	.byte	PATT
	 .word	mus_dd_metal_city_3_000
	.byte	PATT
	 .word	mus_dd_metal_city_3_001
	.byte	PATT
	 .word	mus_dd_metal_city_3_000
	.byte		N12   , An2 , v127
	.byte	W96
	.byte		        Gn2 , v112
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N16   , Gn3
	.byte	W16
	.byte		N24   , Fn3
	.byte	W24
	.byte		N08   , Dn3
	.byte	W08
	.byte		N16   , An3
	.byte	W16
	.byte		N08   , Cs3
	.byte	W08
	.byte	PATT
	 .word	mus_dd_metal_city_3_001
	.byte	PATT
	 .word	mus_dd_metal_city_3_000
	.byte	PATT
	 .word	mus_dd_metal_city_3_001
	.byte		N12   , Dn3 , v112
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Bn2
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Cn3
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , An2
	.byte	W16
	.byte		N08   , Cs3
	.byte	W08
	.byte	PATT
	 .word	mus_dd_metal_city_3_001
	.byte	PATT
	 .word	mus_dd_metal_city_3_000
	.byte	PATT
	 .word	mus_dd_metal_city_3_001
	.byte		N12   , Dn3 , v112
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Cn3
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Cs3
	.byte	W16
	.byte		N04
	.byte	W08
	.byte	PATT
	 .word	mus_dd_metal_city_3_001
	.byte	PATT
	 .word	mus_dd_metal_city_3_000
	.byte	PATT
	 .word	mus_dd_metal_city_3_001
	.byte		N12   , Dn3 , v112
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Bn2
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Cn3
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , An2
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , As2
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
mus_dd_metal_city_3_002:
	.byte		N12   , Cn3 , v112
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		PEND
	.byte		N12   , Cs3
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Ds3
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Cn3
	.byte	W16
	.byte		N04
	.byte	W08
mus_dd_metal_city_3_003:
	.byte		N04   , Fn3 , v112
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		        Fn4
	.byte	W08
	.byte		        Fn3
	.byte	W08
	.byte		N12   , Ds3
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		PEND
	.byte		        Dn3
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		        Dn4
	.byte	W08
	.byte		        Dn3
	.byte	W08
	.byte		        Cs3
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W16
	.byte		        En3
	.byte	W08
	.byte	PATT
	 .word	mus_dd_metal_city_3_003
	.byte		N04   , Dn3 , v112
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		        Dn4
	.byte	W08
	.byte		        Dn3
	.byte	W08
	.byte		        Cs3
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N12   , As2
	.byte	W16
	.byte		N04
	.byte	W08
	.byte	PATT
	 .word	mus_dd_metal_city_3_002
	.byte		N12   , En3 , v112
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Gn3
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , An3
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , An2
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Cs3
	.byte	W16
	.byte		N04
	.byte	W08
	.byte	PATT
	 .word	mus_dd_metal_city_3_001
	.byte	GOTO
	 .word	mus_dd_metal_city_3_000
	.byte		FINE

@**************** Track 4 ****************@

mus_dd_metal_city_4:
	.byte		KEYSH , mus_dd_metal_city_key+0
	.byte		VOICE , 14
	.byte		LFOS  , 56
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 70*mus_dd_metal_city_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N48   , Dn3 , v112
	.byte	W06
	.byte		MOD   , 8
	.byte	W30
	.byte		VOL   , 60*mus_dd_metal_city_mvl/mxv
	.byte	W04
	.byte		        50*mus_dd_metal_city_mvl/mxv
	.byte	W04
	.byte		        40*mus_dd_metal_city_mvl/mxv
	.byte	W04
	.byte		PAN   , c_v+16
	.byte		VOL   , 70*mus_dd_metal_city_mvl/mxv
	.byte		MOD   , 0
	.byte		N04   , An3 , v092
	.byte	W16
	.byte		PAN   , c_v-32
	.byte		N16   , Dn3 , v112
	.byte	W16
	.byte		PAN   , c_v+32
	.byte		N16   , Dn3 , v064
	.byte	W16
mus_dd_metal_city_4_000:
	.byte		PAN   , c_v-32
	.byte		N16   , Dn3 , v044
	.byte	W16
	.byte		PAN   , c_v+32
	.byte		N16   , Dn3 , v020
	.byte	W16
	.byte		PAN   , c_v-32
	.byte		N16   , Dn3 , v016
	.byte	W16
	.byte		PAN   , c_v-32
	.byte		N04   , Dn3 , v112
	.byte	W16
	.byte		PAN   , c_v+16
	.byte		N16   , Fs3 , v092
	.byte	W16
	.byte		PAN   , c_v-32
	.byte		N16   , Fs3 , v048
	.byte	W16
	.byte		PEND
mus_dd_metal_city_4_001:
	.byte		PAN   , c_v+16
	.byte		N48   , Dn3 , v112
	.byte	W06
	.byte		MOD   , 8
	.byte	W30
	.byte		VOL   , 60*mus_dd_metal_city_mvl/mxv
	.byte	W04
	.byte		        50*mus_dd_metal_city_mvl/mxv
	.byte	W04
	.byte		        40*mus_dd_metal_city_mvl/mxv
	.byte	W04
	.byte		PAN   , c_v+16
	.byte		VOL   , 70*mus_dd_metal_city_mvl/mxv
	.byte		MOD   , 0
	.byte		N04   , An3 , v092
	.byte	W16
	.byte		PAN   , c_v-32
	.byte		N16   , Dn3 , v112
	.byte	W16
	.byte		PAN   , c_v+32
	.byte		N16   , Dn3 , v064
	.byte	W16
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_metal_city_4_000
	.byte		PAN   , c_v+16
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		        c_v-32
	.byte		N04   , Dn3 , v112
	.byte	W04
	.byte		N12   , Dn3 , v048
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N02   , Dn4 , v060
	.byte	W02
	.byte		N06   , Dn4 , v028
	.byte	W06
	.byte		N04   , Bn2 , v112
	.byte	W04
	.byte		N12   , Bn2 , v048
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N02   , Bn3 , v060
	.byte	W02
	.byte		N06   , Bn3 , v028
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N04   , Cn3 , v112
	.byte	W04
	.byte		N12   , Cn3 , v048
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N02   , Cn4 , v060
	.byte	W02
	.byte		N06   , Cn4 , v028
	.byte	W22
	.byte		PAN   , c_v-32
	.byte	W08
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		        c_v+0
	.byte		N48   , Dn3 , v112
	.byte	W06
	.byte		MOD   , 8
	.byte	W30
	.byte		VOL   , 60*mus_dd_metal_city_mvl/mxv
	.byte	W04
	.byte		        50*mus_dd_metal_city_mvl/mxv
	.byte	W04
	.byte		        40*mus_dd_metal_city_mvl/mxv
	.byte	W04
	.byte		PAN   , c_v+16
	.byte		VOL   , 70*mus_dd_metal_city_mvl/mxv
	.byte		MOD   , 0
	.byte		N04   , An3 , v092
	.byte	W16
	.byte		PAN   , c_v-32
	.byte		N16   , Dn3 , v112
	.byte	W16
	.byte		PAN   , c_v+32
	.byte		N16   , Dn3 , v064
	.byte	W16
	.byte	PATT
	 .word	mus_dd_metal_city_4_000
	.byte	PATT
	 .word	mus_dd_metal_city_4_001
	.byte	PATT
	 .word	mus_dd_metal_city_4_000
	.byte		PAN   , c_v+16
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		        c_v-32
	.byte		N04   , Dn3 , v112
	.byte	W04
	.byte		N12   , Dn3 , v048
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N02   , Dn4 , v060
	.byte	W02
	.byte		N06   , Dn4 , v028
	.byte	W06
	.byte		N04   , Bn2 , v112
	.byte	W04
	.byte		N12   , Bn2 , v048
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N02   , Bn3 , v060
	.byte	W02
	.byte		N06   , Bn3 , v028
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N04   , Cn3 , v112
	.byte	W04
	.byte		N12   , Cn3 , v048
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N02   , Cn4 , v060
	.byte	W02
	.byte		N06   , Cn4 , v028
	.byte	W06
	.byte		N04   , An2 , v112
	.byte	W04
	.byte		N12   , An2 , v048
	.byte	W12
	.byte		PAN   , c_v-32
	.byte	W08
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		        c_v-32
	.byte		N04   , Dn3 , v112
	.byte	W04
	.byte		N12   , Dn3 , v048
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N02   , Dn4 , v060
	.byte	W02
	.byte		N06   , Dn4 , v028
	.byte	W06
	.byte		N04   , Bn2 , v112
	.byte	W04
	.byte		N12   , Bn2 , v048
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N02   , Bn3 , v060
	.byte	W02
	.byte		N06   , Bn3 , v028
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N04   , Cn3 , v112
	.byte	W04
	.byte		N12   , Cn3 , v048
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N02   , Cn4 , v060
	.byte	W02
	.byte		N06   , Cn4 , v028
	.byte	W06
	.byte		N04   , An2 , v112
	.byte	W04
	.byte		N12   , An2 , v048
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N02   , An3 , v060
	.byte	W02
	.byte		N06   , An3 , v028
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
	.byte		VOICE , 14
	.byte		PAN   , c_v+0
	.byte		N48   , Dn3 , v112
	.byte	W06
	.byte		MOD   , 8
	.byte	W30
	.byte		VOL   , 60*mus_dd_metal_city_mvl/mxv
	.byte	W04
	.byte		        50*mus_dd_metal_city_mvl/mxv
	.byte	W04
	.byte		        40*mus_dd_metal_city_mvl/mxv
	.byte	W04
	.byte		PAN   , c_v+16
	.byte		VOL   , 70*mus_dd_metal_city_mvl/mxv
	.byte		MOD   , 0
	.byte		N04   , An3 , v092
	.byte	W16
	.byte		PAN   , c_v-32
	.byte		N16   , Dn3 , v112
	.byte	W16
	.byte		PAN   , c_v+32
	.byte		N16   , Dn3 , v064
	.byte	W16
	.byte	GOTO
	 .word	mus_dd_metal_city_4_000
	.byte		FINE

@**************** Track 5 ****************@

mus_dd_metal_city_5:
	.byte		KEYSH , mus_dd_metal_city_key+0
	.byte		VOICE , 80
	.byte		LFOS  , 56
	.byte		XCMD  , 8 , 18
	.byte		        8
	.byte		        16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 46*mus_dd_metal_city_mvl/mxv
	.byte		N12   , Dn2 , v112
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
mus_dd_metal_city_5_000:
	.byte		N12   , Dn2 , v112
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Bn1
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Cn2
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Cs2
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		PEND
mus_dd_metal_city_5_001:
	.byte		N12   , Dn2 , v112
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		PEND
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Bn1
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Cn2
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , An1
	.byte	W16
	.byte		N08
	.byte	W08
	.byte	PATT
	 .word	mus_dd_metal_city_5_001
	.byte	PATT
	 .word	mus_dd_metal_city_5_000
	.byte	PATT
	 .word	mus_dd_metal_city_5_001
	.byte	PATT
	 .word	mus_dd_metal_city_5_000
	.byte	PATT
	 .word	mus_dd_metal_city_5_001
	.byte	PATT
	 .word	mus_dd_metal_city_5_000
	.byte	PATT
	 .word	mus_dd_metal_city_5_001
	.byte	PATT
	 .word	mus_dd_metal_city_5_000
	.byte		N12   , An1 , v112
	.byte	W96
	.byte		        Gn1
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N16   , Gn2
	.byte	W16
	.byte		N24   , Fn2
	.byte	W24
	.byte		N08   , Dn2
	.byte	W08
	.byte		N16   , An2
	.byte	W16
	.byte		N08   , Cs2
	.byte	W08
	.byte	PATT
	 .word	mus_dd_metal_city_5_001
	.byte	PATT
	 .word	mus_dd_metal_city_5_000
	.byte	PATT
	 .word	mus_dd_metal_city_5_001
	.byte		N12   , Dn2 , v112
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Bn1
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Cn2
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , An1
	.byte	W16
	.byte		N08   , Cs2
	.byte	W08
	.byte	PATT
	 .word	mus_dd_metal_city_5_001
	.byte	PATT
	 .word	mus_dd_metal_city_5_000
	.byte	PATT
	 .word	mus_dd_metal_city_5_001
	.byte	PATT
	 .word	mus_dd_metal_city_5_000
	.byte	PATT
	 .word	mus_dd_metal_city_5_001
	.byte	PATT
	 .word	mus_dd_metal_city_5_000
	.byte	PATT
	 .word	mus_dd_metal_city_5_001
	.byte		N12   , Dn2 , v112
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Bn1
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Cn2
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , An1
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , As1
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
mus_dd_metal_city_5_002:
	.byte		N12   , Cn2 , v112
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		PEND
	.byte		N12   , Cs2
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Ds2
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Cn2
	.byte	W16
	.byte		N04
	.byte	W08
mus_dd_metal_city_5_003:
	.byte		N04   , Fn2 , v112
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		        Fn3
	.byte	W08
	.byte		        Fn2
	.byte	W08
	.byte		N12   , Ds2
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		PEND
	.byte		        Dn2
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		        Dn3
	.byte	W08
	.byte		        Dn2
	.byte	W08
	.byte		        Cs2
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W16
	.byte		        En2
	.byte	W08
	.byte	PATT
	 .word	mus_dd_metal_city_5_003
	.byte		N04   , Dn2 , v112
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		        Dn3
	.byte	W08
	.byte		        Dn2
	.byte	W08
	.byte		        Cs2
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N12   , As1
	.byte	W16
	.byte		N04
	.byte	W08
	.byte	PATT
	 .word	mus_dd_metal_city_5_002
	.byte		N12   , En2 , v112
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Gn2
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , An2
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , An1
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12   , Cs2
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		VOICE , 80
	.byte		N12   , Dn2
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N12
	.byte	W16
	.byte		N04
	.byte	W08
	.byte	GOTO
	 .word	mus_dd_metal_city_5_000
	.byte		FINE

@**************** Track 6 ****************@

mus_dd_metal_city_6:
	.byte		KEYSH , mus_dd_metal_city_key+0
	.byte		VOICE , 86
	.byte		LFOS  , 49
	.byte		XCMD  , 8 , 18
	.byte		        8
	.byte		        16
	.byte		BENDR , 12
	.byte		VOL   , 30*mus_dd_metal_city_mvl/mxv
	.byte	W96
mus_dd_metal_city_6_000:
	.byte		VOICE , 86
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		VOL   , 30*mus_dd_metal_city_mvl/mxv
	.byte	W16
	.byte		N04   , Fs3 , v127
	.byte	W04
	.byte		        An3
	.byte	W04
mus_dd_metal_city_6_001:
	.byte		VOL   , 30*mus_dd_metal_city_mvl/mxv
	.byte		N40   , Gn3 , v127
	.byte	W12
	.byte		MOD   , 8
	.byte	W28
	.byte		        0
	.byte		N04   , Fs3 , v120
	.byte	W08
	.byte		        An2 , v112
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N24   , En3 , v127
	.byte	W08
	.byte		MOD   , 8
	.byte	W16
	.byte		N04   , An2 , v112
	.byte	W08
	.byte		PEND
mus_dd_metal_city_6_002:
	.byte		MOD   , 0
	.byte		N04   , Cn3 , v112
	.byte	W16
	.byte		N24   , Gn3
	.byte	W08
	.byte		MOD   , 8
	.byte	W16
	.byte		N04   , Dn3
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte		N04   , Fs3
	.byte	W16
	.byte		        Dn3
	.byte	W08
	.byte		N16   , En3
	.byte	W16
	.byte		N04   , Cs3
	.byte	W08
	.byte		PEND
mus_dd_metal_city_6_003:
	.byte		VOL   , 40*mus_dd_metal_city_mvl/mxv
	.byte		N92   , Cn3 , v112
	.byte	W12
	.byte		VOL   , 30*mus_dd_metal_city_mvl/mxv
	.byte	W24
	.byte		        20*mus_dd_metal_city_mvl/mxv
	.byte	W12
	.byte		        13*mus_dd_metal_city_mvl/mxv
	.byte	W12
	.byte		        10*mus_dd_metal_city_mvl/mxv
	.byte	W12
	.byte		        1*mus_dd_metal_city_mvl/mxv
	.byte	W24
	.byte		PEND
	.byte		        30*mus_dd_metal_city_mvl/mxv
	.byte	W88
	.byte		N04   , Fs3 , v127
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte	PATT
	 .word	mus_dd_metal_city_6_001
	.byte	PATT
	 .word	mus_dd_metal_city_6_002
	.byte	PATT
	 .word	mus_dd_metal_city_6_003
	.byte		VOL   , 40*mus_dd_metal_city_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		VOICE , 81
	.byte		VOL   , 30*mus_dd_metal_city_mvl/mxv
	.byte	W16
	.byte		N04   , Fs3 , v127
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte	PATT
	 .word	mus_dd_metal_city_6_001
	.byte	PATT
	 .word	mus_dd_metal_city_6_002
	.byte		N40   , Cn3 , v112
	.byte	W40
	.byte		N04   , Dn3
	.byte	W08
	.byte		N16   , Fs3
	.byte	W16
	.byte		N04   , Dn3
	.byte	W08
	.byte		N16   , Cn3
	.byte	W16
	.byte		N04   , Dn3
	.byte	W08
	.byte		VOL   , 30*mus_dd_metal_city_mvl/mxv
	.byte		N16   , Fs3
	.byte	W16
	.byte		N08   , Dn3
	.byte	W08
	.byte		N16   , Bn2
	.byte	W16
	.byte		N08   , Dn3
	.byte	W08
	.byte		N16   , An2
	.byte	W16
	.byte		N08   , Cn3
	.byte	W08
	.byte		N16   , Gn2
	.byte	W16
	.byte		N08   , Fs2
	.byte	W08
	.byte	PATT
	 .word	mus_dd_metal_city_6_001
	.byte	PATT
	 .word	mus_dd_metal_city_6_002
	.byte		N16   , Cn3 , v112
	.byte	W16
	.byte		N04   , Dn3
	.byte	W08
	.byte		N12   , Cn3
	.byte	W16
	.byte		N04   , Dn3
	.byte	W08
	.byte		N12   , Fs3
	.byte	W16
	.byte		N04   , Dn3
	.byte	W08
	.byte		N12   , Cn3
	.byte	W16
	.byte		N04   , Dn3
	.byte	W08
	.byte		VOL   , 30*mus_dd_metal_city_mvl/mxv
	.byte		N16   , Fs3
	.byte	W16
	.byte		N08   , En3
	.byte	W08
	.byte		N16   , Fs3
	.byte	W16
	.byte		N08   , Gn3
	.byte	W08
	.byte		N16   , An3
	.byte	W16
	.byte		N08   , Gn3
	.byte	W08
	.byte		N16   , Fs3
	.byte	W16
	.byte		N08   , Dn3
	.byte	W08
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
	 .word	mus_dd_metal_city_6_000
	.byte		FINE

@**************** Track 7 ****************@

mus_dd_metal_city_7:
	.byte		KEYSH , mus_dd_metal_city_key+0
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 80*mus_dd_metal_city_mvl/mxv
	.byte		N08   , Cn1 , v112
	.byte	W16
	.byte		N08
	.byte	W08
	.byte		        Dn1
	.byte	W16
	.byte		        Dn1 , v088
	.byte	W08
	.byte		        Cn1 , v112
	.byte	W16
	.byte		N08
	.byte	W08
	.byte		        Dn1
	.byte	W24
mus_dd_metal_city_7_000:
	.byte		N08   , Cn1 , v112
	.byte	W16
	.byte		N08
	.byte	W08
	.byte		        Dn1
	.byte	W16
	.byte		        Dn1 , v088
	.byte	W08
	.byte		        Cn1 , v112
	.byte	W16
	.byte		N08
	.byte	W08
	.byte		        Dn1
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
mus_dd_metal_city_7_001:
	.byte		N08   , Cn1 , v112
	.byte	W16
	.byte		N08
	.byte	W08
	.byte		        Dn1
	.byte	W16
	.byte		        Dn1 , v088
	.byte	W08
	.byte		        Cn1 , v112
	.byte	W16
	.byte		N08
	.byte	W08
	.byte		        Dn1
	.byte	W16
	.byte		        Cn1
	.byte	W08
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
	.byte		N08   , Cn1 , v127
	.byte		N12   , Gn2 , v096
	.byte	W96
	.byte		N08   , Cn1 , v112
	.byte	W16
	.byte		N08
	.byte	W08
	.byte		        Dn1
	.byte	W72
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
	.byte	PATT
	 .word	mus_dd_metal_city_7_001
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
	.byte		N08   , Cn1 , v112
	.byte	W16
	.byte		N08
	.byte	W08
	.byte		        Dn1
	.byte	W16
	.byte		        Dn1 , v088
	.byte	W08
	.byte		        Cn1 , v112
	.byte	W08
	.byte		        Dn1
	.byte	W08
	.byte		        Cn1
	.byte	W08
	.byte		        Dn1
	.byte	W16
	.byte		        Cn1
	.byte	W08
	.byte		N08
	.byte	W16
	.byte		N08
	.byte	W08
	.byte		        Dn1
	.byte	W16
	.byte		        Dn1 , v088
	.byte	W08
	.byte		        Cn1 , v112
	.byte	W16
	.byte		N08
	.byte	W08
	.byte		        Dn1
	.byte	W16
	.byte		N08
	.byte	W08
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
	.byte		N08   , Cn1 , v112
	.byte	W16
	.byte		N08
	.byte	W08
	.byte		        Dn1
	.byte	W16
	.byte		        Dn1 , v088
	.byte	W08
	.byte		        Cn1 , v112
	.byte	W08
	.byte		        Dn1
	.byte	W08
	.byte		        Cn1
	.byte	W08
	.byte		        Dn1
	.byte	W16
	.byte		N08
	.byte	W08
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
	.byte		N08   , Cn1 , v112
	.byte	W16
	.byte		N08
	.byte	W08
	.byte		        Dn1
	.byte	W16
	.byte		        Dn1 , v088
	.byte	W08
	.byte		        Cn1 , v112
	.byte	W16
	.byte		N08
	.byte	W08
	.byte		        Dn1
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		N08
	.byte	W08
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
	.byte		N08   , Cn1 , v112
	.byte	W16
	.byte		N08
	.byte	W08
	.byte		        Cs1 , v088
	.byte	W08
	.byte		        Cs1 , v112
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		        Cn1
	.byte	W16
	.byte		N08
	.byte	W08
	.byte		        Cs1
	.byte	W24
	.byte		        Cn1
	.byte	W16
	.byte		N08
	.byte	W08
	.byte		        Cs1 , v088
	.byte	W08
	.byte		        Cs1 , v112
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		        Cn1
	.byte	W08
	.byte		        Cs1
	.byte	W08
	.byte		        Cn1
	.byte	W08
	.byte		N08
	.byte	W16
	.byte		N08
	.byte	W08
	.byte		        Cs1 , v088
	.byte	W08
	.byte		        Cs1 , v112
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		        Cn1
	.byte	W16
	.byte		N08
	.byte	W08
	.byte		        Cs1
	.byte	W16
	.byte		N08
	.byte	W08
	.byte		        Cn1
	.byte	W16
	.byte		N08
	.byte	W08
	.byte		        Cs1 , v088
	.byte	W08
	.byte		        Cs1 , v112
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		        Cn1
	.byte	W16
	.byte		        Cs1
	.byte	W08
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
	.byte	PATT
	 .word	mus_dd_metal_city_7_000
	.byte	GOTO
	 .word	mus_dd_metal_city_7_000
	.byte		FINE

@**************** Track 8 ****************@

mus_dd_metal_city_8:
	.byte		KEYSH , mus_dd_metal_city_key+0
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		XCMD  , 8 , 18
	.byte		        8
	.byte		        16
	.byte		PAN   , c_v+0
	.byte		VOL   , 40*mus_dd_metal_city_mvl/mxv
	.byte		N02   , Cn5 , v064
	.byte	W08
	.byte		        Cn5 , v056
	.byte	W08
	.byte		N08   , Gn5 , v040
	.byte	W08
	.byte		N04   , Cn5 , v080
	.byte	W08
	.byte		N02   , Cn5 , v048
	.byte	W08
	.byte		        Cn5 , v040
	.byte	W08
	.byte		        Cn5 , v064
	.byte	W08
	.byte		        Cn5 , v052
	.byte	W08
	.byte		        Cn5 , v040
	.byte	W08
	.byte		N04   , Cn5 , v080
	.byte	W08
	.byte		N02   , Cn5 , v040
	.byte	W08
	.byte		N08   , Gn5 , v044
	.byte	W08
mus_dd_metal_city_8_000:
	.byte		N02   , Cn5 , v064
	.byte	W08
	.byte		        Cn5 , v048
	.byte	W08
	.byte		N08   , Gn5 , v040
	.byte	W08
	.byte		N04   , Cn5 , v080
	.byte	W08
	.byte		N02   , Cn5 , v048
	.byte	W08
	.byte		        Cn5 , v040
	.byte	W08
	.byte		N04   , Cn5 , v064
	.byte	W08
	.byte		N02   , Cn5 , v048
	.byte	W08
	.byte		        Cn5 , v040
	.byte	W08
	.byte		N04   , Cn5 , v080
	.byte	W08
	.byte		N02   , Cn5 , v048
	.byte	W08
	.byte		N08   , Gn5 , v052
	.byte	W08
	.byte		PEND
mus_dd_metal_city_8_001:
	.byte		N02   , Cn5 , v064
	.byte	W08
	.byte		        Cn5 , v056
	.byte	W08
	.byte		N08   , Gn5 , v040
	.byte	W08
	.byte		N04   , Cn5 , v080
	.byte	W08
	.byte		N02   , Cn5 , v048
	.byte	W08
	.byte		        Cn5 , v040
	.byte	W08
	.byte		        Cn5 , v064
	.byte	W08
	.byte		        Cn5 , v052
	.byte	W08
	.byte		        Cn5 , v040
	.byte	W08
	.byte		N04   , Cn5 , v080
	.byte	W08
	.byte		N02   , Cn5 , v040
	.byte	W08
	.byte		N08   , Gn5 , v044
	.byte	W08
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_metal_city_8_000
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	PATT
	 .word	mus_dd_metal_city_8_000
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	PATT
	 .word	mus_dd_metal_city_8_000
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	PATT
	 .word	mus_dd_metal_city_8_000
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	PATT
	 .word	mus_dd_metal_city_8_000
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	PATT
	 .word	mus_dd_metal_city_8_000
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	PATT
	 .word	mus_dd_metal_city_8_000
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	PATT
	 .word	mus_dd_metal_city_8_000
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	PATT
	 .word	mus_dd_metal_city_8_000
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	PATT
	 .word	mus_dd_metal_city_8_000
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	PATT
	 .word	mus_dd_metal_city_8_000
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	PATT
	 .word	mus_dd_metal_city_8_001
	.byte	GOTO
	 .word	mus_dd_metal_city_8_000
	.byte		FINE

@**************** Track 9 ****************@

mus_dd_metal_city_9:
	.byte		KEYSH , mus_dd_metal_city_key+0
	.byte		VOICE , 29
	.byte		LFOS  , 61
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 20*mus_dd_metal_city_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		VOL   , 20*mus_dd_metal_city_mvl/mxv
	.byte	W16
	.byte		N02   , Cn5 , v112
	.byte	W02
	.byte		        Cs5
	.byte	W02
	.byte		        Dn5
	.byte	W02
	.byte		        En5
	.byte	W02
	.byte		N16   , Fs5
	.byte	W16
	.byte		N04   , An4
	.byte	W02
	.byte		PAN   , c_v+32
	.byte	W54
mus_dd_metal_city_9_000:
	.byte		VOL   , 20*mus_dd_metal_city_mvl/mxv
	.byte	W24
	.byte		N16   , Fs5 , v112
	.byte	W16
	.byte		N04   , An4
	.byte	W02
	.byte		PAN   , c_v-32
	.byte	W54
mus_dd_metal_city_9_001:
	.byte		PAN   , c_v-32
	.byte	W16
	.byte		N02   , Cn5 , v112
	.byte	W02
	.byte		        Cs5
	.byte	W02
	.byte		        Dn5
	.byte	W02
	.byte		        En5
	.byte	W02
	.byte		N16   , Fs5
	.byte	W16
	.byte		N04   , An4
	.byte	W02
	.byte		PAN   , c_v+32
	.byte	W54
	.byte		PEND
mus_dd_metal_city_9_002:
	.byte	W24
	.byte		N16   , Fs5 , v112
	.byte	W16
	.byte		N04   , An4
	.byte	W02
	.byte		PAN   , c_v-32
	.byte	W54
	.byte		PEND
mus_dd_metal_city_9_003:
	.byte		VOICE , 88
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		N16   , Fs4 , v112
	.byte	W16
	.byte		N04   , An3
	.byte	W56
	.byte		PEND
mus_dd_metal_city_9_004:
	.byte	W24
	.byte		N16   , Fs4 , v112
	.byte	W16
	.byte		N04   , An3
	.byte	W08
	.byte		        An1
	.byte	W08
	.byte		        An2
	.byte	W08
	.byte		        An1
	.byte	W08
	.byte		N24   , An2
	.byte	W12
	.byte		MOD   , 13
	.byte	W06
	.byte		        32
	.byte	W02
	.byte		        53
	.byte	W04
	.byte		PEND
mus_dd_metal_city_9_005:
	.byte		MOD   , 0
	.byte	W24
	.byte		N16   , Fs4 , v112
	.byte	W16
	.byte		N04   , An3
	.byte	W56
	.byte		PEND
mus_dd_metal_city_9_006:
	.byte	W24
	.byte		N16   , Fs4 , v112
	.byte	W16
	.byte		N04   , An3
	.byte	W56
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_metal_city_9_003
	.byte	PATT
	 .word	mus_dd_metal_city_9_004
	.byte	PATT
	 .word	mus_dd_metal_city_9_005
	.byte	PATT
	 .word	mus_dd_metal_city_9_006
	.byte	W96
	.byte	W96
	.byte		VOICE , 29
	.byte		PAN   , c_v-32
	.byte	W16
	.byte		N02   , Cn5 , v112
	.byte	W02
	.byte		        Cs5
	.byte	W02
	.byte		        Dn5
	.byte	W02
	.byte		        En5
	.byte	W02
	.byte		N16   , Fs5
	.byte	W16
	.byte		N04   , An4
	.byte	W02
	.byte		PAN   , c_v+32
	.byte	W54
	.byte	PATT
	 .word	mus_dd_metal_city_9_002
	.byte	PATT
	 .word	mus_dd_metal_city_9_001
	.byte	W24
	.byte		N16   , Fs5 , v112
	.byte	W16
	.byte		N04   , An4
	.byte	W02
	.byte		PAN   , c_v-32
	.byte	W30
	.byte		VOICE , 87
	.byte		VOL   , 40*mus_dd_metal_city_mvl/mxv
	.byte	W24
	.byte		PAN   , c_v+0
	.byte		VOL   , 40*mus_dd_metal_city_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N04   , Dn4
	.byte	W04
	.byte		        Dn4 , v064
	.byte	W04
	.byte		        Fs4 , v112
	.byte	W04
	.byte		        Fs4 , v064
	.byte	W04
	.byte		        An4 , v112
	.byte	W04
	.byte		        An4 , v064
	.byte	W04
	.byte		N02   , Bn4 , v112
	.byte	W02
	.byte		N14   , Cn5
	.byte	W14
	.byte		N04   , Bn4
	.byte	W04
	.byte		        Bn4 , v064
	.byte	W04
	.byte		N16   , An4 , v112
	.byte	W16
	.byte		N04   , Gn4
	.byte	W04
	.byte		        Gn4 , v064
	.byte	W04
	.byte		N16   , Fs4 , v112
	.byte	W16
	.byte		N04   , Gn4
	.byte	W04
	.byte		        Gn4 , v064
	.byte	W04
	.byte		N02   , Fn4 , v112
	.byte	W02
	.byte		N14   , Fs4
	.byte	W14
	.byte		N04   , En4
	.byte	W04
	.byte		        En4 , v064
	.byte	W04
	.byte		N16   , Fs4 , v112
	.byte	W16
	.byte		N04   , Gn4
	.byte	W04
	.byte		        Gn4 , v064
	.byte	W04
	.byte		N02   , Gs4 , v112
	.byte	W02
	.byte		N14   , An4
	.byte	W14
	.byte		N04   , Gn4
	.byte	W04
	.byte		        Gn4 , v064
	.byte	W04
	.byte		N16   , Fs4 , v112
	.byte	W16
	.byte		N08   , Gn4
	.byte	W08
	.byte		N02
	.byte	W02
	.byte		        Gs4
	.byte	W02
	.byte		N92   , An4
	.byte	W04
	.byte		BEND  , c_v-11
	.byte	W08
	.byte		        c_v+0
	.byte	W08
	.byte		MOD   , 6
	.byte	W24
	.byte		VOL   , 30*mus_dd_metal_city_mvl/mxv
	.byte	W12
	.byte		        24*mus_dd_metal_city_mvl/mxv
	.byte	W12
	.byte		        17*mus_dd_metal_city_mvl/mxv
	.byte	W08
	.byte		        11*mus_dd_metal_city_mvl/mxv
	.byte	W08
	.byte		        6*mus_dd_metal_city_mvl/mxv
	.byte	W08
	.byte		        40*mus_dd_metal_city_mvl/mxv
	.byte		MOD   , 0
	.byte	W96
	.byte		PAN   , c_v+0
	.byte		VOL   , 40*mus_dd_metal_city_mvl/mxv
	.byte		N04   , Dn4
	.byte	W04
	.byte		        Dn4 , v064
	.byte	W04
	.byte		        Fs4 , v112
	.byte	W04
	.byte		        Fs4 , v064
	.byte	W04
	.byte		        An4 , v112
	.byte	W04
	.byte		        An4 , v064
	.byte	W04
	.byte		N02   , Bn4 , v112
	.byte	W02
	.byte		N14   , Cn5
	.byte	W14
	.byte		N04   , Bn4
	.byte	W04
	.byte		        Bn4 , v064
	.byte	W04
	.byte		N16   , An4 , v112
	.byte	W16
	.byte		N04   , Gn4
	.byte	W04
	.byte		        Gn4 , v064
	.byte	W04
	.byte		N16   , Fs4 , v112
	.byte	W16
	.byte		N04   , Gn4
	.byte	W04
	.byte		        Gn4 , v064
	.byte	W04
	.byte		N02   , Cs5 , v112
	.byte	W02
	.byte		N14   , Dn5
	.byte	W14
	.byte		N04   , Cn5
	.byte	W04
	.byte		        Cn5 , v064
	.byte	W04
	.byte		N16   , Dn5 , v112
	.byte	W16
	.byte		N04   , En5
	.byte	W04
	.byte		        En5 , v064
	.byte	W04
	.byte		N02   , Fn5 , v112
	.byte	W02
	.byte		N14   , Fs5
	.byte	W14
	.byte		N04   , En5
	.byte	W04
	.byte		        En5 , v064
	.byte	W04
	.byte		N16   , Fs5 , v112
	.byte	W16
	.byte		N04   , Gn5
	.byte	W04
	.byte		        Gn5 , v064
	.byte	W04
	.byte		N08   , Fs5 , v120
	.byte	W08
	.byte		        En5 , v112
	.byte	W08
	.byte		N80   , Dn5
	.byte	W08
	.byte		MOD   , 6
	.byte	W24
	.byte		VOL   , 30*mus_dd_metal_city_mvl/mxv
	.byte	W12
	.byte		        24*mus_dd_metal_city_mvl/mxv
	.byte	W12
	.byte		        17*mus_dd_metal_city_mvl/mxv
	.byte	W08
	.byte		        11*mus_dd_metal_city_mvl/mxv
	.byte	W08
	.byte		        6*mus_dd_metal_city_mvl/mxv
	.byte	W08
	.byte		        40*mus_dd_metal_city_mvl/mxv
	.byte		MOD   , 0
	.byte	W96
	.byte		VOL   , 40*mus_dd_metal_city_mvl/mxv
	.byte	W16
	.byte		N04   , As3
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        Dn4
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		        As3
	.byte	W08
	.byte		N16   , Fn4
	.byte	W16
	.byte		N04   , Dn4
	.byte	W08
	.byte		N16   , As3
	.byte	W16
	.byte		N04   , Fn4
	.byte	W08
	.byte		        En4
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		        Gn3
	.byte	W08
	.byte		N08   , En3
	.byte	W08
	.byte		        Gn3
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		N24   , Gn4
	.byte	W24
	.byte		        En4
	.byte	W24
	.byte	W16
	.byte		N04   , Cs4
	.byte	W04
	.byte		        Ds4
	.byte	W04
	.byte		        Fn4
	.byte	W08
	.byte		        Ds4
	.byte	W08
	.byte		        Cs4
	.byte	W08
	.byte		N16   , Gs4
	.byte	W16
	.byte		N04   , Gn4
	.byte	W08
	.byte		N16   , Fn4
	.byte	W16
	.byte		N04   , Gs4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        Fn4
	.byte	W08
	.byte		        Ds4
	.byte	W08
	.byte		N08   , As3
	.byte	W08
	.byte		        Ds4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		N24   , As4
	.byte	W24
	.byte		        Gn4
	.byte	W24
	.byte		N12   , An4
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		        An4
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		N12   , An4
	.byte	W16
	.byte		N04
	.byte	W04
	.byte		N14   , An4 , v052
	.byte	W04
	.byte		N04   , Cn4 , v112
	.byte	W10
	.byte		N14   , An4
	.byte	W06
	.byte		N04   , Cn4
	.byte	W08
	.byte		N12   , An4
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		        An4
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		        As4
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N16   , Cn5
	.byte	W16
	.byte		N12   , An4
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		        An4
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		N12   , An4
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		        An4
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		N12   , An4
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		        Cn4
	.byte	W08
	.byte		        An4
	.byte	W08
	.byte		        Cn4
	.byte	W56
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 30
	.byte	W16
	.byte		N02   , Cn5
	.byte	W02
	.byte		        Cs5
	.byte	W02
	.byte		        Dn5
	.byte	W02
	.byte		        En5
	.byte	W02
	.byte		N16   , Fs5
	.byte	W16
	.byte		N04   , An4
	.byte	W02
	.byte		PAN   , c_v+32
	.byte	W54
	.byte	GOTO
	 .word	mus_dd_metal_city_9_000
	.byte		FINE

@******************************************************@
	.align	2

mus_dd_metal_city:
	.byte	9	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_dd_metal_city_pri	@ Priority
	.byte	mus_dd_metal_city_rev	@ Reverb.

	.word	mus_dd_metal_city_grp

	.word	mus_dd_metal_city_1
	.word	mus_dd_metal_city_2
	.word	mus_dd_metal_city_3
	.word	mus_dd_metal_city_4
	.word	mus_dd_metal_city_5
	.word	mus_dd_metal_city_6
	.word	mus_dd_metal_city_7
	.word	mus_dd_metal_city_8
	.word	mus_dd_metal_city_9

	.end
