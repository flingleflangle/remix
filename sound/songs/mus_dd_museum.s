	.include "MPlayDef.s"

	.equ	mus_dd_museum_grp, voicegroup_dd_museum
	.equ	mus_dd_museum_pri, 0
	.equ	mus_dd_museum_rev, 0x9e
	.equ	mus_dd_museum_mvl, 127
	.equ	mus_dd_museum_key, 0
	.equ	mus_dd_museum_tbs, 1
	.equ	mus_dd_museum_exg, 0
	.equ	mus_dd_museum_cmp, 1

	.section .rodata
	.global	mus_dd_museum
	.align	2

@**************** Track 1 ****************@

mus_dd_museum_1:
	.byte		KEYSH , mus_dd_museum_key+0
	.byte		TEMPO , 158*mus_dd_museum_tbs/2
	.byte		VOICE , 56
	.byte		LFOS  , 44
	.byte		BENDR , 44
	.byte		PAN   , c_v+36
	.byte		VOL   , 61*mus_dd_museum_mvl/mxv
	.byte	W96
mus_dd_museum_1_000:
	.byte		VOICE , 56
	.byte		PAN   , c_v+36
	.byte		MOD   , 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOL   , 70*mus_dd_museum_mvl/mxv
	.byte		PAN   , c_v+37
	.byte	W48
	.byte		N03   , Fn4 , v112
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Gn4
	.byte	W06
	.byte		MOD   , 4
	.byte	W06
	.byte		VOL   , 61*mus_dd_museum_mvl/mxv
	.byte		MOD   , 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOL   , 70*mus_dd_museum_mvl/mxv
	.byte		PAN   , c_v+32
	.byte	W48
	.byte		N06   , En4
	.byte	W12
	.byte		        An3
	.byte	W06
	.byte		N18   , An4
	.byte	W18
	.byte		N12   , Bn4
	.byte	W12
	.byte		VOICE , 5
	.byte		PAN   , c_v-39
	.byte		VOL   , 57*mus_dd_museum_mvl/mxv
	.byte		N12   , An3
	.byte	W06
	.byte		MOD   , 7
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		MOD   , 0
	.byte		N12   , En4
	.byte	W06
	.byte		MOD   , 7
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		MOD   , 0
	.byte		N36   , Cn5
	.byte	W12
	.byte		VOL   , 48*mus_dd_museum_mvl/mxv
	.byte		MOD   , 8
	.byte	W12
	.byte		VOL   , 43*mus_dd_museum_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 57*mus_dd_museum_mvl/mxv
	.byte		N06   , An4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		N12   , Cn4
	.byte	W12
	.byte		        Dn4
	.byte	W12
mus_dd_museum_1_001:
	.byte		N06   , En4 , v112
	.byte	W06
	.byte		        En4 , v076
	.byte	W06
	.byte		        Gn3 , v112
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        En4 , v076
	.byte	W06
	.byte		        Gn3 , v112
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Dn4 , v076
	.byte	W06
	.byte		        Gn3 , v112
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Gn4 , v076
	.byte	W06
	.byte		        Gn3 , v112
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Dn4 , v076
	.byte	W06
	.byte		        Gn3 , v112
	.byte	W06
	.byte		        Gn3 , v076
	.byte	W06
	.byte		PEND
	.byte		PAN   , c_v-39
	.byte		VOL   , 55*mus_dd_museum_mvl/mxv
	.byte		N12   , Fs3 , v112
	.byte	W06
	.byte		MOD   , 7
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		MOD   , 0
	.byte		N12   , Dn4
	.byte	W06
	.byte		MOD   , 7
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		MOD   , 0
	.byte		N36   , An4
	.byte	W12
	.byte		MOD   , 6
	.byte		VOL   , 48*mus_dd_museum_mvl/mxv
	.byte	W12
	.byte		        43*mus_dd_museum_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 59*mus_dd_museum_mvl/mxv
	.byte		N06   , Fs4
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		N12   , Cn4
	.byte	W12
	.byte		        Dn4
	.byte	W12
mus_dd_museum_1_002:
	.byte		N12   , En4 , v112
	.byte	W12
	.byte		N06   , Fn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		N18   , En4
	.byte	W66
	.byte		PEND
	.byte		VOICE , 5
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		        56
	.byte		PAN   , c_v+48
	.byte		VOL   , 70*mus_dd_museum_mvl/mxv
	.byte	W96
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , En4 , v052
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , En4 , v032
	.byte	W12
	.byte		PAN   , c_v+48
	.byte		N03   , En4 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , En4 , v048
	.byte	W12
	.byte		PAN   , c_v+48
	.byte		N06   , En4 , v112
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , En4 , v048
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , En4 , v044
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , En4 , v032
	.byte	W72
	.byte		PAN   , c_v+48
	.byte	W48
	.byte		N03   , Fs4 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Fs4 , v048
	.byte	W12
	.byte		PAN   , c_v+48
	.byte		N06   , Fs4 , v112
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Fs4 , v048
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Fs4 , v032
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Fs4 , v024
	.byte	W24
	.byte		PAN   , c_v+48
	.byte	W12
	.byte		N06   , Gn4 , v112
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Gn4 , v060
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Gn4 , v048
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Gn4 , v040
	.byte	W24
	.byte		PAN   , c_v+48
	.byte	W30
	.byte		N06   , Gn4 , v112
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Gn4 , v048
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N06   , Gn4 , v112
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Gn4 , v048
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Gn4 , v032
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Gn4 , v028
	.byte	W12
	.byte		PAN   , c_v+48
	.byte	W12
	.byte		N06   , Gs4 , v112
	.byte	W60
	.byte	W36
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Bn4
	.byte	W06
	.byte		N01   , An4 , v092
	.byte	W01
	.byte		        Gn4
	.byte	W01
	.byte		        Fn4
	.byte	W01
	.byte		        En4 , v088
	.byte	W01
	.byte		        Dn4
	.byte	W02
	.byte		        Cn4
	.byte	W01
	.byte		        Bn3
	.byte	W01
	.byte		        An3
	.byte	W04
	.byte		VOICE , 5
	.byte		N06   , Gs3 , v112
	.byte	W06
	.byte		PAN   , c_v-39
	.byte		VOL   , 58*mus_dd_museum_mvl/mxv
	.byte		N12   , An3
	.byte	W06
	.byte		MOD   , 7
	.byte	W06
	.byte		        0
	.byte		PAN   , c_v-32
	.byte		N12   , En4
	.byte	W06
	.byte		MOD   , 7
	.byte	W06
	.byte		        0
	.byte		PAN   , c_v+32
	.byte		N36   , Cn5
	.byte	W12
	.byte		MOD   , 6
	.byte		VOL   , 48*mus_dd_museum_mvl/mxv
	.byte	W12
	.byte		        43*mus_dd_museum_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 58*mus_dd_museum_mvl/mxv
	.byte		N06   , An4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		N12   , Cn4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte	PATT
	 .word	mus_dd_museum_1_001
	.byte		PAN   , c_v-37
	.byte		VOL   , 58*mus_dd_museum_mvl/mxv
	.byte		N06   , Fs3 , v112
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , Dn4
	.byte	W06
	.byte		PAN   , c_v-22
	.byte		N06   , Fs4
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N36   , An4
	.byte	W12
	.byte		VOL   , 48*mus_dd_museum_mvl/mxv
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 43*mus_dd_museum_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 55*mus_dd_museum_mvl/mxv
	.byte		N06   , Fs4
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		N12   , Cn4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte	PATT
	 .word	mus_dd_museum_1_002
	.byte		VOICE , 5
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		        56
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOL   , 70*mus_dd_museum_mvl/mxv
	.byte		PAN   , c_v+32
	.byte	W60
	.byte		N03   , An4 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N18
	.byte	W06
	.byte		MOD   , 4
	.byte		VOL   , 61*mus_dd_museum_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 70*mus_dd_museum_mvl/mxv
	.byte		N06   , Gs4
	.byte	W06
	.byte		N24   , Gn4
	.byte	W12
	.byte		MOD   , 4
	.byte		VOL   , 61*mus_dd_museum_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 70*mus_dd_museum_mvl/mxv
	.byte	W36
	.byte		N03
	.byte	W36
	.byte	W60
	.byte		        Fs4
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N18
	.byte	W06
	.byte		MOD   , 4
	.byte		VOL   , 61*mus_dd_museum_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 70*mus_dd_museum_mvl/mxv
	.byte		N06   , Dn4
	.byte	W06
	.byte		N24   , Fn4
	.byte	W12
	.byte		MOD   , 4
	.byte		VOL   , 61*mus_dd_museum_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 70*mus_dd_museum_mvl/mxv
	.byte	W30
	.byte		N03   , En4
	.byte	W06
	.byte		N12   , An3
	.byte	W12
	.byte		N03   , Bn3
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		N12   , Dn4
	.byte	W12
	.byte	W60
	.byte		N03   , Gn4
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N18
	.byte	W06
	.byte		MOD   , 4
	.byte		VOL   , 61*mus_dd_museum_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 70*mus_dd_museum_mvl/mxv
	.byte		N06   , Dn4
	.byte	W06
	.byte		N24   , En4
	.byte	W12
	.byte		MOD   , 4
	.byte		VOL   , 61*mus_dd_museum_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 70*mus_dd_museum_mvl/mxv
	.byte	W36
	.byte		N03   , Gn4
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N18
	.byte	W09
	.byte		MOD   , 4
	.byte		VOL   , 61*mus_dd_museum_mvl/mxv
	.byte	W09
	.byte		MOD   , 0
	.byte		VOL   , 70*mus_dd_museum_mvl/mxv
	.byte		N06   , En4
	.byte	W06
	.byte		N72   , An4
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		VOL   , 66*mus_dd_museum_mvl/mxv
	.byte	W06
	.byte		        61*mus_dd_museum_mvl/mxv
	.byte	W06
	.byte		        56*mus_dd_museum_mvl/mxv
	.byte	W06
	.byte		        52*mus_dd_museum_mvl/mxv
	.byte	W06
	.byte		        48*mus_dd_museum_mvl/mxv
	.byte	W06
	.byte		        43*mus_dd_museum_mvl/mxv
	.byte	W06
	.byte		        39*mus_dd_museum_mvl/mxv
	.byte	W06
	.byte		        35*mus_dd_museum_mvl/mxv
	.byte	W06
	.byte		VOICE , 5
	.byte		PAN   , c_v-16
	.byte		MOD   , 0
	.byte		VOL   , 61*mus_dd_museum_mvl/mxv
	.byte		N06   , Dn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , An3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		N96   , Cs4
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 56*mus_dd_museum_mvl/mxv
	.byte	W12
	.byte		        51*mus_dd_museum_mvl/mxv
	.byte	W12
	.byte		        48*mus_dd_museum_mvl/mxv
	.byte	W12
	.byte		        41*mus_dd_museum_mvl/mxv
	.byte	W12
	.byte		        35*mus_dd_museum_mvl/mxv
	.byte	W12
	.byte		        28*mus_dd_museum_mvl/mxv
	.byte	W12
	.byte	GOTO
	 .word	mus_dd_museum_1_000
	.byte		FINE

@**************** Track 2 ****************@

mus_dd_museum_2:
	.byte		KEYSH , mus_dd_museum_key+0
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 66*mus_dd_museum_mvl/mxv
	.byte	W96
mus_dd_museum_2_000:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_dd_museum_2_001:
	.byte		VOICE , 29
	.byte		VOL   , 70*mus_dd_museum_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		N03   , An2 , v112
	.byte	W03
	.byte		        Bn2
	.byte	W03
	.byte		        Cn3
	.byte	W03
	.byte		        Dn3
	.byte	W03
	.byte		N36   , En3 , v120
	.byte	W15
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		        c_v+12
	.byte	W02
	.byte		        c_v+26
	.byte	W13
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+5
	.byte	W02
	.byte		        c_v+0
	.byte		N12
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		PEND
	.byte		N32   , En3
	.byte	W21
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-9
	.byte	W02
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v+0
	.byte		N03   , Ds3
	.byte	W03
	.byte		N60   , Dn3
	.byte	W24
	.byte		BEND  , c_v-2
	.byte	W06
	.byte		        c_v-3
	.byte	W06
	.byte		        c_v-4
	.byte	W06
	.byte		        c_v-5
	.byte	W06
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-23
	.byte	W02
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-45
	.byte	W02
mus_dd_museum_2_002:
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		N03   , Gn2 , v120
	.byte	W03
	.byte		        An2
	.byte	W03
	.byte		        As2
	.byte	W03
	.byte		        Cn3
	.byte	W03
	.byte		N36   , Dn3
	.byte	W18
	.byte		BEND  , c_v+21
	.byte	W12
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+1
	.byte	W02
	.byte		        c_v+0
	.byte		N12
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		PEND
mus_dd_museum_2_003:
	.byte		N12   , En3 , v120
	.byte	W06
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v+0
	.byte		N06   , Fn2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		N18   , En3
	.byte	W10
	.byte		BEND  , c_v-6
	.byte	W02
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v+0
	.byte		N18   , Dn3
	.byte	W18
	.byte		        Gn3
	.byte	W12
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-24
	.byte	W02
	.byte		        c_v+0
	.byte		N12   , Dn3
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-56
	.byte	W02
	.byte		PEND
	.byte		VOL   , 70*mus_dd_museum_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		N06   , Cs3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		N36   , En3
	.byte	W15
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		        c_v+12
	.byte	W02
	.byte		        c_v+26
	.byte	W13
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+5
	.byte	W02
	.byte		        c_v+0
	.byte		N12
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		N36   , En3
	.byte	W21
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-9
	.byte	W02
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v+0
	.byte	W03
	.byte		N24   , Dn3
	.byte	W12
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte	W02
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-39
	.byte	W02
	.byte		        c_v+0
	.byte		N60
	.byte	W36
	.byte		BEND  , c_v-3
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-10
	.byte	W03
	.byte		        c_v-13
	.byte	W03
	.byte		        c_v-16
	.byte	W03
	.byte		        c_v-18
	.byte	W03
	.byte		        c_v+0
	.byte		N36
	.byte	W18
	.byte		BEND  , c_v+21
	.byte	W12
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+1
	.byte	W02
	.byte		        c_v+0
	.byte		N12
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		        En3
	.byte	W06
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v+0
	.byte		N06   , Fn2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		N18   , En3
	.byte	W10
	.byte		BEND  , c_v-6
	.byte	W02
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v+0
	.byte		N18   , Dn3
	.byte	W18
	.byte		        Cn3
	.byte	W12
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-24
	.byte	W02
	.byte		        c_v+0
	.byte		N12   , Bn2
	.byte	W12
	.byte		VOICE , 48
	.byte		VOL   , 15*mus_dd_museum_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		TIE   , En4 , v112
	.byte	W02
	.byte		VOL   , 17*mus_dd_museum_mvl/mxv
	.byte	W10
	.byte		        17*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        19*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        21*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        22*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        24*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        24*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        27*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        29*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        30*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        33*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        37*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        39*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        42*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        45*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        48*mus_dd_museum_mvl/mxv
	.byte	W42
mus_dd_museum_2_004:
	.byte		VOL   , 42*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        39*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        33*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        30*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        29*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        24*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        21*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        17*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        15*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        14*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        11*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        11*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        9*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        8*mus_dd_museum_mvl/mxv
	.byte	W10
	.byte		PEND
	.byte		EOT   , En4
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte		N18   , Dn4 , v112
	.byte	W18
	.byte		        En4
	.byte	W18
	.byte		N12   , Dn4
	.byte	W12
mus_dd_museum_2_005:
	.byte		VOL   , 15*mus_dd_museum_mvl/mxv
	.byte		TIE   , En4 , v112
	.byte	W02
	.byte		VOL   , 17*mus_dd_museum_mvl/mxv
	.byte	W10
	.byte		        17*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        19*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        21*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        22*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        24*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        24*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        27*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        29*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        30*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        33*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        37*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        39*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        42*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        45*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        48*mus_dd_museum_mvl/mxv
	.byte	W42
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_museum_2_004
	.byte		EOT   , En4
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte		N18   , Dn4 , v112
	.byte	W18
	.byte		        En4
	.byte	W18
	.byte		N12   , Dn4
	.byte	W12
	.byte	PATT
	 .word	mus_dd_museum_2_005
	.byte	PATT
	 .word	mus_dd_museum_2_004
	.byte		EOT   , En4
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte		N18   , Dn4 , v112
	.byte	W18
	.byte		        En4
	.byte	W18
	.byte		N12   , Dn4
	.byte	W12
	.byte		VOL   , 15*mus_dd_museum_mvl/mxv
	.byte		N48   , Fn4
	.byte	W02
	.byte		VOL   , 17*mus_dd_museum_mvl/mxv
	.byte	W10
	.byte		        17*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        19*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        21*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        22*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        24*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        24*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        27*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        29*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        30*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        33*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        37*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        39*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        42*mus_dd_museum_mvl/mxv
	.byte		N48   , Dn4
	.byte	W02
	.byte		VOL   , 45*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        48*mus_dd_museum_mvl/mxv
	.byte	W42
	.byte		        15*mus_dd_museum_mvl/mxv
	.byte		N48   , En4
	.byte	W02
	.byte		VOL   , 17*mus_dd_museum_mvl/mxv
	.byte	W10
	.byte		        17*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        19*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        21*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        22*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        24*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        24*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        27*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        29*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        30*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        33*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        37*mus_dd_museum_mvl/mxv
	.byte	W02
	.byte		        39*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        42*mus_dd_museum_mvl/mxv
	.byte		N48   , Bn3
	.byte	W02
	.byte		VOL   , 45*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		        48*mus_dd_museum_mvl/mxv
	.byte	W42
	.byte	PATT
	 .word	mus_dd_museum_2_001
	.byte		N32   , En3 , v120
	.byte	W21
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-9
	.byte	W02
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v+0
	.byte		N03   , Ds3
	.byte	W03
	.byte		N60   , Dn3
	.byte	W48
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-23
	.byte	W02
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-45
	.byte	W02
	.byte	PATT
	 .word	mus_dd_museum_2_002
	.byte	PATT
	 .word	mus_dd_museum_2_003
	.byte		VOICE , 29
	.byte		VOL   , 70*mus_dd_museum_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		N06   , Cs3 , v124
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		N36   , En3
	.byte	W15
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		        c_v+12
	.byte	W02
	.byte		        c_v+26
	.byte	W13
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+5
	.byte	W02
	.byte		        c_v+0
	.byte		N12
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		N36   , En3
	.byte	W21
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-9
	.byte	W02
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v+0
	.byte	W03
	.byte		N24   , Dn3
	.byte	W12
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte	W02
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-39
	.byte	W02
	.byte		        c_v+0
	.byte		N60
	.byte	W36
	.byte		BEND  , c_v-3
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-10
	.byte	W03
	.byte		        c_v-13
	.byte	W03
	.byte		        c_v-16
	.byte	W03
	.byte		        c_v-18
	.byte	W03
	.byte		        c_v+0
	.byte		N36
	.byte	W18
	.byte		BEND  , c_v+21
	.byte	W12
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+1
	.byte	W02
	.byte		        c_v+0
	.byte		N12
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		        En3
	.byte	W06
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v+0
	.byte		N06   , Fn2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		N18   , En3
	.byte	W10
	.byte		BEND  , c_v-6
	.byte	W02
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v+0
	.byte		N36   , Dn3
	.byte	W30
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-24
	.byte	W02
	.byte		        c_v+0
	.byte		N12
	.byte	W12
	.byte		VOICE , 29
	.byte		N36   , En3
	.byte	W12
	.byte		BEND  , c_v-5
	.byte	W12
	.byte		        c_v+0
	.byte	W12
	.byte		N36   , An3
	.byte	W12
	.byte		BEND  , c_v-6
	.byte	W12
	.byte		        c_v+0
	.byte	W12
	.byte		N24   , Bn3
	.byte	W24
	.byte		        Cn4
	.byte	W10
	.byte		BEND  , c_v-6
	.byte	W14
	.byte		        c_v+0
	.byte		N12
	.byte	W12
	.byte		N36   , En4
	.byte	W36
	.byte		N24   , Gn4
	.byte	W24
	.byte		N36   , An4
	.byte	W24
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-27
	.byte	W02
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-51
	.byte	W02
	.byte		        c_v+0
	.byte		N36   , En4
	.byte	W36
	.byte		N24   , Dn4
	.byte	W16
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-45
	.byte	W02
	.byte		        c_v+0
	.byte		N12   , Bn3
	.byte	W12
	.byte		        Fn3
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		N36   , An3
	.byte	W24
	.byte	W02
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-15
	.byte	W02
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-46
	.byte	W02
	.byte		        c_v+0
	.byte		N24   , Bn3
	.byte	W12
	.byte		MOD   , 8
	.byte		VOL   , 61*mus_dd_museum_mvl/mxv
	.byte	W06
	.byte		        52*mus_dd_museum_mvl/mxv
	.byte	W06
	.byte		VOICE , 30
	.byte		MOD   , 0
	.byte		VOL   , 70*mus_dd_museum_mvl/mxv
	.byte		N36   , En2 , v127
	.byte	W12
	.byte		BEND  , c_v-6
	.byte	W12
	.byte		        c_v+0
	.byte	W12
	.byte		N36   , An2
	.byte	W24
	.byte	W03
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-24
	.byte	W02
	.byte		        c_v+0
	.byte		N24   , Bn2
	.byte	W24
	.byte		N36   , Cn3
	.byte	W12
	.byte		BEND  , c_v-6
	.byte	W12
	.byte		        c_v+0
	.byte	W12
	.byte		N36   , En3
	.byte	W28
	.byte		BEND  , c_v-3
	.byte	W02
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-27
	.byte	W02
	.byte		        c_v+0
	.byte		N24   , Gn3
	.byte	W18
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-21
	.byte	W02
	.byte		        c_v-1
	.byte		N36   , An3
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W32
	.byte	W03
	.byte		N36   , Bn3
	.byte	W24
	.byte	W03
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		        c_v-22
	.byte	W02
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-58
	.byte	W02
	.byte		        c_v+0
	.byte		N24   , An3
	.byte	W19
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-47
	.byte	W02
	.byte		        c_v+0
	.byte		N12   , Bn3
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		N36   , An3
	.byte	W24
	.byte	W02
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-27
	.byte	W02
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-56
	.byte	W02
	.byte		        c_v+0
	.byte		N24   , Bn3
	.byte	W24
	.byte		N36   , Gn3
	.byte	W24
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-34
	.byte	W02
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-61
	.byte	W02
	.byte		        c_v+0
	.byte		N60   , En3
	.byte	W36
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-19
	.byte	W02
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-32
	.byte	W02
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-53
	.byte	W02
	.byte		VOICE , 29
	.byte		BEND  , c_v+0
	.byte		N36   , Gn3 , v124
	.byte	W24
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-34
	.byte	W02
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-61
	.byte	W02
	.byte		        c_v+0
	.byte		N36   , En3
	.byte	W36
	.byte		N12   , Gn3
	.byte	W12
	.byte		TIE   , An3
	.byte	W12
	.byte	W24
	.byte		BEND  , c_v-2
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v-5
	.byte	W03
	.byte		        c_v-7
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-10
	.byte	W03
	.byte		        c_v-12
	.byte	W03
	.byte		        c_v-14
	.byte	W03
	.byte		        c_v-16
	.byte	W03
	.byte		        c_v-18
	.byte	W03
	.byte		        c_v-21
	.byte	W03
	.byte		        c_v-23
	.byte	W03
	.byte		        c_v-24
	.byte	W03
	.byte		        c_v-26
	.byte	W03
	.byte		        c_v-29
	.byte	W03
	.byte		        c_v-30
	.byte	W03
	.byte		        c_v-32
	.byte	W03
	.byte		        c_v-34
	.byte	W03
	.byte		        c_v-36
	.byte	W03
	.byte		        c_v-38
	.byte	W03
	.byte		        c_v-40
	.byte	W03
	.byte		        c_v-43
	.byte	W03
	.byte		        c_v-46
	.byte	W03
	.byte		        c_v-47
	.byte	W03
	.byte		EOT   
	.byte		BEND  , c_v+0
	.byte		N96
	.byte	W06
	.byte		BEND  , c_v-6
	.byte	W06
	.byte		        c_v+0
	.byte	W72
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-18
	.byte	W02
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-51
	.byte	W02
	.byte	GOTO
	 .word	mus_dd_museum_2_000
	.byte		FINE

@**************** Track 3 ****************@

mus_dd_museum_3:
	.byte		KEYSH , mus_dd_museum_key+0
	.byte		VOICE , 36
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		VOL   , 70*mus_dd_museum_mvl/mxv
	.byte		PAN   , c_v-1
	.byte		BEND  , c_v+0
	.byte	W72
	.byte		        c_v+56
	.byte		N24   , An2 , v127
	.byte	W01
	.byte		BEND  , c_v+50
	.byte	W01
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+21
	.byte	W02
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-32
	.byte	W02
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-63
	.byte	W02
mus_dd_museum_3_000:
	.byte		BEND  , c_v+0
	.byte		N18   , An1 , v127
	.byte	W18
	.byte		N03   , En2
	.byte	W03
	.byte		N06   , En2 , v060
	.byte	W09
	.byte		N03   , En2 , v127
	.byte	W03
	.byte		        En2 , v060
	.byte	W03
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		N06   , An1
	.byte	W06
	.byte		N03   , En2
	.byte	W03
	.byte		        En2 , v060
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		N12   , En1
	.byte	W12
	.byte		N03   , An2
	.byte	W03
	.byte		        An2 , v060
	.byte	W03
	.byte		        En2 , v127
	.byte	W03
	.byte		        En2 , v060
	.byte	W03
	.byte		N18   , Gn1 , v127
	.byte	W18
	.byte		N03   , En2
	.byte	W03
	.byte		N06   , En2 , v060
	.byte	W09
	.byte		N03   , En2 , v127
	.byte	W03
	.byte		        En2 , v060
	.byte	W03
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		N06   , En2
	.byte	W06
	.byte		N03   , Cn2
	.byte	W06
	.byte		N06   , An1
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		N12   , Dn2
	.byte	W12
	.byte		N03   , An2
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		        An2 , v060
	.byte	W03
	.byte		N18   , Fs1 , v127
	.byte	W18
	.byte		N03   , En2
	.byte	W03
	.byte		N06   , En2 , v060
	.byte	W09
	.byte		N03   , En2 , v127
	.byte	W06
	.byte		N12   , Cn2
	.byte	W12
	.byte		N06   , Fs1
	.byte	W06
	.byte		N03   , En2
	.byte	W03
	.byte		        En2 , v060
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		N12   , Fs1
	.byte	W12
	.byte		N03   , An2
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		        An2 , v060
	.byte	W03
mus_dd_museum_3_001:
	.byte		N18   , Fn1 , v127
	.byte	W18
	.byte		N03   , En2
	.byte	W03
	.byte		N06   , En2 , v060
	.byte	W09
	.byte		N03   , En2 , v127
	.byte	W06
	.byte		N12   , Cn2
	.byte	W12
	.byte		N06   , Fn1
	.byte	W06
	.byte		        Fn1 , v060
	.byte	W06
	.byte		N12   , Fn2 , v127
	.byte	W12
	.byte		N06   , Gn1
	.byte	W06
	.byte		        Gn1 , v060
	.byte	W06
	.byte		N12   , Gn2 , v127
	.byte	W12
	.byte		PEND
	.byte		N18   , An1
	.byte	W18
	.byte		N03   , En2
	.byte	W03
	.byte		N06   , En2 , v060
	.byte	W09
	.byte		N03   , En2 , v127
	.byte	W06
	.byte		N12   , Cn2
	.byte	W12
	.byte		N06   , An1
	.byte	W06
	.byte		N03   , En2
	.byte	W06
	.byte		N06   , Cn2
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		N12   , En1
	.byte	W12
	.byte		N03   , An2
	.byte	W06
	.byte		        En2
	.byte	W03
	.byte		        En2 , v060
	.byte	W03
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N03   , En2
	.byte	W03
	.byte		N06   , En2 , v060
	.byte	W09
	.byte		N03   , En2 , v127
	.byte	W06
	.byte		N12   , Cn2
	.byte	W12
	.byte		N06   , En2
	.byte	W06
	.byte		N03   , Cn2
	.byte	W06
	.byte		N06   , An1
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		N12   , Cn2
	.byte	W12
	.byte		N03   , An2
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		        An2 , v060
	.byte	W03
	.byte		N18   , Fs1 , v127
	.byte	W18
	.byte		N03   , En2
	.byte	W03
	.byte		N06   , En2 , v060
	.byte	W09
	.byte		N03   , En2 , v127
	.byte	W06
	.byte		N12   , Cn2
	.byte	W12
	.byte		N06   , En2
	.byte	W06
	.byte		N03   , Fs1
	.byte	W03
	.byte		N09   , Fs1 , v060
	.byte	W09
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		N12   , En2
	.byte	W12
	.byte		N03   , An2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte	PATT
	 .word	mus_dd_museum_3_001
mus_dd_museum_3_002:
	.byte		N06   , An1 , v127
	.byte	W06
	.byte		        An1 , v060
	.byte	W06
	.byte		N24   , An1 , v127
	.byte	W24
	.byte		N06   , En2
	.byte	W06
	.byte		        En1
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		        An1 , v060
	.byte	W06
	.byte		N24   , En1 , v127
	.byte	W24
	.byte		N06   , Bn1
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		PEND
mus_dd_museum_3_003:
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		        Gn1 , v060
	.byte	W06
	.byte		N24   , Gn1 , v127
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		        Bn1 , v060
	.byte	W06
	.byte		N24   , Bn1 , v127
	.byte	W24
	.byte		N06   , An1
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		PEND
mus_dd_museum_3_004:
	.byte		N06   , Fs1 , v127
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N24   , Fs1 , v127
	.byte	W24
	.byte		N06   , Cn2
	.byte	W06
	.byte		        Fs1
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N24   , Dn1 , v127
	.byte	W24
	.byte		N06   , An1
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		PEND
mus_dd_museum_3_005:
	.byte		N24   , Fn1 , v127
	.byte	W06
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-44
	.byte	W02
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-64
	.byte	W09
	.byte		N12   , Fn1 , v060
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		N18   , Gn1
	.byte	W18
	.byte		        Dn1
	.byte	W18
	.byte		N12   , Bn1
	.byte	W12
	.byte		PEND
mus_dd_museum_3_006:
	.byte		N06   , An1 , v127
	.byte	W06
	.byte		        An1 , v060
	.byte	W06
	.byte		N12   , Gs1 , v127
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		N06   , En2
	.byte	W06
	.byte		        En1
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		        An1 , v060
	.byte	W06
	.byte		N24   , En1 , v127
	.byte	W24
	.byte		N06   , Bn1
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		PEND
mus_dd_museum_3_007:
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		        Gn1 , v060
	.byte	W06
	.byte		N12   , Fs1 , v127
	.byte	W12
	.byte		N06   , Gn1
	.byte	W06
	.byte		        Gn1 , v060
	.byte	W06
	.byte		        Dn1 , v127
	.byte	W06
	.byte		        Fs1
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		        Gn1 , v060
	.byte	W06
	.byte		N12   , Gn1 , v127
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		PEND
	.byte		        Fs1
	.byte	W12
	.byte		N12   , Fn1
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		N06   , Cn2
	.byte	W06
	.byte		        Fs1
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N24   , Fs1 , v127
	.byte	W24
	.byte		N06   , An1
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte	PATT
	 .word	mus_dd_museum_3_005
	.byte		N06   , Fn1 , v127
	.byte	W06
	.byte		N12   , Fn1 , v060
	.byte	W18
	.byte		N06   , Fn1 , v127
	.byte	W06
	.byte		N12   , Fn1 , v060
	.byte	W18
	.byte		N06   , Fn1 , v127
	.byte	W06
	.byte		N12   , Fn1 , v060
	.byte	W18
	.byte		N15   , Fn1 , v127
	.byte	W18
	.byte		N06
	.byte	W06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12   , Fn1 , v060
	.byte	W18
	.byte		N06   , Fn1 , v127
	.byte	W06
	.byte		        Fn1 , v060
	.byte	W06
	.byte		        Fn1 , v127
	.byte	W06
	.byte		        Fn1 , v060
	.byte	W12
	.byte		        Fn1 , v127
	.byte	W06
	.byte		N12   , Fn1 , v060
	.byte	W12
	.byte		        Fn1 , v127
	.byte	W12
	.byte		N15   , Fs1
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Fs1 , v060
	.byte	W12
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		        Fs1
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N12   , Bn1 , v127
	.byte	W12
	.byte		N06   , An1
	.byte	W06
	.byte		        An1 , v060
	.byte	W06
	.byte		N12   , Dn2 , v127
	.byte	W12
	.byte		N18   , Fs1
	.byte	W09
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v+0
	.byte		N06
	.byte	W06
	.byte		N12   , Fs1 , v060
	.byte	W12
	.byte		N09   , Fs1 , v127
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		N12
	.byte	W12
	.byte		N15   , Gn1
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Gn1 , v060
	.byte	W12
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		        Dn2
	.byte	W06
	.byte		N15   , Gn1
	.byte	W15
	.byte		N09   , Gn1 , v060
	.byte	W09
	.byte		N15   , Gn1 , v127
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Gn1 , v060
	.byte	W12
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N12   , Gn1 , v060
	.byte	W18
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		        Gn1 , v060
	.byte	W06
	.byte		        Gn1 , v127
	.byte	W06
	.byte		N12   , Gn1 , v060
	.byte	W12
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Gs1
	.byte	W06
	.byte		N12   , Gs1 , v060
	.byte	W18
	.byte		N06   , Gs1 , v127
	.byte	W06
	.byte		N12   , Gs1 , v060
	.byte	W18
	.byte		N06   , Gs1 , v127
	.byte	W06
	.byte		N12   , Gs1 , v060
	.byte	W18
	.byte		        Gs1 , v127
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Gs1 , v060
	.byte	W12
	.byte		        Gs1 , v127
	.byte	W06
	.byte		N12   , Gs1 , v060
	.byte	W18
	.byte		N06   , Gs1 , v127
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12   , Gs1 , v060
	.byte	W12
	.byte		N06   , Gs1 , v127
	.byte	W18
	.byte		N12
	.byte	W12
	.byte	PATT
	 .word	mus_dd_museum_3_002
	.byte	PATT
	 .word	mus_dd_museum_3_003
	.byte	PATT
	 .word	mus_dd_museum_3_004
	.byte	PATT
	 .word	mus_dd_museum_3_005
	.byte	PATT
	 .word	mus_dd_museum_3_006
	.byte	PATT
	 .word	mus_dd_museum_3_007
	.byte		N06   , Fs1 , v127
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N12   , Fn1 , v127
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		N06   , Cn2
	.byte	W06
	.byte		        Fs1
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N24   , Fs1 , v127
	.byte	W24
	.byte		N06   , An1
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		N24   , Fn1
	.byte	W06
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-44
	.byte	W02
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-64
	.byte	W09
	.byte		N12   , Fn1 , v060
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		N18   , Gn1
	.byte	W18
	.byte		        Dn1
	.byte	W18
	.byte		N12   , As1
	.byte	W12
mus_dd_museum_3_008:
	.byte		N14   , An1 , v127
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , An1 , v060
	.byte	W12
	.byte		N06   , An1 , v127
	.byte	W06
	.byte		N12   , An1 , v060
	.byte	W18
	.byte		N02   , An1 , v127
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N12   , En2
	.byte	W12
	.byte		        Gs1
	.byte	W12
	.byte		PEND
mus_dd_museum_3_009:
	.byte		N14   , Gn1 , v127
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Gn1 , v060
	.byte	W12
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N12   , Gn1 , v060
	.byte	W18
	.byte		N02   , Gn1 , v127
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N18   , Dn2
	.byte	W18
	.byte		N06   , Bn1
	.byte	W06
	.byte		PEND
	.byte		N15   , Fs1
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Fs1 , v060
	.byte	W12
	.byte		N06   , Fs1 , v127
	.byte	W06
	.byte		N12   , Fs1 , v060
	.byte	W18
	.byte		N03   , Fs2 , v127
	.byte	W06
	.byte		N06   , Fs1
	.byte	W06
	.byte		N18   , En1
	.byte	W18
	.byte		N06   , Fs1
	.byte	W06
mus_dd_museum_3_010:
	.byte		N15   , Fn1 , v127
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Fn1 , v060
	.byte	W18
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		N12   , Fn1
	.byte	W12
	.byte		        Fn2
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		        Gn2
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_museum_3_008
	.byte	PATT
	 .word	mus_dd_museum_3_009
	.byte		N15   , Fs1 , v127
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Fs1 , v060
	.byte	W12
	.byte		N06   , Fs1 , v127
	.byte	W06
	.byte		N12   , Fs1 , v060
	.byte	W18
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Fs1
	.byte	W06
	.byte		N18   , En1
	.byte	W18
	.byte		N06   , Fs1
	.byte	W06
	.byte	PATT
	 .word	mus_dd_museum_3_010
	.byte		N15   , En1 , v127
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , En1 , v060
	.byte	W12
	.byte		N21   , En1 , v127
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Dn2
	.byte	W12
	.byte		N06   , En1
	.byte	W06
	.byte		        Fn1
	.byte	W06
	.byte		N15   , Gn1
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Gn1 , v060
	.byte	W12
	.byte		N21   , Gn1 , v127
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , En1
	.byte	W12
	.byte		N06   , En1 , v060
	.byte	W06
	.byte		        Gn1 , v127
	.byte	W06
	.byte		N15   , An1
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , An1 , v060
	.byte	W12
	.byte		N24   , An1 , v127
	.byte	W30
	.byte		N06   , Dn2
	.byte	W06
	.byte		N12   , En2
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		N15   , An1
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , An1 , v060
	.byte	W12
	.byte		N15   , An1 , v127
	.byte	W18
	.byte		        En1
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte	GOTO
	 .word	mus_dd_museum_3_000
	.byte		FINE

@**************** Track 4 ****************@

mus_dd_museum_4:
	.byte		KEYSH , mus_dd_museum_key+0
	.byte		VOICE , 24
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 62*mus_dd_museum_mvl/mxv
	.byte	W96
mus_dd_museum_4_000:
	.byte		VOICE , 24
	.byte		PAN   , c_v-32
	.byte		VOL   , 46*mus_dd_museum_mvl/mxv
	.byte		N03   , Cn4 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , An4
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , An5 , v112
	.byte	W06
	.byte		        An5 , v076
	.byte	W06
	.byte		        An4 , v112
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , En5 , v112
	.byte	W06
	.byte		        En5 , v076
	.byte	W06
	.byte		        An4 , v112
	.byte	W06
	.byte		N18   , An5
	.byte	W18
	.byte		N06   , An4
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03   , Bn3 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , An4
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , An5 , v112
	.byte	W06
	.byte		        An5 , v076
	.byte	W06
	.byte		        An4 , v112
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		        En5 , v112
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		        An4 , v112
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N12   , An5
	.byte	W12
	.byte		N06   , An4
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03   , An3 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , An4
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , An5 , v112
	.byte	W06
	.byte		        An5 , v076
	.byte	W06
	.byte		        An4 , v112
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N12   , En5 , v112
	.byte	W12
	.byte		N06   , An4
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		N12   , An5 , v112
	.byte	W12
	.byte		N06   , An4
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03   , Fn3 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , An4
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , An5 , v112
	.byte	W06
	.byte		        An5 , v076
	.byte	W06
	.byte		        An4 , v112
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		        En5 , v112
	.byte	W06
	.byte		        En5 , v076
	.byte	W06
	.byte		        An4 , v112
	.byte	W06
	.byte		N18   , An5
	.byte	W06
	.byte		PAN   , c_v+32
	.byte	W12
	.byte		N06   , Bn5
	.byte	W06
	.byte		        Bn5 , v076
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03   , En4 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , An4
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , An5 , v112
	.byte	W06
	.byte		        An5 , v076
	.byte	W06
	.byte		        An4 , v112
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , En5 , v112
	.byte	W06
	.byte		        En5 , v076
	.byte	W06
	.byte		        An4 , v112
	.byte	W06
	.byte		N18   , An5
	.byte	W18
	.byte		N06   , An4
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03   , Dn4 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , An4
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , An5 , v112
	.byte	W06
	.byte		        An5 , v076
	.byte	W06
	.byte		        An4 , v112
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		N03   , En5 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , An4
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N12   , An5 , v112
	.byte	W12
	.byte		N06   , An4
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03   , Cn4 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , An4
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , An5 , v112
	.byte	W06
	.byte		        An5 , v076
	.byte	W06
	.byte		        An4 , v112
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , En5 , v112
	.byte	W06
	.byte		        En5 , v076
	.byte	W06
	.byte		        An4 , v112
	.byte	W06
	.byte		        An4 , v076
	.byte		N18   , An5 , v112
	.byte	W18
	.byte		N06   , An4
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03   , An3 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , An4
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , An5 , v112
	.byte	W06
	.byte		        An5 , v076
	.byte	W06
	.byte		        An4 , v112
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		        En5 , v112
	.byte	W06
	.byte		        En5 , v076
	.byte	W06
	.byte		        An4 , v112
	.byte	W06
	.byte		N18   , An5
	.byte	W06
	.byte		PAN   , c_v+32
	.byte	W12
	.byte		N06   , An4
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_dd_museum_4_001:
	.byte		VOICE , 29
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , En2 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Fs2
	.byte	W06
	.byte		N03   , Gs2
	.byte	W06
	.byte		N18   , An2
	.byte	W18
	.byte		        Cn3
	.byte	W18
	.byte		N12   , An2
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		        An2
	.byte	W12
	.byte		PEND
mus_dd_museum_4_002:
	.byte		N03   , Cn3 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , An2
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		N12   , An2
	.byte	W12
	.byte		N24   , Gn2
	.byte	W12
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte	W02
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-39
	.byte	W02
	.byte		        c_v+0
	.byte		N36
	.byte	W36
	.byte		PEND
mus_dd_museum_4_003:
	.byte		N03   , Fs2 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N18   , An2
	.byte	W18
	.byte		        Cn3
	.byte	W18
	.byte		N12   , An2
	.byte	W12
	.byte		        Fs2
	.byte	W12
	.byte		        An2
	.byte	W12
	.byte		PEND
	.byte	W06
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v+0
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N18   , Cn3
	.byte	W10
	.byte		BEND  , c_v-6
	.byte	W02
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v+0
	.byte		N18   , Bn2
	.byte	W18
	.byte		        An2
	.byte	W12
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-24
	.byte	W02
	.byte		        c_v+0
	.byte		N12   , Gn2
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
	.byte	PATT
	 .word	mus_dd_museum_4_001
	.byte	PATT
	 .word	mus_dd_museum_4_002
	.byte	PATT
	 .word	mus_dd_museum_4_003
	.byte	W06
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v+0
	.byte	W12
	.byte		N06   , An2 , v112
	.byte	W06
	.byte		N18   , Cn3
	.byte	W10
	.byte		BEND  , c_v-6
	.byte	W02
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v+0
	.byte		N36   , An2
	.byte	W30
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-24
	.byte	W02
	.byte		        c_v+0
	.byte		N12   , Gn2
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
	.byte	GOTO
	 .word	mus_dd_museum_4_000
	.byte		FINE

@**************** Track 5 ****************@

mus_dd_museum_5:
	.byte		KEYSH , mus_dd_museum_key+0
	.byte		VOICE , 82
	.byte		PAN   , c_v+0
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte	W96
mus_dd_museum_5_000:
	.byte		VOICE , 82
	.byte		VOL   , 35*mus_dd_museum_mvl/mxv
	.byte		N03   , Cn4 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , An4
	.byte	W12
	.byte		        An5
	.byte	W12
	.byte		        An4
	.byte	W12
	.byte		        En5
	.byte	W12
	.byte		        An4
	.byte	W06
	.byte		N18   , An5
	.byte	W06
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , An4
	.byte	W12
	.byte		N03   , Bn3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , An4
	.byte	W12
	.byte		        An5
	.byte	W12
	.byte		        An4
	.byte	W12
	.byte		        En5
	.byte	W06
	.byte		        An4
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12   , An5
	.byte	W06
	.byte		MOD   , 5
	.byte	W06
	.byte		        0
	.byte		N06   , An4
	.byte	W12
	.byte		N03   , An3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , An4
	.byte	W12
	.byte		        An5
	.byte	W12
	.byte		        An4
	.byte	W12
	.byte		N12   , En5
	.byte	W06
	.byte		MOD   , 5
	.byte	W06
	.byte		        0
	.byte		N06   , An4
	.byte	W12
	.byte		N12   , An5
	.byte	W06
	.byte		MOD   , 5
	.byte	W06
	.byte		        0
	.byte		N06   , An4
	.byte	W12
	.byte		N03   , Fn3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , An4
	.byte	W12
	.byte		        An5
	.byte	W12
	.byte		        An4
	.byte	W12
	.byte		VOICE , 83
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte		N03   , Cn4
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Dn4
	.byte	W06
	.byte		MOD   , 5
	.byte	W06
	.byte		VOICE , 82
	.byte		MOD   , 0
	.byte		VOL   , 35*mus_dd_museum_mvl/mxv
	.byte		N03   , En4
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , An4
	.byte	W12
	.byte		        An5
	.byte	W12
	.byte		        An4
	.byte	W12
	.byte		        En5
	.byte	W12
	.byte		        An4
	.byte	W06
	.byte		N18   , An5
	.byte	W06
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , An4
	.byte	W12
	.byte		N03   , Dn4
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , An4
	.byte	W12
	.byte		        An5
	.byte	W12
	.byte		        An4
	.byte	W12
	.byte		N03   , En5
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , An4
	.byte	W12
	.byte		N12   , An5
	.byte	W06
	.byte		MOD   , 5
	.byte	W06
	.byte		        0
	.byte		N06   , An4
	.byte	W12
	.byte		N03   , Cn4
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , An4
	.byte	W12
	.byte		        An5
	.byte	W12
	.byte		        An4
	.byte	W12
	.byte		        En5
	.byte	W12
	.byte		        An4
	.byte	W06
	.byte		N18   , An5
	.byte	W06
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , An4
	.byte	W12
	.byte		N03   , An3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , An4
	.byte	W12
	.byte		        An5
	.byte	W12
	.byte		        An4
	.byte	W12
	.byte		        En5
	.byte	W12
	.byte		        An4
	.byte	W06
	.byte		N18   , An5
	.byte	W06
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N12   , Bn5
	.byte	W06
	.byte		MOD   , 5
	.byte	W06
	.byte		VOICE , 83
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		N03   , An2
	.byte	W03
	.byte		        Bn2
	.byte	W03
	.byte		        Cn3
	.byte	W03
	.byte		        Dn3
	.byte	W03
	.byte		N36   , En3 , v120
	.byte	W15
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		        c_v+12
	.byte	W02
	.byte		        c_v+26
	.byte	W06
	.byte		MOD   , 5
	.byte	W07
	.byte		BEND  , c_v+21
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+5
	.byte	W02
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N12
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		N32   , En3
	.byte	W21
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-9
	.byte	W02
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v+0
	.byte		N03   , Ds3
	.byte	W03
	.byte		N60   , Dn3
	.byte	W24
	.byte		BEND  , c_v-2
	.byte	W06
	.byte		        c_v-3
	.byte	W06
	.byte		        c_v-4
	.byte	W06
	.byte		        c_v-5
	.byte	W06
	.byte		MOD   , 5
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-23
	.byte	W02
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-45
	.byte	W02
	.byte		MOD   , 0
	.byte		BEND  , c_v+1
	.byte	W12
	.byte		N03   , Gn2
	.byte	W03
	.byte		        An2
	.byte	W03
	.byte		        As2
	.byte	W03
	.byte		        Cn3
	.byte	W03
	.byte		N36   , Dn3
	.byte	W18
	.byte		BEND  , c_v+21
	.byte	W06
	.byte		MOD   , 5
	.byte	W06
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+1
	.byte	W02
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N12
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		        En3
	.byte	W06
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v+0
	.byte		N06   , Fn2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		N18   , En3
	.byte	W10
	.byte		BEND  , c_v-6
	.byte	W02
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v+0
	.byte		N18   , Dn3
	.byte	W18
	.byte		        Gn3
	.byte	W12
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-24
	.byte	W02
	.byte		        c_v+0
	.byte		N12   , Dn3
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-56
	.byte	W02
	.byte		VOICE , 83
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N03   , En2 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Fs2
	.byte	W06
	.byte		N03   , Gs2
	.byte	W06
	.byte		N18   , An2
	.byte	W18
	.byte		        Cn3
	.byte	W18
	.byte		N12   , An2
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		        An2
	.byte	W12
	.byte		N03   , Cn3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , An2
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		N12   , An2
	.byte	W12
	.byte		N24   , Gn2
	.byte	W12
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte	W02
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-39
	.byte	W02
	.byte		        c_v+0
	.byte		N36
	.byte	W24
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N03   , Fs2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N18   , An2
	.byte	W18
	.byte		        Cn3
	.byte	W18
	.byte		N12   , An2
	.byte	W12
	.byte		        Fs2
	.byte	W12
	.byte		        An2
	.byte	W12
	.byte		N12
	.byte	W06
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v+0
	.byte		N06   , Cn2
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		N18   , Cn3
	.byte	W10
	.byte		BEND  , c_v-6
	.byte	W02
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v+0
	.byte		N18   , Bn2
	.byte	W18
	.byte		        An2
	.byte	W12
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-24
	.byte	W02
	.byte		        c_v+0
	.byte		N12   , Gn2
	.byte	W12
	.byte		PAN   , c_v+0
	.byte	W96
	.byte		VOICE , 83
	.byte	W12
	.byte		N03   , An3
	.byte	W36
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W12
	.byte	W96
	.byte	W48
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W12
	.byte	W60
	.byte		N06   , Bn3
	.byte	W36
	.byte	W54
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W24
	.byte	W36
	.byte		        Dn4
	.byte	W60
	.byte	W36
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , En4
	.byte	W06
	.byte		N01   , Dn4
	.byte	W01
	.byte		        Cn4
	.byte	W01
	.byte		        As3
	.byte	W01
	.byte		        An3
	.byte	W01
	.byte		        Gn3
	.byte	W02
	.byte		        Fn3
	.byte	W01
	.byte		        En3
	.byte	W01
	.byte		        Dn3
	.byte	W10
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		N03   , An2
	.byte	W03
	.byte		        Bn2
	.byte	W03
	.byte		        Cn3
	.byte	W03
	.byte		        Dn3
	.byte	W03
	.byte		N36   , En3 , v120
	.byte	W15
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		        c_v+12
	.byte	W02
	.byte		        c_v+26
	.byte	W13
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+5
	.byte	W02
	.byte		        c_v+0
	.byte		N12
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		N32   , En3
	.byte	W21
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-9
	.byte	W02
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v+0
	.byte		N03   , Ds3
	.byte	W03
	.byte		N60   , Dn3
	.byte	W48
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-23
	.byte	W02
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-45
	.byte	W02
	.byte		        c_v+0
	.byte	W12
	.byte		N03   , Gn2
	.byte	W03
	.byte		        An2
	.byte	W03
	.byte		        As2
	.byte	W03
	.byte		        Cn3
	.byte	W03
	.byte		N36   , Dn3
	.byte	W18
	.byte		BEND  , c_v+21
	.byte	W12
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+1
	.byte	W02
	.byte		        c_v+0
	.byte		N12
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		        En3
	.byte	W06
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v+0
	.byte		N06   , Fn2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		N18   , En3
	.byte	W10
	.byte		BEND  , c_v-6
	.byte	W02
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v+0
	.byte		N18   , Dn3
	.byte	W18
	.byte		        Gn3
	.byte	W12
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-24
	.byte	W02
	.byte		        c_v+0
	.byte		N12   , Dn3
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-56
	.byte	W02
	.byte		VOICE , 83
	.byte		PAN   , c_v+0
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , En2 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Fs2
	.byte	W06
	.byte		N03   , Gs2
	.byte	W06
	.byte		N18   , An2
	.byte	W09
	.byte		MOD   , 7
	.byte	W09
	.byte		        0
	.byte		N18   , Cn3
	.byte	W18
	.byte		N12   , An2
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		        An2
	.byte	W12
	.byte		N03   , Cn3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , An2
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		N12   , An2
	.byte	W12
	.byte		N24   , Gn2
	.byte	W12
	.byte		MOD   , 5
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte	W02
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-39
	.byte	W02
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N36
	.byte	W24
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N03   , Fs2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N18   , An2
	.byte	W09
	.byte		MOD   , 7
	.byte	W09
	.byte		        0
	.byte		N18   , Cn3
	.byte	W18
	.byte		N12   , An2
	.byte	W12
	.byte		        Fs2
	.byte	W12
	.byte		        An2
	.byte	W12
	.byte		VOICE , 83
	.byte		N12
	.byte	W06
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v+0
	.byte		N06   , Cn2
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		N18   , Cn3
	.byte	W10
	.byte		BEND  , c_v-6
	.byte	W02
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v+0
	.byte		N36   , Bn2
	.byte	W24
	.byte		MOD   , 5
	.byte	W06
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-24
	.byte	W02
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N12   , As2
	.byte	W12
	.byte		VOICE , 83
	.byte		PAN   , c_v-1
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte		N36   , An2
	.byte	W12
	.byte		BEND  , c_v-5
	.byte	W12
	.byte		MOD   , 5
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		MOD   , 0
	.byte		N36   , Cn3
	.byte	W12
	.byte		BEND  , c_v-6
	.byte	W12
	.byte		MOD   , 5
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		MOD   , 0
	.byte		N24   , Dn3
	.byte	W18
	.byte		MOD   , 5
	.byte	W06
	.byte		        0
	.byte		N36   , En3
	.byte	W10
	.byte		BEND  , c_v-6
	.byte	W14
	.byte		MOD   , 5
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		MOD   , 0
	.byte		N36   , Gn3
	.byte	W24
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N24   , Bn3
	.byte	W18
	.byte		MOD   , 5
	.byte	W06
	.byte		        0
	.byte		N36   , En4
	.byte	W24
	.byte		MOD   , 5
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-27
	.byte	W02
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-51
	.byte	W02
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N36   , Cn4
	.byte	W24
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N24   , An3
	.byte	W16
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		MOD   , 5
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-45
	.byte	W02
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N12   , Fn3
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		N36   , Cn3
	.byte	W24
	.byte		MOD   , 5
	.byte	W02
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-15
	.byte	W02
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-46
	.byte	W02
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N24   , Dn3
	.byte	W18
	.byte		MOD   , 5
	.byte	W06
	.byte		VOICE , 82
	.byte		MOD   , 0
	.byte		N36   , An2
	.byte	W24
	.byte		MOD   , 5
	.byte	W12
	.byte		N36   , Cn3
	.byte	W03
	.byte		MOD   , 0
	.byte	W21
	.byte		        5
	.byte	W12
	.byte		        0
	.byte		N24   , Dn3
	.byte	W18
	.byte		MOD   , 5
	.byte	W06
	.byte		        0
	.byte		N36   , En3
	.byte	W24
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N36   , An3
	.byte	W24
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N24   , Bn3
	.byte	W18
	.byte		MOD   , 5
	.byte	W06
	.byte		        0
	.byte		N36   , Cn4
	.byte	W24
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N36   , Dn4
	.byte	W24
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N24   , Cn4
	.byte	W18
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte		N12   , Dn4
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		N36   , Cn4
	.byte	W24
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N24   , Dn4
	.byte	W18
	.byte		MOD   , 5
	.byte	W06
	.byte		        0
	.byte		N36   , Bn3
	.byte	W24
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N60   , Gn3
	.byte	W48
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N36   , Bn3
	.byte	W24
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N36   , Gn3
	.byte	W24
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N12   , Bn3
	.byte	W12
	.byte		N60   , Dn4
	.byte	W12
	.byte	W36
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N48   , Bn3
	.byte	W36
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N48   , Cs4
	.byte	W36
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N48   , An3
	.byte	W36
	.byte		MOD   , 8
	.byte	W12
	.byte	GOTO
	 .word	mus_dd_museum_5_000
	.byte		FINE

@**************** Track 6 ****************@

mus_dd_museum_6:
	.byte		KEYSH , mus_dd_museum_key+0
	.byte		VOICE , 84
	.byte		LFOS  , 44
	.byte		XCMD  , 8 , 18
	.byte		        8
	.byte		        16
	.byte		BENDR , 12
	.byte		PAN   , c_v-64
	.byte		VOL   , 35*mus_dd_museum_mvl/mxv
	.byte	W84
	.byte		N06   , Gn3 , v112
	.byte	W06
	.byte		        Fn3
	.byte	W06
mus_dd_museum_6_000:
	.byte		VOICE , 84
	.byte		PAN   , c_v-64
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , En3 , v112
	.byte	W12
	.byte		N06   , En3 , v048
	.byte	W06
	.byte		N03   , En3 , v112
	.byte	W03
	.byte		N06   , En3 , v048
	.byte	W09
	.byte		N03   , En3 , v112
	.byte	W06
	.byte		N12   , Cn3
	.byte	W12
	.byte		N03   , En3
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N06   , En3 , v048
	.byte	W09
	.byte		N03   , En3 , v112
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N06   , En3 , v048
	.byte	W09
	.byte		N12   , An3 , v112
	.byte	W12
mus_dd_museum_6_001:
	.byte		N12   , En3 , v112
	.byte	W12
	.byte		N06   , En3 , v048
	.byte	W06
	.byte		N03   , En3 , v112
	.byte	W03
	.byte		N06   , En3 , v048
	.byte	W09
	.byte		N03   , En3 , v112
	.byte	W06
	.byte		N12   , Cn3
	.byte	W12
	.byte		N03   , En3
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N06   , En3 , v048
	.byte	W09
	.byte		N03   , En3 , v112
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N06   , En3 , v048
	.byte	W09
	.byte		N12   , Gn3 , v112
	.byte	W12
	.byte		PEND
	.byte		        En3
	.byte	W12
	.byte		N06   , En3 , v048
	.byte	W06
	.byte		N03   , En3 , v112
	.byte	W03
	.byte		N06   , En3 , v048
	.byte	W09
	.byte		N03   , En3 , v112
	.byte	W06
	.byte		N12   , Cn3
	.byte	W12
	.byte		N03   , En3
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N06   , En3 , v048
	.byte	W09
	.byte		N03   , En3 , v112
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N06   , En3 , v048
	.byte	W09
	.byte		N12   , Fs3 , v112
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		N06   , En3 , v048
	.byte	W06
	.byte		N03   , En3 , v112
	.byte	W03
	.byte		N06   , En3 , v048
	.byte	W09
	.byte		N03   , En3 , v112
	.byte	W06
	.byte		N12   , Cn3
	.byte	W12
	.byte		N03   , En3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Gn3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		N12   , En3
	.byte	W12
	.byte		N06   , En3 , v048
	.byte	W06
	.byte		N03   , En3 , v112
	.byte	W03
	.byte		N06   , En3 , v048
	.byte	W09
	.byte		N03   , En3 , v112
	.byte	W06
	.byte		N12   , Cn3
	.byte	W12
	.byte		N03   , En3
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N06   , En3 , v048
	.byte	W09
	.byte		N03   , En3 , v112
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N06   , En3 , v048
	.byte	W09
	.byte		N12   , An3 , v112
	.byte	W12
	.byte	PATT
	 .word	mus_dd_museum_6_001
	.byte		N12   , En3 , v112
	.byte	W12
	.byte		N06   , En3 , v048
	.byte	W06
	.byte		N03   , En3 , v112
	.byte	W03
	.byte		N06   , En3 , v060
	.byte	W09
	.byte		N03   , En3 , v112
	.byte	W06
	.byte		N12   , Cn3
	.byte	W12
	.byte		N03   , En3
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N06   , En3 , v048
	.byte	W09
	.byte		N03   , En3 , v112
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N06   , En3 , v048
	.byte	W09
	.byte		N12   , Fs3 , v112
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		N06   , En3 , v048
	.byte	W06
	.byte		N03   , En3 , v112
	.byte	W03
	.byte		N06   , En3 , v048
	.byte	W09
	.byte		N03   , En3 , v112
	.byte	W06
	.byte		N12   , Cn3
	.byte	W12
	.byte		N03   , En3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		VOICE , 81
	.byte		VOL   , 35*mus_dd_museum_mvl/mxv
	.byte		N12   , En3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		N36   , An4
	.byte	W36
	.byte		N06   , En4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		N12   , En3
	.byte	W12
	.byte		        An3
	.byte	W12
mus_dd_museum_6_002:
	.byte		N06   , Cn4 , v112
	.byte	W12
	.byte		        Dn3
	.byte	W06
	.byte		        Cn4
	.byte	W12
	.byte		        Dn3
	.byte	W06
	.byte		        Bn3
	.byte	W12
	.byte		        Dn3
	.byte	W06
	.byte		        Dn4
	.byte	W12
	.byte		        Dn3
	.byte	W06
	.byte		        Bn3
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		PEND
	.byte		N12
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		N36   , Fs4
	.byte	W36
	.byte		N06   , An3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		        An3
	.byte	W12
mus_dd_museum_6_003:
	.byte		N12   , An3 , v112
	.byte	W12
	.byte		N06   , Cn3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		N18   , Cn4
	.byte	W18
	.byte		N12   , Gn3
	.byte	W12
	.byte		N06   , Bn2
	.byte	W06
	.byte		N12   , Dn4
	.byte	W12
	.byte		N06   , Bn2
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		PEND
mus_dd_museum_6_004:
	.byte		PAN   , c_v-62
	.byte		VOL   , 35*mus_dd_museum_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N06   , An3 , v112
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cn5
	.byte	W06
	.byte		N03   , Dn5
	.byte	W06
	.byte		N06   , Cn5
	.byte	W06
	.byte		N03   , Bn4
	.byte	W06
	.byte		PAN   , c_v-61
	.byte		N06   , An4
	.byte	W06
	.byte		N03   , Bn4
	.byte	W06
	.byte		N06   , An4
	.byte	W06
	.byte		N03   , En4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , An4
	.byte	W06
	.byte		N03   , En4
	.byte	W06
	.byte		N06   , An4
	.byte	W06
	.byte		N03   , Bn4
	.byte	W06
	.byte		PEND
mus_dd_museum_6_005:
	.byte		PAN   , c_v-61
	.byte		N06   , Cn5 , v112
	.byte	W06
	.byte		N03   , Gn4
	.byte	W06
	.byte		N06   , En4
	.byte	W06
	.byte		N03   , Cn4
	.byte	W06
	.byte		N06   , En4
	.byte	W06
	.byte		N03   , Gn4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Dn5
	.byte	W06
	.byte		N03   , Bn4
	.byte	W06
	.byte		PAN   , c_v-62
	.byte		N06   , Gn4
	.byte	W06
	.byte		N03   , Dn4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Dn5
	.byte	W06
	.byte		N03   , Cn5
	.byte	W06
	.byte		PAN   , c_v-62
	.byte		N06   , Gn4
	.byte	W06
	.byte		N03   , En4
	.byte	W06
	.byte		N06   , Dn4
	.byte	W06
	.byte		N03   , Cn4
	.byte	W06
	.byte		PEND
mus_dd_museum_6_006:
	.byte		PAN   , c_v-62
	.byte		N06   , An3 , v112
	.byte	W06
	.byte		N03   , Dn4
	.byte	W06
	.byte		N06   , Fs4
	.byte	W06
	.byte		N03   , An4
	.byte	W06
	.byte		N06   , Cn5
	.byte	W06
	.byte		N03   , An4
	.byte	W06
	.byte		N06   , Fs4
	.byte	W06
	.byte		N03   , Dn4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Dn5
	.byte	W06
	.byte		N03   , An4
	.byte	W06
	.byte		N06   , Fs4
	.byte	W06
	.byte		N03   , Dn4
	.byte	W06
	.byte		PAN   , c_v-62
	.byte		N06   , Fs4
	.byte	W06
	.byte		N03   , Dn4
	.byte	W06
	.byte		N06   , An3
	.byte	W06
	.byte		N03   , Fs3
	.byte	W06
	.byte		PEND
	.byte		PAN   , c_v-61
	.byte		BEND  , c_v+2
	.byte		N12   , En4
	.byte	W12
	.byte		N06   , Fn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		N18   , En4
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W15
	.byte		N18   , Dn4
	.byte	W18
	.byte		PAN   , c_v-62
	.byte		N18   , Cn4
	.byte	W18
	.byte		N12   , Bn3
	.byte	W12
	.byte		VOICE , 88
	.byte		VOL   , 15*mus_dd_museum_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		TIE   , Bn2 , v096
	.byte	W02
	.byte		VOL   , 17*mus_dd_museum_mvl/mxv
	.byte	W06
	.byte		        17*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        18*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        19*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        21*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        24*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        27*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        29*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        30*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        34*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        37*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        40*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        44*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        47*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        50*mus_dd_museum_mvl/mxv
	.byte	W48
	.byte	W01
mus_dd_museum_6_007:
	.byte		VOL   , 45*mus_dd_museum_mvl/mxv
	.byte		MOD   , 5
	.byte	W02
	.byte		VOL   , 40*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        38*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        36*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        33*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        28*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        26*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        24*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        22*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        17*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        15*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        14*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        12*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        11*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        8*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        7*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		PEND
	.byte		EOT   , Bn2
	.byte		VOL   , 48*mus_dd_museum_mvl/mxv
	.byte		MOD   , 0
	.byte		N18   , An2 , v096
	.byte	W18
	.byte		        Bn2
	.byte	W18
	.byte		N12   , An2
	.byte	W12
mus_dd_museum_6_008:
	.byte		VOL   , 15*mus_dd_museum_mvl/mxv
	.byte		TIE   , Bn2 , v096
	.byte	W02
	.byte		VOL   , 17*mus_dd_museum_mvl/mxv
	.byte	W06
	.byte		        17*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        18*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        19*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        21*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        24*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        27*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        29*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        30*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        34*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        37*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        40*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        44*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        47*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        50*mus_dd_museum_mvl/mxv
	.byte	W48
	.byte	W01
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_museum_6_007
	.byte		EOT   , Bn2
	.byte		VOL   , 48*mus_dd_museum_mvl/mxv
	.byte		MOD   , 0
	.byte		N18   , An2 , v096
	.byte	W18
	.byte		        Bn2
	.byte	W18
	.byte		N12   , An2
	.byte	W12
	.byte	PATT
	 .word	mus_dd_museum_6_008
	.byte	PATT
	 .word	mus_dd_museum_6_007
	.byte		EOT   , Bn2
	.byte		VOL   , 48*mus_dd_museum_mvl/mxv
	.byte		MOD   , 0
	.byte		N18   , An2 , v096
	.byte	W18
	.byte		        Bn2
	.byte	W18
	.byte		N12   , An2
	.byte	W12
	.byte		VOL   , 15*mus_dd_museum_mvl/mxv
	.byte		N48   , Dn3
	.byte	W02
	.byte		VOL   , 17*mus_dd_museum_mvl/mxv
	.byte	W06
	.byte		        17*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        18*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        19*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        21*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        24*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        27*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        29*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        30*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        34*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        37*mus_dd_museum_mvl/mxv
	.byte	W01
	.byte		MOD   , 5
	.byte	W02
	.byte		VOL   , 40*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        44*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        47*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        50*mus_dd_museum_mvl/mxv
	.byte	W01
	.byte		MOD   , 0
	.byte		N48   , Bn2
	.byte	W36
	.byte		MOD   , 5
	.byte	W03
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        37*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        30*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        15*mus_dd_museum_mvl/mxv
	.byte		MOD   , 0
	.byte		N48   , Dn3
	.byte	W02
	.byte		VOL   , 17*mus_dd_museum_mvl/mxv
	.byte	W06
	.byte		        17*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        18*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        19*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        21*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        24*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        27*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        29*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        30*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        34*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        37*mus_dd_museum_mvl/mxv
	.byte	W01
	.byte		MOD   , 5
	.byte	W02
	.byte		VOL   , 40*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        44*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        47*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        50*mus_dd_museum_mvl/mxv
	.byte	W01
	.byte		MOD   , 0
	.byte		N18   , Gs2
	.byte	W18
	.byte		N06   , Bn2 , v112
	.byte	W06
	.byte		VOL   , 35*mus_dd_museum_mvl/mxv
	.byte		N06   , En3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		VOICE , 81
	.byte		N12   , En3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		N36   , An4
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N06   , En4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		N12   , En3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte	PATT
	 .word	mus_dd_museum_6_002
	.byte		N06   , Cn3 , v112
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		N36   , Fs4
	.byte	W36
	.byte		N06   , An3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte	PATT
	 .word	mus_dd_museum_6_003
	.byte	PATT
	 .word	mus_dd_museum_6_004
	.byte	PATT
	 .word	mus_dd_museum_6_005
	.byte	PATT
	 .word	mus_dd_museum_6_006
	.byte		VOICE , 88
	.byte		PAN   , c_v-61
	.byte		BEND  , c_v+1
	.byte		N12   , En4 , v112
	.byte	W12
	.byte		N06   , Fn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		N18   , En4
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W15
	.byte		N12   , Dn4
	.byte	W12
	.byte		N03   , Gn3
	.byte	W06
	.byte		PAN   , c_v-62
	.byte		N12   , Cn4
	.byte	W12
	.byte		N03   , Gn3
	.byte	W06
	.byte		N06   , Dn4
	.byte	W06
	.byte		N03   , Gn3
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N12   , En4
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		VOL   , 35*mus_dd_museum_mvl/mxv
	.byte		N12   , An3
	.byte	W12
	.byte		VOICE , 84
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N18
	.byte	W09
	.byte		MOD   , 6
	.byte	W09
	.byte		        0
	.byte		N06   , Gs3
	.byte	W06
	.byte		VOICE , 88
	.byte		VOL   , 35*mus_dd_museum_mvl/mxv
	.byte		N12   , Gn3
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		VOL   , 35*mus_dd_museum_mvl/mxv
	.byte		N12   , Cn3
	.byte	W12
	.byte		VOICE , 84
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte		N03   , Gn3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N18
	.byte	W09
	.byte		MOD   , 6
	.byte	W09
	.byte		        0
	.byte		N06   , En3
	.byte	W06
	.byte		VOICE , 88
	.byte		VOL   , 35*mus_dd_museum_mvl/mxv
	.byte		N12   , Fs3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		VOL   , 35*mus_dd_museum_mvl/mxv
	.byte		N12   , Cn4
	.byte	W12
	.byte		VOICE , 84
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte		N03   , Fs4
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N18
	.byte	W09
	.byte		MOD   , 6
	.byte	W09
	.byte		        0
	.byte		N06   , Dn4
	.byte	W06
	.byte		VOICE , 88
	.byte		VOL   , 35*mus_dd_museum_mvl/mxv
	.byte		N12   , En4
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		N06   , Fn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte		N06   , Gn3
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		VOICE , 81
	.byte		PAN   , c_v+0
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte		N03   , An4
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        Cn5
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , An4
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        Cn5
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , An4
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Cn5
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		        En5
	.byte	W06
	.byte		        An5
	.byte	W06
	.byte		        En5
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , Cn5
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        Cn5
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		        En5
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Cn5
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		        En5
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , Cn5
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , En5
	.byte	W06
	.byte		        Gn5
	.byte	W06
	.byte		        An5
	.byte	W06
	.byte		        Bn5
	.byte	W06
	.byte		        Cn6
	.byte	W06
	.byte		        An5
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , En5
	.byte	W06
	.byte		        Cn5
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , Fs5
	.byte	W06
	.byte		        En5
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Fs5
	.byte	W06
	.byte		        En5
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , Fs5
	.byte	W06
	.byte		        En5
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Dn5
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , Fs4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        Cn5
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Cn5
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , Cn5
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , An4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , Bn4
	.byte	W06
	.byte		        En5
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , Dn5
	.byte	W06
	.byte		        Cn5
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Dn5
	.byte	W06
	.byte		        Cn5
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , Dn5
	.byte	W06
	.byte		        Cn5
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Bn4
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		        Cn5
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , An4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        En5
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , En5
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , En5
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Bn4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , En5
	.byte	W06
	.byte		        Gn5
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , An5
	.byte	W06
	.byte		        Gs5
	.byte	W06
	.byte		        En5
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , An5
	.byte	W06
	.byte		        Gs5
	.byte	W06
	.byte		        En5
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , An5
	.byte	W06
	.byte		        Gs5
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , En5
	.byte	W06
	.byte		        An5
	.byte	W06
	.byte		        Gs5
	.byte	W06
	.byte		        En5
	.byte	W06
	.byte		        An5
	.byte	W06
	.byte		        Gs5
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , En5
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte		N03   , An5
	.byte	W06
	.byte		        Gs5
	.byte	W06
	.byte		        En5
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Dn5
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , An4
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , An4
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , Cs5
	.byte	W06
	.byte		        En5
	.byte	W06
	.byte	GOTO
	 .word	mus_dd_museum_6_000
	.byte		FINE

@**************** Track 7 ****************@

mus_dd_museum_7:
	.byte		KEYSH , mus_dd_museum_key+0
	.byte		VOICE , 87
	.byte		LFOS  , 44
	.byte		XCMD  , 8 , 18
	.byte		        8
	.byte		        16
	.byte		BENDR , 12
	.byte		PAN   , c_v+63
	.byte		VOL   , 35*mus_dd_museum_mvl/mxv
	.byte	W84
	.byte		N06   , Cn4 , v112
	.byte	W06
	.byte		        Bn3
	.byte	W06
mus_dd_museum_7_000:
	.byte		VOICE , 87
	.byte		PAN   , c_v+63
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , An3 , v112
	.byte	W12
	.byte		N06   , An3 , v048
	.byte	W06
	.byte		N03   , An3 , v112
	.byte	W03
	.byte		N06   , An3 , v048
	.byte	W09
	.byte		N03   , An3 , v112
	.byte	W06
	.byte		N12   , En3
	.byte	W12
	.byte		N03   , An3
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N06   , An3 , v048
	.byte	W09
	.byte		N03   , An3 , v112
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N06   , An3 , v048
	.byte	W09
	.byte		N12   , Cn4 , v112
	.byte	W12
mus_dd_museum_7_001:
	.byte		N12   , Gn3 , v112
	.byte	W12
	.byte		N06   , Gn3 , v048
	.byte	W06
	.byte		N03   , Gn3 , v112
	.byte	W03
	.byte		N06   , Gn3 , v048
	.byte	W09
	.byte		N03   , Gn3 , v112
	.byte	W06
	.byte		N12   , En3
	.byte	W12
	.byte		N03   , Gn3
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N06   , Gn3 , v048
	.byte	W09
	.byte		N03   , Gn3 , v112
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N06   , Gn3 , v048
	.byte	W09
	.byte		N12   , Cn4 , v112
	.byte	W12
	.byte		PEND
mus_dd_museum_7_002:
	.byte		N12   , Fs3 , v112
	.byte	W12
	.byte		N06   , Fs3 , v048
	.byte	W06
	.byte		N03   , Fs3 , v112
	.byte	W03
	.byte		N06   , Fs3 , v048
	.byte	W09
	.byte		N03   , Fs3 , v112
	.byte	W06
	.byte		N12   , En3
	.byte	W12
	.byte		N03   , Fs3
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N06   , Fs3 , v048
	.byte	W09
	.byte		N03   , Fs3 , v112
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N06   , Fs3 , v048
	.byte	W09
	.byte		N12   , Cn4 , v112
	.byte	W12
	.byte		PEND
	.byte		        Fn3
	.byte	W12
	.byte		N06   , Fn3 , v048
	.byte	W06
	.byte		N03   , Fn3 , v112
	.byte	W03
	.byte		N06   , Fn3 , v048
	.byte	W09
	.byte		N03   , Fn3 , v112
	.byte	W06
	.byte		N12   , En3
	.byte	W12
	.byte		N03   , Fn3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Cn4
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		N12   , An3
	.byte	W12
	.byte		N06   , An3 , v048
	.byte	W06
	.byte		N03   , An3 , v112
	.byte	W03
	.byte		N06   , An3 , v048
	.byte	W09
	.byte		N03   , An3 , v112
	.byte	W06
	.byte		N12   , En3
	.byte	W12
	.byte		N03   , An3
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N06   , An3 , v048
	.byte	W09
	.byte		N03   , An3 , v112
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N06   , An3 , v048
	.byte	W09
	.byte		N12   , Cn4 , v112
	.byte	W12
	.byte	PATT
	 .word	mus_dd_museum_7_001
	.byte	PATT
	 .word	mus_dd_museum_7_002
	.byte		N12   , Fn3 , v112
	.byte	W12
	.byte		N06   , Fn3 , v048
	.byte	W06
	.byte		N03   , Fn3 , v112
	.byte	W03
	.byte		N06   , Fn3 , v048
	.byte	W09
	.byte		N03   , Fn3 , v112
	.byte	W06
	.byte		N12   , En3
	.byte	W12
	.byte		N03   , Fn3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Gn3
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		VOL   , 35*mus_dd_museum_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		N12   , Dn4
	.byte	W12
	.byte		N06   , Fn3
	.byte	W06
	.byte		N12   , Gn4
	.byte	W12
	.byte		N06   , Fn3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		VOICE , 80
	.byte		PAN   , c_v-62
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte		N06
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cn5
	.byte	W06
	.byte		N03   , Dn5
	.byte	W06
	.byte		N06   , Cn5
	.byte	W06
	.byte		N03   , Bn4
	.byte	W06
	.byte		PAN   , c_v-61
	.byte		N06   , An4
	.byte	W06
	.byte		N03   , Bn4
	.byte	W06
	.byte		N06   , An4
	.byte	W06
	.byte		N03   , En4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , An4
	.byte	W06
	.byte		N03   , En4
	.byte	W06
	.byte		N06   , An4
	.byte	W06
	.byte		N03   , Bn4
	.byte	W06
mus_dd_museum_7_003:
	.byte		PAN   , c_v-61
	.byte		N06   , Cn5 , v112
	.byte	W06
	.byte		N03   , Gn4
	.byte	W06
	.byte		N06   , En4
	.byte	W06
	.byte		N03   , Cn4
	.byte	W06
	.byte		N06   , En4
	.byte	W06
	.byte		N03   , Gn4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Dn5
	.byte	W06
	.byte		N03   , Bn4
	.byte	W06
	.byte		PAN   , c_v-62
	.byte		N06   , Gn4
	.byte	W06
	.byte		N03   , Dn4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Dn5
	.byte	W06
	.byte		N03   , Cn5
	.byte	W06
	.byte		PAN   , c_v-62
	.byte		N06   , Gn4
	.byte	W06
	.byte		N03   , En4
	.byte	W06
	.byte		N06   , Dn4
	.byte	W06
	.byte		N03   , Cn4
	.byte	W06
	.byte		PEND
mus_dd_museum_7_004:
	.byte		PAN   , c_v-62
	.byte		N06   , An3 , v112
	.byte	W06
	.byte		N03   , Dn4
	.byte	W06
	.byte		N06   , Fs4
	.byte	W06
	.byte		N03   , An4
	.byte	W06
	.byte		N06   , Cn5
	.byte	W06
	.byte		N03   , An4
	.byte	W06
	.byte		N06   , Fs4
	.byte	W06
	.byte		N03   , Dn4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Dn5
	.byte	W06
	.byte		N03   , An4
	.byte	W06
	.byte		N06   , Fs4
	.byte	W06
	.byte		N03   , Dn4
	.byte	W06
	.byte		PAN   , c_v-62
	.byte		N06   , Fs4
	.byte	W06
	.byte		N03   , Dn4
	.byte	W06
	.byte		N06   , An3
	.byte	W06
	.byte		N03   , Fs3
	.byte	W06
	.byte		PEND
	.byte		PAN   , c_v-61
	.byte		N12   , En4
	.byte	W12
	.byte		N06   , Fn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		N18   , En4
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W15
	.byte		N18   , Dn4
	.byte	W18
	.byte		PAN   , c_v-62
	.byte		N18   , Cn4
	.byte	W18
	.byte		N12   , Bn3
	.byte	W12
	.byte		VOICE , 86
	.byte		PAN   , c_v+63
	.byte		VOL   , 15*mus_dd_museum_mvl/mxv
	.byte		TIE   , An2 , v096
	.byte	W02
	.byte		VOL   , 17*mus_dd_museum_mvl/mxv
	.byte	W06
	.byte		        17*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        18*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        19*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        21*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        24*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        27*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        29*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        30*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        34*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        37*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        40*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        44*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        47*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        50*mus_dd_museum_mvl/mxv
	.byte	W48
	.byte	W01
mus_dd_museum_7_005:
	.byte		VOL   , 45*mus_dd_museum_mvl/mxv
	.byte		MOD   , 5
	.byte	W02
	.byte		VOL   , 40*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        38*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        36*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        33*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        28*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        26*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        24*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        22*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        17*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        15*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        14*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        12*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        11*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        8*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        7*mus_dd_museum_mvl/mxv
	.byte	W04
	.byte		PEND
	.byte		EOT   , An2
	.byte		VOL   , 48*mus_dd_museum_mvl/mxv
	.byte		MOD   , 0
	.byte		N18   , Fn2 , v096
	.byte	W18
	.byte		        An2
	.byte	W18
	.byte		N12   , Fn2
	.byte	W12
mus_dd_museum_7_006:
	.byte		VOL   , 15*mus_dd_museum_mvl/mxv
	.byte		TIE   , An2 , v096
	.byte	W02
	.byte		VOL   , 17*mus_dd_museum_mvl/mxv
	.byte	W06
	.byte		        17*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        18*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        19*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        21*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        24*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        27*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        29*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        30*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        34*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        37*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        40*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        44*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        47*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        50*mus_dd_museum_mvl/mxv
	.byte	W48
	.byte	W01
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_museum_7_005
	.byte		EOT   , An2
	.byte		VOL   , 48*mus_dd_museum_mvl/mxv
	.byte		MOD   , 0
	.byte		N18   , Fs2 , v096
	.byte	W18
	.byte		        An2
	.byte	W18
	.byte		N12   , Fs2
	.byte	W12
	.byte	PATT
	 .word	mus_dd_museum_7_006
	.byte	PATT
	 .word	mus_dd_museum_7_005
	.byte		EOT   , An2
	.byte		VOL   , 48*mus_dd_museum_mvl/mxv
	.byte		MOD   , 0
	.byte		N18   , Fn2 , v096
	.byte	W18
	.byte		        An2
	.byte	W18
	.byte		N12   , Fn2
	.byte	W12
	.byte		VOL   , 15*mus_dd_museum_mvl/mxv
	.byte		N48   , Bn2
	.byte	W02
	.byte		VOL   , 17*mus_dd_museum_mvl/mxv
	.byte	W06
	.byte		        17*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        18*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        19*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        21*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        24*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        27*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        29*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        30*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        34*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        37*mus_dd_museum_mvl/mxv
	.byte	W01
	.byte		MOD   , 5
	.byte	W02
	.byte		VOL   , 40*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        44*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        47*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        50*mus_dd_museum_mvl/mxv
	.byte	W01
	.byte		MOD   , 0
	.byte		N48   , Gs2
	.byte	W36
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 15*mus_dd_museum_mvl/mxv
	.byte		MOD   , 0
	.byte		N48   , Bn2
	.byte	W02
	.byte		VOL   , 17*mus_dd_museum_mvl/mxv
	.byte	W06
	.byte		        17*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        18*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        19*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        21*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        24*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        27*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        29*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        30*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        34*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        37*mus_dd_museum_mvl/mxv
	.byte	W01
	.byte		MOD   , 5
	.byte	W02
	.byte		VOL   , 40*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        44*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        47*mus_dd_museum_mvl/mxv
	.byte	W03
	.byte		        50*mus_dd_museum_mvl/mxv
	.byte	W01
	.byte		MOD   , 0
	.byte		N18   , En2
	.byte	W18
	.byte		N06   , Gs2 , v112
	.byte	W06
	.byte		VOL   , 35*mus_dd_museum_mvl/mxv
	.byte		N06   , Bn3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		VOICE , 80
	.byte		VOL   , 35*mus_dd_museum_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		N12   , Dn4
	.byte	W12
	.byte		N06   , Gn3
	.byte	W06
	.byte		N12   , Gn4
	.byte	W12
	.byte		N06   , Gn3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		PAN   , c_v-62
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte		N06   , An3
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cn5
	.byte	W06
	.byte		N03   , Dn5
	.byte	W06
	.byte		N06   , Cn5
	.byte	W06
	.byte		N03   , Bn4
	.byte	W06
	.byte		PAN   , c_v-61
	.byte		N06   , An4
	.byte	W06
	.byte		N03   , Bn4
	.byte	W06
	.byte		N06   , An4
	.byte	W06
	.byte		N03   , En4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , An4
	.byte	W06
	.byte		N03   , En4
	.byte	W06
	.byte		N06   , An4
	.byte	W06
	.byte		N03   , Bn4
	.byte	W06
	.byte	PATT
	 .word	mus_dd_museum_7_003
	.byte	PATT
	 .word	mus_dd_museum_7_004
	.byte		VOICE , 86
	.byte		PAN   , c_v-61
	.byte		N12   , En4 , v112
	.byte	W12
	.byte		N06   , Fn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		N18   , En4
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W15
	.byte		N12   , Dn4
	.byte	W12
	.byte		N03   , Gn3
	.byte	W06
	.byte		PAN   , c_v-62
	.byte		N12   , Cn4
	.byte	W12
	.byte		N03   , Gn3
	.byte	W06
	.byte		N06   , Dn4
	.byte	W06
	.byte		N03   , Gn3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N12   , En3
	.byte	W12
	.byte		        An2
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        Gn4
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		        An4
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        Fs4
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		        Fn3
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		        Fn3
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		VOICE , 80
	.byte		VOL   , 52*mus_dd_museum_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N24   , En2
	.byte	W24
	.byte		N06   , Cn2
	.byte	W12
	.byte		N24   , An2
	.byte	W24
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte		PAN   , c_v+63
	.byte		N03   , En4
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N18
	.byte	W06
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N06   , Dn4
	.byte	W06
	.byte		N24   , Cn4
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		VOL   , 52*mus_dd_museum_mvl/mxv
	.byte	W12
	.byte		N12   , En3
	.byte	W12
	.byte		N06   , Cn3
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte		N03   , Cn4
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		VOL   , 52*mus_dd_museum_mvl/mxv
	.byte		N03   , Cn3
	.byte	W06
	.byte		N24   , Gn3
	.byte	W24
	.byte		        An3
	.byte	W24
	.byte		N06   , En3
	.byte	W12
	.byte		N24   , Bn3
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte		N03   , An3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N18
	.byte	W06
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N06   , Fs3
	.byte	W06
	.byte		N12   , Bn3
	.byte	W12
	.byte		MOD   , 4
	.byte		N12   , En3
	.byte	W12
	.byte		MOD   , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 52*mus_dd_museum_mvl/mxv
	.byte		N12   , Cn4
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , En3
	.byte	W12
	.byte		N03   , Gn3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		N12   , Bn3
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		VOL   , 52*mus_dd_museum_mvl/mxv
	.byte		N24   , Gn3
	.byte	W24
	.byte		N06   , Bn2
	.byte	W12
	.byte		N24   , En3
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte		N03   , Dn4
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N18
	.byte	W06
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N06   , An3
	.byte	W06
	.byte		N24   , Bn3
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		VOL   , 52*mus_dd_museum_mvl/mxv
	.byte		N06   , Bn2
	.byte	W12
	.byte		N24   , En3
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte		N03   , Dn4
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N18
	.byte	W09
	.byte		MOD   , 4
	.byte	W09
	.byte		        0
	.byte		N06   , Bn3
	.byte	W06
	.byte		N72   , En4
	.byte	W12
	.byte		MOD   , 4
	.byte	W60
	.byte		        0
	.byte		N06   , An2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		VOL   , 52*mus_dd_museum_mvl/mxv
	.byte		N48   , En3
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N48   , Cs3
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte	GOTO
	 .word	mus_dd_museum_7_000
	.byte		FINE

@**************** Track 8 ****************@

mus_dd_museum_8:
	.byte		KEYSH , mus_dd_museum_key+0
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 66*mus_dd_museum_mvl/mxv
	.byte	W60
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N01   , Dn1 , v112
	.byte	W01
	.byte		N10
	.byte	W11
	.byte		N12   , Cn1 , v127
	.byte		N12   , Gn1 , v112
	.byte	W12
mus_dd_museum_8_000:
	.byte		N18   , Cn1 , v127
	.byte	W12
	.byte		N24   , Fn2 , v076
	.byte	W06
	.byte		N18   , Cn1 , v127
	.byte	W18
	.byte		N24
	.byte		N24   , Fn2 , v076
	.byte	W24
	.byte		N06   , Cn1 , v127
	.byte		N24   , Fn2 , v076
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte	W12
	.byte		N12   , Fn2 , v076
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N18
	.byte		N06   , Fn2 , v064
	.byte	W06
	.byte		        Fn2 , v048
	.byte	W06
	.byte		N24   , Fn2 , v076
	.byte	W06
	.byte		N18   , Cn1 , v127
	.byte	W18
	.byte		N24
	.byte		N24   , Fn2 , v076
	.byte	W24
	.byte		N12   , Cn1 , v127
	.byte		N24   , Fn2 , v076
	.byte	W12
	.byte		N18   , Dn1 , v112
	.byte	W12
	.byte		N24   , Fn2 , v076
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N18
	.byte	W12
	.byte		N24   , Fn2 , v076
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N18   , Cn1 , v127
	.byte		N24   , Fn2 , v076
	.byte	W18
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N12
	.byte		N24   , Fn2 , v076
	.byte	W12
	.byte		N18   , Dn1 , v112
	.byte	W12
	.byte		N24   , Fn2 , v076
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N18
	.byte	W12
	.byte		N24   , Fn2 , v076
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N12
	.byte		N12   , Fn2 , v076
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		N06   , Dn1 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N24   , Fn2 , v076
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N24   , Fn2 , v076
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N12
	.byte	W06
	.byte		N24   , Fn2 , v076
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte	W12
	.byte		N12   , Fn2 , v076
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N06
	.byte		N06   , Fn2 , v064
	.byte	W06
	.byte		N18   , Cn1 , v127
	.byte		N06   , Fn2 , v048
	.byte	W06
	.byte		N24   , Fn2 , v076
	.byte	W12
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N24   , Fn2 , v076
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte	W18
	.byte		N12   , Cn1 , v127
	.byte		N24   , Fn2 , v076
	.byte	W12
	.byte		N18   , Dn1 , v112
	.byte	W12
	.byte		N24   , Fn2 , v076
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N18
	.byte	W12
	.byte		N24   , Fn2 , v076
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N18   , Cn1 , v127
	.byte		N24   , Fn2 , v076
	.byte	W18
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N12
	.byte		N24   , Fn2 , v076
	.byte	W12
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06
	.byte		N24   , Fn2 , v076
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N18
	.byte	W12
	.byte		N24   , Fn2 , v076
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N12   , Fn2 , v076
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		N06   , Dn1 , v112
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte	W06
mus_dd_museum_8_001:
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte	W18
	.byte		N18
	.byte	W18
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_museum_8_001
	.byte	PATT
	 .word	mus_dd_museum_8_001
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		N06   , Dn2 , v112
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		N18   , Fn1
	.byte	W18
	.byte		N06   , Dn1
	.byte		N18   , Cs2
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W12
	.byte		        Dn1 , v112
	.byte		N18   , An2
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W12
	.byte		        Dn1 , v112
	.byte		N12   , Cs2
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte	PATT
	 .word	mus_dd_museum_8_001
	.byte	PATT
	 .word	mus_dd_museum_8_001
	.byte	PATT
	 .word	mus_dd_museum_8_001
mus_dd_museum_8_002:
	.byte		N24   , Dn1 , v112
	.byte		N24   , Cs2
	.byte	W36
	.byte		N06   , Dn1
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		        Dn2 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fn1
	.byte	W06
	.byte		PEND
	.byte		N24   , Cn1 , v127
	.byte	W24
	.byte		N24
	.byte	W24
	.byte		N24
	.byte	W24
	.byte		N18
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Dn2 , v112
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Bn1 , v112
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Dn2 , v112
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W24
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N18   , Gn1 , v112
	.byte	W06
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		N24   , Cn1 , v127
	.byte	W24
	.byte		N24
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		N18   , Cn1 , v127
	.byte		N24   , Cn3 , v064
	.byte	W18
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N12
	.byte		N48   , Bn2 , v092
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N18   , Cn1 , v127
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		N06   , Dn2 , v112
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		N18   , Cn1 , v127
	.byte	W12
	.byte		N12   , Bn1 , v112
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N24
	.byte	W06
	.byte		N06   , Dn2 , v112
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N18   , Gn1
	.byte	W06
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Bn1
	.byte	W06
	.byte		        Fn1
	.byte	W06
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N12   , En2 , v108
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte	W18
	.byte		N18
	.byte	W18
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte	PATT
	 .word	mus_dd_museum_8_001
	.byte	PATT
	 .word	mus_dd_museum_8_001
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		N06   , Dn2 , v112
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		N18   , Fn1
	.byte	W18
	.byte		N06   , Dn1
	.byte		N18   , Cs2
	.byte	W06
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		N06   , Dn1 , v112
	.byte		N18   , An2
	.byte	W06
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		N06   , Dn1 , v112
	.byte		N12   , Cs2
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte	PATT
	 .word	mus_dd_museum_8_001
	.byte	PATT
	 .word	mus_dd_museum_8_001
	.byte	PATT
	 .word	mus_dd_museum_8_001
	.byte	PATT
	 .word	mus_dd_museum_8_002
mus_dd_museum_8_003:
	.byte		N18   , Cn1 , v127
	.byte	W18
	.byte		N18
	.byte	W18
	.byte		N24
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		PEND
mus_dd_museum_8_004:
	.byte		N18   , Cn1 , v127
	.byte	W18
	.byte		N18
	.byte	W18
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Dn1 , v112
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		PEND
mus_dd_museum_8_005:
	.byte		N18   , Cn1 , v127
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N24   , Cn1 , v127
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		PEND
	.byte		N18
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte	PATT
	 .word	mus_dd_museum_8_003
	.byte	PATT
	 .word	mus_dd_museum_8_004
	.byte	PATT
	 .word	mus_dd_museum_8_005
	.byte		N18   , Cn1 , v127
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte	PATT
	 .word	mus_dd_museum_8_003
	.byte		N18   , Cn1 , v127
	.byte	W18
	.byte		N18
	.byte	W18
	.byte		N24
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte	W18
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		BEND  , c_v-2
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N24   , Cn1 , v127
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		N18
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte	GOTO
	 .word	mus_dd_museum_8_000
	.byte		FINE

@**************** Track 9 ****************@

mus_dd_museum_9:
	.byte		KEYSH , mus_dd_museum_key+0
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		XCMD  , 8 , 18
	.byte		        8
	.byte		        16
	.byte		BENDR , 12
	.byte		PAN   , c_v-1
	.byte		VOL   , 49*mus_dd_museum_mvl/mxv
	.byte	W12
	.byte		N01   , Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W18
	.byte		        Cn5 , v084
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W18
	.byte		        Cn5 , v100
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W30
mus_dd_museum_9_000:
	.byte		N01   , Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W24
	.byte		PEND
mus_dd_museum_9_001:
	.byte		N01   , Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W03
	.byte		        Cn5 , v048
	.byte	W03
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_museum_9_000
	.byte		N01   , Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W24
	.byte		N01
	.byte	W24
	.byte		N01
	.byte	W24
	.byte		N01
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W24
	.byte		N01
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte	PATT
	 .word	mus_dd_museum_9_001
	.byte	PATT
	 .word	mus_dd_museum_9_000
	.byte		N01   , Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W24
	.byte		N01
	.byte	W24
	.byte		N01
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
mus_dd_museum_9_002:
	.byte		N01   , Cn5 , v080
	.byte	W24
	.byte		N01
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W18
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W18
	.byte		        Cn5 , v080
	.byte	W24
	.byte		PEND
mus_dd_museum_9_003:
	.byte		N01   , Cn5 , v080
	.byte	W24
	.byte		N01
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W18
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W18
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_museum_9_002
mus_dd_museum_9_004:
	.byte	W12
	.byte		N01   , Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W30
	.byte		N01
	.byte	W18
	.byte		N01
	.byte	W18
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_museum_9_002
	.byte	PATT
	 .word	mus_dd_museum_9_003
	.byte	PATT
	 .word	mus_dd_museum_9_002
	.byte	W96
mus_dd_museum_9_005:
	.byte		N01   , Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W03
	.byte		        Cn5 , v048
	.byte	W03
	.byte		        Cn5 , v056
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		PEND
mus_dd_museum_9_006:
	.byte		N01   , Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W18
	.byte		        Cn5 , v056
	.byte	W03
	.byte		        Cn5 , v048
	.byte	W03
	.byte		        Cn5 , v056
	.byte	W18
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W18
	.byte		PEND
mus_dd_museum_9_007:
	.byte		N01   , Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W03
	.byte		        Cn5 , v048
	.byte	W03
	.byte		        Cn5 , v056
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W18
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_museum_9_006
	.byte	PATT
	 .word	mus_dd_museum_9_005
	.byte	PATT
	 .word	mus_dd_museum_9_006
	.byte	PATT
	 .word	mus_dd_museum_9_007
	.byte	PATT
	 .word	mus_dd_museum_9_006
	.byte	PATT
	 .word	mus_dd_museum_9_002
	.byte	PATT
	 .word	mus_dd_museum_9_003
	.byte	PATT
	 .word	mus_dd_museum_9_002
	.byte	PATT
	 .word	mus_dd_museum_9_004
	.byte	PATT
	 .word	mus_dd_museum_9_002
	.byte	PATT
	 .word	mus_dd_museum_9_003
	.byte	PATT
	 .word	mus_dd_museum_9_002
	.byte	W96
mus_dd_museum_9_008:
	.byte		N01   , Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		PEND
mus_dd_museum_9_009:
	.byte		N01   , Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W03
	.byte		        Cn5 , v048
	.byte	W03
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_museum_9_009
mus_dd_museum_9_010:
	.byte		N01   , Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W18
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W18
	.byte		        Cn5 , v080
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_museum_9_008
	.byte	PATT
	 .word	mus_dd_museum_9_009
	.byte	PATT
	 .word	mus_dd_museum_9_009
	.byte	PATT
	 .word	mus_dd_museum_9_010
	.byte	PATT
	 .word	mus_dd_museum_9_008
	.byte	PATT
	 .word	mus_dd_museum_9_009
	.byte	PATT
	 .word	mus_dd_museum_9_009
	.byte	PATT
	 .word	mus_dd_museum_9_010
	.byte	GOTO
	 .word	mus_dd_museum_9_000
	.byte		FINE

@**************** Track 10 ****************@

mus_dd_museum_10:
	.byte		KEYSH , mus_dd_museum_key+0
	.byte		VOICE , 126
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 44*mus_dd_museum_mvl/mxv
	.byte		PAN   , c_v-1
	.byte		N12   , Gn5 , v040
	.byte	W24
	.byte		        Gn5 , v048
	.byte	W24
	.byte		        Gn5 , v064
	.byte	W24
	.byte		        Gn5 , v080
	.byte	W24
mus_dd_museum_10_000:
	.byte	W84
	.byte		N12   , Gn5 , v064
	.byte	W12
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		        Gn5 , v080
	.byte	W24
	.byte		        Gn5 , v096
	.byte	W12
	.byte	W60
	.byte		        Gn5 , v064
	.byte	W36
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W36
mus_dd_museum_10_001:
	.byte	W12
	.byte		N12   , Gn5 , v064
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		PEND
mus_dd_museum_10_002:
	.byte	W12
	.byte		N12   , Gn5 , v064
	.byte	W24
	.byte		N12
	.byte	W48
	.byte		N12
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_museum_10_001
mus_dd_museum_10_003:
	.byte		N12   , Gn5 , v092
	.byte	W48
	.byte		        Gn5 , v072
	.byte	W18
	.byte		        Gn5 , v088
	.byte	W18
	.byte		        Gn5 , v096
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_museum_10_001
	.byte	PATT
	 .word	mus_dd_museum_10_002
	.byte	PATT
	 .word	mus_dd_museum_10_001
	.byte	W96
	.byte	W96
mus_dd_museum_10_004:
	.byte	W36
	.byte		N12   , Gn5 , v064
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		PEND
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	PATT
	 .word	mus_dd_museum_10_004
	.byte	W96
	.byte	PATT
	 .word	mus_dd_museum_10_004
	.byte	W84
	.byte		N12   , Gn5 , v064
	.byte	W12
	.byte	PATT
	 .word	mus_dd_museum_10_004
	.byte	PATT
	 .word	mus_dd_museum_10_001
	.byte	PATT
	 .word	mus_dd_museum_10_002
	.byte	PATT
	 .word	mus_dd_museum_10_001
	.byte	PATT
	 .word	mus_dd_museum_10_003
	.byte	PATT
	 .word	mus_dd_museum_10_001
	.byte	PATT
	 .word	mus_dd_museum_10_002
	.byte	PATT
	 .word	mus_dd_museum_10_001
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT
	 .word	mus_dd_museum_10_004
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT
	 .word	mus_dd_museum_10_004
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT
	 .word	mus_dd_museum_10_004
	.byte	GOTO
	 .word	mus_dd_museum_10_000
	.byte		FINE

@******************************************************@
	.align	2

mus_dd_museum:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_dd_museum_pri	@ Priority
	.byte	mus_dd_museum_rev	@ Reverb.

	.word	mus_dd_museum_grp

	.word	mus_dd_museum_1
	.word	mus_dd_museum_2
	.word	mus_dd_museum_3
	.word	mus_dd_museum_4
	.word	mus_dd_museum_5
	.word	mus_dd_museum_6
	.word	mus_dd_museum_7
	.word	mus_dd_museum_8
	.word	mus_dd_museum_9
	.word	mus_dd_museum_10

	.end
