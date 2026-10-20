@ "Ice Man" from Super Robot Taisen: Original Generation (song 0x13), ported from sound/import.
@ Track numbers match the original. Tracks 3 (a sparse low saxophone) and 12 (a quiet doubling layer) were cut to fit Emerald's 10 tracks and 5 sampled channels.
@ Track 8 is shifted down an octave because Emerald's waves repeat twice.

	.include "MPlayDef.s"

	.equ	mus_ice_man_grp, voicegroup_srt_og
	.equ	mus_ice_man_pri, 0
	.equ	mus_ice_man_rev, reverb_set+48
	.equ	mus_ice_man_mvl, 127
	.equ	mus_ice_man_key, 0
	.equ	mus_ice_man_tbs, 1
	.equ	mus_ice_man_exg, 0
	.equ	mus_ice_man_cmp, 1

	.section .rodata
	.global	mus_ice_man
	.align	2

@**************** Track 1 ****************@

mus_ice_man_1:
	.byte		KEYSH , mus_ice_man_key+0
	.byte		TEMPO , 250*mus_ice_man_tbs/2
	.byte		VOICE , 27
	.byte	W01
	.byte		VOL   , 50*mus_ice_man_mvl/mxv
	.byte		PAN   , c_v+16
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		TEMPO , 132*mus_ice_man_tbs/2
	.byte	W24
	.byte		N11   , Gn1 , v100
	.byte	W12
	.byte		        Cn2 , v092
	.byte	W84
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		        Gs1 , v100
	.byte	W12
	.byte		        Cs2 , v092
	.byte	W12
	.byte		        Fn2
	.byte	W12
	.byte		N23   , Cs3 , v100
	.byte	W24
	.byte		N11   , Gs1
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		        Gs2
	.byte	W12
	.byte		        Gs1
	.byte	W12
	.byte		        Cn2 , v092
	.byte	W12
	.byte		        Ds2
	.byte	W12
	.byte		N23   , Cn3 , v100
	.byte	W24
	.byte		N11   , Gs1
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte		        Gs2
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		        Cn2 , v092
	.byte	W12
	.byte		        Dn2
	.byte	W12
	.byte		N23   , Cn3 , v100
	.byte	W24
	.byte		N11   , Gn1
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte		        Gn2
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		        Bn1 , v092
	.byte	W12
	.byte		        Dn2
	.byte	W12
	.byte		N23   , Bn2 , v100
	.byte	W24
	.byte		N11   , Gn1
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		        Gn2
	.byte	W12
	.byte	W96
	.byte	W96
mus_ice_man_1_000:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W78
	.byte		VOICE , 65
	.byte		VOL   , 75*mus_ice_man_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W04
	.byte		N11   , Gn3 , v127
	.byte	W12
	.byte		N07   , Cn4
	.byte	W01
	.byte	W11
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N09   , As3
	.byte	W12
	.byte		N06   , Cn4
	.byte	W07
	.byte		N04   , Ds4
	.byte	W12
	.byte		N09   , Gn3
	.byte	W17
	.byte		N11   , As3
	.byte	W12
	.byte		N07   , Cn4
	.byte	W01
	.byte	W11
	.byte		N09   , As3
	.byte	W12
	.byte		N06   , Ds4
	.byte	W07
	.byte		N03   , Fn4 , v120
	.byte	W11
	.byte		N21   , Gn4 , v108
	.byte	W42
	.byte		N05   , Gn4 , v120
	.byte	W12
	.byte		N08   , Gs4
	.byte	W01
	.byte	W11
	.byte		N06   , As4
	.byte	W07
	.byte		N04   , Gs4
	.byte	W17
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		        Gn4
	.byte	W12
	.byte		N08   , Fn4
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		N11   , Gs3 , v127
	.byte	W01
	.byte	W23
	.byte		N23   , Gn4 , v120
	.byte	W24
	.byte		N17   , Fn4 , v100
	.byte	W24
	.byte		N21   , As3 , v127
	.byte	W24
	.byte		N48   , Gs3
	.byte	W01
	.byte	W56
	.byte	W03
	.byte		N11
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        Gn4 , v120
	.byte	W12
	.byte		N17   , Fn4
	.byte	W01
	.byte	W23
	.byte		        Ds4
	.byte	W24
	.byte		        Dn4
	.byte	W24
	.byte		N09   , Ds4
	.byte	W12
	.byte		N36   , Dn4
	.byte	W13
	.byte	W32
	.byte	W03
	.byte		N11
	.byte	W12
	.byte		N15   , Fn4
	.byte	W19
	.byte		        As3 , v127
	.byte	W17
	.byte		N36   , Gn4 , v120
	.byte	W13
	.byte	W32
	.byte	W03
	.byte		N09
	.byte	W12
	.byte		N11   , As4
	.byte	W12
	.byte		N09   , Gn4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		N11   , Dn4
	.byte	W12
	.byte		N60   , Cn4
	.byte	W01
	.byte	W68
	.byte	W03
	.byte		N21   , Ds4
	.byte	W24
	.byte		N19   , Dn4
	.byte	W01
	.byte	W23
	.byte		        Ds4
	.byte	W24
	.byte		        Dn4
	.byte	W24
	.byte		        As3
	.byte	W24
	.byte		        Dn4
	.byte	W01
	.byte	W23
	.byte		        Ds4
	.byte	W24
	.byte		        Fn4
	.byte	W24
	.byte		N11   , Gn4
	.byte	W12
	.byte		N30   , Cn4
	.byte	W13
	.byte	W32
	.byte	W03
	.byte		N09
	.byte	W12
	.byte		N11   , Ds4
	.byte	W12
	.byte		N09   , Dn4
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		N11   , Ds4
	.byte	W12
	.byte		        Fn4
	.byte	W01
	.byte	W11
	.byte		N09   , Ds4 , v104
	.byte	W12
	.byte		        Ds4 , v120
	.byte	W12
	.byte		N05   , Dn4 , v108
	.byte	W07
	.byte		N14   , Ds4
	.byte	W40
	.byte	W01
	.byte		N11   , Ds4 , v120
	.byte	W12
	.byte		        Gn4
	.byte	W01
	.byte	W11
	.byte		N09   , Fn4 , v104
	.byte	W12
	.byte		        Fn4 , v120
	.byte	W12
	.byte		N05   , Gn4 , v108
	.byte	W07
	.byte		N14   , Fn4
	.byte	W40
	.byte	W01
	.byte		N11   , Fn4 , v120
	.byte	W12
	.byte		N09   , Gs4
	.byte	W01
	.byte	W11
	.byte		N03   , Gs4 , v108
	.byte	W07
	.byte		N09
	.byte	W17
	.byte		N20   , Gs4 , v124
	.byte	W24
	.byte		        As4
	.byte	W24
	.byte		N09   , Gs4
	.byte	W12
	.byte		N07   , Gn4
	.byte	W01
	.byte	W11
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte		N05   , As4 , v127
	.byte	W07
	.byte		N13   , Gn4 , v112
	.byte	W42
	.byte		N11   , Gn4 , v108
	.byte	W12
mus_ice_man_1_001:
	.byte		N15   , Cn5 , v116
	.byte	W24
	.byte		        Gn4 , v108
	.byte	W24
	.byte		        Cn5 , v116
	.byte	W19
	.byte		        Ds5 , v108
	.byte	W17
	.byte		N09   , Cn5 , v116
	.byte	W12
	.byte		PEND
mus_ice_man_1_002:
	.byte		N15   , As4 , v116
	.byte	W19
	.byte		N15
	.byte	W17
	.byte		N09   , Cn5
	.byte	W12
	.byte		N20   , Gn4
	.byte	W36
	.byte		N09   , As4
	.byte	W12
	.byte		PEND
mus_ice_man_1_003:
	.byte		N15   , Cn5 , v116
	.byte	W24
	.byte		        Gn4 , v108
	.byte	W24
	.byte		        Cn5 , v116
	.byte	W19
	.byte		        Dn5 , v108
	.byte	W17
	.byte		N09   , Ds5
	.byte	W12
	.byte		PEND
mus_ice_man_1_004:
	.byte		N15   , Fn5 , v104
	.byte	W19
	.byte		        Dn5 , v108
	.byte	W17
	.byte		N09   , Cn5 , v116
	.byte	W12
	.byte		N20
	.byte	W24
	.byte		N15   , As4 , v108
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_1_001
mus_ice_man_1_005:
	.byte		N15   , As4 , v116
	.byte	W19
	.byte		N15
	.byte	W17
	.byte		N09   , Cn5
	.byte	W12
	.byte		N14   , Gn4
	.byte	W24
	.byte		N09
	.byte	W12
	.byte		        As4
	.byte	W12
	.byte		PEND
mus_ice_man_1_006:
	.byte		N15   , Cn5 , v116
	.byte	W24
	.byte		N20   , Ds5 , v108
	.byte	W24
	.byte		        Fn5 , v104
	.byte	W24
	.byte		N23   , Gn5 , v092
	.byte	W24
	.byte		PEND
	.byte		N72   , Cn5 , v116
	.byte	W84
	.byte		N11   , Gn4
	.byte	W12
	.byte	PATT
	 .word	mus_ice_man_1_001
	.byte	PATT
	 .word	mus_ice_man_1_002
	.byte	PATT
	 .word	mus_ice_man_1_003
	.byte	PATT
	 .word	mus_ice_man_1_004
	.byte	PATT
	 .word	mus_ice_man_1_001
	.byte	PATT
	 .word	mus_ice_man_1_005
	.byte	PATT
	 .word	mus_ice_man_1_006
	.byte		N56   , Cn5 , v116
	.byte	W72
	.byte		N09   , Gn4
	.byte	W12
	.byte		        As4
	.byte	W12
	.byte		N15   , Cn5
	.byte	W24
	.byte		N17   , Ds5 , v108
	.byte	W24
	.byte		        Fn5 , v104
	.byte	W24
	.byte		N23   , Gn5 , v092
	.byte	W24
	.byte		N72   , Cn5 , v108
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_ice_man_1_000
	.byte		FINE

@**************** Track 2 ****************@

mus_ice_man_2:
	.byte		KEYSH , mus_ice_man_key+0
	.byte		VOICE , 125
	.byte	W01
	.byte		VOL   , 75*mus_ice_man_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		N03   , En1 , v056
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N11   , Bn0 , v096
	.byte		N06   , En1 , v112
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte	W96
	.byte	W60
	.byte		N11   , En1 , v112
	.byte	W19
	.byte		N04
	.byte	W05
	.byte		N11   , Dn1 , v092
	.byte	W12
	.byte		N05   , Bn0 , v120
	.byte	W96
	.byte	W54
	.byte	W01
	.byte		N11   , En1 , v112
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N04   , Dn1 , v092
	.byte	W05
	.byte		N11   , En1 , v112
	.byte	W12
	.byte		N05   , Bn0 , v120
	.byte	W96
	.byte	W48
	.byte		N06   , En1 , v112
	.byte	W07
	.byte		N11   , Dn1 , v092
	.byte	W12
	.byte		N04
	.byte	W05
	.byte		N06   , En1 , v112
	.byte	W07
	.byte		N04   , Dn1 , v092
	.byte	W05
	.byte		N11   , En1 , v100
	.byte	W12
	.byte		N05   , Bn0 , v120
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , En1 , v072
	.byte	W05
	.byte		N06
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , En1 , v072
	.byte	W05
	.byte		N06
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , En1 , v072
	.byte	W05
	.byte		N06
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , En1 , v072
	.byte	W05
	.byte		N06
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte		N06   , En1 , v100
	.byte		N23   , Cs2 , v116
	.byte	W07
	.byte		N04   , En1 , v072
	.byte	W05
	.byte		N06   , En1 , v112
	.byte	W07
	.byte		N04   , En1 , v080
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte		N06   , En1 , v112
	.byte		N23   , Cs2 , v116
	.byte	W07
	.byte		N04   , En1 , v080
	.byte	W05
	.byte		N06
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte		N06   , En1 , v112
	.byte		N23   , Cs2 , v116
	.byte	W07
	.byte		N04   , En1 , v080
	.byte	W05
	.byte		N05   , Bn0 , v100
	.byte		N06   , En1 , v080
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte		N03   , En1 , v080
	.byte		N23   , Cs2 , v116
	.byte	W03
	.byte		N03   , En1 , v080
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N05   , Bn0 , v100
	.byte		N03   , En1 , v112
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N11   , Bn0 , v120
	.byte		N23   , Cs2 , v116
	.byte	W24
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W19
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W17
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W24
mus_ice_man_2_000:
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W17
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W19
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W17
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W12
	.byte		        Bn0 , v108
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		PEND
mus_ice_man_2_001:
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		N05
	.byte		N11   , En1 , v112
	.byte	W19
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W17
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W24
	.byte		PEND
	.byte		        Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W17
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W19
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W12
	.byte		N05   , Bn0 , v108
	.byte		N04   , En1 , v112
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W12
	.byte		        Bn0 , v108
	.byte		N06   , En1 , v112
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		N04
	.byte		N11   , En1 , v112
	.byte	W19
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N11   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W17
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W24
	.byte	PATT
	 .word	mus_ice_man_2_000
mus_ice_man_2_002:
	.byte		N05   , Bn0 , v120
	.byte	W24
	.byte		N05
	.byte		N11   , En1 , v112
	.byte	W19
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W17
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W24
	.byte		PEND
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W17
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N11   , En1 , v112
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N06   , En1 , v112
	.byte	W07
	.byte		N05   , Bn0 , v108
	.byte		N04   , En1 , v112
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte		N06   , En1 , v112
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N05   , Bn0 , v108
	.byte		N06   , En1 , v112
	.byte	W07
	.byte		N11
	.byte	W05
	.byte		        Bn0 , v127
	.byte	W12
	.byte		        Bn0 , v112
	.byte	W36
	.byte		        Bn0 , v127
	.byte	W12
	.byte		        Bn0 , v112
	.byte		N09   , Cn3 , v127
	.byte	W12
	.byte		N23   , Cs3
	.byte	W24
	.byte		N05   , Bn0 , v120
	.byte		N23   , Cs2 , v116
	.byte	W24
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W19
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N11   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W17
	.byte		N11   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W24
	.byte		        Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W17
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W19
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W17
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W19
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		N05
	.byte		N11   , En1 , v112
	.byte	W19
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N11   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W17
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W24
	.byte		        Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W17
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W19
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W12
	.byte		        En1 , v112
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W12
	.byte		N06
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		N11
	.byte		N11   , En1 , v112
	.byte	W19
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N11   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W17
	.byte		N11   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W24
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W17
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W19
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W17
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W19
	.byte		N04   , En1 , v076
	.byte	W05
	.byte	PATT
	 .word	mus_ice_man_2_001
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W17
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N11   , En1 , v112
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N06   , En1 , v112
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte		N06   , En1 , v112
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N06
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte		N23   , Cs2 , v116
	.byte	W24
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		N11
	.byte	W24
	.byte		N05
	.byte		N11   , En1 , v112
	.byte	W24
mus_ice_man_2_003:
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		N05
	.byte	W24
	.byte		N11
	.byte	W24
	.byte		N05
	.byte		N11   , En1 , v112
	.byte	W24
	.byte		PEND
mus_ice_man_2_004:
	.byte		N11   , Bn0 , v120
	.byte	W24
	.byte		N11
	.byte	W24
	.byte		N11
	.byte	W24
	.byte		N05
	.byte		N11   , En1 , v112
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_2_003
	.byte	PATT
	 .word	mus_ice_man_2_004
	.byte	PATT
	 .word	mus_ice_man_2_003
	.byte		N05   , Bn0 , v120
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N06   , En1 , v100
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte	W24
	.byte		N11
	.byte	W19
	.byte		        Bn0 , v112
	.byte	W17
	.byte		N03   , En1 , v072
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N05   , Bn0 , v120
	.byte		N03   , En1 , v072
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N02
	.byte	W03
mus_ice_man_2_005:
	.byte		N05   , Bn0 , v120
	.byte		N23   , Cs2 , v116
	.byte	W24
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W19
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W17
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W24
	.byte		PEND
mus_ice_man_2_006:
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W17
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W19
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W17
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W12
	.byte		N05   , Bn0 , v108
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_2_001
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W17
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W19
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W12
	.byte		        En1 , v112
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W12
	.byte		N05   , Bn0 , v108
	.byte		N06   , En1 , v112
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W05
	.byte	PATT
	 .word	mus_ice_man_2_005
	.byte	PATT
	 .word	mus_ice_man_2_006
	.byte	PATT
	 .word	mus_ice_man_2_002
	.byte		N11   , Bn0 , v120
	.byte	W07
	.byte		N10   , En1 , v076
	.byte	W17
	.byte		N11   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N11   , En1 , v112
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N06   , En1 , v112
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte		N06   , En1 , v112
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N05   , Bn0 , v108
	.byte		N06   , En1 , v112
	.byte	W07
	.byte		N04
	.byte	W05
	.byte	PATT
	 .word	mus_ice_man_2_005
	.byte	PATT
	 .word	mus_ice_man_2_006
	.byte	PATT
	 .word	mus_ice_man_2_002
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W17
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W19
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W12
	.byte		N05   , Bn0 , v108
	.byte		N04   , En1 , v112
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W12
	.byte		N05   , Bn0 , v108
	.byte		N06   , En1 , v112
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte	W24
	.byte		N05
	.byte		N23   , Cs2
	.byte	W19
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W17
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W24
	.byte	PATT
	 .word	mus_ice_man_2_006
	.byte	PATT
	 .word	mus_ice_man_2_002
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W17
	.byte		N05   , Bn0 , v120
	.byte		N11   , En1 , v112
	.byte	W12
	.byte		N06   , En1 , v076
	.byte	W07
	.byte		N11   , En1 , v112
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte	W07
	.byte		N04   , En1 , v076
	.byte	W05
	.byte		N06   , En1 , v112
	.byte	W07
	.byte		N05   , Bn0 , v108
	.byte		N04   , En1 , v112
	.byte	W05
	.byte		N05   , Bn0 , v120
	.byte		N06   , En1 , v112
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N05   , Bn0 , v108
	.byte		N06   , En1 , v112
	.byte	W07
	.byte		N05
	.byte	W05
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Bn0 , v112
	.byte	W36
	.byte		        Bn0 , v127
	.byte	W11
	.byte		N05   , Cn3
	.byte	W01
	.byte		N11   , Bn0 , v112
	.byte	W05
	.byte		N06   , Cn3 , v127
	.byte	W07
	.byte		N23   , Cs3
	.byte	W24
	.byte	PATT
	 .word	mus_ice_man_2_005
	.byte	PATT
	 .word	mus_ice_man_2_006
	.byte	GOTO
	 .word	mus_ice_man_2_001
	.byte		FINE

@**************** Track 4 ****************@

mus_ice_man_4:
	.byte		KEYSH , mus_ice_man_key+0
	.byte		VOICE , 48
	.byte	W01
	.byte		VOL   , 44*mus_ice_man_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W44
	.byte	W02
	.byte		N80   , Ds4 , v080
	.byte	W84
	.byte		N04
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		N68   , Gn4
	.byte	W72
	.byte		N22   , Cn5
	.byte	W24
	.byte		N68   , Dn5
	.byte	W72
	.byte		N10   , Ds5
	.byte	W12
	.byte		N44   , Gn4
	.byte	W12
	.byte	W36
	.byte		N10
	.byte	W12
	.byte		        As4
	.byte	W12
	.byte		        Gs4
	.byte	W12
	.byte		        Gn4
	.byte	W12
	.byte		        As3
	.byte	W12
	.byte		N22   , Ds4
	.byte	W24
	.byte		N10   , Fn4
	.byte	W12
	.byte		N44
	.byte	W48
	.byte		N10   , Gn4
	.byte	W12
	.byte		        Gs4
	.byte	W12
	.byte		        Gn4
	.byte	W12
	.byte		        Gs4
	.byte	W12
	.byte		N32   , Cn4
	.byte	W36
	.byte		N22   , Ds4
	.byte	W24
	.byte		N92   , Dn4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_ice_man_4_000:
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
	.byte	W92
	.byte	W01
	.byte		VOICE , 48
	.byte		VOL   , 44*mus_ice_man_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		N44   , Cn4 , v072
	.byte	W48
	.byte		N22   , Gn3
	.byte	W24
	.byte		        Ds4
	.byte	W24
	.byte		        Gn4
	.byte	W24
	.byte		        Fn4
	.byte	W24
	.byte		N11   , Ds4
	.byte	W48
	.byte		N44   , Cn4
	.byte	W48
	.byte		        Gs4
	.byte	W48
	.byte		N22   , Fn4
	.byte	W24
	.byte		        Gs4
	.byte	W24
	.byte		        Gn4
	.byte	W24
	.byte		        Dn5
	.byte	W24
	.byte		N23   , Cn5
	.byte	W36
	.byte		N06   , As4
	.byte	W07
	.byte		N04   , Gs4
	.byte	W05
	.byte		N22   , Gn4
	.byte	W24
	.byte		N10   , Ds4
	.byte	W12
	.byte		        Gn4
	.byte	W12
mus_ice_man_4_001:
	.byte		N06   , Ds4 , v080
	.byte	W07
	.byte		N04   , Fn4
	.byte	W05
	.byte		N09   , Gn4
	.byte	W12
	.byte		N06
	.byte	W07
	.byte		N04   , Gs4
	.byte	W05
	.byte		N09   , As4
	.byte	W12
	.byte		N11   , Gn4 , v072
	.byte	W48
	.byte		PEND
mus_ice_man_4_002:
	.byte		N10   , Fn4 , v072
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N32   , Dn4
	.byte	W36
	.byte		PEND
	.byte		N76   , Ds4 , v060
	.byte	W84
	.byte		N11   , Dn4
	.byte	W12
	.byte		N44   , Ds4 , v072
	.byte	W48
	.byte		N68   , Gn4
	.byte	W48
	.byte	W24
	.byte		N22   , Fn4
	.byte	W24
	.byte		N11   , As3
	.byte	W24
	.byte		N22   , As4
	.byte	W24
	.byte		N32   , Gs4
	.byte	W36
	.byte		N06   , Gn4 , v080
	.byte	W07
	.byte		N04   , Fn4
	.byte	W05
	.byte		N22   , Gs3 , v072
	.byte	W24
	.byte		N44   , Gs4
	.byte	W24
	.byte	W24
	.byte		N22   , Fn4
	.byte	W24
	.byte		N06   , Gn4 , v080
	.byte	W07
	.byte		        As3
	.byte	W05
	.byte		        Dn4
	.byte	W07
	.byte		        Ds4
	.byte	W05
	.byte		        Fn4
	.byte	W07
	.byte		        Gn4
	.byte	W05
	.byte		        Gs4
	.byte	W07
	.byte		        As4
	.byte	W05
	.byte		N22   , Cn5 , v072
	.byte	W36
	.byte		N10   , Gn4
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		N22   , Gn4
	.byte	W24
	.byte	PATT
	 .word	mus_ice_man_4_001
	.byte	PATT
	 .word	mus_ice_man_4_002
	.byte		N92   , Ds4 , v060
	.byte	W96
	.byte		N44   , Gs3 , v028
	.byte	W48
	.byte		        As3
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_ice_man_4_000
	.byte		FINE

@**************** Track 5 ****************@

mus_ice_man_5:
	.byte		KEYSH , mus_ice_man_key+0
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W01
	.byte		VOICE , 54
	.byte		VOL   , 62*mus_ice_man_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		N18   , Fn3 , v112
	.byte	W24
	.byte		N18
	.byte	W24
	.byte		N18
	.byte	W24
	.byte		N18
	.byte	W24
	.byte		N18
	.byte	W96
	.byte	W84
	.byte		N12   , As3 , v120
	.byte	W12
mus_ice_man_5_000:
	.byte	W96
	.byte	W84
	.byte		N12   , As3 , v120
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W96
	.byte	W12
	.byte		N10   , Fn4
	.byte	W12
	.byte		N04   , Cn4
	.byte	W06
	.byte		N10   , Ds4
	.byte	W12
	.byte		N04   , Fn3
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		        Gs3
	.byte	W12
	.byte		        Fn3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		N16   , Cs4
	.byte	W06
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N23   , As3
	.byte	W24
	.byte	W96
	.byte	W72
	.byte		N23
	.byte	W24
	.byte	W96
	.byte	W72
	.byte		N23
	.byte	W24
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
	.byte	W90
	.byte		VOICE , 30
	.byte	W06
	.byte		N10   , Cn2 , v100
	.byte	W12
	.byte		        Ds2
	.byte	W12
	.byte		        Gn2
	.byte	W12
	.byte		        As2
	.byte	W12
	.byte		N44   , An2
	.byte	W12
	.byte	W36
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
	.byte		VOICE , 54
	.byte		VOL   , 62*mus_ice_man_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W80
	.byte	W03
	.byte		N12   , As3 , v120
	.byte	W12
	.byte	GOTO
	 .word	mus_ice_man_5_000
	.byte		FINE

@**************** Track 6 ****************@

mus_ice_man_6:
	.byte		KEYSH , mus_ice_man_key+0
	.byte		VOICE , 100
	.byte		VOL   , 56*mus_ice_man_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W44
	.byte	W03
	.byte	W24
	.byte		N19   , Cn4 , v127
	.byte	W24
	.byte		N30   , Gn4
	.byte	W36
	.byte		N05   , Ds5 , v120
	.byte	W06
	.byte		        Fn5
	.byte	W06
	.byte		N19   , Gn5
	.byte	W24
	.byte		        Ds5
	.byte	W24
	.byte		N21   , Cn5
	.byte	W48
	.byte		N07   , Gs4
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        Fn4
	.byte	W08
	.byte		N54   , Gs3
	.byte	W72
	.byte	W12
	.byte		N05   , As5
	.byte	W06
	.byte		N04   , Gn5
	.byte	W06
	.byte		N05   , Dn5
	.byte	W06
	.byte		N04   , As4 , v116
	.byte	W06
	.byte		N05   , Gn4
	.byte	W06
	.byte		N04   , Dn4
	.byte	W06
	.byte		N42   , As3 , v120
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_ice_man_6_000:
	.byte		N19   , Cn5 , v092
	.byte	W24
	.byte		        Ds5
	.byte	W24
	.byte		N14   , Dn5
	.byte	W19
	.byte		N12   , As4
	.byte	W17
	.byte		N15   , Cn5
	.byte	W12
	.byte		PEND
mus_ice_man_6_001:
	.byte	W12
	.byte		N07   , Cn5 , v092
	.byte	W12
	.byte		N19   , Ds5
	.byte	W24
	.byte		N14   , Dn5
	.byte	W19
	.byte		N21   , As4
	.byte	W28
	.byte	W01
	.byte		PEND
mus_ice_man_6_002:
	.byte	PATT
	 .word	mus_ice_man_6_000
	.byte	W12
	.byte		N07   , Cn5 , v092
	.byte	W12
	.byte		N19   , Ds5
	.byte	W24
	.byte		N14   , Fn5
	.byte	W19
	.byte		N21   , Gn5
	.byte	W28
	.byte	W01
	.byte	PATT
	 .word	mus_ice_man_6_000
	.byte	PATT
	 .word	mus_ice_man_6_001
	.byte		N19   , Cn5 , v092
	.byte	W24
	.byte		        Ds5
	.byte	W24
	.byte		N14   , Fn5
	.byte	W19
	.byte		N68   , Gn5
	.byte	W28
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W12
	.byte		N05   , Gs5
	.byte	W06
	.byte		        Fn5 , v088
	.byte	W06
	.byte		        Cn5
	.byte	W06
	.byte		        Gs4 , v080
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		N48   , Gs3 , v076
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N42   , Ds5 , v080
	.byte	W48
	.byte		        Gs5
	.byte	W48
	.byte		N19   , Fn5
	.byte	W24
	.byte		        Gn5
	.byte	W24
	.byte		        Fn5
	.byte	W24
	.byte		        Dn5
	.byte	W24
	.byte		N42   , Fn5
	.byte	W48
	.byte		        As4
	.byte	W48
	.byte		N19   , Ds5
	.byte	W24
	.byte		        Dn5
	.byte	W24
	.byte		        Ds5
	.byte	W24
	.byte		        Gn5
	.byte	W24
	.byte		N52   , Gs5
	.byte	W60
	.byte		N06   , Ds5
	.byte		N06   , Gs5 , v092
	.byte	W12
	.byte		N10   , Cn5 , v080
	.byte		N68   , Ds5 , v092
	.byte	W24
	.byte	W60
	.byte		N06   , Fn5 , v080
	.byte		N06   , As5 , v092
	.byte	W12
	.byte		N10   , Dn5 , v080
	.byte		N19   , Fn5 , v092
	.byte	W24
	.byte		        Dn5 , v080
	.byte	W24
	.byte		        Cn5
	.byte	W24
	.byte		        Dn5
	.byte	W24
	.byte		        Fn5
	.byte	W24
	.byte		N56   , Gn5
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
	.byte	PATT
	 .word	mus_ice_man_6_000
	.byte	W12
	.byte		N07   , Cn5 , v092
	.byte	W12
	.byte		N15   , Ds5
	.byte	W24
	.byte		N11   , Dn5
	.byte	W19
	.byte		N21   , As4
	.byte	W28
	.byte	W01
	.byte	GOTO
	 .word	mus_ice_man_6_002
	.byte		FINE

@**************** Track 7 ****************@

mus_ice_man_7:
	.byte		KEYSH , mus_ice_man_key+0
	.byte		VOICE , 126
	.byte	W01
	.byte		VOL   , 75*mus_ice_man_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W44
	.byte	W02
mus_ice_man_7_000:
	.byte		N17   , Cn1 , v112
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v052
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , En1
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W12
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v052
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N22   , As1 , v040
	.byte	W06
	.byte		N04   , Dn1 , v052
	.byte	W06
	.byte		N05   , En1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PEND
mus_ice_man_7_001:
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v052
	.byte	W06
	.byte		N22   , As1 , v040
	.byte	W06
	.byte		N04   , En1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v052
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N03   , Fs1
	.byte	W06
	.byte		N05   , Dn1 , v052
	.byte	W06
	.byte		        As1 , v040
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v052
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , En1
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N11   , Cn1 , v112
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_7_000
	.byte	PATT
	 .word	mus_ice_man_7_001
	.byte		N17   , Cn1 , v112
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v052
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , En1
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W12
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N17   , Cn1 , v112
	.byte		N05   , Dn1 , v052
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N22   , As1 , v040
	.byte	W06
	.byte		N04   , Dn1 , v052
	.byte	W06
	.byte		N05   , En1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N17   , Cn1 , v112
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v052
	.byte	W06
	.byte		N22   , As1 , v040
	.byte	W06
	.byte		N04   , En1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v052
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N03   , Fs1
	.byte	W06
	.byte		N05   , Dn1 , v052
	.byte	W06
	.byte		N11   , Cn1 , v112
	.byte	W12
	.byte		N05   , Dn1 , v052
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , En1
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N03
	.byte	W06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N05   , Dn1 , v052
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Cn1 , v112
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W12
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v052
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , As1 , v040
	.byte	W06
	.byte		N04   , Dn1 , v052
	.byte	W06
	.byte		N05   , Cn1 , v112
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N03
	.byte	W06
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		        As1 , v040
	.byte	W06
	.byte		N04   , En1 , v080
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W12
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N05   , Dn1 , v072
	.byte	W18
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N11   , As1 , v040
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N03
	.byte	W06
mus_ice_man_7_002:
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N11   , Cn1 , v112
	.byte		N11   , As1 , v040
	.byte	W18
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		        As1 , v040
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N11   , Cn1 , v112
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		PEND
mus_ice_man_7_003:
	.byte		N05   , Cn1 , v112
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N11   , As1 , v040
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N11   , Cn1 , v112
	.byte		N11   , As1 , v040
	.byte	W18
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N05   , As1 , v040
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Cn1 , v112
	.byte		N05   , Dn1 , v072
	.byte	W18
	.byte		N05
	.byte	W18
mus_ice_man_7_004:
	.byte		N05   , Cn1 , v112
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N10   , As1 , v040
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_7_002
	.byte		N17   , Cn1 , v112
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N10   , As1 , v040
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N11   , Cn1 , v112
	.byte		N11   , As1 , v040
	.byte	W18
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W12
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Cn1 , v112
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N05   , Dn1 , v072
	.byte	W12
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N11   , Cn1 , v127
	.byte		N03   , Fs1 , v080
	.byte	W06
	.byte		N05   , En1
	.byte	W06
	.byte		N11   , Cn1 , v100
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N11   , En1 , v100
	.byte		N03   , Fs1 , v080
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N05   , En1 , v080
	.byte	W06
	.byte		N11   , Cn1 , v120
	.byte		N03   , Fs1 , v080
	.byte	W06
	.byte		N05   , En1
	.byte	W06
	.byte		N11   , Cn1 , v100
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N11   , En1 , v100
	.byte		N03   , Fs1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v120
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , En1 , v080
	.byte	W06
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N04   , As1 , v040
	.byte	W12
	.byte		N05   , Dn1 , v060
	.byte	W06
	.byte		N03   , Fs1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , As1 , v040
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N11   , Cn1 , v112
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte	PATT
	 .word	mus_ice_man_7_004
mus_ice_man_7_005:
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N04   , As1 , v040
	.byte	W12
	.byte		N05   , Dn1 , v060
	.byte	W06
	.byte		N03   , Fs1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , As1 , v040
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N11   , Cn1 , v112
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		PEND
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , As1 , v040
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N04   , As1 , v040
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1
	.byte	W06
	.byte		N03   , Fs1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , As1 , v040
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N11   , Cn1 , v112
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte	PATT
	 .word	mus_ice_man_7_004
	.byte	PATT
	 .word	mus_ice_man_7_005
	.byte		N05   , Cn1 , v112
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N05   , As1 , v040
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N03
	.byte	W06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N04   , As1 , v040
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1
	.byte	W06
	.byte		N03   , Fs1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , As1 , v040
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N11   , Cn1 , v112
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
mus_ice_man_7_006:
	.byte		N05   , Cn1 , v112
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N17   , As1 , v040
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N11   , Cn1 , v112
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N10   , As1 , v040
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PEND
mus_ice_man_7_007:
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N04   , As1 , v040
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1
	.byte	W06
	.byte		N03   , Fs1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , As1 , v040
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N11   , Cn1 , v112
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_7_006
	.byte	PATT
	 .word	mus_ice_man_7_007
	.byte	PATT
	 .word	mus_ice_man_7_006
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N04   , As1 , v040
	.byte	W12
	.byte		N05   , Dn1 , v060
	.byte	W06
	.byte		N03   , Fs1
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		        As1 , v040
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W12
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Cn1 , v112
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N06   , Dn1 , v100
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W01
	.byte		        Dn1 , v096
	.byte	W05
	.byte		N06   , Dn1 , v100
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W01
	.byte		        Dn1 , v096
	.byte	W05
	.byte		N06   , Dn1 , v100
	.byte	W07
	.byte		N03   , Dn1 , v096
	.byte	W05
	.byte		N05   , Cn1 , v112
	.byte		N06   , Dn1 , v100
	.byte	W07
	.byte		N05   , Dn1 , v092
	.byte	W11
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , As1 , v040
	.byte	W06
	.byte		        Dn1 , v068
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N03
	.byte	W06
mus_ice_man_7_008:
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N04   , As1 , v040
	.byte	W12
	.byte		N05   , Dn1 , v060
	.byte	W06
	.byte		N03   , Fs1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , As1 , v040
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N11   , Cn1 , v112
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_7_004
	.byte	PATT
	 .word	mus_ice_man_7_005
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N10   , As1 , v040
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte	PATT
	 .word	mus_ice_man_7_008
	.byte	PATT
	 .word	mus_ice_man_7_004
	.byte	PATT
	 .word	mus_ice_man_7_008
	.byte	W36
	.byte		N11   , Cn1 , v112
	.byte	W18
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , As1 , v040
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte	PATT
	 .word	mus_ice_man_7_008
mus_ice_man_7_009:
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N11   , Cn1 , v112
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N10   , As1 , v040
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_7_008
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , As1 , v040
	.byte	W18
	.byte		        Dn1 , v072
	.byte	W12
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N04   , As1 , v040
	.byte	W18
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , As1 , v040
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N11   , Cn1 , v112
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte	PATT
	 .word	mus_ice_man_7_009
	.byte	PATT
	 .word	mus_ice_man_7_008
	.byte		N05   , Cn1 , v112
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N05   , As1 , v040
	.byte	W18
	.byte		        Dn1 , v072
	.byte	W12
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		        Fs1 , v080
	.byte	W06
	.byte		N05   , En1
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N11   , En1 , v108
	.byte		N03   , Fs1 , v080
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N05   , En1 , v080
	.byte	W06
	.byte		N03   , Fs1
	.byte	W06
	.byte		N05   , En1
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N11   , En1 , v108
	.byte		N03   , Fs1 , v080
	.byte	W12
	.byte		N11   , Cn1 , v120
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , En1 , v080
	.byte	W06
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N10   , As1 , v040
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N03
	.byte	W06
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N11   , Cn1 , v112
	.byte		N11   , As1 , v040
	.byte	W18
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N05   , Dn1 , v072
	.byte	W12
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N11   , Cn1 , v112
	.byte		N05   , Dn1 , v072
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W12
	.byte		N05   , Dn1 , v072
	.byte	W12
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte	GOTO
	 .word	mus_ice_man_7_003
	.byte		FINE

@**************** Track 8 ****************@

mus_ice_man_8:
	.byte		KEYSH , mus_ice_man_key-12
	.byte		VOICE , 107
	.byte	W01
	.byte		VOL   , 75*mus_ice_man_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W44
	.byte	W02
	.byte		N92   , Cn2 , v100
	.byte	W96
	.byte		        As1
	.byte	W96
	.byte		N44   , Gs1
	.byte	W48
	.byte		        Fn1
	.byte	W48
	.byte		N92   , Gn1
	.byte	W96
	.byte		        Cs2
	.byte	W96
	.byte		        Gs1
	.byte	W96
	.byte		TIE   , Gn1
	.byte	W96
	.byte	W88
	.byte		EOT   
	.byte	W02
	.byte		VOICE , 108
	.byte	W06
mus_ice_man_8_000:
	.byte		N06   , Cn2 , v120
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		N10   , Cn2
	.byte	W19
	.byte		N16
	.byte	W17
	.byte		N10   , Gn2
	.byte	W12
	.byte		N16   , Cn2
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_8_000
mus_ice_man_8_001:
	.byte		N06   , Gs1 , v120
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		N10   , Gs1
	.byte	W19
	.byte		N16
	.byte	W17
	.byte		N10   , Ds2
	.byte	W12
	.byte		N16   , Gs1
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_8_001
mus_ice_man_8_002:
	.byte		N06   , Fn1 , v120
	.byte	W12
	.byte		        Ds1
	.byte	W12
	.byte		N10   , Fn1
	.byte	W19
	.byte		N16
	.byte	W17
	.byte		N10   , Cn2
	.byte	W12
	.byte		N16   , Fn1
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_8_002
mus_ice_man_8_003:
	.byte		N06   , Dn2 , v120
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte		N10   , Dn2
	.byte	W19
	.byte		N16
	.byte	W17
	.byte		N10   , Gs1
	.byte	W12
	.byte		N16   , Dn2
	.byte	W24
	.byte		PEND
mus_ice_man_8_004:
	.byte		N06   , Gn1 , v120
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		N10   , Gn1
	.byte	W19
	.byte		N16
	.byte	W17
	.byte		N10   , Dn2
	.byte	W12
	.byte		N16   , Gn1
	.byte	W24
	.byte		PEND
	.byte	W96
	.byte	PATT
	 .word	mus_ice_man_8_000
	.byte	PATT
	 .word	mus_ice_man_8_000
	.byte	PATT
	 .word	mus_ice_man_8_001
	.byte	PATT
	 .word	mus_ice_man_8_001
	.byte	PATT
	 .word	mus_ice_man_8_002
	.byte	PATT
	 .word	mus_ice_man_8_002
	.byte	PATT
	 .word	mus_ice_man_8_004
	.byte	PATT
	 .word	mus_ice_man_8_004
	.byte	PATT
	 .word	mus_ice_man_8_001
mus_ice_man_8_005:
	.byte		N06   , As1 , v120
	.byte	W12
	.byte		        Gs1
	.byte	W12
	.byte		N10   , As1
	.byte	W19
	.byte		N16
	.byte	W17
	.byte		N10   , Fn2
	.byte	W12
	.byte		N16   , As1
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_8_004
	.byte	PATT
	 .word	mus_ice_man_8_000
	.byte	PATT
	 .word	mus_ice_man_8_001
	.byte	PATT
	 .word	mus_ice_man_8_005
	.byte	PATT
	 .word	mus_ice_man_8_003
	.byte		N06   , Gn1 , v120
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W07
	.byte		N04
	.byte	W40
	.byte	W01
	.byte		N10
	.byte	W12
	.byte	PATT
	 .word	mus_ice_man_8_000
mus_ice_man_8_006:
	.byte		N06   , Ds1 , v120
	.byte	W12
	.byte		        Cs1
	.byte	W12
	.byte		N10   , Ds1
	.byte	W19
	.byte		N16
	.byte	W17
	.byte		N10   , As1
	.byte	W12
	.byte		N16   , Ds1
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_8_001
mus_ice_man_8_007:
	.byte		N06   , Dn2 , v120
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte		N10   , Dn2
	.byte	W19
	.byte		N16   , Gn1
	.byte	W17
	.byte		N10   , Dn2
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_8_000
	.byte	PATT
	 .word	mus_ice_man_8_006
mus_ice_man_8_008:
	.byte		N06   , Fn1 , v120
	.byte	W12
	.byte		        Ds1
	.byte	W12
	.byte		N10   , Fn1
	.byte	W19
	.byte		N16   , Gn1
	.byte	W17
	.byte		N10   , Dn2
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		PEND
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds1
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		N44   , An1
	.byte	W48
	.byte	PATT
	 .word	mus_ice_man_8_000
	.byte	PATT
	 .word	mus_ice_man_8_006
	.byte	PATT
	 .word	mus_ice_man_8_001
	.byte	PATT
	 .word	mus_ice_man_8_007
	.byte	PATT
	 .word	mus_ice_man_8_000
	.byte	PATT
	 .word	mus_ice_man_8_006
	.byte	PATT
	 .word	mus_ice_man_8_008
	.byte		N06   , Gs1 , v120
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		N10   , Gs1
	.byte	W19
	.byte		N16
	.byte	W17
	.byte		N10   , Ds2
	.byte	W12
	.byte		N16   , Gs1
	.byte	W24
	.byte	PATT
	 .word	mus_ice_man_8_008
	.byte	PATT
	 .word	mus_ice_man_8_000
	.byte	PATT
	 .word	mus_ice_man_8_000
	.byte	GOTO
	 .word	mus_ice_man_8_001
	.byte		FINE

@**************** Track 9 ****************@

mus_ice_man_9:
	.byte		KEYSH , mus_ice_man_key+0
	.byte		VOICE , 127
	.byte	W01
	.byte		VOL   , 50*mus_ice_man_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W44
	.byte	W01
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
mus_ice_man_9_000:
	.byte		N02   , Cs8 , v080
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Ds8 , v076
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Cs8 , v080
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Ds8 , v076
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Cs8 , v080
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Ds8 , v076
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Cs8 , v080
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Ds8 , v076
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_9_000
	.byte	PATT
	 .word	mus_ice_man_9_000
	.byte	PATT
	 .word	mus_ice_man_9_000
	.byte	PATT
	 .word	mus_ice_man_9_000
	.byte	PATT
	 .word	mus_ice_man_9_000
	.byte	PATT
	 .word	mus_ice_man_9_000
	.byte		N02   , Cs8 , v080
	.byte	W24
	.byte		N02
	.byte	W24
	.byte		N02
	.byte	W24
	.byte		N02
	.byte	W24
mus_ice_man_9_001:
	.byte		N02   , Cs8 , v080
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Ds8
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Cs8
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Ds8
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Cs8
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Ds8
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Cs8
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Ds8
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_9_001
mus_ice_man_9_002:
	.byte	PATT
	 .word	mus_ice_man_9_001
	.byte	PATT
	 .word	mus_ice_man_9_001
	.byte	PATT
	 .word	mus_ice_man_9_001
	.byte	PATT
	 .word	mus_ice_man_9_001
	.byte	PATT
	 .word	mus_ice_man_9_001
mus_ice_man_9_003:
	.byte		N02   , Cs8 , v080
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Ds8
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Cs8
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Ds8
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Cs8
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Ds8
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Cs8
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N14   , Ds8
	.byte	W12
	.byte		PEND
mus_ice_man_9_004:
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Cs8 , v068
	.byte	W07
	.byte		        Cs8 , v056
	.byte	W17
	.byte		        Cs8 , v068
	.byte	W07
	.byte		        Cs8 , v056
	.byte	W17
	.byte		        Cs8 , v068
	.byte	W07
	.byte		        Cs8 , v056
	.byte	W17
	.byte		        Cs8 , v068
	.byte	W07
	.byte		N01   , Cs8 , v056
	.byte	W05
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_9_001
	.byte	PATT
	 .word	mus_ice_man_9_001
	.byte	PATT
	 .word	mus_ice_man_9_001
	.byte	PATT
	 .word	mus_ice_man_9_001
	.byte	PATT
	 .word	mus_ice_man_9_001
	.byte	PATT
	 .word	mus_ice_man_9_001
	.byte	PATT
	 .word	mus_ice_man_9_001
mus_ice_man_9_005:
	.byte		N02   , Cs8 , v080
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Ds8
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Cs8
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Ds8
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Cs8
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Ds8
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Cs8
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N10   , Ds8
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		PEND
	.byte		N02   , Cs8 , v088
	.byte	W07
	.byte		N01   , Cs8 , v060
	.byte	W05
	.byte		N02   , Cs8 , v068
	.byte	W05
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W02
	.byte		N01   , Cs8 , v060
	.byte	W05
	.byte		N02   , Cs8 , v088
	.byte	W07
	.byte		N01   , Cs8 , v060
	.byte	W05
	.byte		N02   , Cs8 , v068
	.byte	W07
	.byte		N01   , Cs8 , v060
	.byte	W05
	.byte		N02   , Cs8 , v088
	.byte	W07
	.byte		N01   , Cs8 , v060
	.byte	W05
	.byte		N02   , Cs8 , v068
	.byte	W07
	.byte		N01   , Cs8 , v060
	.byte	W05
	.byte		N02   , Cs8 , v088
	.byte	W07
	.byte		N01   , Cs8 , v060
	.byte	W05
	.byte		N02   , Cs8 , v068
	.byte	W07
	.byte		N01   , Cs8 , v060
	.byte	W05
mus_ice_man_9_006:
	.byte		N02   , Cs8 , v088
	.byte	W07
	.byte		N01   , Cs8 , v060
	.byte	W05
	.byte		N02   , Cs8 , v068
	.byte	W07
	.byte		N01   , Cs8 , v060
	.byte	W05
	.byte		N02   , Cs8 , v088
	.byte	W07
	.byte		N01   , Cs8 , v060
	.byte	W05
	.byte		N02   , Cs8 , v068
	.byte	W07
	.byte		N01   , Cs8 , v060
	.byte	W05
	.byte		N02   , Cs8 , v088
	.byte	W07
	.byte		N01   , Cs8 , v060
	.byte	W05
	.byte		N02   , Cs8 , v068
	.byte	W07
	.byte		N01   , Cs8 , v060
	.byte	W05
	.byte		N02   , Cs8 , v088
	.byte	W07
	.byte		N01   , Cs8 , v060
	.byte	W05
	.byte		N02   , Cs8 , v068
	.byte	W07
	.byte		N01   , Cs8 , v060
	.byte	W05
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_9_006
	.byte	PATT
	 .word	mus_ice_man_9_006
	.byte	PATT
	 .word	mus_ice_man_9_006
	.byte	PATT
	 .word	mus_ice_man_9_006
	.byte	PATT
	 .word	mus_ice_man_9_001
	.byte		N02   , Cs8 , v080
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Ds8
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Cs8
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N14   , Ds8
	.byte	W32
	.byte	W03
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Cs8
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Ds8
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
mus_ice_man_9_007:
	.byte		N02   , Cs8 , v088
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Ds8 , v080
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Cs8
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Ds8
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Cs8
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Ds8
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Cs8
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Ds8
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_9_001
	.byte	PATT
	 .word	mus_ice_man_9_001
	.byte	PATT
	 .word	mus_ice_man_9_001
	.byte	PATT
	 .word	mus_ice_man_9_007
	.byte	PATT
	 .word	mus_ice_man_9_001
	.byte	PATT
	 .word	mus_ice_man_9_001
	.byte	PATT
	 .word	mus_ice_man_9_005
	.byte	PATT
	 .word	mus_ice_man_9_007
	.byte	PATT
	 .word	mus_ice_man_9_001
	.byte	PATT
	 .word	mus_ice_man_9_001
	.byte	PATT
	 .word	mus_ice_man_9_001
	.byte		N02   , Cs8 , v080
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N10   , Ds8
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Cs8 , v088
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Ds8 , v080
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Cs8
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Ds8
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Cs8
	.byte	W11
	.byte		VOICE , 123
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Ds8
	.byte	W11
	.byte		VOICE , 124
	.byte		PAN   , c_v-64
	.byte	W01
	.byte	PATT
	 .word	mus_ice_man_9_001
	.byte	PATT
	 .word	mus_ice_man_9_001
	.byte	PATT
	 .word	mus_ice_man_9_003
	.byte	PATT
	 .word	mus_ice_man_9_004
	.byte	PATT
	 .word	mus_ice_man_9_007
	.byte	PATT
	 .word	mus_ice_man_9_001
	.byte	GOTO
	 .word	mus_ice_man_9_002
	.byte		FINE

@**************** Track 10 ****************@

mus_ice_man_10:
	.byte		KEYSH , mus_ice_man_key+0
	.byte		VOICE , 82
	.byte	W01
	.byte		VOL   , 44*mus_ice_man_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W44
	.byte	W02
	.byte		N92   , Cn4 , v060
	.byte	W96
	.byte		N68   , Ds4
	.byte	W72
	.byte		N22   , Gn4
	.byte	W24
	.byte		N80   , Cn4
	.byte	W84
	.byte		N44   , Dn4
	.byte	W12
	.byte	W36
	.byte		N10
	.byte	W12
	.byte		        Gn4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		N22   , Gs3
	.byte	W24
	.byte		N10   , Cs4
	.byte	W12
	.byte		N44   , Cs4 , v052
	.byte	W48
	.byte		N10   , Cs4 , v060
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		        Cs4
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		N32   , Ds4 , v052
	.byte	W36
	.byte		N22   , Cn4 , v060
	.byte	W24
	.byte	W09
	.byte		VOICE , 91
	.byte	W03
	.byte		N04   , Gn3
	.byte	W12
	.byte		N06   , Dn3
	.byte	W07
	.byte		N04   , Dn4
	.byte	W12
	.byte		        Gn3
	.byte	W05
	.byte		N06   , Dn4
	.byte	W07
	.byte		N04   , Gn3
	.byte	W12
	.byte		N04
	.byte	W05
	.byte		N06   , Dn3
	.byte	W07
	.byte		N04   , Gn3
	.byte	W12
	.byte		        Dn4
	.byte	W05
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		N06   , Dn3
	.byte	W07
	.byte		N04   , Dn4
	.byte	W12
	.byte		        Gn3
	.byte	W05
	.byte		N06   , Dn4
	.byte	W07
	.byte		N04   , Gn3
	.byte	W12
	.byte		N04
	.byte	W05
	.byte		N06   , Dn3
	.byte	W07
	.byte		N04   , Gn3
	.byte	W12
	.byte		        Dn4
	.byte	W05
mus_ice_man_10_000:
	.byte	W12
	.byte		N04   , Cn4 , v096
	.byte	W12
	.byte		N04
	.byte	W24
	.byte		N10
	.byte	W19
	.byte		N04
	.byte	W18
	.byte		N09
	.byte	W11
	.byte		PEND
mus_ice_man_10_001:
	.byte	W12
	.byte		N04   , Cn4 , v096
	.byte	W12
	.byte		N06   , As3
	.byte	W07
	.byte		N04   , Cn4
	.byte	W12
	.byte		N10
	.byte	W17
	.byte		N04
	.byte	W19
	.byte		N16
	.byte	W17
	.byte		PEND
mus_ice_man_10_002:
	.byte	PATT
	 .word	mus_ice_man_10_000
	.byte	PATT
	 .word	mus_ice_man_10_001
	.byte	PATT
	 .word	mus_ice_man_10_000
	.byte	PATT
	 .word	mus_ice_man_10_001
	.byte	PATT
	 .word	mus_ice_man_10_000
	.byte	W12
	.byte		N04   , Cn4 , v096
	.byte	W12
	.byte		N06   , Bn3
	.byte	W07
	.byte		N04   , Cn4
	.byte	W12
	.byte		N10   , Bn3
	.byte	W17
	.byte		N04
	.byte	W19
	.byte		N16
	.byte	W17
	.byte	W12
	.byte		N04   , Bn3 , v076
	.byte	W12
	.byte		N04
	.byte	W24
	.byte		N10
	.byte	W19
	.byte		N04
	.byte	W18
	.byte		N09
	.byte	W11
mus_ice_man_10_003:
	.byte	W12
	.byte		N04   , Cn4 , v096
	.byte	W12
	.byte		N10
	.byte	W19
	.byte		N04
	.byte	W17
	.byte		N04
	.byte	W19
	.byte		N10
	.byte	W17
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_10_001
	.byte	PATT
	 .word	mus_ice_man_10_003
	.byte	PATT
	 .word	mus_ice_man_10_001
	.byte	PATT
	 .word	mus_ice_man_10_003
	.byte	PATT
	 .word	mus_ice_man_10_001
	.byte	PATT
	 .word	mus_ice_man_10_003
	.byte	W12
	.byte		N04   , Cn4 , v096
	.byte	W12
	.byte		N06   , Bn3
	.byte	W07
	.byte		N04   , Cn4
	.byte	W12
	.byte		N10   , Bn3
	.byte	W17
	.byte		N04
	.byte	W19
	.byte		N10
	.byte	W17
mus_ice_man_10_004:
	.byte		N11   , Gs2 , v092
	.byte	W12
	.byte		        Cn3 , v080
	.byte	W12
	.byte		        Ds3
	.byte	W12
	.byte		N23   , Cn4 , v092
	.byte	W24
	.byte		N11   , Gs2
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		        Gs3
	.byte	W12
	.byte		PEND
mus_ice_man_10_005:
	.byte		N11   , As2 , v092
	.byte	W12
	.byte		        Dn3 , v080
	.byte	W12
	.byte		        Fn3
	.byte	W12
	.byte		N28   , Dn4 , v092
	.byte	W36
	.byte		N05   , Dn4 , v112
	.byte	W07
	.byte		N04   , As3 , v080
	.byte	W05
	.byte		N11   , Dn3
	.byte	W12
	.byte		PEND
	.byte		        Gn2 , v092
	.byte	W12
	.byte		        As2 , v080
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		N23   , Dn4
	.byte	W24
	.byte		N11   , Dn3
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        As3
	.byte	W12
	.byte		        Gn2 , v092
	.byte	W12
	.byte		        Cn3 , v080
	.byte	W12
	.byte		        Ds3 , v092
	.byte	W12
	.byte		N23   , Cn4
	.byte	W24
	.byte		N11   , Cn3 , v080
	.byte	W12
	.byte		N06   , Ds3 , v100
	.byte	W07
	.byte		N04   , Cn4 , v092
	.byte	W05
	.byte		N11   , Gn3
	.byte	W12
	.byte	PATT
	 .word	mus_ice_man_10_004
	.byte	PATT
	 .word	mus_ice_man_10_005
	.byte		N11   , Fs2 , v092
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		N23   , Cn4
	.byte	W24
	.byte		N11   , Dn3
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		N09   , Cn3 , v080
	.byte	W12
	.byte		N04   , Bn3 , v088
	.byte	W12
	.byte		N06   , Bn3 , v076
	.byte	W12
	.byte		N04   , Bn3 , v088
	.byte	W12
	.byte		N06   , Bn3 , v068
	.byte	W07
	.byte		N03   , Bn3 , v088
	.byte	W23
	.byte		PAN   , c_v+63
	.byte	W06
	.byte		N03   , Gn4 , v120
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N03   , En4 , v112
	.byte	W03
	.byte		        Cn4 , v100
	.byte	W03
	.byte		N02   , An3
	.byte	W03
	.byte		N03   , Fn3
	.byte	W03
	.byte		N02   , Dn3
	.byte	W03
	.byte		PAN   , c_v-64
	.byte		N03   , Bn2
	.byte	W03
	.byte		N07   , Gn2
	.byte	W03
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		N04   , Cn4 , v096
	.byte	W12
	.byte		N04
	.byte	W24
	.byte		N10
	.byte	W19
	.byte		N04
	.byte	W18
	.byte		N04
	.byte	W11
mus_ice_man_10_006:
	.byte	W12
	.byte		N04   , As3 , v096
	.byte	W12
	.byte		N04
	.byte	W24
	.byte		N10
	.byte	W19
	.byte		N04
	.byte	W18
	.byte		N04
	.byte	W11
	.byte		PEND
mus_ice_man_10_007:
	.byte	W12
	.byte		N04   , Cn4 , v096
	.byte	W12
	.byte		N04
	.byte	W24
	.byte		N10
	.byte	W19
	.byte		N04
	.byte	W18
	.byte		N04
	.byte	W11
	.byte		PEND
mus_ice_man_10_008:
	.byte	W12
	.byte		N04   , Cn4 , v096
	.byte	W12
	.byte		N04
	.byte	W24
	.byte		N10   , As3
	.byte	W19
	.byte		N04
	.byte	W18
	.byte		N04
	.byte	W11
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_10_007
	.byte	PATT
	 .word	mus_ice_man_10_006
	.byte	W12
	.byte		N04   , Cn4 , v096
	.byte	W12
	.byte		N04
	.byte	W24
	.byte		N10   , As3
	.byte	W19
	.byte		N04
	.byte	W18
	.byte		N03   , As3 , v080
	.byte	W10
	.byte		VOICE , 80
	.byte	W01
	.byte		N10   , Cn2 , v100
	.byte	W12
	.byte		        Ds2
	.byte	W12
	.byte		        Gn2
	.byte	W12
	.byte		        As2
	.byte	W12
	.byte		N44   , An2
	.byte	W44
	.byte	W03
	.byte		VOICE , 91
	.byte	W01
mus_ice_man_10_009:
	.byte		N09   , Gn5 , v072
	.byte	W12
	.byte		N04   , Cn4 , v096
	.byte	W12
	.byte		N04
	.byte	W24
	.byte		N10
	.byte	W19
	.byte		N04
	.byte	W05
	.byte		N09   , Gn5 , v072
	.byte	W13
	.byte		N04   , Cn4 , v096
	.byte	W11
	.byte		PEND
mus_ice_man_10_010:
	.byte		N09   , Gn5 , v072
	.byte	W12
	.byte		N04   , As3 , v096
	.byte	W12
	.byte		N04
	.byte	W24
	.byte		N10
	.byte	W19
	.byte		N04
	.byte	W05
	.byte		N09   , Gn5 , v072
	.byte	W13
	.byte		N04   , As3 , v096
	.byte	W11
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_10_009
mus_ice_man_10_011:
	.byte		N09   , Gn5 , v072
	.byte	W12
	.byte		N04   , Cn4 , v096
	.byte	W12
	.byte		N04
	.byte	W24
	.byte		N10   , As3
	.byte	W19
	.byte		N04
	.byte	W05
	.byte		N09   , Gn5 , v072
	.byte	W13
	.byte		N04   , As3 , v096
	.byte	W11
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_10_009
	.byte	PATT
	 .word	mus_ice_man_10_010
	.byte	PATT
	 .word	mus_ice_man_10_011
	.byte	PATT
	 .word	mus_ice_man_10_009
	.byte	PATT
	 .word	mus_ice_man_10_008
	.byte	PATT
	 .word	mus_ice_man_10_007
	.byte	W12
	.byte		N04   , Cn4 , v096
	.byte	W19
	.byte		        As3
	.byte	W05
	.byte		        Cn4
	.byte	W12
	.byte		N10
	.byte	W19
	.byte		N04
	.byte	W17
	.byte		N10
	.byte	W12
	.byte	GOTO
	 .word	mus_ice_man_10_002
	.byte		FINE

@**************** Track 11 ****************@

mus_ice_man_11:
	.byte		KEYSH , mus_ice_man_key+0
	.byte		VOICE , 87
	.byte	W01
	.byte		VOL   , 44*mus_ice_man_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W44
	.byte	W02
	.byte		N21   , Gn3 , v060
	.byte	W23
	.byte		VOICE , 96
	.byte	W01
	.byte		N11   , Ds3 , v092
	.byte	W12
	.byte		N23   , Cn4 , v100
	.byte	W24
	.byte		N11   , Gn2
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		        Fn2
	.byte	W12
	.byte		        As2 , v092
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		N23   , Dn4 , v100
	.byte	W24
	.byte		N11   , As2
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        Gs2
	.byte	W12
	.byte		        Cn3 , v092
	.byte	W12
	.byte		        Fn3
	.byte	W12
	.byte		N23   , Cn4 , v100
	.byte	W24
	.byte		N11   , Gs2
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		N23   , Gn2
	.byte	W12
	.byte	W12
	.byte		N11   , As2 , v092
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		N23   , Dn4 , v100
	.byte	W24
	.byte		N11   , Gn2
	.byte	W12
	.byte		        As2
	.byte	W12
	.byte		N10   , Gn3
	.byte	W11
	.byte		VOICE , 87
	.byte	W01
	.byte		N22   , Fn3 , v060
	.byte	W24
	.byte		N10   , Gs3
	.byte	W12
	.byte		N09
	.byte	W11
	.byte		VOICE , 97
	.byte	W01
	.byte		N28   , Gs5 , v120
	.byte	W32
	.byte	W01
	.byte		VOICE , 87
	.byte	W03
	.byte		N10   , Gs3 , v060
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        As3
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		N09   , Ds3
	.byte	W11
	.byte		VOICE , 97
	.byte	W01
	.byte		N22   , Gs5 , v120
	.byte	W23
	.byte		VOICE , 87
	.byte	W01
	.byte		N22   , Gs3 , v060
	.byte	W24
	.byte		N92   , Cn4
	.byte	W96
	.byte		N88   , Bn3 , v052
	.byte	W96
	.byte	W09
	.byte		VOICE , 96
	.byte	W03
	.byte		N04   , Gn3 , v076
	.byte	W12
	.byte		N04
	.byte	W24
	.byte		N10
	.byte	W19
	.byte		N04
	.byte	W18
	.byte		N09
	.byte	W11
mus_ice_man_11_000:
	.byte	W12
	.byte		N04   , Gn3 , v076
	.byte	W12
	.byte		N11
	.byte	W19
	.byte		N10
	.byte	W17
	.byte		N04
	.byte	W19
	.byte		N16
	.byte	W17
	.byte		PEND
mus_ice_man_11_001:
	.byte	W12
	.byte		N04   , Gs3 , v076
	.byte	W12
	.byte		N04
	.byte	W24
	.byte		N10
	.byte	W19
	.byte		N04
	.byte	W18
	.byte		N09
	.byte	W11
	.byte		PEND
mus_ice_man_11_002:
	.byte	W12
	.byte		N04   , Gs3 , v076
	.byte	W12
	.byte		N11
	.byte	W19
	.byte		N10
	.byte	W17
	.byte		N04
	.byte	W19
	.byte		N16
	.byte	W17
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_11_001
	.byte	PATT
	 .word	mus_ice_man_11_002
	.byte	PATT
	 .word	mus_ice_man_11_001
	.byte	PATT
	 .word	mus_ice_man_11_000
	.byte	W12
	.byte		N04   , Gn3 , v068
	.byte	W12
	.byte		N04
	.byte	W24
	.byte		N10
	.byte	W19
	.byte		N04
	.byte	W18
	.byte		N09
	.byte	W11
	.byte	W12
	.byte		N04   , Gn3 , v076
	.byte	W12
	.byte		N10
	.byte	W19
	.byte		N04
	.byte	W17
	.byte		N04
	.byte	W19
	.byte		N10
	.byte	W17
	.byte	PATT
	 .word	mus_ice_man_11_000
mus_ice_man_11_003:
	.byte	W12
	.byte		N04   , Gs3 , v076
	.byte	W12
	.byte		N10
	.byte	W19
	.byte		N04
	.byte	W17
	.byte		N04
	.byte	W19
	.byte		N10
	.byte	W17
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_11_002
	.byte	PATT
	 .word	mus_ice_man_11_003
	.byte	PATT
	 .word	mus_ice_man_11_002
	.byte	W12
	.byte		N04   , Gn3 , v076
	.byte	W12
	.byte		N10
	.byte	W19
	.byte		N04
	.byte	W17
	.byte		N04
	.byte	W19
	.byte		N10
	.byte	W11
	.byte		VOICE , 87
	.byte	W06
	.byte		N44   , Gn3 , v080
	.byte	W48
	.byte		N22   , Bn3 , v088
	.byte	W24
	.byte		        Dn4 , v092
	.byte	W24
	.byte		N44   , Gs3 , v060
	.byte	W48
	.byte		        Cn4
	.byte	W48
	.byte		N22   , As3
	.byte	W24
	.byte		        Cn4
	.byte	W24
	.byte		        As3
	.byte	W24
	.byte		        Fn3
	.byte	W24
	.byte		N44   , As3
	.byte	W48
	.byte		        Dn3
	.byte	W48
	.byte		N22   , Gn3
	.byte	W24
	.byte		N22
	.byte	W24
	.byte		N22
	.byte	W24
	.byte		        Cn4
	.byte	W24
	.byte		N56
	.byte	W60
	.byte		N10
	.byte	W12
	.byte		N22   , Gs3
	.byte	W24
	.byte		N56   , As3
	.byte	W60
	.byte		N10   , Dn4
	.byte	W12
	.byte		N22   , As3
	.byte	W24
	.byte		        Gs3
	.byte	W24
	.byte		        Fn3
	.byte	W24
	.byte		        Gs3
	.byte	W24
	.byte		N22
	.byte	W18
	.byte		VOICE , 96
	.byte	W06
	.byte		N03   , Dn3 , v092
	.byte	W12
	.byte		N05   , Dn3 , v080
	.byte	W12
	.byte		N03   , Dn3 , v092
	.byte	W12
	.byte		N05   , Dn3 , v072
	.byte	W07
	.byte		N03   , Dn3 , v092
	.byte	W28
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W02
	.byte		N02   , Fn4 , v112
	.byte	W02
	.byte		        Dn4 , v108
	.byte	W03
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N02   , Bn3 , v092
	.byte	W02
	.byte		N04   , Gn3
	.byte	W04
	.byte		N02   , En3
	.byte	W02
	.byte		        Cn3
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , An2
	.byte	W02
	.byte		N07   , Fn2
	.byte	W02
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		N04   , Gn3 , v076
	.byte	W12
	.byte		N04
	.byte	W24
	.byte		N10
	.byte	W19
	.byte		N04
	.byte	W18
	.byte		N04
	.byte	W11
mus_ice_man_11_004:
	.byte	W12
	.byte		N04   , Gn3 , v076
	.byte	W12
	.byte		N04
	.byte	W24
	.byte		N10
	.byte	W19
	.byte		N04
	.byte	W18
	.byte		N04
	.byte	W11
	.byte		PEND
	.byte	W12
	.byte		        Gs3
	.byte	W12
	.byte		N04
	.byte	W24
	.byte		N10
	.byte	W19
	.byte		N04
	.byte	W18
	.byte		N04
	.byte	W11
mus_ice_man_11_005:
	.byte	W12
	.byte		N04   , Gs3 , v076
	.byte	W12
	.byte		N04
	.byte	W24
	.byte		N10   , Gn3
	.byte	W19
	.byte		N04
	.byte	W18
	.byte		N04
	.byte	W11
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_11_004
	.byte	PATT
	 .word	mus_ice_man_11_004
	.byte	W12
	.byte		N04   , Gs3 , v076
	.byte	W12
	.byte		N04
	.byte	W24
	.byte		N10   , Gn3
	.byte	W19
	.byte		N04
	.byte	W18
	.byte		N04
	.byte	W10
	.byte		VOICE , 87
	.byte	W01
	.byte		N10   , Cn4 , v060
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		        Gn4
	.byte	W12
	.byte		        As4
	.byte	W12
	.byte		N44   , An4
	.byte	W06
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		        c_v+32
	.byte	W02
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-8
	.byte	W02
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+32
	.byte	W02
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-8
	.byte	W02
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+32
	.byte	W02
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-8
	.byte	W02
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+32
	.byte	W02
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		VOICE , 96
	.byte	W12
	.byte		N04   , Gn3 , v076
	.byte	W12
	.byte		N09   , Gn5 , v072
	.byte	W24
	.byte		N09
	.byte	W19
	.byte		N04   , Gn3 , v076
	.byte	W18
	.byte		N04
	.byte	W11
mus_ice_man_11_006:
	.byte	W12
	.byte		N04   , Gn3 , v076
	.byte	W12
	.byte		N09   , Gn5 , v072
	.byte	W24
	.byte		N09
	.byte	W19
	.byte		N04   , Gn3 , v076
	.byte	W18
	.byte		N04
	.byte	W11
	.byte		PEND
mus_ice_man_11_007:
	.byte	W12
	.byte		N04   , Gs3 , v076
	.byte	W12
	.byte		N09   , Gn5 , v072
	.byte	W24
	.byte		N09
	.byte	W19
	.byte		N04   , Gs3 , v076
	.byte	W18
	.byte		N04
	.byte	W11
	.byte		PEND
mus_ice_man_11_008:
	.byte	W12
	.byte		N04   , Gs3 , v076
	.byte	W12
	.byte		N09   , Gn5 , v072
	.byte	W24
	.byte		N09
	.byte	W19
	.byte		N04   , Gn3 , v076
	.byte	W18
	.byte		N04
	.byte	W11
	.byte		PEND
	.byte	PATT
	 .word	mus_ice_man_11_006
	.byte	PATT
	 .word	mus_ice_man_11_006
	.byte	PATT
	 .word	mus_ice_man_11_008
	.byte	PATT
	 .word	mus_ice_man_11_007
	.byte	PATT
	 .word	mus_ice_man_11_005
	.byte	PATT
	 .word	mus_ice_man_11_004
	.byte	W12
	.byte		N04   , Gn3 , v076
	.byte	W19
	.byte		N04
	.byte	W05
	.byte		N04
	.byte	W12
	.byte		N10
	.byte	W19
	.byte		N04
	.byte	W17
	.byte		N10
	.byte	W12
	.byte	GOTO
	 .word	mus_ice_man_11_001
	.byte		FINE

@******************************************************@
	.align	2

mus_ice_man:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_ice_man_pri	@ Priority
	.byte	mus_ice_man_rev	@ Reverb.

	.word	mus_ice_man_grp

	.word	mus_ice_man_1
	.word	mus_ice_man_2
	.word	mus_ice_man_4
	.word	mus_ice_man_5
	.word	mus_ice_man_6
	.word	mus_ice_man_7
	.word	mus_ice_man_8
	.word	mus_ice_man_9
	.word	mus_ice_man_10
	.word	mus_ice_man_11

	.end
