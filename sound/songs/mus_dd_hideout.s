	.include "MPlayDef.s"

	.equ	mus_dd_hideout_grp, voicegroup_dd_hideout
	.equ	mus_dd_hideout_pri, 0
	.equ	mus_dd_hideout_rev, 0x9e
	.equ	mus_dd_hideout_mvl, 127
	.equ	mus_dd_hideout_key, 0
	.equ	mus_dd_hideout_tbs, 1
	.equ	mus_dd_hideout_exg, 0
	.equ	mus_dd_hideout_cmp, 1

	.section .rodata
	.global	mus_dd_hideout
	.align	2

@**************** Track 1 ****************@

mus_dd_hideout_1:
	.byte		KEYSH , mus_dd_hideout_key+0
mus_dd_hideout_1_000:
	.byte		TEMPO , 134*mus_dd_hideout_tbs/2
	.byte		VOICE , 92
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		VOL   , 31*mus_dd_hideout_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		BENDR , 44
	.byte	W12
mus_dd_hideout_1_001:
	.byte		TIE   , Ds3 , v112
	.byte	W12
	.byte		MOD   , 5
	.byte	W84
	.byte		PEND
	.byte	W96
	.byte		EOT   
mus_dd_hideout_1_002:
	.byte		MOD   , 0
	.byte		TIE   , Dn3 , v112
	.byte	W12
	.byte		MOD   , 5
	.byte	W84
	.byte		PEND
	.byte	W96
	.byte		EOT   
mus_dd_hideout_1_003:
	.byte		MOD   , 0
	.byte		TIE   , Ds3 , v112
	.byte	W12
	.byte		MOD   , 5
	.byte	W84
	.byte		PEND
	.byte	W48
	.byte		EOT   
	.byte		VOICE , 93
	.byte		MOD   , 0
	.byte		VOL   , 75*mus_dd_hideout_mvl/mxv
	.byte		N03   , Cn2
	.byte	W03
	.byte		        Cn2 , v048
	.byte	W03
	.byte		        Ds2 , v112
	.byte	W03
	.byte		        Ds2 , v048
	.byte	W03
	.byte		        Gn2 , v112
	.byte	W03
	.byte		        Gn2 , v044
	.byte	W03
	.byte		        Cn3 , v112
	.byte	W03
	.byte		        Cn3 , v044
	.byte	W03
	.byte		MOD   , 0
	.byte		N03   , Ds3 , v112
	.byte	W03
	.byte		        Ds3 , v048
	.byte	W03
	.byte		        Gn3 , v112
	.byte	W03
	.byte		        Gn3 , v044
	.byte	W03
	.byte		        Cn4 , v112
	.byte	W03
	.byte		        Cn4 , v048
	.byte	W03
	.byte		        Ds4 , v112
	.byte	W03
	.byte		        Ds4 , v044
	.byte	W03
mus_dd_hideout_1_004:
	.byte		MOD   , 0
	.byte		VOL   , 75*mus_dd_hideout_mvl/mxv
	.byte		N03   , Dn3 , v112
	.byte	W03
	.byte		        Dn3 , v048
	.byte	W03
	.byte		        Fs3 , v112
	.byte	W03
	.byte		        Fs3 , v044
	.byte	W03
	.byte		        Bn3 , v112
	.byte	W03
	.byte		        Bn3 , v048
	.byte	W03
	.byte		        Dn4 , v112
	.byte	W03
	.byte		        Dn4 , v044
	.byte	W03
	.byte		VOICE , 94
	.byte		N03   , Dn3 , v112
	.byte	W03
	.byte		        Dn3 , v048
	.byte	W03
	.byte		        Fs3 , v112
	.byte	W03
	.byte		        Fs3 , v044
	.byte	W03
	.byte		        Bn3 , v112
	.byte	W03
	.byte		        Bn3 , v048
	.byte	W03
	.byte		        Dn4 , v112
	.byte	W03
	.byte		        Dn4 , v044
	.byte	W03
	.byte		VOICE , 95
	.byte		N03   , Dn3 , v112
	.byte	W03
	.byte		        Dn3 , v048
	.byte	W03
	.byte		        Fs3 , v112
	.byte	W03
	.byte		        Fs3 , v044
	.byte	W03
	.byte		        Bn3 , v112
	.byte	W03
	.byte		        Bn3 , v048
	.byte	W03
	.byte		        Dn4 , v112
	.byte	W03
	.byte		        Dn4 , v044
	.byte	W03
	.byte		VOL   , 43*mus_dd_hideout_mvl/mxv
	.byte		N03   , Dn3 , v112
	.byte	W03
	.byte		        Dn3 , v048
	.byte	W03
	.byte		        Fs3 , v112
	.byte	W03
	.byte		        Fs3 , v044
	.byte	W03
	.byte		        Bn3 , v112
	.byte	W03
	.byte		        Bn3 , v048
	.byte	W03
	.byte		        Dn4 , v112
	.byte	W03
	.byte		        Dn4 , v044
	.byte	W03
	.byte		PEND
	.byte		VOICE , 92
	.byte		VOL   , 32*mus_dd_hideout_mvl/mxv
	.byte		N60   , Dn3 , v112
	.byte	W12
	.byte		MOD   , 5
	.byte	W48
	.byte		        0
	.byte		N06   , Cs3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		N18   , Bn2
	.byte	W12
	.byte		BENDR , 44
	.byte	W06
	.byte		N03   , Cn3
	.byte	W03
	.byte		        Dn3
	.byte	W03
	.byte	PATT
	 .word	mus_dd_hideout_1_001
	.byte	W96
	.byte		EOT   , Ds3
	.byte	PATT
	 .word	mus_dd_hideout_1_002
	.byte	W96
	.byte		EOT   , Dn3
	.byte	PATT
	 .word	mus_dd_hideout_1_003
	.byte	W48
	.byte		EOT   , Ds3
	.byte		VOICE , 93
	.byte		MOD   , 0
	.byte		VOL   , 75*mus_dd_hideout_mvl/mxv
	.byte		N03   , Cn2 , v112
	.byte	W03
	.byte		        Cn2 , v048
	.byte	W03
	.byte		        Ds2 , v112
	.byte	W03
	.byte		        Ds2 , v048
	.byte	W03
	.byte		        Gn2 , v112
	.byte	W03
	.byte		        Gn2 , v044
	.byte	W03
	.byte		        Cn3 , v112
	.byte	W03
	.byte		        Cn3 , v044
	.byte	W03
	.byte		MOD   , 0
	.byte		N03   , Ds3 , v112
	.byte	W03
	.byte		        Ds3 , v048
	.byte	W03
	.byte		        Gn3 , v112
	.byte	W03
	.byte		        Gn3 , v044
	.byte	W03
	.byte		        Cn4 , v112
	.byte	W03
	.byte		        Cn4 , v048
	.byte	W03
	.byte		        Ds4 , v112
	.byte	W03
	.byte		        Ds4 , v044
	.byte	W03
	.byte	PATT
	 .word	mus_dd_hideout_1_004
	.byte		VOICE , 92
	.byte		VOL   , 32*mus_dd_hideout_mvl/mxv
	.byte		N96   , Dn3 , v112
	.byte	W12
	.byte		MOD   , 5
	.byte	W72
	.byte		BENDR , 44
	.byte	W12
	.byte	PATT
	 .word	mus_dd_hideout_1_003
	.byte	W96
	.byte		EOT   , Ds3
	.byte	PATT
	 .word	mus_dd_hideout_1_002
	.byte	W96
	.byte		EOT   , Dn3
	.byte	PATT
	 .word	mus_dd_hideout_1_003
	.byte	W48
	.byte		EOT   , Ds3
	.byte		VOICE , 93
	.byte		MOD   , 0
	.byte		VOL   , 75*mus_dd_hideout_mvl/mxv
	.byte		N03   , Cn2 , v112
	.byte	W03
	.byte		        Cn2 , v048
	.byte	W03
	.byte		        Ds2 , v112
	.byte	W03
	.byte		        Ds2 , v048
	.byte	W03
	.byte		        Gn2 , v112
	.byte	W03
	.byte		        Gn2 , v044
	.byte	W03
	.byte		        Cn3 , v112
	.byte	W03
	.byte		        Cn3 , v044
	.byte	W03
	.byte		MOD   , 0
	.byte		N03   , Ds3 , v112
	.byte	W03
	.byte		        Ds3 , v048
	.byte	W03
	.byte		        Gn3 , v112
	.byte	W03
	.byte		        Gn3 , v044
	.byte	W03
	.byte		        Cn4 , v112
	.byte	W03
	.byte		        Cn4 , v048
	.byte	W03
	.byte		        Ds4 , v112
	.byte	W03
	.byte		        Ds4 , v044
	.byte	W03
	.byte		VOL   , 75*mus_dd_hideout_mvl/mxv
	.byte		N03   , Dn3 , v112
	.byte	W03
	.byte		        Dn3 , v048
	.byte	W03
	.byte		        Fs3 , v112
	.byte	W03
	.byte		        Fs3 , v044
	.byte	W03
	.byte		        Bn3 , v112
	.byte	W03
	.byte		        Bn3 , v048
	.byte	W03
	.byte		        Dn4 , v112
	.byte	W03
	.byte		        Dn4 , v044
	.byte	W03
	.byte		VOICE , 94
	.byte		N03   , Dn3 , v112
	.byte	W03
	.byte		        Dn3 , v048
	.byte	W03
	.byte		        Fs3 , v112
	.byte	W03
	.byte		        Fs3 , v044
	.byte	W03
	.byte		        Bn3 , v112
	.byte	W03
	.byte		        Bn3 , v048
	.byte	W03
	.byte		        Dn4 , v112
	.byte	W03
	.byte		        Dn4 , v044
	.byte	W03
	.byte		VOICE , 95
	.byte		N03   , Dn3 , v112
	.byte	W03
	.byte		        Dn3 , v048
	.byte	W03
	.byte		        Fs3 , v112
	.byte	W03
	.byte		        Fs3 , v044
	.byte	W03
	.byte		        Bn3 , v112
	.byte	W03
	.byte		        Bn3 , v048
	.byte	W03
	.byte		        Dn4 , v112
	.byte	W03
	.byte		        Dn4 , v044
	.byte	W03
	.byte		VOL   , 43*mus_dd_hideout_mvl/mxv
	.byte		N03   , Dn3 , v112
	.byte	W03
	.byte		        Dn3 , v048
	.byte	W03
	.byte		        Fs3 , v112
	.byte	W03
	.byte		        Fs3 , v044
	.byte	W03
	.byte		        Bn3 , v112
	.byte	W03
	.byte		        Bn3 , v048
	.byte	W03
	.byte		        Dn4 , v112
	.byte	W03
	.byte		        Dn4 , v044
	.byte	W03
	.byte		VOICE , 92
	.byte		VOL   , 32*mus_dd_hideout_mvl/mxv
	.byte		N96   , Dn3 , v112
	.byte	W12
	.byte		MOD   , 5
	.byte	W48
	.byte		        0
	.byte	W24
	.byte		BENDR , 44
	.byte	W12
	.byte	PATT
	 .word	mus_dd_hideout_1_001
	.byte	W96
	.byte		EOT   , Ds3
	.byte	PATT
	 .word	mus_dd_hideout_1_002
	.byte	W72
	.byte		EOT   , Dn3
	.byte		MOD   , 0
	.byte	W12
	.byte		BENDR , 44
	.byte	W12
	.byte	GOTO
	 .word	mus_dd_hideout_1_000
	.byte		FINE

@**************** Track 2 ****************@

mus_dd_hideout_2:
	.byte		KEYSH , mus_dd_hideout_key+0
mus_dd_hideout_2_000:
	.byte		VOICE , 48
	.byte		LFOS  , 62
	.byte		PAN   , c_v+0
	.byte		VOL   , 32*mus_dd_hideout_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		N03   , Fn3 , v112
	.byte	W03
	.byte		        Gn3
	.byte	W03
	.byte		        Gs3
	.byte	W03
	.byte		        As3
	.byte	W03
	.byte		TIE   , Cn4
	.byte	W96
	.byte	W84
	.byte	W03
	.byte		EOT   
	.byte		N03   , Ds4
	.byte	W03
	.byte		        Dn4
	.byte	W03
	.byte		        Cn4
	.byte	W03
	.byte		TIE   , Bn3
	.byte	W96
	.byte	W66
	.byte		EOT   
	.byte		N03   , As3
	.byte	W03
	.byte		        An3
	.byte	W03
	.byte		        Gs3
	.byte	W03
	.byte		        Gn3
	.byte	W03
	.byte		        Fs3
	.byte	W06
	.byte		        Fn3
	.byte	W03
	.byte		        Gn3
	.byte	W03
	.byte		        Gs3
	.byte	W03
	.byte		        As3
	.byte	W03
	.byte		TIE   , Cn4
	.byte	W96
	.byte	W72
	.byte		EOT   
	.byte		N06   , Fn3
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		TIE   , Bn3
	.byte	W96
	.byte	W72
	.byte		EOT   
	.byte		N06   , Fn3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		TIE   , Cn4
	.byte	W96
	.byte	W72
	.byte		EOT   
	.byte		N06   , Fn3
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		TIE   , Bn3
	.byte	W96
	.byte	W66
	.byte		EOT   
	.byte		N03   , As3
	.byte	W03
	.byte		        An3
	.byte	W03
	.byte		N06   , Fn3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		TIE   , Cn4
	.byte	W96
	.byte	W72
	.byte		EOT   
	.byte		N06   , Fn3
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		TIE   , Bn3
	.byte	W96
	.byte	W84
	.byte		EOT   
	.byte		N03   , Fn3
	.byte	W03
	.byte		        Gn3
	.byte	W03
	.byte		        Gs3
	.byte	W03
	.byte		        As3
	.byte	W03
	.byte		TIE   , Cn4
	.byte	W96
	.byte	W84
	.byte	W03
	.byte		EOT   
	.byte		N03   , Ds4
	.byte	W03
	.byte		        Dn4
	.byte	W03
	.byte		        Cn4
	.byte	W03
	.byte		TIE   , Bn3
	.byte	W96
	.byte	W66
	.byte		EOT   
	.byte		N03   , As3
	.byte	W03
	.byte		        An3
	.byte	W03
	.byte		        Gs3
	.byte	W03
	.byte		        Gn3
	.byte	W03
	.byte		        Fs3
	.byte	W06
	.byte		        Fn3
	.byte	W03
	.byte		        Gn3
	.byte	W03
	.byte		        Gs3
	.byte	W03
	.byte		        As3
	.byte	W03
	.byte		TIE   , Cn4
	.byte	W96
	.byte	W72
	.byte		EOT   
	.byte		N06   , Fn3
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		TIE   , Bn3
	.byte	W96
	.byte	W72
	.byte		EOT   
	.byte		N06   , Fn3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		TIE   , Cn4
	.byte	W96
	.byte	W72
	.byte		EOT   
	.byte		N06   , Fn3
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		TIE   , Bn3
	.byte	W96
	.byte	W72
	.byte		EOT   
	.byte	W24
	.byte	GOTO
	 .word	mus_dd_hideout_2_000
	.byte		FINE

@**************** Track 3 ****************@

mus_dd_hideout_3:
	.byte		KEYSH , mus_dd_hideout_key+0
mus_dd_hideout_3_000:
	.byte		VOICE , 37
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 86*mus_dd_hideout_mvl/mxv
	.byte		PAN   , c_v+13
	.byte		BEND  , c_v+0
	.byte		N15   , Fn1 , v112
	.byte	W18
	.byte		N06
	.byte	W66
	.byte		N12   , Ds2
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N15   , Fn1
	.byte	W18
	.byte		N06
	.byte	W78
mus_dd_hideout_3_001:
	.byte		N15   , En1 , v112
	.byte	W18
	.byte		N06
	.byte	W66
	.byte		N12   , Dn2
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		PEND
	.byte		        c_v+0
	.byte		N06   , En1
	.byte	W12
	.byte		N12
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N15
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N06   , Bn0
	.byte	W06
	.byte		N24   , Ds1 , v127
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W18
	.byte		        c_v+0
	.byte		N15   , Fn1 , v112
	.byte	W18
	.byte		N06
	.byte	W66
	.byte		N12   , Ds2
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N15   , Fn1
	.byte	W18
	.byte		N06
	.byte	W78
	.byte	PATT
	 .word	mus_dd_hideout_3_001
mus_dd_hideout_3_002:
	.byte		BEND  , c_v+0
	.byte		N06   , En1 , v112
	.byte	W12
	.byte		N12
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N15
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N05   , Bn0 , v124
	.byte	W06
	.byte		N24   , Dn1 , v112
	.byte	W06
	.byte		BEND  , c_v+11
	.byte	W07
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-10
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-32
	.byte	W02
	.byte		PEND
mus_dd_hideout_3_003:
	.byte		BEND  , c_v+0
	.byte		N06   , Fn1 , v112
	.byte	W12
	.byte		N12
	.byte	W72
	.byte		        Ds2
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		PEND
	.byte		        c_v+0
	.byte		N06   , Fn1
	.byte	W12
	.byte		N12
	.byte	W84
mus_dd_hideout_3_004:
	.byte		N06   , En1 , v112
	.byte	W12
	.byte		N12
	.byte	W72
	.byte		        Dn2
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		PEND
	.byte		        c_v+0
	.byte		N06   , En1
	.byte	W12
	.byte		N12
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N15
	.byte	W18
	.byte		N03
	.byte	W12
	.byte		N24   , Ds1 , v127
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W18
	.byte	PATT
	 .word	mus_dd_hideout_3_003
	.byte		BEND  , c_v+0
	.byte		N06   , Fn1 , v112
	.byte	W12
	.byte		N12
	.byte	W84
	.byte	PATT
	 .word	mus_dd_hideout_3_004
	.byte	PATT
	 .word	mus_dd_hideout_3_002
	.byte		BEND  , c_v+0
	.byte		N06   , Fn1 , v112
	.byte	W12
	.byte		N12
	.byte	W36
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		N12   , Ds2
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N06   , Fn1
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Fn0
	.byte	W12
	.byte		N06
	.byte	W54
	.byte		        En1
	.byte	W06
	.byte		N03   , En0
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , En1
	.byte	W06
	.byte		N03   , En0
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Cs2
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte		N03   , En0
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , As1
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte		N06   , En1
	.byte	W06
	.byte		N03   , En0
	.byte	W06
	.byte		N12   , En1
	.byte	W12
	.byte		N03   , En0
	.byte	W06
	.byte		N06   , En1
	.byte	W06
	.byte		N03   , En0
	.byte	W06
	.byte		N18   , En1
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		        En0
	.byte	W06
	.byte		N24   , Ds1 , v120
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W18
	.byte		        c_v+0
	.byte		N06   , Fn1 , v112
	.byte	W06
	.byte		N03   , Fn0
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Fn1
	.byte	W06
	.byte		N03   , Fn0
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Ds2
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N03   , Fn0
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Bn1
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte		N06   , Fn1
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N03   , Fn0
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1
	.byte	W06
	.byte		        Fn1
	.byte	W06
	.byte		        Bn0
	.byte	W06
	.byte		        Cn1
	.byte	W06
	.byte		        En1
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N03   , En0
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , As1
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte		N03   , En0
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Dn2
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N06   , En1
	.byte	W06
	.byte		N03   , En0
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , En1
	.byte	W06
	.byte		N03   , En0
	.byte	W06
	.byte		N06   , En1
	.byte	W06
	.byte		N03   , En0
	.byte	W06
	.byte		N18   , En1
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		        En0
	.byte	W06
	.byte		N24   , Dn1
	.byte	W06
	.byte		BEND  , c_v+11
	.byte	W07
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-10
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-32
	.byte	W02
	.byte		        c_v+0
	.byte		N06   , Fn1
	.byte	W06
	.byte		N03   , Fn0
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Fn1
	.byte	W06
	.byte		N12   , En2
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte		N12   , Bn1
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte		N03   , Fn0
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Fn1
	.byte	W06
	.byte		N03   , Fn0
	.byte	W06
	.byte		N12   , Fn1
	.byte	W12
	.byte		N03   , Fn0
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Gn1
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte		N12   , En1
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte		N12   , Bn0
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte		N12   , Gn0
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte		N06   , En1
	.byte	W06
	.byte		N03   , En0
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Dn1
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		N03   , En0
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , As1
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte		N03   , En1
	.byte	W06
	.byte		        En0
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , En1
	.byte	W06
	.byte		N03   , En0
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Ds1
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte		N03   , En0
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , En1
	.byte	W12
	.byte		N24   , As1
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W07
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-8
	.byte	W02
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-46
	.byte	W02
	.byte		        c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N24   , Dn1
	.byte	W06
	.byte		BEND  , c_v+11
	.byte	W07
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-10
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-32
	.byte	W02
	.byte	GOTO
	 .word	mus_dd_hideout_3_000
	.byte		FINE

@**************** Track 4 ****************@

mus_dd_hideout_4:
	.byte		KEYSH , mus_dd_hideout_key+0
mus_dd_hideout_4_000:
	.byte		VOICE , 36
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-16
	.byte		VOL   , 58*mus_dd_hideout_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N15   , Fn2 , v112
	.byte	W18
	.byte		N06
	.byte	W66
	.byte		N12   , Ds3
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
mus_dd_hideout_4_001:
	.byte		BEND  , c_v+1
	.byte		N15   , Fn2 , v112
	.byte	W18
	.byte		N06
	.byte	W78
	.byte		PEND
mus_dd_hideout_4_002:
	.byte		N15   , En2 , v112
	.byte	W18
	.byte		N06
	.byte	W66
	.byte		N12   , Dn3
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		PEND
	.byte		        c_v+1
	.byte		N06   , En2
	.byte	W12
	.byte		N12
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N15
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N06   , Bn1
	.byte	W06
	.byte		N24   , Ds2 , v127
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W18
	.byte		        c_v+1
	.byte		N15   , Fn2 , v112
	.byte	W18
	.byte		N06
	.byte	W66
	.byte		N12   , Ds3
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte	PATT
	 .word	mus_dd_hideout_4_001
	.byte	PATT
	 .word	mus_dd_hideout_4_002
mus_dd_hideout_4_003:
	.byte		BEND  , c_v+1
	.byte		N06   , En2 , v112
	.byte	W12
	.byte		N12
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N15
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N05   , Bn1 , v124
	.byte	W06
	.byte		N24   , Dn2 , v112
	.byte	W06
	.byte		BEND  , c_v+11
	.byte	W07
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-10
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-32
	.byte	W02
	.byte		PEND
mus_dd_hideout_4_004:
	.byte		BEND  , c_v+1
	.byte		N06   , Fn2 , v112
	.byte	W12
	.byte		N12
	.byte	W72
	.byte		        Ds3
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		PEND
mus_dd_hideout_4_005:
	.byte		BEND  , c_v+1
	.byte		N06   , Fn2 , v112
	.byte	W12
	.byte		N12
	.byte	W84
	.byte		PEND
mus_dd_hideout_4_006:
	.byte		N06   , En2 , v112
	.byte	W12
	.byte		N12
	.byte	W72
	.byte		        Dn3
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		PEND
	.byte		        c_v+1
	.byte		N06   , En2
	.byte	W12
	.byte		N12
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N15
	.byte	W18
	.byte		N03
	.byte	W12
	.byte		N24   , Ds2 , v127
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W18
	.byte	PATT
	 .word	mus_dd_hideout_4_004
	.byte	PATT
	 .word	mus_dd_hideout_4_005
	.byte	PATT
	 .word	mus_dd_hideout_4_006
	.byte	PATT
	 .word	mus_dd_hideout_4_003
	.byte		BEND  , c_v+1
	.byte		N06   , Fn2 , v112
	.byte	W12
	.byte		N12
	.byte	W36
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		N12   , Ds3
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+1
	.byte		N06   , Fn2
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Fn1
	.byte	W12
	.byte		N06
	.byte	W54
	.byte		        En2
	.byte	W06
	.byte		N03   , En1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , En2
	.byte	W06
	.byte		N03   , En1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Cs3
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+1
	.byte		N03   , En1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , As2
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+1
	.byte		N06   , En2
	.byte	W06
	.byte		N03   , En1
	.byte	W06
	.byte		N12   , En2
	.byte	W12
	.byte		N03   , En1
	.byte	W06
	.byte		N06   , En2
	.byte	W06
	.byte		N03   , En1
	.byte	W06
	.byte		N18   , En2
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		        En1
	.byte	W06
	.byte		N24   , Ds2 , v120
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W18
	.byte		        c_v+1
	.byte		N06   , Fn2 , v112
	.byte	W06
	.byte		N03   , Fn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Fn2
	.byte	W06
	.byte		N03   , Fn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Ds3
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+1
	.byte		N03   , Fn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Bn2
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+1
	.byte		N06   , Fn2
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N03   , Fn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En2
	.byte	W06
	.byte		        Fn2
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		        En2
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N03   , En1
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , As2
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+1
	.byte		N03   , En1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Dn3
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+1
	.byte		N06   , En2
	.byte	W06
	.byte		N03   , En1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , En2
	.byte	W06
	.byte		N03   , En1
	.byte	W06
	.byte		N06   , En2
	.byte	W06
	.byte		N03   , En1
	.byte	W06
	.byte		N18   , En2
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		        En1
	.byte	W06
	.byte		N24   , Dn2
	.byte	W06
	.byte		BEND  , c_v+11
	.byte	W07
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-10
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-32
	.byte	W02
	.byte		        c_v+1
	.byte		N06   , Fn2
	.byte	W06
	.byte		N03   , Fn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Fn2
	.byte	W06
	.byte		N12   , En3
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte		N12   , Bn2
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+1
	.byte		N03   , Fn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		BEND  , c_v+1
	.byte		N06   , Fn2
	.byte	W06
	.byte		N03   , Fn1
	.byte	W06
	.byte		N12   , Fn2
	.byte	W12
	.byte		N03   , Fn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Gn2
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte		N12   , En2
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte		N12   , Bn1
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte		N12   , Gn1
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+1
	.byte		N06   , En2
	.byte	W06
	.byte		N03   , En1
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Dn2
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+1
	.byte		N03   , En1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , As2
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+1
	.byte		N03   , En2
	.byte	W06
	.byte		        En1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , En2
	.byte	W06
	.byte		N03   , En1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Ds2
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+1
	.byte		N03   , En1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , En2
	.byte	W12
	.byte		N24   , As2
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W07
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-22
	.byte	W02
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v+1
	.byte	W96
	.byte		        c_v+0
	.byte	W96
	.byte	W96
	.byte		        c_v+0
	.byte	W96
	.byte		        c_v+1
	.byte	W96
	.byte		        c_v+0
	.byte	W96
	.byte	W96
	.byte		        c_v+0
	.byte	W72
	.byte		N24   , Dn2
	.byte	W06
	.byte		BEND  , c_v+11
	.byte	W07
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-10
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-32
	.byte	W02
	.byte	GOTO
	 .word	mus_dd_hideout_4_000
	.byte		FINE

@**************** Track 5 ****************@

mus_dd_hideout_5:
	.byte		KEYSH , mus_dd_hideout_key+0
mus_dd_hideout_5_000:
	.byte		VOICE , 80
	.byte		LFOS  , 56
	.byte		XCMD  , 8 , 18
	.byte		        8
	.byte		        16
	.byte		BENDR , 12
	.byte		PAN   , c_v-64
	.byte		VOL   , 32*mus_dd_hideout_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_dd_hideout_5_001:
	.byte		VOL   , 32*mus_dd_hideout_mvl/mxv
	.byte		TIE   , Cn3 , v112
	.byte	W24
	.byte		VOL   , 21*mus_dd_hideout_mvl/mxv
	.byte	W24
	.byte		        10*mus_dd_hideout_mvl/mxv
	.byte	W24
	.byte		        10*mus_dd_hideout_mvl/mxv
	.byte	W24
	.byte		PEND
	.byte	W96
	.byte		EOT   
mus_dd_hideout_5_002:
	.byte		VOL   , 32*mus_dd_hideout_mvl/mxv
	.byte		TIE   , Bn2 , v112
	.byte	W24
	.byte		VOL   , 21*mus_dd_hideout_mvl/mxv
	.byte	W24
	.byte		        10*mus_dd_hideout_mvl/mxv
	.byte	W24
	.byte		        10*mus_dd_hideout_mvl/mxv
	.byte	W24
	.byte		PEND
	.byte	W96
	.byte		EOT   
	.byte	PATT
	 .word	mus_dd_hideout_5_001
	.byte	W96
	.byte		EOT   , Cn3
	.byte	PATT
	 .word	mus_dd_hideout_5_002
	.byte	W60
	.byte		EOT   , Bn2
	.byte		VOL   , 21*mus_dd_hideout_mvl/mxv
	.byte		N06   , As2 , v112
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		N18   , Fs2
	.byte	W18
	.byte		N03   , Gs2
	.byte	W03
	.byte		        An2
	.byte	W03
	.byte	PATT
	 .word	mus_dd_hideout_5_001
	.byte	W96
	.byte		EOT   , Cn3
	.byte	PATT
	 .word	mus_dd_hideout_5_002
	.byte	W96
	.byte		EOT   , Bn2
	.byte	PATT
	 .word	mus_dd_hideout_5_001
	.byte	W96
	.byte		EOT   , Cn3
	.byte	PATT
	 .word	mus_dd_hideout_5_002
	.byte	W96
	.byte		EOT   , Bn2
	.byte	PATT
	 .word	mus_dd_hideout_5_001
	.byte	W96
	.byte		EOT   , Cn3
	.byte	PATT
	 .word	mus_dd_hideout_5_002
	.byte	W96
	.byte		EOT   , Bn2
	.byte	PATT
	 .word	mus_dd_hideout_5_001
	.byte	W96
	.byte		EOT   , Cn3
	.byte	PATT
	 .word	mus_dd_hideout_5_002
	.byte	W96
	.byte		EOT   , Bn2
	.byte	PATT
	 .word	mus_dd_hideout_5_001
	.byte	W96
	.byte		EOT   , Cn3
	.byte	PATT
	 .word	mus_dd_hideout_5_002
	.byte	W72
	.byte		EOT   , Bn2
	.byte	W24
	.byte	GOTO
	 .word	mus_dd_hideout_5_000
	.byte		FINE

@**************** Track 6 ****************@

mus_dd_hideout_6:
	.byte		KEYSH , mus_dd_hideout_key+0
mus_dd_hideout_6_000:
	.byte		VOICE , 87
	.byte		LFOS  , 49
	.byte		XCMD  , 8 , 18
	.byte		        8
	.byte		        16
	.byte		PAN   , c_v+63
	.byte		VOL   , 32*mus_dd_hideout_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_dd_hideout_6_001:
	.byte		VOL   , 32*mus_dd_hideout_mvl/mxv
	.byte		TIE   , Gn3 , v112
	.byte	W24
	.byte		VOL   , 21*mus_dd_hideout_mvl/mxv
	.byte	W24
	.byte		        10*mus_dd_hideout_mvl/mxv
	.byte	W24
	.byte		        10*mus_dd_hideout_mvl/mxv
	.byte	W24
	.byte		PEND
	.byte	W96
	.byte		EOT   
mus_dd_hideout_6_002:
	.byte		VOL   , 32*mus_dd_hideout_mvl/mxv
	.byte		TIE   , Fs3 , v112
	.byte	W24
	.byte		VOL   , 21*mus_dd_hideout_mvl/mxv
	.byte	W24
	.byte		        10*mus_dd_hideout_mvl/mxv
	.byte	W24
	.byte		        10*mus_dd_hideout_mvl/mxv
	.byte	W24
	.byte		PEND
	.byte	W96
	.byte		EOT   
	.byte	PATT
	 .word	mus_dd_hideout_6_001
	.byte	W96
	.byte		EOT   , Gn3
	.byte	PATT
	 .word	mus_dd_hideout_6_002
	.byte	W60
	.byte		EOT   , Fs3
	.byte		VOL   , 21*mus_dd_hideout_mvl/mxv
	.byte		N06   , Fn3 , v112
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		N18   , Dn3
	.byte	W18
	.byte		N03   , En3
	.byte	W03
	.byte		        Fs3
	.byte	W03
	.byte	PATT
	 .word	mus_dd_hideout_6_001
	.byte	W96
	.byte		EOT   , Gn3
	.byte	PATT
	 .word	mus_dd_hideout_6_002
	.byte	W96
	.byte		EOT   , Fs3
	.byte	PATT
	 .word	mus_dd_hideout_6_001
	.byte	W96
	.byte		EOT   , Gn3
	.byte	PATT
	 .word	mus_dd_hideout_6_002
	.byte	W96
	.byte		EOT   , Fs3
	.byte	PATT
	 .word	mus_dd_hideout_6_001
	.byte	W96
	.byte		EOT   , Gn3
	.byte	PATT
	 .word	mus_dd_hideout_6_002
	.byte	W96
	.byte		EOT   , Fs3
	.byte	PATT
	 .word	mus_dd_hideout_6_001
	.byte	W96
	.byte		EOT   , Gn3
	.byte	PATT
	 .word	mus_dd_hideout_6_002
	.byte	W96
	.byte		EOT   , Fs3
	.byte	PATT
	 .word	mus_dd_hideout_6_001
	.byte	W96
	.byte		EOT   , Gn3
	.byte	PATT
	 .word	mus_dd_hideout_6_002
	.byte	W72
	.byte		EOT   , Fs3
	.byte	W24
	.byte	GOTO
	 .word	mus_dd_hideout_6_000
	.byte		FINE

@**************** Track 7 ****************@

mus_dd_hideout_7:
	.byte		KEYSH , mus_dd_hideout_key+0
mus_dd_hideout_7_000:
	.byte		VOICE , 0
	.byte		VOL   , 81*mus_dd_hideout_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N12   , Cn1 , v112
	.byte	W12
	.byte		N12
	.byte	W48
	.byte		N12
	.byte	W18
	.byte		N12
	.byte	W18
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W48
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , En1
	.byte	W12
	.byte		N06   , Cn1
	.byte	W06
	.byte		N06
	.byte	W06
mus_dd_hideout_7_001:
	.byte		N06   , Cn1 , v112
	.byte	W12
	.byte		N06
	.byte	W48
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W18
	.byte		PEND
mus_dd_hideout_7_002:
	.byte		N06   , Cn1 , v112
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , En1
	.byte	W12
	.byte		N06   , Cn1
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_hideout_7_001
	.byte		N06   , Cn1 , v112
	.byte	W12
	.byte		N06
	.byte	W48
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , En1
	.byte	W12
	.byte		N06   , Cn1
	.byte	W06
	.byte		N06
	.byte	W06
	.byte	PATT
	 .word	mus_dd_hideout_7_001
	.byte	PATT
	 .word	mus_dd_hideout_7_002
	.byte		N06   , Cn1 , v112
	.byte	W12
	.byte		N06
	.byte	W42
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        En1
	.byte	W06
	.byte		        Cn1
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		N03   , Fn1 , v056
	.byte	W06
	.byte		        Fn1 , v052
	.byte	W06
	.byte		N12   , En1 , v112
	.byte	W12
	.byte		N06   , Cn1
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Dn1 , v096
	.byte	W12
	.byte		        Cn1 , v112
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N03   , Fn1 , v056
	.byte	W06
	.byte		        Fn1 , v052
	.byte	W06
	.byte		N06   , Cn1 , v112
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Dn1
	.byte	W06
	.byte		        Cn1
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Dn1
	.byte	W06
	.byte		        Cs1
	.byte	W06
	.byte		        Cn1
	.byte	W06
	.byte		        Dn1
	.byte	W06
	.byte		        Cn1
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Dn1
	.byte	W12
	.byte		        Cn1
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Dn1
	.byte	W06
	.byte		        Cn1
	.byte	W18
mus_dd_hideout_7_003:
	.byte		N06   , Cn1 , v112
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cs1
	.byte	W12
	.byte		        Cn1
	.byte	W06
	.byte		        Cs1
	.byte	W18
	.byte		        Cn1
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cs1
	.byte	W12
	.byte		        Cn1
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		PEND
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cs1
	.byte	W06
	.byte		        Cn1
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12   , Cs1
	.byte	W12
	.byte		N06   , Cn1
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		        Cs1
	.byte	W12
	.byte		        Cn1
	.byte	W12
	.byte		        Cs1
	.byte	W06
	.byte		        Cn1
	.byte	W06
	.byte		        Cs1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		        Gn1
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Cs1
	.byte	W12
	.byte		        Cn1
	.byte	W06
	.byte		        Cs1
	.byte	W06
	.byte		        Cn1
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Cs1
	.byte	W06
	.byte		        Cn1
	.byte	W06
	.byte		N06
	.byte	W12
	.byte	PATT
	 .word	mus_dd_hideout_7_003
	.byte		N06   , Cn1 , v112
	.byte	W06
	.byte		N06
	.byte	W12
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
	.byte		        Cn1
	.byte	W06
	.byte		        Cs1
	.byte	W12
	.byte		        Cn1
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cs1
	.byte	W12
	.byte		        Cn1
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Cs1
	.byte	W12
	.byte		        Cn1
	.byte	W06
	.byte		        Cs1
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cn1
	.byte	W06
	.byte		        Cs1
	.byte	W06
	.byte		        Cn1
	.byte	W12
	.byte		        Cs1
	.byte	W06
	.byte		        Cn1
	.byte	W06
	.byte		N44   , En2 , v064
	.byte		N44   , Bn2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N06   , Cn1 , v112
	.byte	W12
	.byte		N06
	.byte	W12
	.byte	GOTO
	 .word	mus_dd_hideout_7_000
	.byte		FINE

@**************** Track 8 ****************@

mus_dd_hideout_8:
	.byte		KEYSH , mus_dd_hideout_key+0
mus_dd_hideout_8_000:
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		XCMD  , 8 , 18
	.byte		        8
	.byte		        16
	.byte		VOL   , 43*mus_dd_hideout_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		        Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		N05   , Gn5 , v104
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		        Gn5 , v072
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		N01   , Gn5 , v084
	.byte	W03
	.byte		        Gn5 , v032
	.byte	W03
	.byte		        Gn5 , v056
	.byte	W06
	.byte		N03   , Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		N05   , Gn5 , v100
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		        Gn5 , v072
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
mus_dd_hideout_8_001:
	.byte		N03   , Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		        Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		N05   , Gn5 , v104
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		        Gn5 , v072
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		        Gn5 , v084
	.byte	W06
	.byte		        Gn5 , v056
	.byte	W06
	.byte		N12   , Gn5 , v096
	.byte	W12
	.byte		N05   , Gn5 , v100
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		        Gn5 , v072
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		PEND
mus_dd_hideout_8_002:
	.byte		N03   , Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		        Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		N05   , Gn5 , v104
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		        Gn5 , v072
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		N01   , Gn5 , v084
	.byte	W03
	.byte		        Gn5 , v032
	.byte	W03
	.byte		        Gn5 , v056
	.byte	W06
	.byte		N03   , Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		N05   , Gn5 , v108
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		        Gn5 , v072
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		PEND
mus_dd_hideout_8_003:
	.byte		N03   , Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		        Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		N05   , Gn5 , v104
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		        Gn5 , v072
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		        Gn5 , v084
	.byte	W06
	.byte		        Gn5 , v056
	.byte	W06
	.byte		N12   , Gn5 , v096
	.byte	W12
	.byte		N05   , Gn5 , v100
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		N12   , Gn5 , v112
	.byte	W12
	.byte		PEND
mus_dd_hideout_8_004:
	.byte		N03   , Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		        Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		N05   , Gn5 , v104
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		        Gn5 , v072
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		N01   , Gn5 , v084
	.byte	W03
	.byte		        Gn5 , v032
	.byte	W03
	.byte		        Gn5 , v056
	.byte	W06
	.byte		N03   , Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		N05   , Gn5 , v100
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		        Gn5 , v072
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		PEND
mus_dd_hideout_8_005:
	.byte		N03   , Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		        Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		N05   , Gn5 , v104
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		        Gn5 , v072
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		        Gn5 , v084
	.byte	W06
	.byte		        Gn5 , v056
	.byte	W06
	.byte		N12   , Gn5 , v112
	.byte	W12
	.byte		N05   , Gn5 , v100
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		        Gn5 , v072
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_hideout_8_004
mus_dd_hideout_8_006:
	.byte		N03   , Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		        Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		N05   , Gn5 , v104
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		        Gn5 , v072
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		N01   , Gn5 , v096
	.byte	W03
	.byte		        Gn5 , v072
	.byte	W03
	.byte		N03   , Gn5 , v088
	.byte	W06
	.byte		N12   , Gn5 , v112
	.byte	W12
	.byte		N05   , Gn5 , v100
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		        Gn5 , v072
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_hideout_8_004
	.byte	PATT
	 .word	mus_dd_hideout_8_001
	.byte	PATT
	 .word	mus_dd_hideout_8_002
	.byte	PATT
	 .word	mus_dd_hideout_8_003
	.byte	PATT
	 .word	mus_dd_hideout_8_004
	.byte	PATT
	 .word	mus_dd_hideout_8_005
	.byte	PATT
	 .word	mus_dd_hideout_8_004
	.byte	PATT
	 .word	mus_dd_hideout_8_006
mus_dd_hideout_8_007:
	.byte		N03   , Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		        Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		N05   , Gn5 , v104
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		        Gn5 , v072
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		N01   , Gn5 , v104
	.byte	W03
	.byte		        Gn5 , v068
	.byte	W03
	.byte		N04   , Gn5 , v088
	.byte	W06
	.byte		N03   , Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		N05   , Gn5 , v100
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		        Gn5 , v072
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		PEND
mus_dd_hideout_8_008:
	.byte		N03   , Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		        Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		N05   , Gn5 , v104
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		        Gn5 , v072
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		        Gn5 , v084
	.byte	W06
	.byte		        Gn5 , v056
	.byte	W06
	.byte		N01   , Gn5 , v064
	.byte	W03
	.byte		        Gn5 , v048
	.byte	W03
	.byte		N03   , Gn5 , v064
	.byte	W06
	.byte		N05   , Gn5 , v100
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		N12   , Gn5 , v112
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_hideout_8_002
	.byte	PATT
	 .word	mus_dd_hideout_8_008
	.byte	PATT
	 .word	mus_dd_hideout_8_004
mus_dd_hideout_8_009:
	.byte		N03   , Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		        Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		N05   , Gn5 , v104
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		        Gn5 , v072
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		        Gn5 , v084
	.byte	W06
	.byte		        Gn5 , v056
	.byte	W06
	.byte		N01   , Gn5 , v064
	.byte	W03
	.byte		        Gn5 , v048
	.byte	W03
	.byte		N03   , Gn5 , v064
	.byte	W06
	.byte		N05   , Gn5 , v100
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		        Gn5 , v072
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_dd_hideout_8_004
	.byte		N03   , Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		        Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		N06   , Gn5 , v104
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		        Gn5 , v072
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		        Gn5 , v084
	.byte	W06
	.byte		        Gn5 , v056
	.byte	W06
	.byte		N01   , Gn5 , v064
	.byte	W03
	.byte		        Gn5 , v048
	.byte	W03
	.byte		N03   , Gn5 , v064
	.byte	W06
	.byte		N05   , Gn5 , v100
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		        Gn5 , v072
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte	PATT
	 .word	mus_dd_hideout_8_004
	.byte	PATT
	 .word	mus_dd_hideout_8_001
	.byte	PATT
	 .word	mus_dd_hideout_8_002
	.byte		N03   , Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		        Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		N05   , Gn5 , v104
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		        Gn5 , v072
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		        Gn5 , v084
	.byte	W06
	.byte		N09   , Gn5 , v096
	.byte	W12
	.byte		N12   , Gn5 , v084
	.byte	W12
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		N12   , Gn5 , v112
	.byte	W12
	.byte	PATT
	 .word	mus_dd_hideout_8_004
	.byte	PATT
	 .word	mus_dd_hideout_8_005
	.byte	PATT
	 .word	mus_dd_hideout_8_004
	.byte		N03   , Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		        Gn5 , v064
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		N05   , Gn5 , v104
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		        Gn5 , v072
	.byte	W06
	.byte		        Gn5 , v044
	.byte	W06
	.byte		N01   , Gn5 , v096
	.byte	W03
	.byte		        Gn5 , v072
	.byte	W03
	.byte		N03   , Gn5 , v088
	.byte	W06
	.byte		N12   , Gn5 , v112
	.byte	W12
	.byte		N05   , Gn5 , v100
	.byte	W06
	.byte		N03   , Gn5 , v068
	.byte	W06
	.byte		N12   , Gn5 , v108
	.byte	W12
	.byte	PATT
	 .word	mus_dd_hideout_8_007
	.byte	PATT
	 .word	mus_dd_hideout_8_008
	.byte	PATT
	 .word	mus_dd_hideout_8_002
	.byte	PATT
	 .word	mus_dd_hideout_8_009
	.byte	GOTO
	 .word	mus_dd_hideout_8_000
	.byte		FINE

@******************************************************@
	.align	2

mus_dd_hideout:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_dd_hideout_pri	@ Priority
	.byte	mus_dd_hideout_rev	@ Reverb.

	.word	mus_dd_hideout_grp

	.word	mus_dd_hideout_1
	.word	mus_dd_hideout_2
	.word	mus_dd_hideout_3
	.word	mus_dd_hideout_4
	.word	mus_dd_hideout_5
	.word	mus_dd_hideout_6
	.word	mus_dd_hideout_7
	.word	mus_dd_hideout_8

	.end
