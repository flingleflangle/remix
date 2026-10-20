	.include "MPlayDef.s"

	.equ	mus_dd_factory_grp, voicegroup_dd_factory
	.equ	mus_dd_factory_pri, 0
	.equ	mus_dd_factory_rev, 0x9e
	.equ	mus_dd_factory_mvl, 127
	.equ	mus_dd_factory_key, 0
	.equ	mus_dd_factory_tbs, 1
	.equ	mus_dd_factory_exg, 0
	.equ	mus_dd_factory_cmp, 1

	.section .rodata
	.global	mus_dd_factory
	.align	2

@**************** Track 1 ****************@

mus_dd_factory_1:
	.byte		KEYSH , mus_dd_factory_key+0
	.byte		TEMPO , 138*mus_dd_factory_tbs/2
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-32
	.byte		VOL   , 70*mus_dd_factory_mvl/mxv
	.byte	W48
	.byte	W96
mus_dd_factory_1_000:
	.byte		PAN   , c_v-32
	.byte	W96
	.byte		VOICE , 56
	.byte		PAN   , c_v-32
	.byte		MOD   , 0
	.byte		VOL   , 76*mus_dd_factory_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W06
	.byte		N03   , Gn4 , v112
	.byte	W03
	.byte		        Gn4 , v060
	.byte	W03
	.byte		        Gn4 , v112
	.byte	W03
	.byte		        Gn4 , v060
	.byte	W03
	.byte		        Gn4 , v112
	.byte	W03
	.byte		        Gn4 , v060
	.byte	W03
	.byte		        Gn4 , v112
	.byte	W03
	.byte		        Gn4 , v060
	.byte	W03
	.byte		        Gn4 , v112
	.byte	W03
	.byte		        Gn4 , v060
	.byte	W03
	.byte		N06   , Fn4 , v112
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		N03   , Gn4
	.byte	W03
	.byte		        Gn4 , v060
	.byte	W03
	.byte		        Gn4 , v112
	.byte	W03
	.byte		        Gn4 , v060
	.byte	W03
	.byte		N06   , Fn4 , v112
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		N03   , As4
	.byte	W03
	.byte		        As4 , v060
	.byte	W09
	.byte		N06   , As4 , v112
	.byte	W06
	.byte	W96
mus_dd_factory_1_001:
	.byte	W72
	.byte		N06   , Dn5 , v112
	.byte	W06
	.byte		N01   , Cs5 , v096
	.byte	W01
	.byte		        Bn4
	.byte	W01
	.byte		        As4 , v088
	.byte	W01
	.byte		        Gs4 , v084
	.byte	W01
	.byte		        Fs4
	.byte	W02
	.byte		        En4 , v080
	.byte	W01
	.byte		        Ds4 , v076
	.byte	W01
	.byte		        Cs4
	.byte	W10
	.byte		PEND
	.byte	W96
	.byte		VOL   , 76*mus_dd_factory_mvl/mxv
	.byte	W06
	.byte		N03   , As4 , v112
	.byte	W03
	.byte		        As4 , v060
	.byte	W03
	.byte		        As4 , v112
	.byte	W03
	.byte		        As4 , v060
	.byte	W03
	.byte		        As4 , v112
	.byte	W03
	.byte		        As4 , v060
	.byte	W03
	.byte		        As4 , v112
	.byte	W03
	.byte		        As4 , v060
	.byte	W03
	.byte		        As4 , v112
	.byte	W03
	.byte		        As4 , v060
	.byte	W03
	.byte		N06   , An4 , v112
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		N03   , As4
	.byte	W03
	.byte		        As4 , v060
	.byte	W03
	.byte		        As4 , v112
	.byte	W03
	.byte		        As4 , v060
	.byte	W03
	.byte		N06   , An4 , v112
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		N03   , Cn5
	.byte	W03
	.byte		        Cn5 , v060
	.byte	W09
	.byte		N06   , Cn5 , v112
	.byte	W06
	.byte		VOL   , 76*mus_dd_factory_mvl/mxv
	.byte	W96
	.byte	PATT
	 .word	mus_dd_factory_1_001
	.byte	W96
	.byte	W96
	.byte		VOL   , 76*mus_dd_factory_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		N03   , Gn3 , v127
	.byte	W06
	.byte		        Gn4
	.byte	W03
	.byte		N08   , Gn4 , v064
	.byte	W09
	.byte		N03   , Gn3 , v127
	.byte	W06
	.byte		N05   , Fs4 , v064
	.byte	W06
	.byte		N03   , Gn4 , v127
	.byte	W03
	.byte		N08   , Gn4 , v064
	.byte	W09
	.byte		N03   , Gn4 , v127
	.byte	W06
	.byte		N12   , As4
	.byte	W12
	.byte		        Gn4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		N06   , Fn4
	.byte	W06
	.byte		N03   , Dn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N05   , En4 , v064
	.byte	W09
	.byte		N06   , En4 , v127
	.byte	W06
	.byte		N11   , En4 , v064
	.byte	W24
	.byte		N06   , Fs4 , v127
	.byte	W06
	.byte		N02   , Gn4
	.byte	W03
	.byte		N06   , Gn4 , v064
	.byte	W09
	.byte		N03   , Gn4 , v127
	.byte	W03
	.byte		N06   , Gn4 , v064
	.byte	W24
	.byte	W03
	.byte		N03   , Gn3 , v127
	.byte	W06
	.byte		N06   , Gn4
	.byte	W06
	.byte		        Gn4 , v060
	.byte	W06
	.byte		        Gn4 , v127
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Gn4 , v060
	.byte	W06
	.byte		        Gn4 , v127
	.byte	W06
	.byte		N12   , As4
	.byte	W12
	.byte		        Gn4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		N06   , Fn4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		N03   , En4
	.byte	W03
	.byte		        En4 , v060
	.byte	W03
	.byte		        En4 , v127
	.byte	W03
	.byte		N09   , En4 , v060
	.byte	W09
	.byte		N06   , Cn4 , v127
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		N12   , Gn3
	.byte	W12
	.byte		VOL   , 76*mus_dd_factory_mvl/mxv
	.byte		N06   , Dn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Fs3 , v060
	.byte	W06
	.byte		        Gn3 , v127
	.byte	W06
	.byte		        Gn3 , v060
	.byte	W06
	.byte		        Gs3 , v127
	.byte	W06
	.byte		        Gs3 , v060
	.byte	W06
	.byte		        An3 , v127
	.byte	W06
	.byte		VOL   , 76*mus_dd_factory_mvl/mxv
	.byte	W96
	.byte		PAN   , c_v-32
	.byte	W06
	.byte		N03   , Gn4 , v112
	.byte	W03
	.byte		        Gn4 , v060
	.byte	W03
	.byte		        Gn4 , v112
	.byte	W03
	.byte		        Gn4 , v060
	.byte	W03
	.byte		        Gn4 , v112
	.byte	W03
	.byte		        Gn4 , v060
	.byte	W03
	.byte		N06   , Gn4 , v112
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		        As4 , v060
	.byte	W06
	.byte		        Gn4 , v112
	.byte	W06
	.byte		        Gn4 , v060
	.byte	W06
	.byte		        En4 , v112
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		N03   , As4
	.byte	W03
	.byte		        As4 , v060
	.byte	W09
	.byte		N06   , As4 , v112
	.byte	W06
	.byte	W96
	.byte	W54
	.byte		N03   , Dn5
	.byte	W03
	.byte		        Dn5 , v060
	.byte	W03
	.byte		        Dn5 , v112
	.byte	W03
	.byte		        Dn5 , v060
	.byte	W03
	.byte		        Dn5 , v112
	.byte	W03
	.byte		        Dn5 , v060
	.byte	W03
	.byte		N06   , Dn5 , v112
	.byte	W06
	.byte		N01   , Cs5 , v096
	.byte	W01
	.byte		        Bn4
	.byte	W01
	.byte		        As4 , v088
	.byte	W01
	.byte		        Gs4 , v084
	.byte	W01
	.byte		        Fs4
	.byte	W02
	.byte		        En4 , v080
	.byte	W01
	.byte		        Ds4 , v076
	.byte	W01
	.byte		        Cs4
	.byte	W10
	.byte	W96
	.byte		N03   , En4 , v112
	.byte	W03
	.byte		        En4 , v060
	.byte	W03
	.byte		N06   , As4 , v112
	.byte	W06
	.byte		N03   , En4
	.byte	W03
	.byte		        En4 , v060
	.byte	W03
	.byte		        Gn4 , v112
	.byte	W03
	.byte		        Gn4 , v060
	.byte	W03
	.byte		N06   , As4 , v112
	.byte	W06
	.byte		N03   , Gn4
	.byte	W03
	.byte		        Gn4 , v060
	.byte	W03
	.byte		        En4 , v112
	.byte	W03
	.byte		        En4 , v060
	.byte	W03
	.byte		N06   , Cn5 , v112
	.byte	W06
	.byte		N03   , As4
	.byte	W03
	.byte		        As4 , v060
	.byte	W03
	.byte		        Gn4 , v112
	.byte	W03
	.byte		        Gn4 , v060
	.byte	W03
	.byte		N06   , Cn5 , v112
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v112
	.byte	W06
	.byte		N03   , Dn5
	.byte	W03
	.byte		        Dn5 , v060
	.byte	W03
	.byte		        Dn5 , v112
	.byte	W03
	.byte		        Dn5 , v060
	.byte	W03
	.byte		N06   , Dn5 , v112
	.byte	W06
	.byte	W96
	.byte	W96
	.byte		VOICE , 21
	.byte		PAN   , c_v+31
	.byte		VOL   , 61*mus_dd_factory_mvl/mxv
	.byte		N36   , Gn4 , v084
	.byte	W36
	.byte		N06   , Fs4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Fs4
	.byte	W12
	.byte		N01   , Dn4
	.byte	W06
	.byte		N30   , Bn4
	.byte	W30
	.byte		N18   , Fs4
	.byte	W18
	.byte		        An4
	.byte	W18
	.byte		N12   , Fs4
	.byte	W12
	.byte		N06   , Fn4
	.byte	W12
	.byte		N01   , Bn3
	.byte	W06
	.byte		N18   , Gn4
	.byte	W18
	.byte		N12   , Fn4
	.byte	W12
	.byte		N36   , En4
	.byte	W36
	.byte		N06   , Dn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Fs4
	.byte	W12
	.byte		        Gn4
	.byte	W12
	.byte		        Gs4
	.byte	W06
	.byte		N18   , An4
	.byte	W18
	.byte		VOICE , 17
	.byte		PAN   , c_v-12
	.byte		N06   , An4 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N18   , Bn4
	.byte	W18
	.byte		VOICE , 24
	.byte		VOL   , 75*mus_dd_factory_mvl/mxv
	.byte		PAN   , c_v+37
	.byte		N06   , Bn3
	.byte	W06
	.byte		        Bn3 , v032
	.byte	W06
	.byte		        Bn3 , v112
	.byte	W06
	.byte		N12   , Bn3 , v032
	.byte	W12
	.byte		        Bn3 , v112
	.byte	W12
	.byte		        Bn3 , v036
	.byte	W12
	.byte		N06   , Bn3 , v112
	.byte	W06
	.byte		        Bn3 , v036
	.byte	W06
	.byte		        Bn3 , v112
	.byte	W06
	.byte		N12   , Bn3 , v036
	.byte	W12
	.byte		N06   , En4 , v112
	.byte	W06
	.byte		MOD   , 7
	.byte		N06   , An3
	.byte	W06
	.byte		MOD   , 0
	.byte		N06   , Bn3
	.byte	W06
	.byte		        Bn3 , v036
	.byte	W06
	.byte		        Bn3 , v112
	.byte	W06
	.byte		N12   , Bn3 , v036
	.byte	W12
	.byte		        Bn3 , v112
	.byte	W06
	.byte		MOD   , 7
	.byte	W06
	.byte		        0
	.byte		N12   , Bn3 , v036
	.byte	W12
	.byte		N06   , An3 , v112
	.byte	W06
	.byte		        An3 , v036
	.byte	W06
	.byte		        An3 , v112
	.byte	W06
	.byte		        An3 , v036
	.byte	W06
	.byte		        An3 , v112
	.byte	W06
	.byte		N12   , Cs4
	.byte	W12
	.byte		N06   , En4
	.byte	W06
	.byte		        En4 , v036
	.byte	W06
	.byte		        En4 , v112
	.byte	W06
	.byte		N12   , En4 , v036
	.byte	W12
	.byte		N06   , En4 , v112
	.byte	W06
	.byte		N12   , Cn4
	.byte	W06
	.byte		MOD   , 7
	.byte	W06
	.byte		        0
	.byte		N06   , Fs4
	.byte	W06
	.byte		        Fs4 , v036
	.byte	W06
	.byte		        Fs4 , v112
	.byte	W06
	.byte		N12   , Fs4 , v036
	.byte	W12
	.byte		N06   , Fs4 , v112
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Gn4 , v036
	.byte	W06
	.byte		        Gn4 , v112
	.byte	W06
	.byte		N12   , Gn4 , v036
	.byte	W12
	.byte		        Gn4 , v112
	.byte	W06
	.byte		MOD   , 7
	.byte	W06
	.byte		        0
	.byte		N06   , Gn4 , v036
	.byte	W06
	.byte		N18   , Ds4 , v112
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		        0
	.byte		N06   , As3
	.byte	W06
	.byte		N18   , Fs4
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		        0
	.byte		N06   , En4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Dn4 , v036
	.byte	W06
	.byte		        Dn4 , v112
	.byte	W06
	.byte		N12   , Dn4 , v036
	.byte	W12
	.byte		        Dn4 , v112
	.byte	W12
	.byte		        Dn4 , v036
	.byte	W12
	.byte		N06   , Dn4 , v112
	.byte	W06
	.byte		        Dn4 , v036
	.byte	W06
	.byte		        Dn4 , v112
	.byte	W06
	.byte		N12   , Dn4 , v036
	.byte	W12
	.byte		N06   , Gn4 , v096
	.byte	W06
	.byte		        Gn3 , v112
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Dn4 , v036
	.byte	W06
	.byte		        Dn4 , v112
	.byte	W06
	.byte		N12   , Dn4 , v036
	.byte	W12
	.byte		        Dn4 , v112
	.byte	W12
	.byte		        Dn4 , v036
	.byte	W12
	.byte		N06   , Cn4 , v112
	.byte	W06
	.byte		        Cn4 , v036
	.byte	W06
	.byte		        Cn4 , v112
	.byte	W06
	.byte		N12   , Cn4 , v036
	.byte	W12
	.byte		N06   , En4 , v112
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Gn4 , v036
	.byte	W06
	.byte		        Gn4 , v112
	.byte	W06
	.byte		N12   , Gn4 , v036
	.byte	W12
	.byte		N06   , Gn4 , v112
	.byte	W06
	.byte		N12   , En4
	.byte	W12
	.byte		N06   , An4
	.byte	W06
	.byte		        An4 , v036
	.byte	W06
	.byte		        An4 , v112
	.byte	W06
	.byte		N12   , An4 , v036
	.byte	W12
	.byte		N06   , An4 , v112
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		        As4 , v036
	.byte	W06
	.byte		        As4 , v112
	.byte	W06
	.byte		N12   , As4 , v036
	.byte	W12
	.byte		N06   , As4 , v112
	.byte	W06
	.byte		N12   , Gn4
	.byte	W12
	.byte		        Dn5 , v100
	.byte	W06
	.byte		MOD   , 7
	.byte	W06
	.byte		        0
	.byte		N12   , Cn5
	.byte	W06
	.byte		MOD   , 7
	.byte	W06
	.byte		        0
	.byte		N12   , Bn4
	.byte	W06
	.byte		MOD   , 7
	.byte	W06
	.byte		        0
	.byte		N12   , Dn5
	.byte	W06
	.byte		MOD   , 7
	.byte	W06
	.byte		        0
	.byte		N24   , Gn5 , v104
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		PAN   , c_v-48
	.byte		MOD   , 0
	.byte		N24   , Gn5 , v064
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		PAN   , c_v+48
	.byte		MOD   , 0
	.byte		N24   , Gn5 , v048
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		PAN   , c_v-48
	.byte		MOD   , 0
	.byte		N24   , Gn5 , v028
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte	GOTO
	 .word	mus_dd_factory_1_000
	.byte		FINE

@**************** Track 2 ****************@

mus_dd_factory_2:
	.byte		KEYSH , mus_dd_factory_key+0
	.byte		VOICE , 33
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		VOL   , 57*mus_dd_factory_mvl/mxv
	.byte	W48
	.byte		        68*mus_dd_factory_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , Gn1 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Dn2
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N06   , As1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Gn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , As1
	.byte	W06
	.byte		N03   , Gn1
	.byte	W06
mus_dd_factory_2_000:
	.byte		N06   , Gn1 , v112
	.byte	W12
	.byte		N03   , Gn2
	.byte	W06
	.byte		N06   , Gn1
	.byte	W06
	.byte		N12   , Gn2
	.byte	W12
	.byte		N06   , As1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Fn2
	.byte	W06
	.byte		N03   , Gn2
	.byte	W06
	.byte		N06   , Cn2
	.byte	W06
	.byte		N03   , Dn2
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , As1
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Gn2
	.byte	W06
	.byte		N03   , Gn1
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Dn2
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N06   , As1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Gn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , As1
	.byte	W06
	.byte		N03   , Gn1
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Gn2
	.byte	W12
	.byte		N06   , Gn1
	.byte	W06
	.byte		N12   , Gn2
	.byte	W12
	.byte		N06   , As1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Fn2
	.byte	W06
	.byte		N03   , Gn2
	.byte	W06
	.byte		N06   , Cn2
	.byte	W06
	.byte		N03   , Dn2
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , As1
	.byte	W06
	.byte		        An1
	.byte	W06
mus_dd_factory_2_001:
	.byte		N06   , Gn1 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Dn2
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N06   , As1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Gn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , As1
	.byte	W06
	.byte		N03   , Gn1
	.byte	W06
	.byte		PEND
mus_dd_factory_2_002:
	.byte		N06   , Cn2 , v112
	.byte	W06
	.byte		N03   , Gn2
	.byte	W12
	.byte		N06   , En2
	.byte	W06
	.byte		N12   , Cn3
	.byte	W12
	.byte		N06   , Gn2
	.byte	W06
	.byte		N03   , Cn2
	.byte	W06
	.byte		N06   , Fn2
	.byte	W06
	.byte		N03   , Gn2
	.byte	W06
	.byte		N06   , Ds2
	.byte	W06
	.byte		N03   , En2
	.byte	W06
	.byte		N06   , As1
	.byte	W06
	.byte		N03   , Cn2
	.byte	W06
	.byte		N06   , As1
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_factory_2_001
mus_dd_factory_2_003:
	.byte		N06   , Cn2 , v112
	.byte	W06
	.byte		N03   , Gn2
	.byte	W12
	.byte		N06   , En2
	.byte	W06
	.byte		N12   , Cn3
	.byte	W12
	.byte		N06   , Gn2
	.byte	W06
	.byte		N03   , Cn2
	.byte	W06
	.byte		N06   , As2
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		N06   , Fs2
	.byte	W06
	.byte		N03   , Gn2
	.byte	W06
	.byte		N06   , Ds2
	.byte	W06
	.byte		N03   , En2
	.byte	W06
	.byte		N06   , Gn1
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_factory_2_001
	.byte	PATT
	 .word	mus_dd_factory_2_002
	.byte	PATT
	 .word	mus_dd_factory_2_001
	.byte	PATT
	 .word	mus_dd_factory_2_003
	.byte		N06   , Gn2 , v112
	.byte	W06
	.byte		N12   , Gn1
	.byte	W12
	.byte		N06   , Gn2
	.byte	W06
	.byte		N12   , Gn1
	.byte	W12
	.byte		N06   , Gn2
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		        Dn2
	.byte	W06
	.byte		        En2
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		N12   , Cn2
	.byte	W12
	.byte		N06   , Cn3
	.byte	W06
	.byte		N12   , Cn2
	.byte	W12
	.byte		N06   , Cn3
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		        En2
	.byte	W06
	.byte		N12   , Cn2
	.byte	W12
	.byte		N06   , Bn1
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		        En1
	.byte	W06
	.byte		        Fs1
	.byte	W06
mus_dd_factory_2_004:
	.byte		N03   , Gn1 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Dn2
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Dn2
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		        Dn2
	.byte	W06
	.byte		N06   , Gn1
	.byte	W06
	.byte		N03   , Dn2
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		        Dn2
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		PEND
	.byte		        Cn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Bn1
	.byte	W06
	.byte		N03   , Cn2
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Cn3
	.byte	W06
	.byte		N03   , Dn3
	.byte	W06
	.byte		N06   , Cn3
	.byte	W06
	.byte		N03   , Gn2
	.byte	W06
	.byte	PATT
	 .word	mus_dd_factory_2_004
	.byte		N03   , Cn2 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Bn1
	.byte	W06
	.byte		N03   , Cn2
	.byte	W06
	.byte		N06   , Fn2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        Dn2
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		        Gs1
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte	PATT
	 .word	mus_dd_factory_2_001
	.byte	PATT
	 .word	mus_dd_factory_2_002
	.byte	PATT
	 .word	mus_dd_factory_2_001
	.byte	PATT
	 .word	mus_dd_factory_2_003
	.byte	PATT
	 .word	mus_dd_factory_2_001
	.byte	PATT
	 .word	mus_dd_factory_2_002
	.byte	PATT
	 .word	mus_dd_factory_2_001
	.byte		N18   , Cn3 , v112
	.byte	W18
	.byte		        Gn2
	.byte	W18
	.byte		N12   , En2
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		N06   , Bn1 , v127
	.byte	W06
	.byte		N12   , Fs2 , v112
	.byte	W12
	.byte		N06   , Fs1 , v127
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		        Cs2
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N15   , Cn2 , v112
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		N15   , Cn2
	.byte	W18
	.byte		N06   , Ds2
	.byte	W06
	.byte		N24   , An2
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte	W12
	.byte		N15   , Bn1
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		N15   , Bn1
	.byte	W18
	.byte		N06   , Fn2
	.byte	W06
	.byte		N24   , An2
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte	W12
	.byte		N15   , An1
	.byte	W18
	.byte		N06
	.byte	W18
	.byte		        Gn2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		N15   , En2
	.byte	W18
	.byte		N06   , Bn1
	.byte	W06
	.byte		N12   , En2
	.byte	W12
	.byte		N06   , Gn2
	.byte	W06
	.byte		        Gs2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N06   , Bn1
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		        En2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , En3
	.byte	W12
	.byte		N06   , En2
	.byte	W06
	.byte		N12   , Ds2
	.byte	W18
	.byte		N06   , Ds3
	.byte	W06
	.byte		N12   , Ds2
	.byte	W12
	.byte		N06   , Fs2
	.byte	W06
	.byte		N12   , An2
	.byte	W12
	.byte		N06   , Dn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Dn3
	.byte	W12
	.byte		N06   , Dn2
	.byte	W06
	.byte		N12   , Cs2
	.byte	W18
	.byte		N06   , Cs3
	.byte	W06
	.byte		N12   , Cs2
	.byte	W12
	.byte		N06   , Gn2
	.byte	W12
	.byte		        An2
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , An2
	.byte	W06
	.byte		N06   , En2
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Bn2
	.byte	W06
	.byte		N06   , Fs2
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Cn3
	.byte	W06
	.byte		N06   , As2
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		N03   , Gn2
	.byte	W06
	.byte		N12   , Cn3
	.byte	W12
	.byte		        Dn2
	.byte	W12
	.byte		N06   , Dn3
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Gn2
	.byte	W12
	.byte		N06   , Gn1
	.byte	W06
	.byte		N12   , Fs1
	.byte	W18
	.byte		N06   , Fs2
	.byte	W06
	.byte		N12   , Fs1
	.byte	W12
	.byte		N06   , An1
	.byte	W06
	.byte		N12   , Dn2
	.byte	W12
	.byte		N06   , Fn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Fn2
	.byte	W12
	.byte		N06   , Fn1
	.byte	W06
	.byte		N12   , En1
	.byte	W18
	.byte		N06   , En2
	.byte	W06
	.byte		N12   , En1
	.byte	W12
	.byte		N06   , Gn1
	.byte	W12
	.byte		        Cn2
	.byte	W06
	.byte		VOL   , 63*mus_dd_factory_mvl/mxv
	.byte		N06   , Cn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Cn2
	.byte	W06
	.byte		N06   , Gn1
	.byte	W06
	.byte		N05   , Cn1
	.byte	W06
	.byte		N06   , Dn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Dn2
	.byte	W06
	.byte		N06   , An1
	.byte	W06
	.byte		        Dn1
	.byte	W06
	.byte		        Ds1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Ds2
	.byte	W06
	.byte		N06   , As1
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		VOL   , 62*mus_dd_factory_mvl/mxv
	.byte		N06   , Fn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		N03   , Fn2
	.byte	W06
	.byte		N06   , Cn2
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte	PATT
	 .word	mus_dd_factory_2_001
	.byte	GOTO
	 .word	mus_dd_factory_2_000
	.byte		FINE

@**************** Track 3 ****************@

mus_dd_factory_3:
	.byte		KEYSH , mus_dd_factory_key+0
	.byte		VOICE , 30
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 70*mus_dd_factory_mvl/mxv
	.byte		PAN   , c_v+45
	.byte		BEND  , c_v+0
	.byte	W48
	.byte		VOL   , 76*mus_dd_factory_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		BEND  , c_v+0
	.byte		N15   , Fn2 , v120
	.byte	W12
	.byte		BEND  , c_v+10
	.byte	W03
	.byte		N08   , Fn2 , v064
	.byte	W09
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N21   , Fn2
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		        c_v+10
	.byte	W03
	.byte		N08   , Fn2 , v064
	.byte	W09
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N12   , As1
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W06
mus_dd_factory_3_000:
	.byte		VOL   , 76*mus_dd_factory_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N24   , Fn2 , v112
	.byte	W18
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v112
	.byte	W06
	.byte		N12   , Fn2
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W06
	.byte		        c_v+0
	.byte		N09   , Cn3
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W03
	.byte		N03   , Cn3 , v060
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		N06   , As2 , v112
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		N03   , Fn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N12   , Ds2
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N18   , Fn2
	.byte	W12
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		N05   , Fn2 , v064
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N24   , Fn2
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		        c_v+10
	.byte	W06
	.byte		N05   , Fn2 , v064
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N12   , As1
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W06
	.byte		        c_v+0
	.byte		N24   , Fn2
	.byte	W18
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v112
	.byte	W06
	.byte		N12   , Fs1
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte		N12   , Cn3
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N06   , As2
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		N24   , As3
	.byte	W12
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-28
	.byte	W02
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-63
	.byte	W02
	.byte		VOICE , 30
	.byte		VOL   , 57*mus_dd_factory_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		BEND  , c_v+0
	.byte		N15   , Fn2
	.byte	W12
	.byte		BEND  , c_v+10
	.byte	W03
	.byte		N08   , Fn2 , v064
	.byte	W09
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N21   , Fn2
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		        c_v+10
	.byte	W03
	.byte		N08   , Fn2 , v064
	.byte	W09
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N12   , As1
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W06
mus_dd_factory_3_001:
	.byte		BEND  , c_v+0
	.byte		N21   , As2 , v112
	.byte	W18
	.byte		BEND  , c_v+10
	.byte	W03
	.byte		N02   , As2 , v064
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v112
	.byte	W06
	.byte		N12   , As2
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W06
	.byte		        c_v+0
	.byte		N09   , Cn3
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N06   , As2
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		N03   , Fn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N12   , Cn2
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		PEND
mus_dd_factory_3_002:
	.byte		BEND  , c_v+0
	.byte		N15   , Fn2 , v112
	.byte	W12
	.byte		BEND  , c_v+10
	.byte	W03
	.byte		N08   , Fn2 , v064
	.byte	W09
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N21   , Fn2
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		        c_v+10
	.byte	W03
	.byte		N08   , Fn2 , v064
	.byte	W09
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N12   , As1
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W06
	.byte		PEND
	.byte		        c_v+0
	.byte		N21   , As2
	.byte	W18
	.byte		BEND  , c_v+10
	.byte	W03
	.byte		N02   , As2 , v064
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v112
	.byte	W06
	.byte		N12   , As2
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte		N03   , En3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Fn3
	.byte	W12
	.byte		        Gn3
	.byte	W07
	.byte		BEND  , c_v-15
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-57
	.byte	W02
	.byte	PATT
	 .word	mus_dd_factory_3_002
	.byte		BEND  , c_v+0
	.byte		N21   , As2 , v112
	.byte	W18
	.byte		BEND  , c_v+10
	.byte	W03
	.byte		N02   , As2 , v064
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v112
	.byte	W06
	.byte		N12   , As2
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W06
	.byte		        c_v+0
	.byte		N09   , Cn3
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W03
	.byte		N03   , Cn3 , v060
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		N06   , As2 , v112
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		N03   , Fn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N12   , Cn2
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N15   , Fn2
	.byte	W12
	.byte		BEND  , c_v+10
	.byte	W03
	.byte		N05   , Fn2 , v064
	.byte	W09
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N21   , Fn2
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		        c_v+10
	.byte	W03
	.byte		N08   , Fn2 , v064
	.byte	W09
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N12   , As1
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W06
	.byte		        c_v+0
	.byte		N21   , As2
	.byte	W18
	.byte		BEND  , c_v+10
	.byte	W03
	.byte		N02   , As2 , v064
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v112
	.byte	W06
	.byte		N06   , Cn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Fn3
	.byte	W12
	.byte		        Gn3
	.byte	W07
	.byte		BEND  , c_v-15
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-57
	.byte	W02
	.byte		        c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		PAN   , c_v-41
	.byte		N24   , Dn3
	.byte	W03
	.byte		PAN   , c_v-28
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		PAN   , c_v-19
	.byte		BEND  , c_v-11
	.byte	W02
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		PAN   , c_v+14
	.byte		BEND  , c_v-28
	.byte	W02
	.byte		        c_v-30
	.byte	W01
	.byte		PAN   , c_v+22
	.byte		BEND  , c_v-35
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		PAN   , c_v+31
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-64
	.byte	W04
	.byte		PAN   , c_v-32
	.byte		BEND  , c_v+0
	.byte		N15   , Fn2
	.byte	W12
	.byte		BEND  , c_v+10
	.byte	W03
	.byte		N08   , Fn2 , v064
	.byte	W09
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N21   , Fn2
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		        c_v+10
	.byte	W03
	.byte		N08   , Fn2 , v064
	.byte	W09
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N12   , As1
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		BEND  , c_v+0
	.byte		N21   , As2
	.byte	W18
	.byte		BEND  , c_v+10
	.byte	W03
	.byte		N02   , As2 , v064
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v112
	.byte	W06
	.byte		N12   , As2
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W06
	.byte		        c_v+0
	.byte		N09   , Cn3
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N06   , As2
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		N03   , Fn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N12   , Cn2
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte	PATT
	 .word	mus_dd_factory_3_002
	.byte		BEND  , c_v+0
	.byte		N21   , As2 , v112
	.byte	W18
	.byte		BEND  , c_v+10
	.byte	W03
	.byte		N02   , As2 , v064
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v112
	.byte	W06
	.byte		N12   , As2
	.byte	W06
	.byte		BEND  , c_v+11
	.byte	W06
	.byte		        c_v+0
	.byte		N03   , En3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Fn3
	.byte	W12
	.byte		        Gn3
	.byte	W07
	.byte		BEND  , c_v-15
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-57
	.byte	W02
	.byte	PATT
	 .word	mus_dd_factory_3_002
	.byte	PATT
	 .word	mus_dd_factory_3_001
	.byte	PATT
	 .word	mus_dd_factory_3_002
	.byte		BEND  , c_v+0
	.byte		N21   , As2 , v112
	.byte	W18
	.byte		BEND  , c_v+10
	.byte	W03
	.byte		N02   , As2 , v064
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v112
	.byte	W06
	.byte		N12   , As2
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N03
	.byte	W06
	.byte		N12   , Bn2
	.byte	W12
	.byte		N03   , As2
	.byte	W06
	.byte		N12   , Ds3
	.byte	W12
	.byte		N03   , As2
	.byte	W06
	.byte		N06   , Fs3
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
	.byte		VOICE , 30
	.byte		VOL   , 76*mus_dd_factory_mvl/mxv
	.byte		PAN   , c_v+24
	.byte		BEND  , c_v+0
	.byte		N15   , Fn2
	.byte	W12
	.byte		BEND  , c_v+10
	.byte	W03
	.byte		N08   , Fn2 , v064
	.byte	W09
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N21   , Fn2
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		        c_v+10
	.byte	W03
	.byte		N08   , Fn2 , v064
	.byte	W09
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N12   , As1
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W06
	.byte	GOTO
	 .word	mus_dd_factory_3_000
	.byte		FINE

@**************** Track 4 ****************@

mus_dd_factory_4:
	.byte		KEYSH , mus_dd_factory_key+0
	.byte		VOICE , 31
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte		PAN   , c_v-26
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte	W48
	.byte	W96
mus_dd_factory_4_000:
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		VOICE , 31
	.byte	W24
	.byte		VOL   , 57*mus_dd_factory_mvl/mxv
	.byte		N24   , As3 , v048
	.byte	W06
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte	W03
	.byte		        43*mus_dd_factory_mvl/mxv
	.byte	W03
	.byte		        38*mus_dd_factory_mvl/mxv
	.byte	W03
	.byte		        31*mus_dd_factory_mvl/mxv
	.byte	W03
	.byte		        23*mus_dd_factory_mvl/mxv
	.byte	W03
	.byte		        16*mus_dd_factory_mvl/mxv
	.byte	W03
	.byte		        57*mus_dd_factory_mvl/mxv
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
	.byte		VOICE , 5
	.byte		VOL   , 35*mus_dd_factory_mvl/mxv
	.byte		PAN   , c_v-11
	.byte		N01   , Dn4 , v112
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N03   , Gn3
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N01   , Gn3
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N01   , En4
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N01   , Gn3
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		N02   , En4
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N05   , Fn4
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N05   , En4
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N03   , Gn3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N01   , Dn4
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N01   , Gn3
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N01   , En4
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N01   , Gn3
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		N05
	.byte	W54
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 17
	.byte		VOL   , 76*mus_dd_factory_mvl/mxv
	.byte		PAN   , c_v+16
	.byte	W72
	.byte		        c_v-48
	.byte		N02   , En3 , v127
	.byte	W02
	.byte		        Fs3
	.byte	W02
	.byte		        Gs3
	.byte	W02
	.byte		        An3
	.byte	W02
	.byte		        Bn3
	.byte	W01
	.byte		PAN   , c_v-41
	.byte	W01
	.byte		N02   , Cn4
	.byte	W02
	.byte		PAN   , c_v-33
	.byte		N02   , Dn4
	.byte	W02
	.byte		        En4
	.byte	W01
	.byte		PAN   , c_v+31
	.byte	W01
	.byte		N02   , Fs4 , v112
	.byte	W02
	.byte		PAN   , c_v+41
	.byte		N02   , Gn4 , v096
	.byte	W02
	.byte		        An4
	.byte	W02
	.byte		        As4
	.byte	W02
	.byte		PAN   , c_v-45
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 29
	.byte		VOL   , 56*mus_dd_factory_mvl/mxv
	.byte		PAN   , c_v-26
	.byte		BEND  , c_v+0
	.byte		N06   , Bn2 , v100
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		N30   , Gn3
	.byte	W30
	.byte		N06   , An3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		N12   , Gn3
	.byte	W12
	.byte		N06   , En3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		N30   , Gn3
	.byte	W06
	.byte		BEND  , c_v-6
	.byte	W06
	.byte		        c_v+0
	.byte	W18
	.byte		N06   , Bn3
	.byte	W12
	.byte		        Gn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		N03   , Fs3
	.byte	W03
	.byte		        En3
	.byte	W03
	.byte		N12
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		        En3
	.byte	W04
	.byte		BEND  , c_v-11
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-43
	.byte	W02
	.byte		        c_v+0
	.byte		N06   , Cn3
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		        Cn3
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		        Cn3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Dn3
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		        Dn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		N24   , Cn4
	.byte	W18
	.byte		BEND  , c_v-6
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
	.byte		N18   , An3
	.byte	W16
	.byte		BEND  , c_v-11
	.byte	W02
	.byte		        c_v-16
	.byte		N06   , Fs3
	.byte	W01
	.byte		BEND  , c_v-27
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-43
	.byte	W02
	.byte		        c_v+0
	.byte		N06   , Gn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		N30   , Dn4
	.byte	W21
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-10
	.byte	W02
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v+0
	.byte		N06   , En4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		N12   , Dn4
	.byte	W12
	.byte		N06   , Gn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		N30   , Bn3
	.byte	W06
	.byte		BEND  , c_v-6
	.byte	W06
	.byte		        c_v+0
	.byte	W18
	.byte		N06   , Dn4
	.byte	W12
	.byte		        Bn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		N03   , Bn3
	.byte	W03
	.byte		        An3
	.byte	W03
	.byte		N12   , Gn3
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		        An3
	.byte	W04
	.byte		BEND  , c_v-11
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-43
	.byte	W02
	.byte		VOL   , 57*mus_dd_factory_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , Cn3
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		        Cn3
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		        Cn3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Dn3
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		        Dn3
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N06   , Ds3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Ds3
	.byte	W12
	.byte		        Fn3
	.byte	W12
	.byte		        Gn3
	.byte	W06
	.byte		N12   , An3
	.byte	W12
	.byte		        Fn3
	.byte	W12
	.byte		N03   , Gn3 , v080
	.byte	W03
	.byte		        Gs3
	.byte	W03
	.byte		        An3 , v084
	.byte	W03
	.byte		        As3
	.byte	W03
	.byte		        Cn4
	.byte	W03
	.byte		        Cs4
	.byte	W03
	.byte		        Dn4 , v088
	.byte	W03
	.byte		        Ds4
	.byte	W03
	.byte		VOICE , 30
	.byte	W24
	.byte		N72   , Gn4 , v112
	.byte	W12
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte	W02
	.byte		        43*mus_dd_factory_mvl/mxv
	.byte	W04
	.byte		        40*mus_dd_factory_mvl/mxv
	.byte	W02
	.byte		        38*mus_dd_factory_mvl/mxv
	.byte	W04
	.byte		        35*mus_dd_factory_mvl/mxv
	.byte	W02
	.byte		        31*mus_dd_factory_mvl/mxv
	.byte	W04
	.byte		        28*mus_dd_factory_mvl/mxv
	.byte	W02
	.byte		        23*mus_dd_factory_mvl/mxv
	.byte	W04
	.byte		        23*mus_dd_factory_mvl/mxv
	.byte	W02
	.byte		        19*mus_dd_factory_mvl/mxv
	.byte	W04
	.byte		        16*mus_dd_factory_mvl/mxv
	.byte	W02
	.byte		        14*mus_dd_factory_mvl/mxv
	.byte	W04
	.byte		        11*mus_dd_factory_mvl/mxv
	.byte	W02
	.byte		        9*mus_dd_factory_mvl/mxv
	.byte	W04
	.byte		        7*mus_dd_factory_mvl/mxv
	.byte	W02
	.byte		        4*mus_dd_factory_mvl/mxv
	.byte	W04
	.byte		        2*mus_dd_factory_mvl/mxv
	.byte	W12
	.byte	GOTO
	 .word	mus_dd_factory_4_000
	.byte		FINE

@**************** Track 5 ****************@

mus_dd_factory_5:
	.byte		KEYSH , mus_dd_factory_key+0
	.byte		VOICE , 30
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 76*mus_dd_factory_mvl/mxv
	.byte	W48
	.byte	W96
mus_dd_factory_5_000:
	.byte	W96
	.byte		PAN   , c_v+0
	.byte	W96
	.byte		        c_v+0
	.byte	W48
	.byte		VOICE , 29
	.byte	W24
	.byte		BEND  , c_v+0
	.byte		N12   , Fn2 , v127
	.byte	W12
	.byte		        Fs2
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N36   , Gn2
	.byte	W24
	.byte		BEND  , c_v-3
	.byte	W03
	.byte		        c_v-5
	.byte	W03
	.byte		        c_v-7
	.byte	W06
	.byte		        c_v+0
	.byte		N06   , An2
	.byte	W06
	.byte		N05   , An2 , v064
	.byte	W06
	.byte		N06   , As2 , v127
	.byte	W06
	.byte		N05   , As2 , v064
	.byte	W06
	.byte		N06   , Dn3 , v127
	.byte	W06
	.byte		N05   , Dn3 , v064
	.byte	W06
	.byte		N06   , Fn3 , v127
	.byte	W06
	.byte		N05   , Fn3 , v064
	.byte	W06
	.byte		N06   , En3 , v127
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N06   , Dn3
	.byte	W06
	.byte		N66   , En3
	.byte	W42
	.byte		BEND  , c_v-2
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v-10
	.byte	W03
	.byte		        c_v-11
	.byte	W03
	.byte		        c_v-14
	.byte	W03
	.byte		        c_v-17
	.byte	W03
	.byte		        c_v-22
	.byte	W03
	.byte		        c_v-26
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		BEND  , c_v-2
	.byte		N23   , En3 , v044
	.byte	W03
	.byte		BEND  , c_v-4
	.byte	W03
	.byte		        c_v-10
	.byte	W03
	.byte		        c_v-11
	.byte	W03
	.byte		        c_v-14
	.byte	W03
	.byte		        c_v-17
	.byte	W03
	.byte		        c_v-22
	.byte	W03
	.byte		        c_v-26
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N03   , Gn2 , v127
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Dn3
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		N05   , Gn2 , v064
	.byte	W06
	.byte		N06   , Cn3 , v127
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		N05   , Gn2 , v064
	.byte	W06
	.byte		N06   , As2 , v127
	.byte	W06
	.byte		N05   , As2 , v064
	.byte	W06
	.byte		N12   , Cn3 , v127
	.byte	W12
	.byte		N06   , As2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N18   , En3
	.byte	W18
	.byte		        Fn3
	.byte	W18
	.byte		N48   , Gn3
	.byte	W24
	.byte		VOL   , 67*mus_dd_factory_mvl/mxv
	.byte		BEND  , c_v-2
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		VOL   , 61*mus_dd_factory_mvl/mxv
	.byte		BEND  , c_v-6
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		VOL   , 57*mus_dd_factory_mvl/mxv
	.byte		BEND  , c_v-9
	.byte	W03
	.byte		        c_v-11
	.byte	W03
	.byte		VOL   , 52*mus_dd_factory_mvl/mxv
	.byte		BEND  , c_v-12
	.byte	W06
	.byte		VOL   , 76*mus_dd_factory_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , As2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		VOL   , 76*mus_dd_factory_mvl/mxv
	.byte		BEND  , c_v+2
	.byte		N36   , Gn2
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W30
	.byte		N06   , An2
	.byte	W06
	.byte		N05   , An2 , v064
	.byte	W06
	.byte		N06   , As2 , v127
	.byte	W06
	.byte		N05   , As2 , v064
	.byte	W06
	.byte		N06   , Cn3 , v127
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		N05   , Fn3 , v064
	.byte	W06
	.byte		N06   , Dn3 , v127
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N06   , Dn3
	.byte	W06
	.byte		N12   , En3
	.byte	W06
	.byte		BEND  , c_v-3
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v+0
	.byte		N06   , Gn3
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N48   , En3
	.byte	W36
	.byte		BEND  , c_v-6
	.byte	W03
	.byte		        c_v-10
	.byte	W03
	.byte		        c_v-13
	.byte	W03
	.byte		        c_v-21
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		BEND  , c_v+0
	.byte		N23   , En3 , v048
	.byte	W12
	.byte		BEND  , c_v-6
	.byte	W03
	.byte		        c_v-10
	.byte	W03
	.byte		        c_v-13
	.byte	W03
	.byte		        c_v-21
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N06   , Gn2 , v112
	.byte	W06
	.byte		N05   , Gn2 , v064
	.byte	W06
	.byte		N06   , As2 , v127
	.byte	W06
	.byte		N12   , Fn3
	.byte	W12
	.byte		N06   , Cn3
	.byte	W06
	.byte		N12   , En3
	.byte	W12
	.byte		N06   , Dn3
	.byte	W06
	.byte		N05   , Dn3 , v064
	.byte	W06
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		N05   , Gn2 , v064
	.byte	W06
	.byte		N06   , Cn3 , v127
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		N18   , En3
	.byte	W18
	.byte		        Fn3
	.byte	W18
	.byte		N48   , Gn3
	.byte	W36
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-35
	.byte	W02
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-49
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-57
	.byte	W02
	.byte		        c_v+0
	.byte		N06   , Fn3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		N24   , Gn3
	.byte	W12
	.byte		BEND  , c_v-2
	.byte	W03
	.byte		        c_v-3
	.byte	W03
	.byte		        c_v-5
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		BEND  , c_v+0
	.byte		N23   , Gn3 , v032
	.byte	W12
	.byte		BEND  , c_v-2
	.byte	W03
	.byte		        c_v-3
	.byte	W03
	.byte		        c_v-5
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N06   , Gn3 , v127
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		N24   , Cn3
	.byte	W06
	.byte		BEND  , c_v+1
	.byte	W03
	.byte		        c_v+0
	.byte	W15
	.byte		N24   , Dn3
	.byte	W15
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-8
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-48
	.byte	W02
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W92
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		N06   , Dn4 , v112
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Dn3 , v060
	.byte	W06
	.byte		        Ds3 , v112
	.byte	W06
	.byte		        Ds3 , v060
	.byte	W06
	.byte		        Fn3 , v112
	.byte	W06
	.byte		        Fn3 , v060
	.byte	W06
	.byte		        Fs3 , v112
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N36   , Gn2 , v127
	.byte	W24
	.byte		BEND  , c_v-3
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-11
	.byte	W03
	.byte		        c_v+0
	.byte		N06   , As2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Fn3
	.byte	W12
	.byte		        Dn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Gn3
	.byte	W12
	.byte		        En3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		N18   , En3
	.byte	W12
	.byte		BEND  , c_v+16
	.byte	W06
	.byte		        c_v+0
	.byte		N48
	.byte	W24
	.byte		BEND  , c_v-2
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-9
	.byte	W03
	.byte		        c_v-11
	.byte	W03
	.byte		        c_v-13
	.byte	W03
	.byte		        c_v-15
	.byte	W03
	.byte		        c_v-22
	.byte	W24
	.byte		        c_v+0
	.byte		N03   , Gn2
	.byte	W06
	.byte		N12   , Gn3
	.byte	W12
	.byte		N03   , Gn2
	.byte	W06
	.byte		N12   , Fn3
	.byte	W12
	.byte		N03   , Gn2
	.byte	W06
	.byte		N12   , En3
	.byte	W12
	.byte		N03   , Gn2
	.byte	W06
	.byte		N12   , Dn3
	.byte	W12
	.byte		N06   , Cn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N18   , En3
	.byte	W18
	.byte		        Fn3
	.byte	W18
	.byte		N48   , Gn3
	.byte	W32
	.byte	W01
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-44
	.byte	W02
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-62
	.byte	W02
	.byte		        c_v+0
	.byte		N06   , As2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		N18   , As2
	.byte	W18
	.byte		N06   , Gn2
	.byte	W06
	.byte		        As2
	.byte	W12
	.byte		        Cn3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Fn3
	.byte	W12
	.byte		        Dn3
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		N12   , En3
	.byte	W12
	.byte		N06   , Gn3
	.byte	W06
	.byte		N48   , En3
	.byte	W36
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-29
	.byte	W02
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-52
	.byte	W02
	.byte		        c_v+0
	.byte	W24
	.byte		N12   , Gn2
	.byte	W12
	.byte		N06   , Fn3
	.byte	W06
	.byte		N12   , Dn3
	.byte	W12
	.byte		N06   , En3
	.byte	W06
	.byte		N12   , Cs3
	.byte	W12
	.byte		N06   , Ds3
	.byte	W06
	.byte		N12   , Cn3
	.byte	W12
	.byte		N06   , Dn3
	.byte	W06
	.byte		N12   , Bn2
	.byte	W12
	.byte		N06   , Gn2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		N18   , En3 , v124
	.byte	W18
	.byte		        Fn3
	.byte	W18
	.byte		N12   , Gn3
	.byte	W12
	.byte		N18   , Fs3
	.byte	W18
	.byte		        Gn3
	.byte	W18
	.byte		N12   , An3
	.byte	W12
	.byte		VOICE , 48
	.byte		PAN   , c_v-8
	.byte		N36   , Bn4 , v096
	.byte	W24
	.byte		MOD   , 5
	.byte		BEND  , c_v-1
	.byte	W03
	.byte		        c_v-2
	.byte	W03
	.byte		        c_v-3
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N06   , An4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        An4
	.byte	W12
	.byte		N01   , Fs4
	.byte	W06
	.byte		N30   , Dn5
	.byte	W20
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-14
	.byte	W02
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-38
	.byte	W02
	.byte		        c_v-1
	.byte		N18   , Bn4
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W17
	.byte		N18   , Cn5
	.byte	W18
	.byte		N12   , Bn4
	.byte	W12
	.byte		N06   , An4
	.byte	W12
	.byte		N01   , Fn4
	.byte	W06
	.byte		N18   , Bn4
	.byte	W18
	.byte		N12   , An4
	.byte	W12
	.byte		N36   , Gn4
	.byte	W24
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , Fs4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        An4
	.byte	W12
	.byte		        Bn4
	.byte	W12
	.byte		        Cn5
	.byte	W06
	.byte		N18   , Cs5
	.byte	W08
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-17
	.byte	W02
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-49
	.byte	W02
	.byte		VOICE , 29
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N06   , Dn4 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N18   , Ds4
	.byte	W12
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-36
	.byte	W02
	.byte		VOICE , 29
	.byte		PAN   , c_v+8
	.byte		BEND  , c_v+0
	.byte		N06   , En3 , v100
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		N30   , Bn3
	.byte	W18
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , Cn4
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		N12   , Bn3
	.byte	W12
	.byte		N06   , Gn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		N30   , Bn3
	.byte	W06
	.byte		BEND  , c_v-6
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , En4
	.byte	W12
	.byte		        Bn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		N03   , Bn3
	.byte	W03
	.byte		        An3
	.byte	W03
	.byte		N12   , Gn3
	.byte	W12
	.byte		N06   , En3
	.byte	W06
	.byte		N18   , An3
	.byte	W10
	.byte		BEND  , c_v-11
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-43
	.byte	W02
mus_dd_factory_5_001:
	.byte		BEND  , c_v+0
	.byte		N06   , En3 , v100
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        En3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		        En3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Fs3
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		        Fs3
	.byte	W06
	.byte		PEND
	.byte		        Gn3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		N24   , Dn4
	.byte	W12
	.byte		VOL   , 72*mus_dd_factory_mvl/mxv
	.byte	W06
	.byte		        70*mus_dd_factory_mvl/mxv
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-27
	.byte	W02
	.byte		VOL   , 76*mus_dd_factory_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N24   , Cn4
	.byte	W16
	.byte		BEND  , c_v-11
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-43
	.byte	W02
	.byte		        c_v+0
	.byte		N06   , Bn3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		N30   , Gn4
	.byte	W12
	.byte		VOL   , 74*mus_dd_factory_mvl/mxv
	.byte	W06
	.byte		        70*mus_dd_factory_mvl/mxv
	.byte	W03
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-10
	.byte	W02
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		VOL   , 76*mus_dd_factory_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , An4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		N12   , Gn4
	.byte	W12
	.byte		N06   , Bn3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		N30   , Dn4
	.byte	W06
	.byte		BEND  , c_v-6
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , Gn4
	.byte	W12
	.byte		        Dn4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		N03   , Dn4
	.byte	W03
	.byte		        Cn4
	.byte	W03
	.byte		N12   , Bn3
	.byte	W12
	.byte		N06   , An3
	.byte	W06
	.byte		N18   , Cn4
	.byte	W10
	.byte		BEND  , c_v-11
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-43
	.byte	W02
	.byte	PATT
	 .word	mus_dd_factory_5_001
	.byte		BEND  , c_v+0
	.byte		N06   , Gn3 , v100
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Gn3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		        As3
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N12   , Dn4
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        Bn3 , v108
	.byte	W12
	.byte		N06   , Cn4
	.byte	W06
	.byte		N03   , En4 , v104
	.byte	W03
	.byte		        Fs4
	.byte	W03
	.byte		PAN   , c_v-8
	.byte		BEND  , c_v+0
	.byte		N24   , Gn4 , v112
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
	.byte		PAN   , c_v-48
	.byte		BEND  , c_v+0
	.byte		N24   , Gn4 , v068
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
	.byte		PAN   , c_v+48
	.byte		BEND  , c_v+0
	.byte		N24   , Gn4 , v052
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
	.byte		PAN   , c_v-48
	.byte		BEND  , c_v+0
	.byte		N24   , Gn4 , v036
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
	.byte	GOTO
	 .word	mus_dd_factory_5_000
	.byte		FINE

@**************** Track 6 ****************@

mus_dd_factory_6:
	.byte		KEYSH , mus_dd_factory_key+0
	.byte		VOICE , 81
	.byte		LFOS  , 44
	.byte		XCMD  , 8 , 18
	.byte		        8
	.byte		        16
	.byte		BENDR , 12
	.byte		PAN   , c_v-63
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte	W48
	.byte		MOD   , 0
	.byte		N06   , Gn1 , v112
	.byte	W12
	.byte		N03
	.byte	W30
	.byte		N06   , Gn2
	.byte	W12
	.byte		N03   , Dn2
	.byte	W06
	.byte		        Gn1
	.byte	W36
mus_dd_factory_6_000:
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte		N18   , Gn2 , v112
	.byte	W18
	.byte		N03   , Dn2
	.byte	W06
	.byte		        Gn1
	.byte	W12
	.byte		N12   , Gn2
	.byte	W12
	.byte		N09   , As2
	.byte	W18
	.byte		N06   , An2
	.byte	W06
	.byte		N03   , Fn2
	.byte	W12
	.byte		N12   , Fs2
	.byte	W12
	.byte		N06   , Gn1
	.byte	W12
	.byte		N03
	.byte	W30
	.byte		N06   , Gn2
	.byte	W12
	.byte		N03   , Dn2
	.byte	W06
	.byte		        Gn1
	.byte	W36
	.byte		N06   , Gn2
	.byte	W18
	.byte		N03   , Dn2
	.byte	W06
	.byte		        Gn1
	.byte	W12
	.byte		N12   , Gn2
	.byte	W12
	.byte		N09   , As2
	.byte	W18
	.byte		N06   , An2
	.byte	W06
	.byte		N03   , Fn2
	.byte	W12
	.byte		N12   , Fs2
	.byte	W12
	.byte		VOICE , 81
	.byte		PAN   , c_v-63
	.byte		VOL   , 57*mus_dd_factory_mvl/mxv
	.byte		N06   , Fn5
	.byte	W06
	.byte		N03   , Fn4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , En5
	.byte	W06
	.byte		N03   , Fn4
	.byte	W06
	.byte		PAN   , c_v-63
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Dn5
	.byte	W06
	.byte		N03   , Fn4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Cn5
	.byte	W06
	.byte		N03   , Fn4
	.byte	W06
	.byte		PAN   , c_v-63
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		VOICE , 82
	.byte		VOL   , 67*mus_dd_factory_mvl/mxv
	.byte	W06
	.byte		N03   , Cn4
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , As3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		N03   , Cn4
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , As3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		N03   , En4
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		VOICE , 81
	.byte		PAN   , c_v+0
	.byte		VOL   , 57*mus_dd_factory_mvl/mxv
	.byte		N03   , Gn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , As2
	.byte	W06
	.byte		        Dn2
	.byte	W06
	.byte		N03   , As2
	.byte	W06
	.byte		N06   , An2
	.byte	W06
	.byte		        Dn2
	.byte	W06
	.byte		N03   , Gn2
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12   , As2
	.byte	W12
	.byte		N06   , Gn2
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		        En2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		N18   , Cn3
	.byte	W18
	.byte		        En3
	.byte	W18
	.byte		N12   , Dn3
	.byte	W12
	.byte		N03   , Cn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		VOICE , 82
	.byte		VOL   , 57*mus_dd_factory_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		N06   , As4
	.byte	W06
	.byte		N01   , An4 , v096
	.byte	W01
	.byte		        Gn4
	.byte	W01
	.byte		        Fs4 , v088
	.byte	W01
	.byte		        En4 , v084
	.byte	W01
	.byte		        Dn4
	.byte	W02
	.byte		        Cn4 , v080
	.byte	W01
	.byte		        Bn3 , v076
	.byte	W01
	.byte		        An3
	.byte	W10
	.byte		VOICE , 81
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte		N06   , Gn5 , v127
	.byte	W06
	.byte		N03   , Gn4 , v112
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Fn5
	.byte	W06
	.byte		N03   , Gn4
	.byte	W06
	.byte		PAN   , c_v-63
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , En5
	.byte	W06
	.byte		N03   , Gn4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Dn5
	.byte	W06
	.byte		N03   , Gn4
	.byte	W06
	.byte		PAN   , c_v-63
	.byte	W06
	.byte		N03   , Gn3
	.byte	W06
	.byte		VOICE , 82
	.byte		VOL   , 57*mus_dd_factory_mvl/mxv
	.byte	W06
	.byte		N03   , En4
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Dn4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		N03   , En4
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Dn4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		N03   , Gn4
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		VOICE , 81
	.byte		PAN   , c_v+0
	.byte		VOL   , 56*mus_dd_factory_mvl/mxv
	.byte	W12
	.byte		N06   , Gn2
	.byte	W06
	.byte		N12   , Dn3
	.byte	W12
	.byte		N06   , An2
	.byte	W06
	.byte		N12   , Cn3
	.byte	W12
	.byte		N06   , As2
	.byte	W12
	.byte		N12   , Dn2
	.byte	W12
	.byte		N06   , Gn2
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		        En2
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		N18   , Cn3
	.byte	W18
	.byte		        En3
	.byte	W18
	.byte		        Gn2
	.byte	W18
	.byte		N12   , Cn3
	.byte	W12
	.byte		N06   , En3
	.byte	W06
	.byte		VOICE , 82
	.byte		VOL   , 57*mus_dd_factory_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		N06   , As4
	.byte	W06
	.byte		N01   , An4 , v096
	.byte	W01
	.byte		        Gn4
	.byte	W01
	.byte		        Fs4 , v088
	.byte	W01
	.byte		        En4 , v084
	.byte	W01
	.byte		        Dn4
	.byte	W02
	.byte		        Cn4 , v080
	.byte	W01
	.byte		        Bn3 , v076
	.byte	W01
	.byte		        An3
	.byte	W10
	.byte		VOICE , 81
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte		N03   , Dn4 , v112
	.byte	W12
	.byte		        As3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , Gn4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		N09   , Dn4
	.byte	W12
	.byte		PAN   , c_v-63
	.byte		N03   , As3
	.byte	W12
	.byte		        Gn3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , Fn3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		N06   , Fn4
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , En4
	.byte	W12
	.byte		        Cn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , Gn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		N09   , Cn4
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N03
	.byte	W12
	.byte		        Gn3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , Gn3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		N06   , En4
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		VOICE , 81
	.byte		VOL   , 57*mus_dd_factory_mvl/mxv
	.byte		PAN   , c_v-62
	.byte		N01   , As3
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N03   , Dn3
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N01   , Dn3
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N01   , Cn4
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N01   , En3
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N05   , Dn4
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N05   , Cn4
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N03   , Dn3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N01   , As3
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N01   , Dn3
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N01   , Cn4
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N01   , En3
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		VOICE , 81
	.byte		N03   , En4
	.byte	W06
	.byte		N06   , Fs3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N03   , En4
	.byte	W06
	.byte		N06   , Gn3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , En4
	.byte	W06
	.byte		N06   , Gs3
	.byte	W04
	.byte		PAN   , c_v-63
	.byte	W02
	.byte		N03   , En4
	.byte	W06
	.byte		N06   , An3
	.byte	W06
	.byte		VOL   , 57*mus_dd_factory_mvl/mxv
	.byte		N03   , Fn3
	.byte	W06
	.byte		N05   , Fn4
	.byte	W12
	.byte		N06   , As3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N05   , En4
	.byte	W06
	.byte		N03   , Fn3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N05   , Dn4
	.byte	W12
	.byte		N06   , Cn4
	.byte	W12
	.byte		        Gn3
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		N06   , As3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N05   , Cn4
	.byte	W06
	.byte		N06   , Dn4
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		VOICE , 82
	.byte		VOL   , 57*mus_dd_factory_mvl/mxv
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        En4
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        As3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		N03   , En4
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		VOICE , 81
	.byte		VOL   , 67*mus_dd_factory_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		N03   , Dn2
	.byte	W06
	.byte		N12   , Dn3
	.byte	W03
	.byte		MOD   , 7
	.byte	W09
	.byte		        0
	.byte		N03   , Dn2
	.byte	W06
	.byte		N12   , Cn3
	.byte	W03
	.byte		MOD   , 7
	.byte	W09
	.byte		        0
	.byte		N03   , Dn2
	.byte	W06
	.byte		N12   , As2
	.byte	W03
	.byte		MOD   , 7
	.byte	W09
	.byte		        0
	.byte		N03   , Dn2
	.byte	W06
	.byte		N12   , An2
	.byte	W03
	.byte		MOD   , 7
	.byte	W09
	.byte		        0
	.byte		N06   , Gn2
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		        Dn2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		N12   , Cn3
	.byte	W03
	.byte		MOD   , 7
	.byte	W09
	.byte		        0
	.byte		N06   , Gn2
	.byte	W06
	.byte		N12   , Dn3
	.byte	W03
	.byte		MOD   , 7
	.byte	W09
	.byte		        0
	.byte		N06   , Gn2
	.byte	W06
	.byte		N12   , En3
	.byte	W03
	.byte		MOD   , 7
	.byte	W09
	.byte		VOL   , 57*mus_dd_factory_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		MOD   , 0
	.byte		N03   , Cn4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		VOICE , 82
	.byte		N06   , As4
	.byte	W06
	.byte		N01   , An4 , v096
	.byte	W01
	.byte		        Gn4
	.byte	W01
	.byte		        Fs4 , v088
	.byte	W01
	.byte		        En4 , v084
	.byte	W01
	.byte		        Dn4
	.byte	W02
	.byte		        Cn4 , v080
	.byte	W01
	.byte		        Bn3 , v076
	.byte	W01
	.byte		        An3
	.byte	W10
	.byte		VOICE , 81
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte		N03   , Fn3 , v112
	.byte	W06
	.byte		N05   , Gn4
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Gn4 , v072
	.byte	W06
	.byte		N03   , Fn3 , v112
	.byte	W06
	.byte		N05   , Fn4
	.byte	W09
	.byte		N03   , Fn3
	.byte	W03
	.byte		PAN   , c_v-63
	.byte	W06
	.byte		N05   , En4
	.byte	W06
	.byte		N03   , Fn3
	.byte	W12
	.byte		N06   , Dn4
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		VOL   , 57*mus_dd_factory_mvl/mxv
	.byte		N06   , Cn4
	.byte	W06
	.byte		N05   , Dn4
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , As3
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		VOL   , 57*mus_dd_factory_mvl/mxv
	.byte		N03   , Cn4
	.byte	W06
	.byte		N06   , Gn4
	.byte	W06
	.byte		N03   , Cn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		N06   , Gn4
	.byte	W06
	.byte		N03   , En4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		N06   , As4
	.byte	W06
	.byte		N03   , Gn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		N06   , As4
	.byte	W12
	.byte		        An4
	.byte	W06
	.byte		N03   , As4
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		VOL   , 67*mus_dd_factory_mvl/mxv
	.byte		N06   , Dn2
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		MOD   , 7
	.byte		N12   , As2
	.byte	W09
	.byte		MOD   , 0
	.byte	W03
	.byte		N06   , Cn3
	.byte	W06
	.byte		N12   , An2
	.byte	W03
	.byte		MOD   , 7
	.byte	W09
	.byte		        0
	.byte		N06   , As2
	.byte	W06
	.byte		N12   , Gn2
	.byte	W03
	.byte		MOD   , 7
	.byte	W09
	.byte		        0
	.byte		N06   , An2
	.byte	W06
	.byte		N12   , Fs2
	.byte	W03
	.byte		MOD   , 7
	.byte	W09
	.byte		        0
	.byte		N06   , Dn2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		N12   , Cn3
	.byte	W03
	.byte		MOD   , 7
	.byte	W09
	.byte		        0
	.byte		N06   , Gn2
	.byte	W06
	.byte		N12   , Dn3
	.byte	W03
	.byte		MOD   , 7
	.byte	W09
	.byte		        0
	.byte		N06   , Gn2
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		N12   , Ds3
	.byte	W03
	.byte		MOD   , 7
	.byte	W09
	.byte		        0
	.byte		N06   , Bn2
	.byte	W06
	.byte		N12   , En3
	.byte	W03
	.byte		MOD   , 7
	.byte	W09
	.byte		        0
	.byte		N06   , Bn2
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		N48   , En3 , v096
	.byte	W12
	.byte		MOD   , 8
	.byte		VOL   , 33*mus_dd_factory_mvl/mxv
	.byte	W36
	.byte		MOD   , 0
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte		N24   , Ds3
	.byte	W12
	.byte		MOD   , 8
	.byte		VOL   , 33*mus_dd_factory_mvl/mxv
	.byte	W12
	.byte		N24   , An3 , v112
	.byte	W24
	.byte		MOD   , 0
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte		N48   , Dn3 , v096
	.byte	W12
	.byte		MOD   , 8
	.byte		VOL   , 33*mus_dd_factory_mvl/mxv
	.byte	W36
	.byte		MOD   , 0
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte		N24   , Fn3
	.byte	W12
	.byte		MOD   , 8
	.byte		VOL   , 33*mus_dd_factory_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte		N24   , An3
	.byte	W09
	.byte		MOD   , 8
	.byte	W03
	.byte		VOL   , 33*mus_dd_factory_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte		N24   , Cn3
	.byte	W12
	.byte		MOD   , 8
	.byte		VOL   , 33*mus_dd_factory_mvl/mxv
	.byte	W12
	.byte		N24   , Bn2 , v112
	.byte	W24
	.byte		MOD   , 0
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte		N24   , Gn3 , v096
	.byte	W12
	.byte		MOD   , 8
	.byte		VOL   , 33*mus_dd_factory_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte		N24   , En3
	.byte	W12
	.byte		MOD   , 8
	.byte		VOL   , 33*mus_dd_factory_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte		N06   , Dn4 , v112
	.byte	W06
	.byte		        Dn4 , v064
	.byte	W06
	.byte		        Dn4 , v112
	.byte	W06
	.byte		        Dn4 , v064
	.byte	W12
	.byte		        Dn4 , v112
	.byte	W06
	.byte		        Dn4 , v064
	.byte	W06
	.byte		        Dn4 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Dn4 , v064
	.byte	W06
	.byte		N03   , Dn4 , v112
	.byte	W03
	.byte		N06   , Dn4 , v064
	.byte	W09
	.byte		N03   , Dn4 , v112
	.byte	W06
	.byte		N18   , An3
	.byte	W18
	.byte		PAN   , c_v-64
	.byte		N06   , Gn3
	.byte	W06
	.byte		        Gn3 , v064
	.byte	W06
	.byte		        Gn3 , v112
	.byte	W06
	.byte		        Gn3 , v064
	.byte	W12
	.byte		N12   , Gn3 , v112
	.byte	W12
	.byte		N06   , Gn3 , v064
	.byte	W12
	.byte		        Fs3 , v112
	.byte	W06
	.byte		        Fs3 , v064
	.byte	W06
	.byte		        Fs3 , v112
	.byte	W06
	.byte		        Fs3 , v064
	.byte	W12
	.byte		N12   , Fs3 , v112
	.byte	W12
	.byte		N06   , Gn3
	.byte	W06
	.byte		        Gn3 , v064
	.byte	W06
	.byte		        Gn3 , v112
	.byte	W06
	.byte		        Gn3 , v064
	.byte	W12
	.byte		N12   , Gn3 , v112
	.byte	W12
	.byte		N06   , Gn3 , v064
	.byte	W12
	.byte		        En3 , v112
	.byte	W06
	.byte		        En3 , v064
	.byte	W06
	.byte		        En3 , v112
	.byte	W06
	.byte		        En3 , v064
	.byte	W06
	.byte		        En3 , v112
	.byte	W06
	.byte		N12   , Gn3
	.byte	W12
	.byte		N06   , Cn4
	.byte	W06
	.byte		        Cn4 , v064
	.byte	W06
	.byte		        Cn4 , v112
	.byte	W06
	.byte		        Cn4 , v064
	.byte	W12
	.byte		        Cn4 , v112
	.byte	W06
	.byte		N12   , An3
	.byte	W12
	.byte		N06   , Dn4
	.byte	W06
	.byte		        Dn4 , v064
	.byte	W06
	.byte		        Dn4 , v112
	.byte	W06
	.byte		        Dn4 , v064
	.byte	W12
	.byte		        Dn4 , v112
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Ds4 , v064
	.byte	W06
	.byte		        Ds4 , v112
	.byte	W06
	.byte		        Ds4 , v064
	.byte	W12
	.byte		N12   , Ds4 , v112
	.byte	W12
	.byte		N06   , Ds4 , v064
	.byte	W06
	.byte		N24   , Gn4 , v112
	.byte	W24
	.byte		        Fs4
	.byte	W24
	.byte		N06   , Bn3
	.byte	W06
	.byte		        Bn3 , v064
	.byte	W06
	.byte		        Bn3 , v112
	.byte	W06
	.byte		        Bn3 , v064
	.byte	W12
	.byte		N12   , Bn3 , v112
	.byte	W12
	.byte		N06   , Bn3 , v064
	.byte	W12
	.byte		        Bn3 , v112
	.byte	W06
	.byte		        Bn3 , v064
	.byte	W06
	.byte		        Bn3 , v112
	.byte	W06
	.byte		        Bn3 , v064
	.byte	W12
	.byte		N12   , Bn3 , v112
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Bn3 , v064
	.byte	W06
	.byte		        Bn3 , v112
	.byte	W06
	.byte		        Bn3 , v064
	.byte	W12
	.byte		N12   , Bn3 , v112
	.byte	W12
	.byte		N06   , Bn3 , v064
	.byte	W12
	.byte		        Gn3 , v112
	.byte	W06
	.byte		        Gn3 , v064
	.byte	W06
	.byte		        Gn3 , v112
	.byte	W06
	.byte		        Gn3 , v064
	.byte	W12
	.byte		N12   , Cn4 , v112
	.byte	W12
	.byte		VOL   , 57*mus_dd_factory_mvl/mxv
	.byte		N06   , En4
	.byte	W06
	.byte		        En4 , v064
	.byte	W06
	.byte		        En4 , v112
	.byte	W06
	.byte		        En4 , v064
	.byte	W12
	.byte		        En4 , v112
	.byte	W06
	.byte		N12   , Cn4
	.byte	W12
	.byte		N06   , Fs4
	.byte	W06
	.byte		        Fs4 , v064
	.byte	W06
	.byte		        Fs4 , v112
	.byte	W06
	.byte		        Fs4 , v064
	.byte	W12
	.byte		        Fs4 , v112
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Gn4 , v064
	.byte	W06
	.byte		        Gn4 , v112
	.byte	W06
	.byte		        Gn4 , v064
	.byte	W12
	.byte		        Gn4 , v112
	.byte	W06
	.byte		N12   , Ds4
	.byte	W12
	.byte		N24   , An4
	.byte	W24
	.byte		        Dn5
	.byte	W24
	.byte		N96   , Bn4
	.byte	W12
	.byte		VOL   , 44*mus_dd_factory_mvl/mxv
	.byte	W02
	.byte		        41*mus_dd_factory_mvl/mxv
	.byte	W04
	.byte		        40*mus_dd_factory_mvl/mxv
	.byte	W02
	.byte		        38*mus_dd_factory_mvl/mxv
	.byte	W04
	.byte		        35*mus_dd_factory_mvl/mxv
	.byte	W02
	.byte		        35*mus_dd_factory_mvl/mxv
	.byte	W04
	.byte		        33*mus_dd_factory_mvl/mxv
	.byte	W02
	.byte		        31*mus_dd_factory_mvl/mxv
	.byte	W04
	.byte		        29*mus_dd_factory_mvl/mxv
	.byte	W02
	.byte		        28*mus_dd_factory_mvl/mxv
	.byte	W04
	.byte		        27*mus_dd_factory_mvl/mxv
	.byte	W02
	.byte		        25*mus_dd_factory_mvl/mxv
	.byte	W04
	.byte		        23*mus_dd_factory_mvl/mxv
	.byte	W02
	.byte		        22*mus_dd_factory_mvl/mxv
	.byte	W04
	.byte		        20*mus_dd_factory_mvl/mxv
	.byte	W02
	.byte		        18*mus_dd_factory_mvl/mxv
	.byte	W04
	.byte		        16*mus_dd_factory_mvl/mxv
	.byte	W02
	.byte		        14*mus_dd_factory_mvl/mxv
	.byte	W04
	.byte		        13*mus_dd_factory_mvl/mxv
	.byte	W02
	.byte		        11*mus_dd_factory_mvl/mxv
	.byte	W04
	.byte		        8*mus_dd_factory_mvl/mxv
	.byte	W02
	.byte		        7*mus_dd_factory_mvl/mxv
	.byte	W04
	.byte		        5*mus_dd_factory_mvl/mxv
	.byte	W02
	.byte		        4*mus_dd_factory_mvl/mxv
	.byte	W04
	.byte		        2*mus_dd_factory_mvl/mxv
	.byte	W12
	.byte	GOTO
	 .word	mus_dd_factory_6_000
	.byte		FINE

@**************** Track 7 ****************@

mus_dd_factory_7:
	.byte		KEYSH , mus_dd_factory_key+0
	.byte		VOICE , 80
	.byte		LFOS  , 44
	.byte		XCMD  , 8 , 18
	.byte		        8
	.byte		        16
	.byte		BENDR , 12
	.byte		PAN   , c_v+63
	.byte		VOL   , 38*mus_dd_factory_mvl/mxv
	.byte	W48
	.byte		        47*mus_dd_factory_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N15   , Fn2 , v112
	.byte	W12
	.byte		BEND  , c_v+10
	.byte	W12
	.byte		        c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N21   , Fn2
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		        c_v+10
	.byte	W12
	.byte		        c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N12   , As1
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W06
mus_dd_factory_7_000:
	.byte		BEND  , c_v+0
	.byte		N21   , Fn2 , v112
	.byte	W18
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v112
	.byte	W06
	.byte		N12   , Fn2
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W06
	.byte		        c_v+0
	.byte		N09   , Cn3
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N06   , As2
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		N03   , Fn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N12   , Ds2
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N18   , Fn2
	.byte	W12
	.byte		BEND  , c_v+10
	.byte	W12
	.byte		        c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N24   , Fn2
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		        c_v+10
	.byte	W12
	.byte		        c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N12   , As1
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W06
	.byte		        c_v+0
	.byte		N24   , Fn2
	.byte	W18
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v112
	.byte	W06
	.byte		N12   , Fs1
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte		N12   , Cn3
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N06   , As2
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		N24   , As3
	.byte	W12
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-28
	.byte	W02
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-63
	.byte	W02
mus_dd_factory_7_001:
	.byte		VOL   , 38*mus_dd_factory_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N15   , Fn2 , v112
	.byte	W12
	.byte		BEND  , c_v+10
	.byte	W12
	.byte		        c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N21   , Fn2
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		        c_v+10
	.byte	W12
	.byte		        c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N12   , As1
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W06
	.byte		PEND
mus_dd_factory_7_002:
	.byte		BEND  , c_v+0
	.byte		N21   , As2 , v112
	.byte	W18
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v112
	.byte	W06
	.byte		N12   , As2
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W06
	.byte		        c_v+0
	.byte		N09   , Cn3
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N06   , As2
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		N03   , Fn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N12   , Cn2
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		PEND
mus_dd_factory_7_003:
	.byte		BEND  , c_v+0
	.byte		N15   , Fn2 , v112
	.byte	W12
	.byte		BEND  , c_v+10
	.byte	W12
	.byte		        c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N21   , Fn2
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		        c_v+10
	.byte	W12
	.byte		        c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N12   , As1
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W06
	.byte		PEND
	.byte		        c_v+0
	.byte		N21   , As2
	.byte	W18
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v112
	.byte	W06
	.byte		N12   , As2
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte		N03   , En3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Fn3
	.byte	W12
	.byte		        Gn3
	.byte	W07
	.byte		BEND  , c_v-15
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-57
	.byte	W02
	.byte	PATT
	 .word	mus_dd_factory_7_003
	.byte	PATT
	 .word	mus_dd_factory_7_002
	.byte	PATT
	 .word	mus_dd_factory_7_003
	.byte		BEND  , c_v+0
	.byte		N21   , As2 , v112
	.byte	W18
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v112
	.byte	W06
	.byte		N06   , Cn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Fn3
	.byte	W12
	.byte		        Gn3
	.byte	W07
	.byte		BEND  , c_v-15
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-57
	.byte	W02
	.byte		VOICE , 84
	.byte		VOL   , 52*mus_dd_factory_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , Dn4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		N24   , As3
	.byte	W12
	.byte		BEND  , c_v-2
	.byte	W03
	.byte		        c_v-3
	.byte	W03
	.byte		        c_v-5
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v+0
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		N12   , En3
	.byte	W06
	.byte		BEND  , c_v+1
	.byte	W03
	.byte		        c_v+0
	.byte	W03
	.byte		N06   , Cn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		N24   , Gn3
	.byte	W15
	.byte		BEND  , c_v-2
	.byte	W03
	.byte		        c_v-3
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		VOICE , 92
	.byte		VOL   , 67*mus_dd_factory_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Dn3
	.byte	W06
	.byte		        Dn4
	.byte	W12
	.byte		        Dn3
	.byte	W06
	.byte		N06   , Cs4
	.byte	W06
	.byte		N03   , Dn4
	.byte	W06
	.byte		N06   , Dn3
	.byte	W06
	.byte		N03   , Gn3
	.byte	W06
	.byte		N12   , Gn4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        As3
	.byte	W12
	.byte		N06   , Dn4
	.byte	W06
	.byte		N03   , As3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N06
	.byte	W30
	.byte		        Ds4
	.byte	W06
	.byte		N02   , En4
	.byte	W12
	.byte		N03
	.byte	W30
	.byte		        Dn3
	.byte	W06
	.byte		N06   , Dn4
	.byte	W12
	.byte		N03   , Dn3
	.byte	W06
	.byte		N06   , Cs4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		N03   , Gn3
	.byte	W06
	.byte		N12   , Gn4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        As3
	.byte	W12
	.byte		N06   , Dn4
	.byte	W06
	.byte		N03   , As3
	.byte	W03
	.byte		        Bn3
	.byte	W03
	.byte		        Cn4
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N06   , Gn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		N12   , En3
	.byte	W36
	.byte		VOICE , 80
	.byte		N24   , Dn2
	.byte	W03
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-28
	.byte	W02
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-64
	.byte	W04
	.byte	PATT
	 .word	mus_dd_factory_7_001
	.byte	PATT
	 .word	mus_dd_factory_7_002
	.byte	PATT
	 .word	mus_dd_factory_7_003
	.byte		BEND  , c_v+0
	.byte		N21   , As2 , v112
	.byte	W18
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v112
	.byte	W06
	.byte		N12   , As2
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N03   , En3
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Fn3
	.byte	W12
	.byte		        Gn3
	.byte	W07
	.byte		BEND  , c_v-15
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-57
	.byte	W02
	.byte	PATT
	 .word	mus_dd_factory_7_003
	.byte	PATT
	 .word	mus_dd_factory_7_002
	.byte	PATT
	 .word	mus_dd_factory_7_003
	.byte		BEND  , c_v+0
	.byte		N21   , As2 , v112
	.byte	W18
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N03   , Gn1 , v112
	.byte	W06
	.byte		N12   , As2
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N03
	.byte	W06
	.byte		N12   , Bn2
	.byte	W12
	.byte		N03   , As2
	.byte	W06
	.byte		N12   , Ds3
	.byte	W12
	.byte		N03   , As2
	.byte	W06
	.byte		N06   , Fs3
	.byte	W06
	.byte		VOICE , 84
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte		N48   , Bn3 , v096
	.byte	W12
	.byte		MOD   , 8
	.byte		VOL   , 33*mus_dd_factory_mvl/mxv
	.byte	W36
	.byte		MOD   , 0
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte		N24   , An3
	.byte	W09
	.byte		MOD   , 8
	.byte	W03
	.byte		VOL   , 33*mus_dd_factory_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte		N24   , Cn4
	.byte	W09
	.byte		MOD   , 8
	.byte	W03
	.byte		VOL   , 33*mus_dd_factory_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte		N48   , An3
	.byte	W12
	.byte		MOD   , 8
	.byte		VOL   , 33*mus_dd_factory_mvl/mxv
	.byte	W36
	.byte		MOD   , 0
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte		N24   , Bn3
	.byte	W12
	.byte		MOD   , 8
	.byte		VOL   , 33*mus_dd_factory_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte		N24   , Dn4
	.byte	W12
	.byte		MOD   , 8
	.byte		VOL   , 33*mus_dd_factory_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte		N24   , Gn3
	.byte	W12
	.byte		MOD   , 8
	.byte		VOL   , 33*mus_dd_factory_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte		N24   , An3
	.byte	W12
	.byte		MOD   , 8
	.byte		VOL   , 33*mus_dd_factory_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		N24   , En4
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N24   , Bn3
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		VOL   , 38*mus_dd_factory_mvl/mxv
	.byte		N06   , Fs4 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N18
	.byte	W18
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 80
	.byte		VOL   , 47*mus_dd_factory_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N15   , Fn2
	.byte	W12
	.byte		BEND  , c_v+10
	.byte	W12
	.byte		        c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N21   , Fn2
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		        c_v+10
	.byte	W12
	.byte		        c_v+0
	.byte		N03   , Gn1 , v124
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N12   , As1
	.byte	W06
	.byte		BEND  , c_v-16
	.byte	W06
	.byte	GOTO
	 .word	mus_dd_factory_7_000
	.byte		FINE

@**************** Track 8 ****************@

mus_dd_factory_8:
	.byte		KEYSH , mus_dd_factory_key+0
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 76*mus_dd_factory_mvl/mxv
	.byte		N03   , Dn2 , v112
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Cn2
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		N03   , Fn1
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v080
	.byte		N24   , Cs2 , v064
	.byte	W24
	.byte		VOL   , 74*mus_dd_factory_mvl/mxv
	.byte		N12   , Cn1 , v120
	.byte		N12   , An1 , v112
	.byte		N24   , An2
	.byte	W12
	.byte		N12   , Cn1 , v120
	.byte		N12   , Fn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		        Cn1 , v120
	.byte		N12   , Cn2 , v112
	.byte	W12
	.byte		        Dn1
	.byte		N06   , An1
	.byte	W06
	.byte		N12   , Fn1
	.byte	W06
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
mus_dd_factory_8_000:
	.byte		N18   , Cn1 , v120
	.byte		N06   , Cn2 , v112
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		        Cn1 , v120
	.byte		N18   , Fn1 , v112
	.byte	W06
	.byte		N12   , Dn1
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte	W18
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N03   , Dn1 , v060
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cn1
	.byte		N06   , Dn1
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte		N12   , An1 , v112
	.byte		N24   , An2
	.byte	W12
	.byte		N12   , Cn1 , v120
	.byte		N12   , Fn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		        Cn1 , v120
	.byte		N12   , Cn2 , v112
	.byte	W12
	.byte		        Dn1
	.byte		N06   , Fn1
	.byte	W06
	.byte		N12   , Cn2
	.byte	W06
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte	W18
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N18
	.byte		N12   , Bn1 , v112
	.byte	W12
	.byte		N06   , Gn1
	.byte	W06
	.byte		        Cn1 , v120
	.byte		N06   , Fn1 , v112
	.byte	W06
	.byte		N12   , Dn1
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Dn1 , v060
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v112
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte		N24   , An2 , v112
	.byte	W18
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N24   , Dn1 , v112
	.byte		N06   , Fn2 , v080
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N18   , Dn1 , v112
	.byte		N06   , Fn2 , v080
	.byte	W18
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte	W18
	.byte		N12
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Dn1 , v060
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v112
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte		N06   , Fn2 , v080
	.byte	W18
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte		N06   , Fn2 , v080
	.byte	W18
	.byte		N12   , Cn1 , v120
	.byte	W06
	.byte		N06   , Fn2 , v080
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte		N06   , Fn2 , v080
	.byte	W18
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte		N18   , Cs2
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte		N18   , An2
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte		N30   , Cs2
	.byte	W18
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N03   , Dn1 , v060
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte		N24   , An2 , v112
	.byte	W18
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte		N06   , Fn2 , v080
	.byte	W18
	.byte		N12   , Cn1 , v120
	.byte	W06
	.byte		N06   , Fn2 , v080
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		        Cn1
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte		N06   , Fn2 , v080
	.byte	W18
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N03   , Dn1 , v060
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v112
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte		N06   , Fn2 , v080
	.byte	W12
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N18   , Dn1 , v112
	.byte		N06   , Fn2 , v080
	.byte	W18
	.byte		N12   , Cn1 , v120
	.byte	W06
	.byte		N06   , Fn2 , v080
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		        Cn1
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte		N06   , Fn2 , v080
	.byte	W18
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N06
	.byte		N06   , Fn2 , v080
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte		N18   , Cs2
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte		N18   , An2
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte		N30   , Cs2
	.byte	W18
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N03   , Dn1 , v060
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte		N06   , Cs2
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Dn1 , v112
	.byte		N06   , An2
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Dn1 , v112
	.byte		N06   , Cs2
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte	W06
	.byte		N06   , Dn2 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		        Fn1
	.byte	W06
	.byte		        Dn1
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte		N06   , Cs2
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Dn1 , v112
	.byte		N06   , An2
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Dn1 , v112
	.byte		N06   , Cs2
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N24
	.byte	W24
	.byte		N18
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12
	.byte		N24   , An2 , v112
	.byte	W12
	.byte		N12   , Fn1
	.byte	W12
	.byte		N18   , Dn1
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte	W18
	.byte		N12
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte		N06   , Bn1 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		        Cn1 , v120
	.byte		N06   , Fn1 , v112
	.byte	W06
	.byte		N12   , Dn1
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte	W18
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N03   , Dn1 , v060
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v112
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N24   , Cn1 , v120
	.byte		N12   , Gn1 , v112
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		N06   , Dn1
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Dn1 , v112
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte	W18
	.byte		N18
	.byte	W18
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N18
	.byte		N12   , Bn1 , v112
	.byte	W12
	.byte		N06   , Gn1
	.byte	W06
	.byte		        Cn1 , v120
	.byte		N06   , Fn1 , v112
	.byte	W06
	.byte		N12   , Dn1
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N03   , Dn1 , v060
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte		N24   , An2 , v112
	.byte	W18
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte		N06   , Fn2 , v080
	.byte	W18
	.byte		N12   , Cn1 , v120
	.byte	W06
	.byte		N06   , Fn2 , v080
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte		N06   , Fn2 , v080
	.byte	W18
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N18
	.byte	W06
	.byte		N06   , Bn1 , v112
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Dn1 , v060
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v112
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Dn1 , v112
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte		N06   , Fn2 , v080
	.byte	W18
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N24   , Dn1 , v112
	.byte		N06   , Fn2 , v080
	.byte	W24
	.byte		        Cn1 , v120
	.byte		N06   , Fn2 , v080
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte		N06   , Fn2 , v080
	.byte	W18
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N06
	.byte		N06   , Fn2 , v080
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte		N18   , Cs2
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte		N18   , An2
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte		N30   , Cs2
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N03   , Dn1 , v060
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v112
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte		N24   , An2 , v112
	.byte	W18
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N24   , Dn1 , v112
	.byte		N06   , Fn2 , v080
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte		N06   , Fn2 , v080
	.byte	W18
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N03   , Dn1 , v060
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v112
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte		N06   , Fn2 , v080
	.byte	W18
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N24   , Dn1 , v112
	.byte		N06   , Fn2 , v080
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte		N06   , Fn2 , v080
	.byte	W18
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N18   , Cs2 , v112
	.byte		N15   , Dn2
	.byte	W18
	.byte		N18   , An1
	.byte		N18   , An2
	.byte	W18
	.byte		N12   , Fn1
	.byte		N12   , Cs2
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte		N18   , An2 , v112
	.byte	W06
	.byte		N12   , Dn1
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte		N18   , Cs2 , v112
	.byte	W18
	.byte		N06   , Dn1
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fn2 , v080
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Dn1 , v112
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte		N06   , Fn2 , v080
	.byte	W12
	.byte		N18   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fn2 , v080
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte	W06
	.byte		N06   , Dn2
	.byte	W06
	.byte		        Fn2 , v080
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fn2 , v080
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Dn1 , v112
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte		N06   , Fn2 , v080
	.byte	W12
	.byte		N18   , Dn1 , v112
	.byte	W12
	.byte		N06   , Fn2 , v080
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06
	.byte		N06   , Fn2 , v080
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N18
	.byte	W12
	.byte		N06   , Fn2 , v080
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Dn1 , v112
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte		N06   , Fn2 , v080
	.byte	W12
	.byte		N18   , Dn1 , v112
	.byte	W12
	.byte		N06   , Fn2 , v080
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N24   , Dn1 , v112
	.byte	W12
	.byte		N06   , Fn2 , v080
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte		N06   , Fn2 , v080
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		        Cn1 , v120
	.byte		N06   , Fn2 , v080
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N12
	.byte		N06   , Fn2 , v080
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte		N06   , Fn2 , v080
	.byte	W12
	.byte		N18   , Cn1 , v120
	.byte		N12   , Cs2 , v112
	.byte	W18
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte	W18
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte	W18
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Bn1 , v112
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte	W18
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N03   , Dn1 , v060
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Bn1 , v112
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N03   , Dn1 , v060
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Dn1 , v060
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v112
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N12
	.byte	W12
	.byte		N18   , Dn1 , v112
	.byte	W18
	.byte		        Cn1 , v120
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N03   , Dn1 , v060
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N18   , Dn1 , v112
	.byte	W18
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N18   , Dn1 , v112
	.byte	W18
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte	GOTO
	 .word	mus_dd_factory_8_000
	.byte		FINE

@**************** Track 9 ****************@

mus_dd_factory_9:
	.byte		KEYSH , mus_dd_factory_key+0
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		XCMD  , 8 , 18
	.byte		        8
	.byte		        16
	.byte		BENDR , 12
	.byte		VOL   , 49*mus_dd_factory_mvl/mxv
	.byte	W48
mus_dd_factory_9_000:
	.byte		N03   , Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v044
	.byte	W12
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v044
	.byte	W12
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v036
	.byte	W18
	.byte		PEND
mus_dd_factory_9_001:
	.byte		N03   , Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v044
	.byte	W12
	.byte		        Cn5 , v084
	.byte	W24
	.byte		        Cn5 , v080
	.byte	W18
	.byte		        Cn5 , v036
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_factory_9_000
mus_dd_factory_9_002:
	.byte		N03   , Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v044
	.byte	W12
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v044
	.byte	W12
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v036
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v036
	.byte	W06
	.byte		PEND
	.byte		        Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v044
	.byte	W12
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W18
	.byte	PATT
	 .word	mus_dd_factory_9_002
	.byte	PATT
	 .word	mus_dd_factory_9_000
mus_dd_factory_9_003:
	.byte		N03   , Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v044
	.byte	W12
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v036
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v036
	.byte	W06
	.byte		PEND
mus_dd_factory_9_004:
	.byte		N03   , Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v044
	.byte	W12
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v036
	.byte	W18
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_factory_9_002
	.byte	PATT
	 .word	mus_dd_factory_9_000
	.byte	PATT
	 .word	mus_dd_factory_9_002
	.byte	PATT
	 .word	mus_dd_factory_9_004
	.byte	PATT
	 .word	mus_dd_factory_9_002
	.byte	PATT
	 .word	mus_dd_factory_9_000
	.byte	PATT
	 .word	mus_dd_factory_9_002
	.byte	PATT
	 .word	mus_dd_factory_9_000
	.byte		N03   , Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v044
	.byte	W12
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v080
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte	PATT
	 .word	mus_dd_factory_9_004
	.byte	PATT
	 .word	mus_dd_factory_9_003
	.byte	PATT
	 .word	mus_dd_factory_9_000
	.byte	PATT
	 .word	mus_dd_factory_9_002
	.byte	PATT
	 .word	mus_dd_factory_9_004
	.byte	PATT
	 .word	mus_dd_factory_9_002
	.byte	PATT
	 .word	mus_dd_factory_9_000
	.byte		N03   , Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v044
	.byte	W36
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v036
	.byte	W18
	.byte	PATT
	 .word	mus_dd_factory_9_002
	.byte	PATT
	 .word	mus_dd_factory_9_002
	.byte	PATT
	 .word	mus_dd_factory_9_002
	.byte	W96
	.byte	PATT
	 .word	mus_dd_factory_9_000
	.byte	PATT
	 .word	mus_dd_factory_9_002
	.byte	PATT
	 .word	mus_dd_factory_9_000
	.byte	PATT
	 .word	mus_dd_factory_9_001
	.byte	PATT
	 .word	mus_dd_factory_9_000
	.byte	PATT
	 .word	mus_dd_factory_9_002
	.byte	PATT
	 .word	mus_dd_factory_9_000
	.byte	PATT
	 .word	mus_dd_factory_9_001
	.byte	PATT
	 .word	mus_dd_factory_9_000
	.byte	GOTO
	 .word	mus_dd_factory_9_001
	.byte		FINE

@**************** Track 10 ****************@

mus_dd_factory_10:
	.byte		KEYSH , mus_dd_factory_key+0
	.byte		VOICE , 126
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 57*mus_dd_factory_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W36
	.byte		N12   , Gn5 , v096
	.byte	W12
	.byte	W84
	.byte		        Gn5 , v060
	.byte	W12
mus_dd_factory_10_000:
	.byte	W54
	.byte		N12   , Gn5 , v080
	.byte	W24
	.byte		N12
	.byte	W18
	.byte		PEND
	.byte	W84
	.byte		        Gn5 , v060
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W54
	.byte		N06   , Gn5 , v080
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte	W84
	.byte		N12   , Gn5 , v060
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	PATT
	 .word	mus_dd_factory_10_000
	.byte	W84
	.byte		N12   , Gn5 , v060
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	PATT
	 .word	mus_dd_factory_10_000
	.byte	W84
	.byte		N12   , Gn5 , v060
	.byte	W12
	.byte	GOTO
	 .word	mus_dd_factory_10_000
	.byte		FINE

@******************************************************@
	.align	2

mus_dd_factory:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_dd_factory_pri	@ Priority
	.byte	mus_dd_factory_rev	@ Reverb.

	.word	mus_dd_factory_grp

	.word	mus_dd_factory_1
	.word	mus_dd_factory_2
	.word	mus_dd_factory_3
	.word	mus_dd_factory_4
	.word	mus_dd_factory_5
	.word	mus_dd_factory_6
	.word	mus_dd_factory_7
	.word	mus_dd_factory_8
	.word	mus_dd_factory_9
	.word	mus_dd_factory_10

	.end
