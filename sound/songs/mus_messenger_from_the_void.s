@ "Messenger from the Void" from Super Robot Taisen: Original Generation (song 0x17), ported from sound/import,
@ where the rip mislabels it as "37 Unknown 2".
@ Track numbers match the original. Tracks 10 (one of two square-wave backing parts) and 12 (a quiet doubling layer) were cut to fit Emerald's 10 tracks. The horns and strings carry the melody, so they stay; up to 6 sampled notes overlap very briefly (0.5% of the song).
@ Track 9 is shifted down an octave because Emerald's waves repeat twice.
@ Track 7 (a very low guitar part) uses the fingered bass (slot 33) instead of the guitar (slot 30), which sounded muddy that low.

	.include "MPlayDef.s"

	.equ	mus_messenger_from_the_void_grp, voicegroup_srt_og
	.equ	mus_messenger_from_the_void_pri, 0
	.equ	mus_messenger_from_the_void_rev, reverb_set+48
	.equ	mus_messenger_from_the_void_mvl, 127
	.equ	mus_messenger_from_the_void_key, 0
	.equ	mus_messenger_from_the_void_tbs, 1
	.equ	mus_messenger_from_the_void_exg, 0
	.equ	mus_messenger_from_the_void_cmp, 1

	.section .rodata
	.global	mus_messenger_from_the_void
	.align	2

@**************** Track 1 ****************@

mus_messenger_from_the_void_1:
	.byte		KEYSH , mus_messenger_from_the_void_key+0
	.byte		TEMPO , 250*mus_messenger_from_the_void_tbs/2
	.byte		VOICE , 119
	.byte	W01
	.byte		VOL   , 80*mus_messenger_from_the_void_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		TEMPO , 148*mus_messenger_from_the_void_tbs/2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		TEMPO , 100*mus_messenger_from_the_void_tbs/2
	.byte	W60
	.byte		TEMPO , 150*mus_messenger_from_the_void_tbs/2
	.byte	W36
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_messenger_from_the_void_1_000:
	.byte		N06   , Bn0 , v127
	.byte	W24
	.byte		N11
	.byte		N11   , Dn1 , v076
	.byte	W24
	.byte		        Bn0 , v127
	.byte	W24
	.byte		N06
	.byte		N11   , Dn1 , v076
	.byte	W24
	.byte		PEND
mus_messenger_from_the_void_1_001:
	.byte		N11   , Bn0 , v127
	.byte	W24
	.byte		N11
	.byte		N11   , Dn1 , v076
	.byte	W24
	.byte		N06   , Bn0 , v127
	.byte	W24
	.byte		N11
	.byte		N11   , Dn1 , v076
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_1_000
	.byte		N11   , Bn0 , v127
	.byte	W24
	.byte		N11
	.byte		N11   , Dn1 , v076
	.byte	W24
	.byte		N06   , Bn0 , v127
	.byte	W12
	.byte		N11   , Dn1 , v076
	.byte	W12
	.byte		        Bn0 , v127
	.byte		N11   , Dn1 , v076
	.byte	W12
	.byte		N06   , An1 , v100
	.byte	W12
	.byte		N11   , Bn0 , v127
	.byte		N06   , Dn1 , v076
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N06   , An1 , v100
	.byte	W07
	.byte		N04   , Fn1 , v116
	.byte	W05
	.byte		N11   , Bn0 , v127
	.byte	W24
	.byte		N11
	.byte	W24
	.byte		N06
	.byte		N11   , Dn1 , v076
	.byte	W24
	.byte	PATT
	 .word	mus_messenger_from_the_void_1_001
	.byte		N11   , Bn0 , v127
	.byte	W24
	.byte		N11
	.byte		N11   , Dn1 , v076
	.byte	W24
	.byte		        Bn0 , v127
	.byte	W24
	.byte		N06
	.byte		N11   , Dn1 , v076
	.byte	W24
	.byte		N11
	.byte	W12
	.byte		N06   , Bn0 , v127
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v076
	.byte	W12
	.byte		N06   , Bn0 , v127
	.byte		N11   , Dn1 , v076
	.byte	W12
	.byte		N03   , Cn2 , v100
	.byte	W04
	.byte		        An1
	.byte	W04
	.byte		        Fn1 , v116
	.byte	W04
	.byte		N11   , Bn0 , v127
	.byte		N11   , Dn1 , v076
	.byte	W24
mus_messenger_from_the_void_1_002:
	.byte		N06   , Bn0 , v127
	.byte	W24
	.byte		N11
	.byte	W24
	.byte		N11
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		PEND
mus_messenger_from_the_void_1_003:
	.byte		N11   , Bn0 , v127
	.byte	W24
	.byte		N11
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N11
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_1_002
	.byte		N11   , Bn0 , v127
	.byte	W24
	.byte		N11
	.byte	W24
	.byte		        Dn1 , v076
	.byte	W12
	.byte		N06   , Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v076
	.byte	W07
	.byte		N11   , Bn0 , v127
	.byte	W17
	.byte	PATT
	 .word	mus_messenger_from_the_void_1_000
	.byte	PATT
	 .word	mus_messenger_from_the_void_1_001
	.byte		N06   , Bn0 , v127
	.byte	W24
	.byte		N11
	.byte		N11   , Dn1 , v076
	.byte	W24
	.byte		N11
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W12
	.byte		N06   , Dn1 , v076
	.byte	W12
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		N05   , Dn1 , v076
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N06   , Bn0 , v127
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N05   , Dn1 , v076
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N06   , Bn0 , v127
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N06
	.byte		N03   , Cn2 , v096
	.byte	W04
	.byte		        Cn2 , v088
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        An1 , v096
	.byte	W04
	.byte		        An1 , v088
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		N11   , Bn0 , v127
	.byte		N03   , Gn1 , v096
	.byte	W04
	.byte		        Gn1 , v088
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        Fn1 , v108
	.byte	W04
	.byte		        Fn1 , v100
	.byte	W04
	.byte		N02
	.byte	W04
mus_messenger_from_the_void_1_004:
	.byte		N06   , Bn0 , v127
	.byte		N11   , Dn1 , v076
	.byte	W96
	.byte		PEND
	.byte	W60
	.byte		N11
	.byte	W12
	.byte		N06   , An1 , v100
	.byte	W07
	.byte		N11   , Fn1 , v116
	.byte	W12
	.byte		N04   , Fn1 , v100
	.byte	W05
	.byte	PATT
	 .word	mus_messenger_from_the_void_1_004
	.byte	W72
	.byte		N06   , Dn1 , v076
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N11   , Fn1 , v116
	.byte	W12
	.byte		N06   , Bn0 , v127
	.byte		N11   , Dn1 , v076
	.byte	W24
	.byte		        Bn0 , v127
	.byte	W24
	.byte		N11
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N11
	.byte	W24
	.byte		N11
	.byte	W24
	.byte		N06
	.byte	W19
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		N06   , Dn1 , v076
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N06   , Bn0 , v127
	.byte	W24
	.byte		N11
	.byte		N11   , Dn1 , v076
	.byte	W24
	.byte		        Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v076
	.byte	W12
	.byte		N06   , Bn0 , v127
	.byte	W24
	.byte		N11
	.byte		N06   , Dn1 , v076
	.byte	W07
	.byte		N04   , Dn1 , v092
	.byte	W05
	.byte		N11   , An1 , v088
	.byte	W12
	.byte		        Bn0 , v127
	.byte		N11   , Dn1 , v076
	.byte	W12
	.byte		N06   , Fn1 , v116
	.byte	W07
	.byte		N04   , Bn0 , v127
	.byte	W05
	.byte		N11   , Dn1 , v076
	.byte	W12
	.byte		N06   , Bn0 , v127
	.byte	W12
	.byte		N11
	.byte		N06   , Dn1 , v076
	.byte	W07
	.byte		N04   , Dn1 , v092
	.byte	W05
	.byte		N06   , An1 , v116
	.byte	W07
	.byte		N04   , Dn1 , v076
	.byte	W05
	.byte		N11   , Bn0 , v127
	.byte		N11   , Fn1 , v116
	.byte	W60
	.byte		N10   , Bn0 , v127
	.byte	W11
	.byte		N01   , Dn1 , v076
	.byte	W01
	.byte		N11   , Dn1 , v088
	.byte	W24
mus_messenger_from_the_void_1_005:
	.byte		N06   , Bn0 , v127
	.byte	W24
	.byte		N11   , Dn1 , v076
	.byte	W24
	.byte		        Bn0 , v127
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v076
	.byte	W24
	.byte		PEND
mus_messenger_from_the_void_1_006:
	.byte		N11   , Bn0 , v127
	.byte	W24
	.byte		        Dn1 , v076
	.byte	W24
	.byte		N06   , Bn0 , v127
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N11   , Dn1 , v076
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_1_005
	.byte		N11   , Bn0 , v127
	.byte	W24
	.byte		        Dn1 , v076
	.byte	W24
	.byte		N06   , Bn0 , v127
	.byte	W12
	.byte		N02
	.byte		N11   , Dn1 , v076
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        An1 , v100
	.byte	W12
	.byte	PATT
	 .word	mus_messenger_from_the_void_1_005
	.byte	PATT
	 .word	mus_messenger_from_the_void_1_006
	.byte	PATT
	 .word	mus_messenger_from_the_void_1_005
	.byte		N11   , Dn1 , v076
	.byte	W12
	.byte		N06   , Bn0 , v127
	.byte	W12
	.byte		N11   , Dn1 , v076
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W12
	.byte		N06   , Dn1 , v076
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N06   , Bn0 , v127
	.byte	W12
	.byte	PATT
	 .word	mus_messenger_from_the_void_1_005
	.byte		N11   , Bn0 , v127
	.byte	W24
	.byte		        Dn1 , v076
	.byte	W24
	.byte		N06   , Bn0 , v127
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Dn1 , v076
	.byte	W24
	.byte	PATT
	 .word	mus_messenger_from_the_void_1_005
	.byte		N11   , Bn0 , v127
	.byte	W24
	.byte		        Dn1 , v076
	.byte	W24
	.byte		N06   , Bn0 , v127
	.byte	W12
	.byte		N06
	.byte		N11   , Dn1 , v076
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        An1 , v100
	.byte	W12
	.byte	PATT
	 .word	mus_messenger_from_the_void_1_000
	.byte	PATT
	 .word	mus_messenger_from_the_void_1_001
	.byte	PATT
	 .word	mus_messenger_from_the_void_1_000
	.byte		N06   , Dn1 , v076
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N06   , Bn0 , v127
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N06   , Dn1 , v076
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N06   , Bn0 , v127
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N06
	.byte		N03   , Cn2 , v096
	.byte	W04
	.byte		        Cn2 , v088
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        An1 , v096
	.byte	W04
	.byte		        An1 , v088
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		N11   , Bn0 , v127
	.byte		N03   , Gn1 , v096
	.byte	W04
	.byte		        Gn1 , v088
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        Fn1 , v108
	.byte	W04
	.byte		        Fn1 , v100
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N11   , Bn0 , v127
	.byte		N11   , Dn1 , v076
	.byte	W96
	.byte	W84
	.byte		        Bn0 , v127
	.byte	W12
	.byte		N11
	.byte	W96
	.byte	W84
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W96
	.byte	W96
	.byte		N11
	.byte	W84
	.byte		        Dn1 , v072
	.byte	W12
	.byte		        Bn0 , v127
	.byte		N11   , Dn1 , v076
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Bn0 , v127
	.byte		N11   , Dn1 , v076
	.byte	W12
	.byte		N06
	.byte	W07
	.byte		N11
	.byte	W05
	.byte		        Bn0 , v127
	.byte	W07
	.byte		N04   , Dn1 , v076
	.byte	W05
	.byte		N11
	.byte	W12
	.byte		        Bn0 , v127
	.byte		N06   , Dn1 , v076
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N11   , Fn1 , v116
	.byte	W12
	.byte		N06   , Bn0 , v127
	.byte		N11   , Dn1 , v076
	.byte	W24
	.byte		        Bn0 , v127
	.byte	W12
	.byte		        Cn2 , v088
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W12
	.byte		        Fn1 , v116
	.byte	W12
	.byte		N06   , Bn0 , v127
	.byte	W24
	.byte		N11
	.byte	W12
	.byte		        An1 , v088
	.byte	W12
	.byte		        Bn0 , v127
	.byte		N11   , An1 , v088
	.byte	W24
	.byte		N06   , Bn0 , v127
	.byte	W12
	.byte		N11   , Fn1 , v116
	.byte	W12
	.byte		        Bn0 , v127
	.byte		N06   , Dn1 , v060
	.byte	W07
	.byte		N04   , Dn1 , v056
	.byte	W05
	.byte		N06
	.byte	W07
	.byte		N04   , Dn1 , v068
	.byte	W05
	.byte	PATT
	 .word	mus_messenger_from_the_void_1_002
	.byte		N11   , Bn0 , v127
	.byte	W24
	.byte		N11
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte		N11   , Fn1 , v108
	.byte	W24
	.byte	PATT
	 .word	mus_messenger_from_the_void_1_002
	.byte	PATT
	 .word	mus_messenger_from_the_void_1_003
	.byte	W84
	.byte		N11   , Dn1 , v072
	.byte	W12
	.byte		        Bn0 , v127
	.byte		N11   , Dn1 , v076
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Bn0 , v127
	.byte		N11   , Dn1 , v076
	.byte	W12
	.byte		N06
	.byte	W07
	.byte		N11
	.byte	W05
	.byte		N06   , Bn0 , v127
	.byte	W07
	.byte		N04   , Dn1 , v076
	.byte	W05
	.byte		N11
	.byte	W12
	.byte		        Bn0 , v127
	.byte		N06   , Dn1 , v076
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N11   , Fn1 , v116
	.byte	W12
	.byte		        Bn0 , v127
	.byte		N03   , Fs1 , v080
	.byte	W07
	.byte		        Fs1 , v028
	.byte	W05
	.byte		        Fs1 , v040
	.byte	W07
	.byte		        Fs1 , v080
	.byte	W05
	.byte		        Fs1 , v028
	.byte	W07
	.byte		        Fs1 , v040
	.byte	W05
	.byte		        Fs1 , v028
	.byte	W07
	.byte		N05   , As1 , v084
	.byte	W05
	.byte		N03   , Fs1 , v040
	.byte	W07
	.byte		        Fs1 , v080
	.byte	W05
	.byte		        Fs1 , v028
	.byte	W07
	.byte		        Fs1 , v040
	.byte	W05
	.byte		N06   , As1 , v080
	.byte	W07
	.byte		N03   , Fs1 , v028
	.byte	W05
	.byte		N11   , Bn0 , v127
	.byte		N10   , Fn1 , v116
	.byte		N11   , As1 , v096
	.byte	W12
	.byte		N06   , Bn0 , v127
	.byte	W96
	.byte	W96
	.byte		N06
	.byte	W96
	.byte	W60
	.byte		N03   , Cn2 , v108
	.byte	W04
	.byte		        An1
	.byte	W04
	.byte		        Gn1
	.byte	W04
	.byte		N11   , Bn0 , v127
	.byte		N06   , Dn1 , v076
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N11   , Fn1 , v116
	.byte	W12
mus_messenger_from_the_void_1_007:
	.byte		N06   , Bn0 , v127
	.byte	W48
	.byte		N11   , Dn1 , v080
	.byte	W36
	.byte		        Dn1 , v060
	.byte	W12
	.byte		PEND
	.byte		        Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v060
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W24
	.byte		        Dn1 , v080
	.byte	W24
	.byte		        Bn0 , v127
	.byte	W24
	.byte	PATT
	 .word	mus_messenger_from_the_void_1_007
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v060
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W24
	.byte		N06   , Dn1 , v080
	.byte		N05   , Cn2 , v096
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte		N05   , Gn1 , v096
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Fn1
	.byte	W06
	.byte		N05
	.byte	W06
	.byte	PATT
	 .word	mus_messenger_from_the_void_1_007
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v060
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W24
	.byte		N06   , Dn1 , v080
	.byte	W24
	.byte		N11   , Bn0 , v127
	.byte	W24
	.byte	PATT
	 .word	mus_messenger_from_the_void_1_007
mus_messenger_from_the_void_1_008:
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v060
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W24
	.byte		        Dn1 , v080
	.byte	W24
	.byte		        Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v072
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_1_007
	.byte	PATT
	 .word	mus_messenger_from_the_void_1_008
	.byte	PATT
	 .word	mus_messenger_from_the_void_1_007
	.byte	W68
	.byte	W03
	.byte		N01   , Dn1 , v064
	.byte	W01
	.byte		N11
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W12
	.byte	GOTO
	 .word	mus_messenger_from_the_void_1_000
	.byte		FINE

@**************** Track 2 ****************@

mus_messenger_from_the_void_2:
	.byte		KEYSH , mus_messenger_from_the_void_key+0
	.byte		VOICE , 126
	.byte	W01
	.byte		VOL   , 69*mus_messenger_from_the_void_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W60
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W03
	.byte		        Dn1 , v072
	.byte	W03
	.byte		        Dn1 , v076
	.byte	W03
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		        Dn1 , v080
	.byte	W12
mus_messenger_from_the_void_2_000:
	.byte		N06   , Bn0 , v112
	.byte	W07
	.byte		N04   , En1 , v064
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte		N11   , Gs1 , v040
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N11   , Gs1 , v040
	.byte	W12
	.byte		N06   , Bn0 , v112
	.byte		N11   , Gs1 , v040
	.byte	W07
	.byte		N04   , En1 , v064
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N11   , Gs1 , v040
	.byte	W12
	.byte		N06   , Bn0 , v112
	.byte		N11   , Gs1 , v040
	.byte	W07
	.byte		N04   , En1 , v064
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte		N11   , Gs1 , v040
	.byte	W12
	.byte		PEND
	.byte		        Dn1 , v096
	.byte	W12
	.byte		N06   , Bn0 , v112
	.byte		N11   , Gs1 , v040
	.byte	W07
	.byte		N04   , En1 , v064
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte		N11   , Gs1 , v040
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N11   , Gs1 , v040
	.byte	W12
	.byte		N06   , Bn0 , v112
	.byte	W07
	.byte		N04   , En1 , v064
	.byte	W05
	.byte		N06   , Bn0 , v112
	.byte		N11   , Gs1 , v040
	.byte	W07
	.byte		N04   , En1 , v064
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte		N11   , Gs1 , v040
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N11   , Gs1 , v040
	.byte	W12
	.byte	PATT
	 .word	mus_messenger_from_the_void_2_000
	.byte		N11   , Dn1 , v096
	.byte	W12
	.byte		N06   , Bn0 , v112
	.byte		N11   , Gs1 , v040
	.byte	W07
	.byte		N04   , En1 , v064
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte		N11   , Gs1 , v040
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N11   , Gs1 , v040
	.byte	W12
	.byte		N06   , Bn0 , v112
	.byte	W07
	.byte		N04   , En1 , v064
	.byte	W05
	.byte		N06   , Bn0 , v112
	.byte		N11   , Dn1 , v096
	.byte	W07
	.byte		N04   , En1 , v064
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte		N02   , Dn1 , v068
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v076
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		N11   , Dn1 , v096
	.byte		N11   , Gs1 , v040
	.byte	W12
	.byte	PATT
	 .word	mus_messenger_from_the_void_2_000
	.byte		N11   , Dn1 , v096
	.byte	W12
	.byte		N06   , Bn0 , v112
	.byte		N11   , Gs1 , v040
	.byte	W07
	.byte		N04   , En1 , v064
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte		N11   , Gs1 , v040
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N11   , Gs1 , v040
	.byte	W12
	.byte		N06   , Bn0 , v112
	.byte	W07
	.byte		N04   , Dn1 , v088
	.byte	W05
	.byte		N06   , Bn0 , v112
	.byte		N11   , Gs1 , v040
	.byte	W07
	.byte		N04   , En1 , v064
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte		N11   , Gs1 , v040
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N11   , Gs1 , v040
	.byte	W12
	.byte		N06   , Bn0 , v112
	.byte	W07
	.byte		N04   , En1 , v064
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte		N02   , Dn1 , v068
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v076
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		N11   , Dn1 , v088
	.byte		N11   , Gs1 , v040
	.byte	W12
	.byte		        Bn0 , v112
	.byte		N06   , Dn1 , v096
	.byte	W07
	.byte		N04   , En1 , v064
	.byte	W05
	.byte		N06   , Bn0 , v092
	.byte	W07
	.byte		N11   , Dn1 , v088
	.byte	W05
	.byte		        Gs1 , v040
	.byte	W12
	.byte		        Bn0 , v112
	.byte		N06   , Dn1 , v076
	.byte	W08
	.byte		N04   , Dn1 , v096
	.byte	W04
	.byte		N11   , Bn0 , v092
	.byte		N11   , En1 , v084
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N11   , Gs1 , v032
	.byte	W12
	.byte		N06   , Bn0 , v112
	.byte		N11   , Gs1 , v032
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte		N11   , Gs1 , v032
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N11   , Gs1 , v032
	.byte	W12
	.byte		N06   , Bn0 , v112
	.byte		N11   , Gs1 , v032
	.byte	W07
	.byte		N04   , Dn1 , v088
	.byte	W05
	.byte		N06   , Bn0 , v112
	.byte		N11   , Gs1 , v032
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte		N02   , Dn1 , v060
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v072
	.byte	W03
	.byte		        Dn1 , v076
	.byte	W03
	.byte		N11   , Dn1 , v120
	.byte		N11   , Gs1 , v032
	.byte	W12
mus_messenger_from_the_void_2_001:
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W01
	.byte		N04   , En1 , v052
	.byte	W02
	.byte		N02   , Dn1 , v068
	.byte	W03
	.byte		N06   , Bn0 , v060
	.byte		N06   , Dn1 , v076
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W17
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W19
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W17
	.byte		N11   , Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W24
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W24
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W19
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W17
	.byte		N11   , Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v080
	.byte	W24
	.byte		        Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte	W12
	.byte		N11   , Bn0 , v060
	.byte	W12
	.byte		        Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W01
	.byte		N04   , En1 , v052
	.byte	W02
	.byte		N02   , Dn1 , v068
	.byte	W03
	.byte		N11   , Bn0 , v080
	.byte		N11   , Dn1 , v088
	.byte	W24
	.byte		N06   , Gs1 , v036
	.byte	W07
	.byte		N04   , Dn1 , v088
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N06   , Bn0 , v080
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W24
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W19
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v080
	.byte	W36
mus_messenger_from_the_void_2_002:
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		PEND
	.byte		        Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte	PATT
	 .word	mus_messenger_from_the_void_2_002
	.byte		N11   , Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W01
	.byte		N04   , En1 , v052
	.byte	W02
	.byte		N02   , Dn1 , v068
	.byte	W03
	.byte		N06   , Bn0 , v060
	.byte	W07
	.byte		N04   , Dn1 , v088
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Dn1 , v088
	.byte	W12
	.byte		        Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W01
	.byte		N04   , En1 , v052
	.byte	W02
	.byte		N02   , Dn1 , v068
	.byte	W15
	.byte		N11   , Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W19
	.byte		N04   , Dn1 , v088
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W17
	.byte		N11   , Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W24
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		N11   , Bn0 , v060
	.byte	W12
	.byte		        Gs1 , v036
	.byte	W12
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		N06   , Bn0 , v080
	.byte		N11   , Dn1 , v076
	.byte	W24
	.byte		        Gs1 , v036
	.byte	W12
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Dn1 , v088
	.byte	W12
	.byte		        Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W01
	.byte		N04   , En1 , v052
	.byte	W02
	.byte		N02   , Dn1 , v068
	.byte	W03
	.byte		N11   , Bn0 , v060
	.byte		N11   , Dn1 , v088
	.byte	W12
	.byte		N11
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte	W07
	.byte		N04   , Dn1 , v088
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N06   , Bn0 , v080
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W01
	.byte		N04   , En1 , v052
	.byte	W02
	.byte		N02   , Dn1 , v068
	.byte	W03
	.byte		N11   , Bn0 , v060
	.byte		N11   , Dn1 , v088
	.byte	W12
	.byte		        Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W01
	.byte		N04   , En1 , v052
	.byte	W02
	.byte		N02   , Dn1 , v068
	.byte	W03
	.byte		N06   , Bn0 , v080
	.byte		N11   , Dn1 , v076
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte	W12
	.byte		        Gs1 , v036
	.byte	W12
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N06   , Bn0 , v080
	.byte		N06   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		        Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W17
	.byte		N11   , Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N03   , Dn1 , v056
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W01
	.byte		N04   , En1 , v052
	.byte	W02
	.byte		N03   , Dn1 , v068
	.byte	W03
	.byte		N06   , Dn1 , v076
	.byte	W07
	.byte		N04   , Dn1 , v088
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte	W12
	.byte		        Gs1 , v028
	.byte	W12
	.byte		        Dn1 , v068
	.byte	W12
	.byte		        Gs1 , v028
	.byte	W07
	.byte		N04   , En1 , v044
	.byte	W05
	.byte		N06   , Bn0 , v052
	.byte	W07
	.byte		N04   , En1 , v044
	.byte	W05
	.byte		N11   , Gs1 , v028
	.byte	W12
	.byte		        Dn1 , v068
	.byte	W12
	.byte		        Gs1 , v028
	.byte	W12
mus_messenger_from_the_void_2_003:
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		PEND
	.byte		        Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		N06   , Bn0 , v060
	.byte	W07
	.byte		N04   , Dn1 , v088
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
mus_messenger_from_the_void_2_004:
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Dn1 , v088
	.byte	W12
	.byte		PEND
	.byte		        Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W01
	.byte		N04   , En1 , v052
	.byte	W02
	.byte		N02   , Dn1 , v068
	.byte	W03
	.byte		N11   , Bn0 , v060
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06
	.byte	W07
	.byte		N02   , Dn1 , v088
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W01
	.byte		N04   , En1 , v052
	.byte	W02
	.byte		N02   , Dn1 , v068
	.byte	W03
	.byte		N11   , Bn0 , v060
	.byte	W12
	.byte		        Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Dn1 , v076
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte	PATT
	 .word	mus_messenger_from_the_void_2_003
	.byte		N11   , Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W01
	.byte		N04   , En1 , v052
	.byte	W02
	.byte		N02   , Dn1 , v068
	.byte	W03
	.byte		N11   , Bn0 , v060
	.byte	W07
	.byte		N04   , Dn1 , v088
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte	PATT
	 .word	mus_messenger_from_the_void_2_004
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W01
	.byte		N04   , En1 , v052
	.byte	W02
	.byte		N02   , Dn1 , v068
	.byte	W03
	.byte		N11   , Bn0 , v060
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06
	.byte	W07
	.byte		N04   , Dn1 , v088
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		        Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W24
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W19
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W01
	.byte		N04   , En1 , v052
	.byte	W02
	.byte		N02   , Dn1 , v068
	.byte	W15
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W01
	.byte		N04   , En1 , v052
	.byte	W02
	.byte		N02   , Dn1 , v068
	.byte	W03
	.byte		N06   , Bn0 , v080
	.byte		N11   , Dn1 , v076
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W17
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W24
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		        Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W19
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N06   , Bn0 , v080
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W17
	.byte		N11   , Dn1 , v088
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		        Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		        Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W17
	.byte		N11   , Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W17
	.byte		N11   , Dn1 , v088
	.byte	W12
	.byte		        Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N06   , Bn0 , v080
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W01
	.byte		N04   , En1 , v052
	.byte	W02
	.byte		N02   , Dn1 , v068
	.byte	W03
	.byte		N06   , Dn1 , v076
	.byte	W07
	.byte		N04   , Dn1 , v088
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Dn1 , v088
	.byte	W12
	.byte		        Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W01
	.byte		N04   , En1 , v052
	.byte	W02
	.byte		N02   , Dn1 , v068
	.byte	W03
	.byte		N11   , Dn1 , v088
	.byte	W12
	.byte		N11
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06
	.byte	W07
	.byte		N04   , Dn1 , v088
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W01
	.byte		N04   , En1 , v052
	.byte	W02
	.byte		N02   , Dn1 , v068
	.byte	W03
	.byte		N11   , Dn1 , v088
	.byte	W12
	.byte		        Gs1 , v036
	.byte	W12
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		N03   , Dn1 , v068
	.byte	W01
	.byte		N04   , En1 , v052
	.byte	W02
	.byte		N02   , Dn1 , v068
	.byte	W03
	.byte		N06   , Bn0 , v080
	.byte		N11   , Dn1 , v076
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N05   , Gs1 , v036
	.byte	W24
	.byte	W96
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Dn1 , v088
	.byte	W12
	.byte		        Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W01
	.byte		N04   , En1 , v052
	.byte	W02
	.byte		N02   , Dn1 , v068
	.byte	W03
	.byte		N11   , Bn0 , v060
	.byte		N11   , Dn1 , v088
	.byte	W12
	.byte		N11
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N06   , Gs1 , v036
	.byte	W07
	.byte		N04   , Dn1 , v088
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W01
	.byte		N04   , En1 , v052
	.byte	W02
	.byte		N02   , Dn1 , v068
	.byte	W03
	.byte		N11   , Bn0 , v060
	.byte		N11   , Dn1 , v088
	.byte	W12
	.byte		        Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W01
	.byte		N04   , En1 , v052
	.byte	W02
	.byte		N02   , Dn1 , v068
	.byte	W03
	.byte		N06   , Bn0 , v080
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W17
	.byte		N11   , Gs1 , v036
	.byte	W12
mus_messenger_from_the_void_2_005:
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte	W12
	.byte		PEND
	.byte		        Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte	PATT
	 .word	mus_messenger_from_the_void_2_005
	.byte		N11   , Dn1 , v088
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N06   , Bn0 , v080
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W01
	.byte		N04   , En1 , v052
	.byte	W02
	.byte		N02   , Dn1 , v068
	.byte	W03
	.byte		N06   , Dn1 , v076
	.byte	W07
	.byte		N04   , Dn1 , v088
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
mus_messenger_from_the_void_2_006:
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W17
	.byte		N11   , Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Bn0 , v060
	.byte	W12
	.byte		PEND
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Dn1 , v088
	.byte	W12
	.byte		N11
	.byte		N11   , Gs1 , v036
	.byte	W19
	.byte		N04   , Dn1 , v088
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte	PATT
	 .word	mus_messenger_from_the_void_2_006
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W01
	.byte		N04   , En1 , v052
	.byte	W02
	.byte		N02   , Dn1 , v068
	.byte	W03
	.byte		N11   , Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W19
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N06   , Bn0 , v080
	.byte		N11   , Dn1 , v076
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W12
	.byte	PATT
	 .word	mus_messenger_from_the_void_2_006
	.byte	W12
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		        Dn1 , v088
	.byte		N11   , Gs1 , v036
	.byte	W19
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N06   , Bn0 , v080
	.byte		N11   , Gs1 , v036
	.byte	W07
	.byte		N04   , En1 , v052
	.byte	W05
	.byte		N11   , Gs1 , v036
	.byte	W12
	.byte		N11
	.byte	W12
	.byte	PATT
	 .word	mus_messenger_from_the_void_2_006
	.byte		N11   , Dn1 , v108
	.byte		N11   , Gs1 , v056
	.byte	W12
	.byte		N06   , Bn0 , v100
	.byte		N11   , Gs1 , v056
	.byte	W07
	.byte		N04   , En1 , v084
	.byte	W05
	.byte		N10   , Bn0 , v080
	.byte		N11   , Gs1 , v056
	.byte	W12
	.byte		        Dn1 , v108
	.byte		N11   , Gs1 , v056
	.byte	W12
	.byte		N06   , Bn0 , v100
	.byte		N11   , Gs1 , v056
	.byte	W07
	.byte		N04   , En1 , v084
	.byte	W05
	.byte		N06   , Bn0 , v100
	.byte		N02   , Dn1 , v076
	.byte		N10   , Gs1 , v056
	.byte	W03
	.byte		N02   , Dn1 , v076
	.byte	W03
	.byte		        Dn1 , v088
	.byte	W01
	.byte		N04   , En1 , v084
	.byte	W02
	.byte		N02   , Dn1 , v088
	.byte	W03
	.byte		N10   , Bn0 , v080
	.byte		N06   , Dn1 , v096
	.byte	W07
	.byte		N04   , Dn1 , v108
	.byte	W05
	.byte		N11   , Gs1 , v056
	.byte	W12
	.byte	GOTO
	 .word	mus_messenger_from_the_void_2_001
	.byte		FINE

@**************** Track 3 ****************@

mus_messenger_from_the_void_3:
	.byte		KEYSH , mus_messenger_from_the_void_key+0
	.byte		VOICE , 18
	.byte	W01
	.byte		VOL   , 69*mus_messenger_from_the_void_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W23
	.byte		MOD   , 1
	.byte		N92   , Dn3 , v072
	.byte		N92   , An3 , v092
	.byte	W96
	.byte		        Dn3 , v072
	.byte		N92   , Bn3 , v092
	.byte	W96
	.byte		        Ds3 , v072
	.byte		N92   , Cn4 , v092
	.byte	W96
	.byte		N44   , An3 , v072
	.byte		N44   , Dn4 , v092
	.byte	W48
	.byte		N22   , Dn3 , v072
	.byte		N22   , Bn3 , v092
	.byte	W24
	.byte		        Cn4 , v072
	.byte		N22   , Gn4 , v092
	.byte	W24
	.byte		TIE   , An3 , v052
	.byte		TIE   , En4 , v072
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W88
	.byte		EOT   , An3
	.byte		        En4
	.byte	W06
	.byte		VOICE , 61
	.byte	W02
	.byte		MOD   , 0
	.byte		N90   , An3 , v112
	.byte	W96
	.byte		        Bn3
	.byte	W96
	.byte		        Cn4
	.byte	W96
	.byte		N42   , Dn4
	.byte	W48
	.byte		N18   , Gn3
	.byte	W24
	.byte		        Dn4
	.byte	W24
	.byte		N66   , En4
	.byte	W72
	.byte		N12   , Cn4
	.byte	W19
	.byte		N06   , En4
	.byte	W05
	.byte		N66   , Fn4
	.byte	W72
	.byte		N07   , Cn4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		N66   , Gn4
	.byte	W72
	.byte		N07   , Dn4
	.byte	W12
	.byte		        Gn4
	.byte	W12
	.byte	W96
mus_messenger_from_the_void_3_000:
	.byte		N11   , Cn4 , v088
	.byte		N11   , An4 , v100
	.byte	W12
	.byte		N03   , Gn4 , v072
	.byte	W02
	.byte		        En4 , v068
	.byte	W02
	.byte		        Cn4 , v060
	.byte	W02
	.byte		        An3 , v052
	.byte	W78
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
mus_messenger_from_the_void_3_001:
	.byte	W84
	.byte		N03   , En3 , v072
	.byte	W03
	.byte		        Fn3
	.byte	W03
	.byte		        Gn3 , v080
	.byte	W03
	.byte		        Gs3 , v092
	.byte	W03
	.byte		PEND
mus_messenger_from_the_void_3_002:
	.byte		N17   , An3 , v100
	.byte	W18
	.byte		N01   , Gn3 , v072
	.byte	W02
	.byte		        En3 , v068
	.byte	W02
	.byte		        Cn3 , v060
	.byte	W02
	.byte		        An2 , v052
	.byte	W72
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_3_001
	.byte	PATT
	 .word	mus_messenger_from_the_void_3_002
mus_messenger_from_the_void_3_003:
	.byte	W84
	.byte		N02   , En3 , v072
	.byte	W03
	.byte		        Fn3
	.byte	W03
	.byte		        Gn3 , v080
	.byte	W03
	.byte		        Gs3 , v092
	.byte	W03
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_3_002
	.byte	PATT
	 .word	mus_messenger_from_the_void_3_003
	.byte	PATT
	 .word	mus_messenger_from_the_void_3_002
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		N17   , An2 , v080
	.byte	W24
	.byte		        Dn3
	.byte	W24
	.byte		        Fn3
	.byte	W24
	.byte		N09   , An3 , v088
	.byte	W18
	.byte		N05   , En3 , v092
	.byte	W06
	.byte		N68   , En3 , v080
	.byte	W72
	.byte	W24
	.byte		N17   , Cn3
	.byte	W24
	.byte		        Dn3
	.byte	W24
	.byte		        En3
	.byte	W24
	.byte		        Fs3
	.byte	W24
	.byte		        Dn3
	.byte	W24
	.byte		        Bn3
	.byte	W24
	.byte		        An3
	.byte	W24
	.byte	W12
	.byte		N04   , En4 , v120
	.byte	W36
	.byte		N11
	.byte	W18
	.byte		N04
	.byte	W30
	.byte		        En4 , v127
	.byte	W06
	.byte		        En4 , v120
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        En4
	.byte	W42
	.byte		N04
	.byte	W36
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04   , Dn4
	.byte	W12
	.byte		N11   , En4
	.byte	W18
	.byte		N04   , Gn4
	.byte	W30
	.byte		N05   , En4 , v127
	.byte	W06
	.byte		N04   , Dn4 , v120
	.byte	W12
	.byte		        En4
	.byte	W54
	.byte	W24
	.byte		N17   , Gs2 , v080
	.byte	W24
	.byte		        Cs3
	.byte	W24
	.byte		        Fn3
	.byte	W24
	.byte		N09   , Gs3 , v088
	.byte	W18
	.byte		N05   , Ds3 , v092
	.byte	W06
	.byte		N68   , Ds3 , v080
	.byte	W72
	.byte	W24
	.byte		N17   , Bn2
	.byte	W24
	.byte		        Cs3
	.byte	W24
	.byte		        Ds3
	.byte	W24
	.byte		        Fn3
	.byte	W24
	.byte		        Cs3
	.byte	W24
	.byte		        As3
	.byte	W24
	.byte		        Gs3
	.byte	W24
	.byte	W12
	.byte		N04   , Ds4 , v120
	.byte	W36
	.byte		N11
	.byte	W18
	.byte		N04
	.byte	W30
	.byte		        Ds4 , v127
	.byte	W06
	.byte		        Ds4 , v120
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Ds4
	.byte	W42
	.byte		N04
	.byte	W36
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04   , Cs4
	.byte	W12
	.byte		N11   , Ds4
	.byte	W18
	.byte		N04   , Fs4
	.byte	W30
	.byte		N05   , Ds4 , v127
	.byte	W06
	.byte		N04   , Cs4 , v120
	.byte	W12
	.byte		        Ds4
	.byte	W78
	.byte		N90   , En3 , v072
	.byte		N90   , An3 , v088
	.byte	W96
	.byte		        En3 , v072
	.byte		N90   , Bn3 , v088
	.byte	W96
	.byte		        Fn3 , v072
	.byte		N90   , Cn4 , v088
	.byte	W96
	.byte		N42   , Gn3 , v072
	.byte		N42   , Dn4 , v088
	.byte	W48
	.byte		N18   , Dn3 , v072
	.byte		N18   , Gs3 , v088
	.byte	W24
	.byte		        Gs3 , v072
	.byte		N18   , Dn4 , v088
	.byte	W24
	.byte		N66   , An3 , v072
	.byte		N66   , En4 , v088
	.byte	W72
	.byte		N12   , En3 , v072
	.byte		N12   , Cn4 , v088
	.byte	W19
	.byte		N04   , An3 , v072
	.byte		N04   , En4 , v088
	.byte	W05
	.byte		N66   , An3 , v072
	.byte		N66   , Fn4 , v088
	.byte	W72
	.byte		N07   , Fn3 , v072
	.byte		N07   , Cn4 , v088
	.byte	W12
	.byte		        An3 , v072
	.byte		N07   , Fn4 , v088
	.byte	W12
	.byte		N66   , Bn3 , v072
	.byte		N66   , Gn4 , v088
	.byte	W72
	.byte		N07   , Gn3 , v072
	.byte		N07   , Dn4 , v088
	.byte	W12
	.byte		        Bn3 , v072
	.byte		N07   , Gn4 , v088
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
	.byte	W78
	.byte		VOICE , 18
	.byte	W06
	.byte		N03   , Cn4 , v108
	.byte	W12
	.byte	W96
	.byte	W66
	.byte		N03
	.byte	W18
	.byte		N04
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N03
	.byte	W12
	.byte	W96
	.byte	W90
	.byte		VOICE , 61
	.byte	W06
	.byte		N90   , An3 , v127
	.byte	W96
	.byte		        Bn3
	.byte	W96
	.byte		        Cn4
	.byte	W96
	.byte		N42   , Dn4
	.byte	W48
	.byte		N18   , Gn3
	.byte	W24
	.byte		        Dn4
	.byte	W24
	.byte		N66   , En4
	.byte	W72
	.byte		N12   , Cn4
	.byte	W19
	.byte		N04   , En4
	.byte	W05
	.byte		N66   , Fn4
	.byte	W72
	.byte		N07   , Cn4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		N66   , Gn4
	.byte	W72
	.byte		N07   , Cn4
	.byte	W12
	.byte		        Gn4
	.byte	W12
	.byte	W96
	.byte	GOTO
	 .word	mus_messenger_from_the_void_3_000
	.byte		FINE

@**************** Track 4 ****************@

mus_messenger_from_the_void_4:
	.byte		KEYSH , mus_messenger_from_the_void_key+0
	.byte		VOICE , 48
	.byte	W01
	.byte		VOL   , 44*mus_messenger_from_the_void_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N44   , An3 , v072
	.byte	W48
	.byte		        Bn3 , v068
	.byte	W48
	.byte		        En4 , v072
	.byte	W48
	.byte		N23   , An3 , v088
	.byte	W24
	.byte		        An4 , v076
	.byte	W24
	.byte		N68   , Gn4
	.byte	W72
	.byte		N11   , Fs4
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		N72   , Bn3
	.byte	W96
mus_messenger_from_the_void_4_000:
	.byte		N06   , An4 , v100
	.byte	W48
	.byte		N06
	.byte	W48
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_4_000
	.byte	PATT
	 .word	mus_messenger_from_the_void_4_000
	.byte	PATT
	 .word	mus_messenger_from_the_void_4_000
	.byte	PATT
	 .word	mus_messenger_from_the_void_4_000
	.byte	PATT
	 .word	mus_messenger_from_the_void_4_000
	.byte	PATT
	 .word	mus_messenger_from_the_void_4_000
	.byte	W96
mus_messenger_from_the_void_4_001:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N23   , En3 , v112
	.byte	W24
	.byte		N44   , An3 , v108
	.byte	W48
	.byte		N23   , Bn3
	.byte	W24
	.byte		        Cn4
	.byte	W24
	.byte		N44   , En3
	.byte	W48
	.byte		N17   , An3
	.byte	W18
	.byte		        Cn4
	.byte	W18
	.byte		N11   , En4
	.byte	W12
	.byte		N56   , Fn4
	.byte	W60
	.byte		N23   , Gn4
	.byte	W24
	.byte		N32   , An4
	.byte	W12
	.byte	W24
	.byte		N23   , Gn4
	.byte	W24
	.byte		        En4
	.byte	W24
	.byte		        An3
	.byte	W24
	.byte		N44   , Cn4
	.byte	W48
	.byte		N23   , Dn4
	.byte	W24
	.byte		        Ds4
	.byte	W24
	.byte		N44   , Gn3
	.byte	W48
	.byte		N17   , An3
	.byte	W18
	.byte		        Bn3
	.byte	W18
	.byte		N11   , Cn4
	.byte	W12
	.byte		TIE   , En4
	.byte	W96
	.byte	W90
	.byte		EOT   
	.byte	W06
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		N07   , Gn2 , v096
	.byte	W06
	.byte		        An2 , v100
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		        Cn3 , v108
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        En3 , v112
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Gn3 , v116
	.byte	W06
	.byte		N44   , An3
	.byte	W48
	.byte		        Bn3
	.byte	W48
	.byte		        En4
	.byte	W48
	.byte		N23   , An3
	.byte	W24
	.byte		        An4
	.byte	W24
	.byte		N68   , Gn4
	.byte	W72
	.byte		N11   , Fs4
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		N44   , Fs4
	.byte	W48
	.byte		N23   , Gn4
	.byte	W24
	.byte		        An4
	.byte	W24
	.byte		TIE   , Bn4 , v080
	.byte	W96
	.byte	W17
	.byte		EOT   
	.byte	W07
	.byte		N24   , Fs5 , v060
	.byte	W24
	.byte		        En5
	.byte	W24
	.byte		        Bn4 , v072
	.byte	W24
	.byte		TIE   , En4 , v080
	.byte	W96
	.byte	W64
	.byte	W01
	.byte		EOT   
	.byte	W07
	.byte		N44   , Gs3 , v116
	.byte	W48
	.byte		        As3
	.byte	W48
	.byte		        Ds4
	.byte	W48
	.byte		N23   , Gs3
	.byte	W24
	.byte		        Gs4
	.byte	W24
	.byte		N68   , Fs4
	.byte	W72
	.byte		N12   , Fn4
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		N44   , Fn4
	.byte	W48
	.byte		N23   , Fs4
	.byte	W24
	.byte		        Gs4
	.byte	W24
	.byte		        As4 , v080
	.byte	W24
	.byte		N24   , Ds4
	.byte	W24
	.byte		        Gs4 , v072
	.byte	W24
	.byte		N48   , As4
	.byte	W24
	.byte	W24
	.byte		N24   , Ds5
	.byte	W24
	.byte		        As4
	.byte	W24
	.byte		        Fs4
	.byte	W24
	.byte		TIE   , Ds4 , v080
	.byte	W96
	.byte	W88
	.byte	W01
	.byte		EOT   
	.byte	W07
	.byte	W24
	.byte		N23   , Cn5 , v076
	.byte	W24
	.byte		N11   , Bn4
	.byte	W12
	.byte		        An4
	.byte	W12
	.byte		N44   , En4
	.byte	W24
	.byte	W24
	.byte		N23
	.byte	W24
	.byte		        En5 , v060
	.byte	W24
	.byte		        Gs4 , v072
	.byte	W24
	.byte		        An4 , v076
	.byte	W24
	.byte		        Gn4
	.byte	W24
	.byte		        Fn4
	.byte	W24
	.byte		N11   , Cn4
	.byte	W12
	.byte		N32   , Bn3
	.byte	W12
	.byte	W24
	.byte		N44   , Bn4
	.byte	W48
	.byte		N23   , Gs4
	.byte	W24
mus_messenger_from_the_void_4_002:
	.byte		N11   , An4 , v080
	.byte	W12
	.byte		        Bn4 , v072
	.byte	W12
	.byte		N64   , Cn5 , v056
	.byte	W72
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_4_002
	.byte		N11   , Bn4 , v080
	.byte	W12
	.byte		        Cn5 , v072
	.byte	W12
	.byte		N64   , Dn5 , v056
	.byte	W72
	.byte	W48
	.byte		N07   , En4 , v092
	.byte	W08
	.byte		        Gn4
	.byte	W08
	.byte		        An4
	.byte	W08
	.byte		        Cn5
	.byte	W08
	.byte		        En5 , v080
	.byte	W08
	.byte		        Gn5
	.byte	W08
	.byte		N44   , An5 , v060
	.byte	W48
	.byte		        Gs5 , v056
	.byte	W48
	.byte		        Gn5 , v052
	.byte	W48
	.byte		        Fs5 , v056
	.byte	W48
	.byte		        Fn5
	.byte	W48
	.byte		N23   , Cn5 , v060
	.byte	W24
	.byte		        Fn5 , v056
	.byte	W24
	.byte		        Dn5
	.byte	W24
	.byte		        Cn5 , v060
	.byte	W24
	.byte		        Bn4
	.byte	W24
	.byte		        Gn4
	.byte	W24
	.byte		N11   , An4
	.byte	W12
	.byte		        Bn4
	.byte	W12
	.byte		N88   , En4
	.byte	W72
	.byte	W24
	.byte		N23   , Fn4 , v080
	.byte	W24
	.byte		        An4 , v072
	.byte	W24
	.byte		        Cn5 , v060
	.byte	W24
	.byte		TIE   , En5 , v048
	.byte	W96
	.byte	W05
	.byte		EOT   
	.byte	W90
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_messenger_from_the_void_4_003:
	.byte		N06   , An4 , v108
	.byte	W48
	.byte		N06
	.byte	W48
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_4_003
	.byte	PATT
	 .word	mus_messenger_from_the_void_4_003
	.byte	PATT
	 .word	mus_messenger_from_the_void_4_003
	.byte	PATT
	 .word	mus_messenger_from_the_void_4_003
	.byte	PATT
	 .word	mus_messenger_from_the_void_4_003
	.byte	PATT
	 .word	mus_messenger_from_the_void_4_003
	.byte	W96
	.byte	GOTO
	 .word	mus_messenger_from_the_void_4_001
	.byte		FINE

@**************** Track 5 ****************@

mus_messenger_from_the_void_5:
	.byte		KEYSH , mus_messenger_from_the_void_key+0
	.byte		VOICE , 60
	.byte	W01
	.byte		VOL   , 40*mus_messenger_from_the_void_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W23
	.byte	W24
	.byte		MOD   , 2
	.byte		N18   , En3 , v120
	.byte	W24
	.byte		        Dn3 , v112
	.byte	W24
	.byte		        En3 , v120
	.byte	W24
	.byte		N90   , En2 , v112
	.byte	W96
	.byte	W24
	.byte		N18   , Fn3 , v120
	.byte	W24
	.byte		        Ds3
	.byte	W24
	.byte		        Fn3
	.byte	W24
	.byte		N42   , Dn3 , v116
	.byte	W48
	.byte		        Gn3 , v120
	.byte	W48
	.byte		N24   , Dn4
	.byte	W24
	.byte		N06   , Cn4
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		N90   , En3
	.byte	W48
	.byte	W48
	.byte		N24   , Dn3 , v116
	.byte	W24
	.byte		N06   , Cn3
	.byte	W12
	.byte		        Bn2 , v112
	.byte	W12
	.byte		TIE   , En2
	.byte	W96
	.byte	W06
	.byte		EOT   
	.byte	W90
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_messenger_from_the_void_5_000:
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
	.byte	W96
	.byte		N40   , An2 , v124
	.byte	W48
	.byte		        Bn2
	.byte	W48
	.byte		        En3
	.byte	W48
	.byte		N17   , An2
	.byte	W24
	.byte		        An3
	.byte	W24
	.byte		N64   , Gn3
	.byte	W72
	.byte		N09   , Fs3
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		N40   , Fs3
	.byte	W48
	.byte		N17   , Gn3
	.byte	W24
	.byte		        An3
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N40   , Gs2
	.byte	W48
	.byte		        As2
	.byte	W48
	.byte		        Ds3
	.byte	W48
	.byte		N17   , Gs2
	.byte	W24
	.byte		        Gs3
	.byte	W24
	.byte		N64   , Fs3
	.byte	W72
	.byte		N09   , Fn3
	.byte	W12
	.byte		        Ds3
	.byte	W12
	.byte		N40   , Fn3
	.byte	W48
	.byte		N17   , Fs3
	.byte	W24
	.byte		        Gs3
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_messenger_from_the_void_5_001:
	.byte	W24
	.byte		N17   , En2 , v124
	.byte	W18
	.byte		N02   , Gn2 , v120
	.byte	W03
	.byte		        Bn2
	.byte	W03
	.byte		N54   , En3 , v124
	.byte	W48
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_5_001
	.byte	PATT
	 .word	mus_messenger_from_the_void_5_001
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT
	 .word	mus_messenger_from_the_void_5_001
	.byte	PATT
	 .word	mus_messenger_from_the_void_5_001
	.byte	PATT
	 .word	mus_messenger_from_the_void_5_001
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
	 .word	mus_messenger_from_the_void_5_001
	.byte	PATT
	 .word	mus_messenger_from_the_void_5_001
	.byte	W24
	.byte		N17   , En2 , v124
	.byte	W18
	.byte		N02   , Gn2 , v120
	.byte	W03
	.byte		        Bn2
	.byte	W03
	.byte		N48   , En3 , v124
	.byte	W48
	.byte	W96
	.byte	GOTO
	 .word	mus_messenger_from_the_void_5_000
	.byte		FINE

@**************** Track 6 ****************@

mus_messenger_from_the_void_6:
	.byte		KEYSH , mus_messenger_from_the_void_key+0
	.byte		VOICE , 47
	.byte	W01
	.byte		VOL   , 75*mus_messenger_from_the_void_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
mus_messenger_from_the_void_6_000:
	.byte		N28   , An1 , v112
	.byte	W84
	.byte		N03   , An1 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_6_000
	.byte		N11   , An1 , v112
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		N28   , An1
	.byte	W48
	.byte		N23   , En1
	.byte	W24
	.byte		N11   , An1
	.byte	W12
	.byte		N23   , En1
	.byte	W24
	.byte		N28
	.byte	W36
	.byte		N23   , An1
	.byte	W24
	.byte		N11   , En1
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		N28   , En1
	.byte	W60
	.byte		N03   , An1 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		N28   , An1 , v112
	.byte	W48
	.byte		        En1
	.byte	W36
	.byte		N03   , An1 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		N03
	.byte	W04
	.byte	PATT
	 .word	mus_messenger_from_the_void_6_000
	.byte		N23   , An1 , v112
	.byte	W24
	.byte		N28
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_messenger_from_the_void_6_001:
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
	.byte		N23   , An1 , v112
	.byte	W96
	.byte	W96
	.byte		N23
	.byte	W96
	.byte	W96
	.byte		N23
	.byte	W96
	.byte	W96
	.byte		N23
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		N03   , An1 , v096
	.byte	W04
	.byte		        An1 , v068
	.byte	W04
	.byte		        An1 , v076
	.byte	W04
	.byte		        An1 , v080
	.byte	W04
	.byte		        An1 , v084
	.byte	W04
	.byte		        An1 , v092
	.byte	W04
	.byte		        An1 , v096
	.byte	W04
	.byte		        An1 , v104
	.byte	W04
	.byte		        An1 , v108
	.byte	W04
	.byte		        An1 , v116
	.byte	W04
	.byte		        An1 , v120
	.byte	W04
	.byte		        An1 , v124
	.byte	W04
	.byte		N23   , Dn2 , v120
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
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
	.byte	W48
	.byte		N03   , An1 , v100
	.byte	W04
	.byte		        An1 , v072
	.byte	W04
	.byte		        An1 , v076
	.byte	W04
	.byte		        An1 , v084
	.byte	W04
	.byte		        An1 , v088
	.byte	W04
	.byte		        An1 , v096
	.byte	W04
	.byte		        An1 , v100
	.byte	W04
	.byte		        An1 , v104
	.byte	W04
	.byte		        An1 , v112
	.byte	W04
	.byte		        An1 , v116
	.byte	W04
	.byte		        An1 , v124
	.byte	W04
	.byte		        An1 , v127
	.byte	W04
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
	.byte	W96
	.byte	GOTO
	 .word	mus_messenger_from_the_void_6_001
	.byte		FINE

@**************** Track 7 ****************@

mus_messenger_from_the_void_7:
	.byte		KEYSH , mus_messenger_from_the_void_key+0
	.byte		VOICE , 33
	.byte	W01
	.byte		VOL   , 50*mus_messenger_from_the_void_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_messenger_from_the_void_7_000:
	.byte	W92
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte		N17   , An1 , v100
	.byte	W01
	.byte		PEND
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-16
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , An1 , v092
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		        c_v-64
	.byte		N11   , An1 , v100
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-35
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N04   , An1 , v092
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-62
	.byte		N11   , An1 , v100
	.byte	W02
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-34
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , An1 , v092
	.byte	W05
	.byte		N11   , An1 , v100
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-59
	.byte		N11   , Bn1
	.byte	W01
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		N11   , Gn1
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W07
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte		N17   , An1
	.byte	W01
mus_messenger_from_the_void_7_001:
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-16
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , An1 , v092
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte		N11   , An1 , v100
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-35
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N04   , An1 , v092
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-62
	.byte		N11   , An1 , v100
	.byte	W02
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-34
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , En1 , v092
	.byte	W05
	.byte		N11   , Gn1 , v100
	.byte	W12
	.byte		N05   , En1 , v092
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N05
	.byte	W07
	.byte		N04
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte		N17   , An1 , v100
	.byte	W01
	.byte		PEND
mus_messenger_from_the_void_7_002:
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-16
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , An1 , v092
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte		N11   , An1 , v100
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-35
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N04   , An1 , v092
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-62
	.byte		N11   , An1 , v100
	.byte	W02
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-34
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , An1 , v092
	.byte	W05
	.byte		N11   , An1 , v100
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-59
	.byte		N11   , Bn1
	.byte	W01
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-20
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N11   , Gn1
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W07
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte		N17   , An1
	.byte	W01
	.byte		PEND
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-16
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , An1 , v092
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte		N11   , An1 , v100
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-35
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N04   , An1 , v092
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-62
	.byte		N11   , An1 , v100
	.byte	W02
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-34
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , En1 , v092
	.byte	W05
	.byte		N10   , En2 , v100
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W07
	.byte		N04
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte		N17   , An1
	.byte	W01
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_002
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_001
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-16
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , An1 , v092
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte		N11   , An1 , v100
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-35
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N04   , An1 , v092
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-62
	.byte		N11   , An1 , v100
	.byte	W02
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-34
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , An1 , v092
	.byte	W05
	.byte		N11   , An1 , v100
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-59
	.byte		N11   , Bn1
	.byte	W01
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-20
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N11   , Gn1
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W09
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_000
mus_messenger_from_the_void_7_003:
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-16
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , An1 , v092
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte		N11   , An1 , v100
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-35
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N04   , An1 , v092
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-62
	.byte		N11   , An1 , v100
	.byte	W02
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-34
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , An1 , v092
	.byte	W05
	.byte		N11   , An1 , v100
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-59
	.byte		N11   , Bn1
	.byte	W01
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-20
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N11   , Gn1
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W07
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte		N17   , An1
	.byte	W01
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_001
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_002
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-16
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , An1 , v092
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte		N11   , An1 , v100
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-35
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N04   , An1 , v092
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-62
	.byte		N11   , An1 , v100
	.byte	W02
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-34
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , En1 , v092
	.byte	W05
	.byte		N32   , Gn2 , v076
	.byte	W32
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte		N17   , An1 , v100
	.byte	W01
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_003
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_001
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_002
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-16
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , An1 , v092
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte		N11   , An1 , v100
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-35
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N04   , An1 , v092
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-62
	.byte		N11   , An1 , v100
	.byte	W02
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-34
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , En1 , v092
	.byte	W05
	.byte		N32   , Gn2 , v076
	.byte	W36
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_000
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_002
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-16
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , An1 , v092
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte		N11   , An1 , v100
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-35
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N04   , An1 , v092
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-62
	.byte		N11   , An1 , v100
	.byte	W02
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-34
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , En1 , v092
	.byte	W05
	.byte		N32   , Gn2 , v076
	.byte	W36
	.byte		N11   , An1 , v112
	.byte	W01
mus_messenger_from_the_void_7_004:
	.byte	W11
	.byte		N04   , An1 , v100
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N11   , An1 , v092
	.byte	W12
	.byte		        An1 , v112
	.byte	W12
	.byte		N04   , An1 , v100
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N11   , An1 , v092
	.byte	W12
	.byte		        An1 , v112
	.byte	W12
	.byte		N04   , An1 , v100
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N11   , An1 , v112
	.byte	W01
	.byte		PEND
mus_messenger_from_the_void_7_005:
	.byte	W11
	.byte		N04   , An1 , v100
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N11   , An1 , v092
	.byte	W12
	.byte		        An1 , v112
	.byte	W06
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-32
	.byte		N10   , Ds1 , v100
	.byte	W05
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N04   , En1
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-29
	.byte		N28   , Cn2 , v112
	.byte	W02
	.byte		BEND  , c_v-25
	.byte	W01
	.byte		        c_v-21
	.byte	W02
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-12
	.byte	W02
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-9
	.byte	W02
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W02
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v+0
	.byte	W12
	.byte		N11   , An1
	.byte	W01
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_004
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_005
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_004
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_005
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_004
	.byte	W11
	.byte		N04   , An1 , v100
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N11   , An1 , v092
	.byte	W12
	.byte		        An1 , v112
	.byte	W06
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-32
	.byte		N10   , Ds1 , v100
	.byte	W05
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N04   , En1
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-29
	.byte		N28   , Cn2 , v112
	.byte	W02
	.byte		BEND  , c_v-25
	.byte	W01
	.byte		        c_v-21
	.byte	W02
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-12
	.byte	W02
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-9
	.byte	W02
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W02
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v+0
	.byte	W13
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
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
	 .word	mus_messenger_from_the_void_7_000
mus_messenger_from_the_void_7_006:
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-16
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , An1 , v092
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte		N11   , An1 , v100
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-35
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N04   , An1 , v092
	.byte	W04
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-62
	.byte		N11   , An1 , v100
	.byte	W02
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-34
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , En1 , v092
	.byte	W05
	.byte		N32   , Gn2 , v076
	.byte	W32
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte		N17   , An1 , v100
	.byte	W01
	.byte		PEND
mus_messenger_from_the_void_7_007:
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-16
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , An1 , v092
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte		N11   , An1 , v100
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-35
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N04   , An1 , v092
	.byte	W04
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-62
	.byte		N11   , An1 , v100
	.byte	W02
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-34
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , An1 , v092
	.byte	W05
	.byte		N11   , An1 , v100
	.byte	W06
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-59
	.byte		N11   , Bn1
	.byte	W01
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-20
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N11   , Gn1
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte		N17   , An1
	.byte	W01
	.byte		PEND
mus_messenger_from_the_void_7_008:
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-16
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , An1 , v092
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte		N11   , An1 , v100
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-35
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N04   , An1 , v092
	.byte	W04
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-62
	.byte		N11   , An1 , v100
	.byte	W02
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-34
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , En1 , v092
	.byte	W05
	.byte		N11   , Gn1 , v100
	.byte	W12
	.byte		N05   , En1 , v092
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N05
	.byte	W07
	.byte		N04
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte		N17   , An1 , v100
	.byte	W01
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_007
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_006
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_007
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_008
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-16
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , An1 , v092
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte		N11   , An1 , v100
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-35
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N04   , An1 , v092
	.byte	W04
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-62
	.byte		N11   , An1 , v100
	.byte	W02
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-34
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , An1 , v092
	.byte	W05
	.byte		N11   , An1 , v100
	.byte	W06
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-59
	.byte		N11   , Bn1
	.byte	W01
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-20
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N11   , Gn1
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W08
	.byte		N17   , An1
	.byte	W01
	.byte	W05
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N04   , An1 , v092
	.byte	W05
	.byte		N11   , An1 , v100
	.byte	W12
	.byte		N04   , An1 , v092
	.byte	W06
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-8
	.byte		N11   , An1 , v100
	.byte	W01
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-32
	.byte	W05
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N04   , En1 , v092
	.byte	W05
	.byte		N32   , Gn2 , v076
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-29
	.byte	W02
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-21
	.byte	W02
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-12
	.byte	W02
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-9
	.byte	W02
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W02
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v+0
	.byte	W12
	.byte		N07   , En2 , v108
	.byte	W01
	.byte	W06
	.byte		N05   , Dn2
	.byte	W11
	.byte		N07   , En2 , v036
	.byte	W01
	.byte		N05   , Bn1 , v108
	.byte	W06
	.byte		        Dn2 , v036
	.byte	W06
	.byte		        Gn1 , v108
	.byte	W06
	.byte		        Bn1 , v036
	.byte	W06
	.byte		N13   , En1 , v108
	.byte	W06
	.byte		N05   , Gn1 , v036
	.byte	W06
	.byte		N07   , Bn0 , v108
	.byte	W05
	.byte		N11   , Gn0
	.byte	W01
	.byte		N13   , En1 , v036
	.byte	W05
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-56
	.byte		N11   , Cn1 , v108
	.byte	W01
	.byte		BEND  , c_v-48
	.byte		N07   , Bn0 , v036
	.byte	W01
	.byte		BEND  , c_v-40
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+0
	.byte		N11   , Gn0
	.byte	W06
	.byte		        Cn1 , v108
	.byte	W12
	.byte		        An1 , v092
	.byte	W01
mus_messenger_from_the_void_7_009:
	.byte	W11
	.byte		N04   , An1 , v080
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N11   , An1 , v072
	.byte	W12
	.byte		        An1 , v092
	.byte	W12
	.byte		N04   , An1 , v080
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N11   , An1 , v072
	.byte	W12
	.byte		        An1 , v092
	.byte	W12
	.byte		N04   , An1 , v080
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N11   , An1 , v092
	.byte	W01
	.byte		PEND
mus_messenger_from_the_void_7_010:
	.byte	W11
	.byte		N04   , An1 , v080
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N11   , An1 , v072
	.byte	W12
	.byte		        An1 , v092
	.byte	W06
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-32
	.byte		N10   , Ds1 , v080
	.byte	W05
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N04   , En1
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-29
	.byte		N28   , Cn2 , v092
	.byte	W02
	.byte		BEND  , c_v-25
	.byte	W01
	.byte		        c_v-21
	.byte	W02
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-12
	.byte	W02
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-9
	.byte	W02
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W02
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v+0
	.byte	W12
	.byte		N11   , An1
	.byte	W01
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_009
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_010
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_009
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_010
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_009
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_010
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_009
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_010
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_009
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_010
	.byte	PATT
	 .word	mus_messenger_from_the_void_7_009
	.byte	W11
	.byte		N04   , An1 , v080
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N11   , An1 , v072
	.byte	W12
	.byte		        An1 , v092
	.byte	W06
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-32
	.byte		N10   , Ds1 , v080
	.byte	W05
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N04   , En1
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-29
	.byte		N28   , Cn2 , v092
	.byte	W02
	.byte		BEND  , c_v-25
	.byte	W01
	.byte		        c_v-21
	.byte	W02
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-12
	.byte	W02
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-9
	.byte	W02
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W02
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v+0
	.byte	W11
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte		N17   , An1 , v100
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-16
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , An1 , v092
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte		N11   , An1 , v100
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-35
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N04   , An1 , v092
	.byte	W04
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-62
	.byte		N11   , An1 , v100
	.byte	W02
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-34
	.byte	W02
	.byte		        c_v+0
	.byte	W07
	.byte		N04   , An1 , v092
	.byte	W05
	.byte		N11   , An1 , v100
	.byte	W06
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-59
	.byte		N11   , Bn1
	.byte	W01
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-20
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N11   , Gn1
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-53
	.byte	W02
	.byte		        c_v-53
	.byte	W01
	.byte	W05
	.byte		        c_v+0
	.byte	W90
	.byte	W01
	.byte	GOTO
	 .word	mus_messenger_from_the_void_7_003
	.byte		FINE

@**************** Track 8 ****************@

mus_messenger_from_the_void_8:
	.byte		KEYSH , mus_messenger_from_the_void_key+0
	.byte		VOICE , 122
	.byte	W01
	.byte		VOL   , 62*mus_messenger_from_the_void_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
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
	.byte	W03
	.byte		VOICE , 122
	.byte	W01
mus_messenger_from_the_void_8_000:
	.byte		N23   , En4 , v127
	.byte	W23
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		PEND
mus_messenger_from_the_void_8_001:
	.byte		N03   , Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W19
	.byte		N03
	.byte	W04
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Ds8 , v036
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		PEND
mus_messenger_from_the_void_8_002:
	.byte		N03   , Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W05
	.byte		VOICE , 123
	.byte	W02
	.byte		N11   , Ds8 , v036
	.byte	W10
	.byte		VOICE , 124
	.byte	W02
	.byte		N03   , Cs8 , v008
	.byte	W05
	.byte		PEND
	.byte		        Cs8 , v048
	.byte	W07
	.byte		        Cs8 , v008
	.byte	W04
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Ds8 , v036
	.byte	W12
	.byte		N17   , Ds8 , v044
	.byte	W17
	.byte		VOICE , 124
	.byte	W02
	.byte		N03   , Cs8 , v008
	.byte	W05
	.byte		        Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte	W23
	.byte		VOICE , 122
	.byte	W01
	.byte		N23   , En4 , v127
	.byte	W23
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W07
	.byte		        Cs8 , v008
	.byte	W04
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Ds8 , v036
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_002
	.byte	W07
	.byte		N03   , Cs8 , v008
	.byte	W04
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Ds8 , v036
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , Cs8 , v048
	.byte	W19
	.byte		        Cs8 , v008
	.byte	W04
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Ds8 , v036
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W24
mus_messenger_from_the_void_8_003:
	.byte		N03   , Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W11
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Ds8 , v036
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_003
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_003
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_003
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_003
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_003
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_003
mus_messenger_from_the_void_8_004:
	.byte		N03   , Cs8 , v040
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W23
	.byte		VOICE , 122
	.byte	W01
	.byte		PEND
mus_messenger_from_the_void_8_005:
	.byte		N23   , En4 , v127
	.byte	W23
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , Cs8 , v040
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_004
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_005
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_004
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_000
	.byte		N03   , Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W19
	.byte		N03
	.byte	W16
	.byte		VOICE , 122
	.byte	W01
	.byte		N23   , En4 , v127
	.byte	W23
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W05
	.byte		VOICE , 123
	.byte	W02
	.byte		N11   , Ds8 , v036
	.byte	W10
	.byte		VOICE , 124
	.byte	W02
	.byte		N03   , Cs8 , v008
	.byte	W05
	.byte		        Cs8 , v040
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		        Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W23
	.byte		VOICE , 123
	.byte	W01
	.byte		N23   , Ds8 , v036
	.byte	W92
	.byte	W03
	.byte		VOICE , 122
	.byte	W01
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_000
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_001
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_002
mus_messenger_from_the_void_8_006:
	.byte		N03   , Cs8 , v048
	.byte	W07
	.byte		        Cs8 , v008
	.byte	W04
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Ds8 , v036
	.byte	W12
	.byte		N17   , Ds8 , v044
	.byte	W17
	.byte		VOICE , 124
	.byte	W02
	.byte		N03   , Cs8 , v008
	.byte	W05
	.byte		        Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W11
	.byte		VOICE , 122
	.byte	W01
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_000
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_001
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_002
	.byte		N03   , Cs8 , v040
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W23
	.byte		VOICE , 122
	.byte	W01
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_000
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_001
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_002
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_006
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_000
	.byte		N03   , Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W12
	.byte		        Cs8 , v048
	.byte	W12
	.byte		        Cs8 , v008
	.byte	W19
	.byte		N03
	.byte	W04
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Ds8 , v036
	.byte	W12
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_002
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_004
	.byte		N44   , En4 , v127
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , Cs8 , v040
	.byte	W48
	.byte		N03
	.byte	W36
mus_messenger_from_the_void_8_007:
	.byte	W12
	.byte		N03   , Cs8 , v040
	.byte	W48
	.byte		N03
	.byte	W36
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_007
	.byte	W12
	.byte		N03   , Cs8 , v040
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W05
	.byte		VOICE , 123
	.byte	W02
	.byte		N04   , Ds8 , v044
	.byte	W04
	.byte		VOICE , 122
	.byte	W01
	.byte		N32   , En4 , v127
	.byte	W32
	.byte	W03
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , Cs8 , v040
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W12
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W23
	.byte		VOICE , 123
	.byte	W01
	.byte		N23   , Ds8 , v044
	.byte	W12
mus_messenger_from_the_void_8_008:
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , Cs8 , v040
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W12
	.byte		PEND
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W11
	.byte		VOICE , 123
	.byte	W01
	.byte		N23   , Ds8 , v056
	.byte	W24
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_008
mus_messenger_from_the_void_8_009:
	.byte	W12
	.byte		N03   , Cs8 , v040
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_8_009
	.byte	W12
	.byte		N03   , Cs8 , v040
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W05
	.byte		VOICE , 123
	.byte	W02
	.byte		N05   , Ds8 , v044
	.byte	W04
	.byte		VOICE , 124
	.byte	W01
	.byte	W40
	.byte	W01
	.byte		        123
	.byte	W06
	.byte		        124
	.byte	W24
	.byte		        123
	.byte	W06
	.byte		        124
	.byte	W06
	.byte		        123
	.byte	W12
	.byte		        122
	.byte	W01
	.byte		N44   , En4 , v127
	.byte	W96
	.byte	W68
	.byte	W03
	.byte		VOICE , 124
	.byte	W01
	.byte		N04   , Gn5 , v080
	.byte	W07
	.byte		        Gn5 , v064
	.byte	W05
	.byte		        Gn5 , v080
	.byte	W07
	.byte		        Gn5 , v064
	.byte	W05
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		VOICE , 123
	.byte	W01
	.byte		N23   , Ds8 , v060
	.byte	W24
	.byte		        Ds8 , v040
	.byte	W24
	.byte		        Ds8 , v048
	.byte	W24
	.byte		        Ds8 , v028
	.byte	W23
	.byte		        Ds8 , v052
	.byte	W01
	.byte	W23
	.byte		        Ds8 , v028
	.byte	W24
	.byte	W01
	.byte		        Ds8 , v048
	.byte	W23
	.byte		        Ds8 , v040
	.byte	W24
	.byte	W01
	.byte		        Ds8 , v048
	.byte	W23
	.byte		        Ds8 , v028
	.byte	W24
	.byte		        Ds8 , v044
	.byte	W24
	.byte	W01
	.byte		        Ds8 , v036
	.byte	W24
	.byte		        Ds8 , v052
	.byte	W24
	.byte		        Ds8 , v032
	.byte	W42
	.byte	W01
	.byte		N05   , Ds8 , v064
	.byte	W04
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , Cs8 , v036
	.byte	W05
	.byte		VOICE , 123
	.byte	W02
	.byte		N05   , Ds8 , v060
	.byte	W04
	.byte		VOICE , 124
	.byte	W01
	.byte		N03   , Cs8 , v036
	.byte	W05
	.byte		VOICE , 123
	.byte	W02
	.byte		N04   , Ds8 , v072
	.byte	W04
	.byte		VOICE , 122
	.byte	W01
	.byte		N23   , En4 , v127
	.byte	W23
	.byte		VOICE , 123
	.byte	W01
	.byte		N23   , Ds8 , v048
	.byte	W23
	.byte		        Ds8 , v036
	.byte	W24
	.byte		        Ds8 , v048
	.byte	W24
	.byte		        Ds8 , v036
	.byte	W01
	.byte	W24
	.byte		N23
	.byte	W23
	.byte		        Ds8 , v048
	.byte	W24
	.byte		        Ds8 , v040
	.byte	W24
	.byte	W01
	.byte		N23
	.byte	W23
	.byte		N23
	.byte	W24
	.byte	W01
	.byte		N23
	.byte	W24
	.byte		N23
	.byte	W24
	.byte		        Ds8 , v036
	.byte	W23
	.byte		        Ds8 , v040
	.byte	W24
	.byte	W01
	.byte		        Ds8 , v052
	.byte	W24
	.byte		        Ds8 , v044
	.byte	W23
	.byte		        Ds8 , v040
	.byte	W01
	.byte	W23
	.byte		        Ds8 , v036
	.byte	W24
	.byte	W01
	.byte		        Ds8 , v044
	.byte	W24
	.byte		        Ds8 , v036
	.byte	W24
	.byte		        Ds8 , v048
	.byte	W23
	.byte		        Ds8 , v044
	.byte	W24
	.byte	W01
	.byte		        Ds8 , v052
	.byte	W23
	.byte		        Ds8 , v032
	.byte	W24
	.byte	W01
	.byte		        Ds8 , v052
	.byte	W23
	.byte		        Ds8 , v032
	.byte	W24
	.byte	W01
	.byte		        Ds8 , v040
	.byte	W23
	.byte		        Ds8 , v036
	.byte	W24
	.byte	W01
	.byte	W96
	.byte	GOTO
	 .word	mus_messenger_from_the_void_8_000
	.byte		FINE

@**************** Track 9 ****************@

mus_messenger_from_the_void_9:
	.byte		KEYSH , mus_messenger_from_the_void_key-12
	.byte		VOICE , 102
	.byte	W01
	.byte		VOL   , 80*mus_messenger_from_the_void_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		MOD   , 3
	.byte		N92   , An2 , v120
	.byte	W96
	.byte		        Gn2
	.byte	W96
	.byte		        Fn2
	.byte	W96
	.byte		N44   , En2
	.byte	W48
	.byte		N23
	.byte	W24
	.byte		N23
	.byte	W24
	.byte		TIE   , An2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W88
	.byte	W01
	.byte		EOT   
	.byte	W06
	.byte		VOICE , 103
	.byte	W01
	.byte		MOD   , 0
	.byte		BEND  , c_v-64
	.byte		N18   , An1 , v127
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		N05   , An1 , v120
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-64
	.byte		N12   , An1 , v127
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N05   , An1 , v120
	.byte	W04
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-62
	.byte		N12   , An1 , v127
	.byte	W02
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		N05   , An1 , v120
	.byte	W05
	.byte		N12   , An1 , v127
	.byte	W06
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-59
	.byte		N12   , Bn1
	.byte	W01
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N12   , Gn1
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-64
	.byte		N18   , An1
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		N05   , An1 , v120
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-64
	.byte		N12   , An1 , v127
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N05   , An1 , v120
	.byte	W04
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-62
	.byte		N12   , An1 , v127
	.byte	W02
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		N05   , En1 , v120
	.byte	W05
	.byte		N12   , Gn1 , v127
	.byte	W12
	.byte		N06   , En1 , v120
	.byte	W07
	.byte		N05
	.byte	W05
	.byte		N06
	.byte	W07
	.byte		N05
	.byte	W05
	.byte		BEND  , c_v-64
	.byte		N18   , An1 , v127
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		N05   , An1 , v120
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-64
	.byte		N12   , An1 , v127
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N05   , An1 , v120
	.byte	W04
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-62
	.byte		N12   , An1 , v127
	.byte	W02
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		N05   , An1 , v120
	.byte	W05
	.byte		N12   , An1 , v127
	.byte	W06
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-59
	.byte		N12   , Bn1
	.byte	W01
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N12   , Gn1
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-64
	.byte		N18   , An1
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		N05   , An1 , v120
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-64
	.byte		N12   , An1 , v127
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N05   , An1 , v120
	.byte	W04
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-62
	.byte		N12   , An1 , v127
	.byte	W02
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		N05   , En1 , v120
	.byte	W05
	.byte		N11   , En2 , v127
	.byte	W12
	.byte		N14   , Dn2
	.byte	W12
	.byte		N10   , En2
	.byte	W12
	.byte		N80   , An1
	.byte	W84
	.byte		N16   , An2
	.byte	W12
	.byte	W12
	.byte		N56   , An1
	.byte	W60
	.byte		N14   , Dn2
	.byte	W12
	.byte		N10   , En2
	.byte	W12
	.byte		N80   , An1
	.byte	W96
	.byte	W96
mus_messenger_from_the_void_9_000:
	.byte		BEND  , c_v-64
	.byte		N17   , An1 , v127
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		N04
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-64
	.byte		N11
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N04
	.byte	W04
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-62
	.byte		N11
	.byte	W02
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N11
	.byte	W06
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-59
	.byte		N11   , Bn1
	.byte	W01
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N11   , Gn1
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		PEND
mus_messenger_from_the_void_9_001:
	.byte		BEND  , c_v-64
	.byte		N17   , An1 , v127
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		N04
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-64
	.byte		N11
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N04
	.byte	W04
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-62
	.byte		N11
	.byte	W02
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		N06   , En1
	.byte	W05
	.byte		N11   , Gn1
	.byte	W12
	.byte		N04   , En1
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N04
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		PEND
mus_messenger_from_the_void_9_002:
	.byte		BEND  , c_v-64
	.byte		N17   , An1 , v127
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		N03
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-64
	.byte		N11
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N03
	.byte	W04
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-62
	.byte		N11
	.byte	W02
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		N03
	.byte	W05
	.byte		N11
	.byte	W06
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-59
	.byte		N11   , Bn1
	.byte	W01
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N11   , Gn1
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		PEND
mus_messenger_from_the_void_9_003:
	.byte		BEND  , c_v-64
	.byte		N17   , An1 , v127
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		N03
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-64
	.byte		N11
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N03
	.byte	W04
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-62
	.byte		N11
	.byte	W02
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		N05   , En1
	.byte	W05
	.byte		N32
	.byte	W36
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_000
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_001
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_002
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_003
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_000
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_001
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_002
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_003
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_000
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_001
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_002
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_003
	.byte		N12   , An1 , v127
	.byte	W96
	.byte	W60
	.byte		N04   , En1
	.byte	W12
	.byte		N24   , Gn1
	.byte	W24
	.byte		N12   , An1
	.byte	W96
	.byte	W72
	.byte		        En1
	.byte	W12
	.byte		        Gn1
	.byte	W12
mus_messenger_from_the_void_9_004:
	.byte		N10   , An1 , v127
	.byte	W24
	.byte		N10
	.byte	W24
	.byte		N10
	.byte	W24
	.byte		N10
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_004
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_004
	.byte		N10   , An1 , v127
	.byte	W24
	.byte		N10
	.byte	W24
	.byte		N10
	.byte	W24
	.byte		N04
	.byte	W06
	.byte		N16   , Gn1
	.byte	W18
	.byte	W96
	.byte		N11   , Dn2
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
mus_messenger_from_the_void_9_005:
	.byte		N11   , Cs2 , v127
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		PEND
mus_messenger_from_the_void_9_006:
	.byte		N11   , Cn2 , v127
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		PEND
mus_messenger_from_the_void_9_007:
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		PEND
mus_messenger_from_the_void_9_008:
	.byte		N11   , En2 , v127
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		PEND
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		BEND  , c_v-32
	.byte		N10   , As1 , v120
	.byte	W05
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N04   , Bn1
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-29
	.byte		N28   , Gn2 , v127
	.byte	W02
	.byte		BEND  , c_v-25
	.byte	W01
	.byte		        c_v-21
	.byte	W02
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-12
	.byte	W02
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-9
	.byte	W02
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W02
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v+0
	.byte	W12
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_008
	.byte		N11   , En2 , v127
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_005
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_006
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_007
	.byte		N11   , As1 , v127
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
mus_messenger_from_the_void_9_009:
	.byte		N11   , Ds2 , v127
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		PEND
mus_messenger_from_the_void_9_010:
	.byte		N11   , Ds2 , v127
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		BEND  , c_v-32
	.byte		N10   , An1 , v120
	.byte	W05
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N04   , As1
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-29
	.byte		N28   , Fs2 , v127
	.byte	W02
	.byte		BEND  , c_v-25
	.byte	W01
	.byte		        c_v-21
	.byte	W02
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-12
	.byte	W02
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-9
	.byte	W02
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W02
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v+0
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_009
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_010
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		BEND  , c_v-60
	.byte	W01
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_003
mus_messenger_from_the_void_9_011:
	.byte		N13   , An1 , v127
	.byte	W24
	.byte		N13
	.byte	W24
	.byte		N13
	.byte	W24
	.byte		N13
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_011
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_011
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_011
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_011
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_011
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_011
	.byte		N13   , En1 , v127
	.byte	W24
	.byte		N13
	.byte	W24
	.byte		N13
	.byte	W24
	.byte		N13
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
mus_messenger_from_the_void_9_012:
	.byte		N10   , An1 , v127
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_012
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_012
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_012
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_012
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_012
	.byte	PATT
	 .word	mus_messenger_from_the_void_9_012
	.byte	W96
	.byte	GOTO
	 .word	mus_messenger_from_the_void_9_000
	.byte		FINE

@**************** Track 11 ****************@

mus_messenger_from_the_void_11:
	.byte		KEYSH , mus_messenger_from_the_void_key+0
	.byte		VOICE , 87
	.byte	W01
	.byte		VOL   , 37*mus_messenger_from_the_void_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N44   , Bn3 , v020
	.byte	W48
	.byte		N24   , Dn3 , v052
	.byte	W12
	.byte		MOD   , 2
	.byte	W12
	.byte		N22   , An3 , v020
	.byte	W24
	.byte		N24   , An3 , v080
	.byte	W24
	.byte		N06   , Gn3
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		N90   , An2
	.byte	W48
	.byte	W48
	.byte		N24   , An2 , v076
	.byte	W24
	.byte		N06   , Gn2
	.byte	W12
	.byte		        Dn2 , v072
	.byte	W12
	.byte		TIE   , An1
	.byte	W96
	.byte	W06
	.byte		EOT   
	.byte	W88
	.byte	W01
	.byte		VOICE , 86
	.byte	W01
	.byte		N90   , Cn3 , v092
	.byte	W96
	.byte		        Gn2
	.byte	W96
	.byte		        An2
	.byte	W96
	.byte		N42   , Bn2
	.byte	W48
	.byte		N18
	.byte	W24
	.byte		        Gn3
	.byte	W24
	.byte		N66   , Cn3
	.byte	W72
	.byte		N12   , An2
	.byte	W19
	.byte		N04   , Cn3
	.byte	W05
	.byte		N66
	.byte	W72
	.byte		N07   , An2
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		N66   , En3
	.byte	W72
	.byte		MOD   , 0
	.byte		N07   , Bn2
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte	W06
	.byte		VOICE , 87
	.byte	W03
	.byte		N10   , An2 , v040
	.byte	W12
	.byte		N04   , As2
	.byte	W07
	.byte		        An2
	.byte	W05
	.byte		        Gn3
	.byte	W07
	.byte		        Dn3
	.byte	W05
	.byte		N12   , Gs2
	.byte	W19
	.byte		N04
	.byte	W05
	.byte		        As2
	.byte	W07
	.byte		        En2
	.byte	W05
	.byte		        Fn3
	.byte	W07
	.byte		        Gn3
	.byte	W05
	.byte		N03
	.byte	W02
	.byte		PAN   , c_v+63
	.byte	W01
mus_messenger_from_the_void_11_000:
	.byte		VOICE , 87
	.byte		MOD   , 2
	.byte		N04   , An2 , v127
	.byte	W12
	.byte		N02   , Gn3 , v124
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , En4 , v100
	.byte	W15
	.byte		        En4 , v040
	.byte	W09
	.byte		N12   , En4 , v100
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Gn3 , v124
	.byte	W02
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , En4 , v040
	.byte	W04
	.byte		N04   , En4 , v092
	.byte	W10
	.byte		PAN   , c_v+63
	.byte	W02
	.byte		N04   , Gn3 , v124
	.byte	W05
	.byte		N09   , An3
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , Dn4 , v092
	.byte	W12
	.byte		N03   , En4
	.byte	W03
	.byte		        Dn4 , v032
	.byte	W08
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N06   , Gn3 , v124
	.byte	W07
	.byte		N03   , An3
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		        Ds3
	.byte	W12
	.byte		N04   , En3
	.byte	W05
	.byte		N09   , Gn3
	.byte	W12
mus_messenger_from_the_void_11_001:
	.byte		N04   , An2 , v127
	.byte	W12
	.byte		N02   , Gn3 , v124
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , En4 , v100
	.byte	W15
	.byte		        En4 , v040
	.byte	W09
	.byte		N12   , En4 , v100
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Gn3 , v124
	.byte	W02
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , En4 , v040
	.byte	W04
	.byte		N04   , En4 , v092
	.byte	W10
	.byte		PAN   , c_v+63
	.byte	W02
	.byte		N04   , Gn3 , v124
	.byte	W05
	.byte		N09   , An3
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		PEND
	.byte		N04   , Dn4 , v092
	.byte	W12
	.byte		N03   , En4
	.byte	W03
	.byte		        Dn4 , v032
	.byte	W08
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N06   , Gn3 , v124
	.byte	W07
	.byte		N03   , An3
	.byte	W17
	.byte		        En4 , v112
	.byte	W06
	.byte		        Ds4
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , En4 , v092
	.byte	W05
	.byte		PAN   , c_v+63
	.byte	W02
	.byte		N03   , Dn4 , v112
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N06   , En4 , v092
	.byte	W05
	.byte		PAN   , c_v+63
	.byte	W02
	.byte		N03   , Cn4 , v112
	.byte	W05
	.byte		N06   , Gn3 , v124
	.byte	W12
	.byte	PATT
	 .word	mus_messenger_from_the_void_11_001
	.byte		N04   , Dn4 , v092
	.byte	W12
	.byte		N03   , En4
	.byte	W03
	.byte		        Dn4 , v032
	.byte	W08
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N06   , Gn3 , v124
	.byte	W07
	.byte		N03   , An3
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , Gn4 , v092
	.byte	W05
	.byte		PAN   , c_v+63
	.byte	W02
	.byte		N03   , En3 , v124
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W04
	.byte		N04   , Gn4 , v032
	.byte	W02
	.byte		PAN   , c_v+63
	.byte	W02
	.byte		N03   , Dn3 , v124
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , As4 , v092
	.byte	W05
	.byte		PAN   , c_v+63
	.byte	W02
	.byte		N03   , Ds3 , v124
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N06   , Bn4 , v092
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N04   , En3 , v124
	.byte	W05
	.byte		N09   , Gn3
	.byte	W12
	.byte		N04   , An2 , v127
	.byte	W12
	.byte		N02   , Gn3 , v124
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , En4 , v100
	.byte	W15
	.byte		        En4 , v040
	.byte	W09
	.byte		N12   , En4 , v100
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Gn3 , v124
	.byte	W02
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , En4 , v040
	.byte	W04
	.byte		N04   , En4 , v092
	.byte	W10
	.byte		PAN   , c_v+63
	.byte	W02
	.byte		N04   , Gn3 , v124
	.byte	W05
	.byte		N09   , An3
	.byte	W12
	.byte		N04   , En3 , v116
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		N03   , Cn3
	.byte	W04
	.byte		N02   , Dn3
	.byte	W04
	.byte		        Cn3
	.byte	W04
	.byte		N07   , Gn2
	.byte	W12
	.byte		N06   , En2
	.byte	W07
	.byte		N02   , Dn2
	.byte	W12
	.byte		        Ds2
	.byte	W12
	.byte		        En2
	.byte	W12
	.byte		N04   , Gn2
	.byte	W04
	.byte		VOICE , 86
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		MOD   , 0
	.byte		N09   , An2
	.byte	W09
	.byte		N03   , An2 , v040
	.byte	W03
	.byte		N09   , Bn2 , v116
	.byte	W09
	.byte		N03   , Bn2 , v040
	.byte	W03
	.byte		N09   , Cn3 , v116
	.byte	W09
	.byte		N03   , Cn3 , v040
	.byte	W03
	.byte		N54   , En2 , v116
	.byte	W12
	.byte		MOD   , 2
	.byte	W42
	.byte		N06   , En2 , v040
	.byte	W06
	.byte		N18   , An2 , v116
	.byte	W18
	.byte		N06   , An2 , v040
	.byte	W06
	.byte		N18   , Bn2 , v116
	.byte	W18
	.byte		N06   , Bn2 , v040
	.byte	W06
	.byte		N42   , Cn3 , v116
	.byte	W42
	.byte		N06   , Cn3 , v040
	.byte	W06
	.byte		N42   , Dn3 , v116
	.byte	W42
	.byte		N06   , Dn3 , v040
	.byte	W06
	.byte		N42   , Cn3 , v116
	.byte	W42
	.byte		N06   , Cn3 , v040
	.byte	W06
	.byte		N42   , Bn2 , v116
	.byte	W42
	.byte		N06   , Bn2 , v040
	.byte	W06
	.byte		N42   , Gn2 , v116
	.byte	W42
	.byte		N06   , Gn2 , v040
	.byte	W06
	.byte		N42   , An2 , v116
	.byte	W42
	.byte		N06   , An2 , v040
	.byte	W06
	.byte		N42   , Gs2 , v116
	.byte	W42
	.byte		N06   , Gs2 , v040
	.byte	W06
	.byte		N66   , Gn2 , v116
	.byte	W66
	.byte		N06   , Gn2 , v040
	.byte	W06
	.byte		N23   , En2 , v116
	.byte	W24
	.byte		N15   , Cn3
	.byte	W15
	.byte		N03   , Cn3 , v040
	.byte	W03
	.byte		N15   , Bn2 , v116
	.byte	W15
	.byte		N03   , Bn2 , v040
	.byte	W03
	.byte		N09   , An2 , v116
	.byte	W09
	.byte		N03   , An2 , v040
	.byte	W03
	.byte		N15   , Gn2 , v116
	.byte	W15
	.byte		N03   , Gn2 , v040
	.byte	W03
	.byte		N15   , Fn2 , v116
	.byte	W15
	.byte		N03   , Fn2 , v040
	.byte	W03
	.byte		N28   , En2 , v116
	.byte	W12
	.byte	W18
	.byte		N02   , Gn2 , v088
	.byte	W03
	.byte		        Bn2
	.byte	W03
	.byte		N68   , En3 , v104
	.byte	W68
	.byte	W03
	.byte		VOICE , 87
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		VOICE , 87
	.byte		N15   , An3 , v092
	.byte	W19
	.byte		        Gn3
	.byte	W17
	.byte		N09   , Fn3
	.byte	W12
	.byte		N48   , En3
	.byte	W48
	.byte	W12
	.byte		N03   , An3
	.byte	W06
	.byte		N06   , An3 , v040
	.byte	W06
	.byte		N03   , An3 , v092
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		N06   , An3 , v040
	.byte	W06
	.byte		N44   , Cn4 , v092
	.byte	W48
	.byte		N06   , Cn4 , v040
	.byte	W06
	.byte	W19
	.byte		N15   , Ds4 , v092
	.byte	W17
	.byte		N09   , Dn4
	.byte	W12
	.byte		N15   , Cn4
	.byte	W19
	.byte		        Bn3
	.byte	W17
	.byte		N09   , An3
	.byte	W12
	.byte		N36   , En3
	.byte	W42
	.byte		N06   , En3 , v040
	.byte	W06
	.byte		N15   , Fn3 , v092
	.byte	W18
	.byte		N06   , Fn3 , v040
	.byte	W06
	.byte		N15   , Gn3 , v092
	.byte	W18
	.byte		N06   , Gn3 , v040
	.byte	W06
	.byte	W24
	.byte		N15   , Bn3 , v092
	.byte	W18
	.byte		N06   , Bn3 , v040
	.byte	W06
	.byte		N15   , Cn4 , v092
	.byte	W18
	.byte		N06   , Cn4 , v040
	.byte	W06
	.byte		N21   , En3 , v092
	.byte	W24
	.byte		N15   , Bn3
	.byte	W18
	.byte		N06   , Bn3 , v040
	.byte	W06
	.byte		N15   , Cn4 , v092
	.byte	W18
	.byte		N06   , Cn4 , v040
	.byte	W06
	.byte		N15   , Dn4 , v092
	.byte	W18
	.byte		N06   , Dn4 , v040
	.byte	W06
	.byte		N15   , En4 , v092
	.byte	W18
	.byte		N06   , En4 , v040
	.byte	W06
	.byte		N24   , Bn3 , v092
	.byte	W30
	.byte		N06   , Bn3 , v040
	.byte	W06
	.byte		N24   , Gn3 , v092
	.byte	W30
	.byte		N06   , Gn3 , v040
	.byte	W06
	.byte		N21   , En3 , v092
	.byte	W24
	.byte		N06   , En3 , v040
	.byte	W12
	.byte		N72   , En4 , v092
	.byte	W78
	.byte		N06   , En4 , v040
	.byte	W06
	.byte	W06
	.byte		VOICE , 87
	.byte		PAN   , c_v+0
	.byte	W03
	.byte		N10   , An2 , v032
	.byte	W12
	.byte		N04   , As2
	.byte	W07
	.byte		        An2
	.byte	W05
	.byte		        Gn3
	.byte	W07
	.byte		        Dn3
	.byte	W05
	.byte		N12   , Gs2
	.byte	W19
	.byte		N04
	.byte	W05
	.byte		        As2
	.byte	W07
	.byte		        En2
	.byte	W05
	.byte		        Fn3
	.byte	W07
	.byte		        Gn3
	.byte	W05
	.byte		N02
	.byte	W02
	.byte		VOICE , 86
	.byte	W01
	.byte		N40   , Fn2 , v080
	.byte	W48
	.byte		N40
	.byte	W48
	.byte		        An2
	.byte	W48
	.byte		N17   , Cs2
	.byte	W24
	.byte		        Cs3
	.byte	W24
	.byte		N64   , En3
	.byte	W72
	.byte		N09   , Dn3
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		N40   , Bn2
	.byte	W48
	.byte		MOD   , 0
	.byte		N17   , Cn3
	.byte	W24
	.byte		        Dn3
	.byte	W23
	.byte		VOICE , 86
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N08   , En2 , v100
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Dn3
	.byte	W03
	.byte		N03   , En2 , v024
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N08   , En3 , v100
	.byte	W08
	.byte		N01   , Dn3 , v024
	.byte	W02
	.byte		PAN   , c_v+63
	.byte	W02
	.byte		N02   , Bn2 , v100
	.byte	W03
	.byte		N01   , En3 , v024
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N03   , Dn3 , v100
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W02
	.byte		N02   , Dn2
	.byte	W03
	.byte		N01   , Bn2 , v024
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N02   , En2 , v100
	.byte	W03
	.byte		        Dn3 , v024
	.byte	W02
	.byte		PAN   , c_v+63
	.byte	W02
	.byte		N03   , Bn2 , v100
	.byte	W03
	.byte		N01   , Dn2 , v024
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N02   , Dn3 , v100
	.byte	W03
	.byte		N01   , En2 , v024
	.byte	W02
	.byte		PAN   , c_v-64
	.byte	W02
	.byte		N08   , En3 , v100
	.byte	W08
	.byte		N01   , Dn3 , v024
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , Bn2 , v100
	.byte	W03
	.byte		N01   , En3 , v024
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Dn3 , v100
	.byte	W05
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , Bn2
	.byte	W03
	.byte		N01   , Bn2 , v024
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
mus_messenger_from_the_void_11_002:
	.byte		N08   , En2 , v100
	.byte	W10
	.byte		N01   , Bn2 , v024
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Dn3 , v100
	.byte	W03
	.byte		N03   , En2 , v024
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N08   , En3 , v100
	.byte	W08
	.byte		N01   , Dn3 , v024
	.byte	W02
	.byte		PAN   , c_v+63
	.byte	W02
	.byte		N02   , Bn2 , v100
	.byte	W03
	.byte		N01   , En3 , v024
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N03   , Dn3 , v100
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W02
	.byte		N02   , Dn2
	.byte	W03
	.byte		N01   , Bn2 , v024
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N02   , En2 , v100
	.byte	W03
	.byte		        Dn3 , v024
	.byte	W02
	.byte		PAN   , c_v+63
	.byte	W02
	.byte		N03   , Bn2 , v100
	.byte	W03
	.byte		N01   , Dn2 , v024
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N02   , Dn3 , v100
	.byte	W03
	.byte		N01   , En2 , v024
	.byte	W02
	.byte		PAN   , c_v-64
	.byte	W02
	.byte		N08   , En3 , v100
	.byte	W08
	.byte		N01   , Dn3 , v024
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , Bn2 , v100
	.byte	W03
	.byte		N01   , En3 , v024
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Dn3 , v100
	.byte	W05
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , Bn2
	.byte	W03
	.byte		N01   , Bn2 , v024
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_11_002
	.byte		N08   , En2 , v100
	.byte	W10
	.byte		N01   , Bn2 , v024
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Dn3 , v100
	.byte	W03
	.byte		N03   , En2 , v024
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N08   , En3 , v100
	.byte	W08
	.byte		N01   , Dn3 , v024
	.byte	W02
	.byte		PAN   , c_v+63
	.byte	W02
	.byte		N02   , Bn2 , v100
	.byte	W03
	.byte		N01   , En3 , v024
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N03   , Dn3 , v100
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W02
	.byte		N02   , Dn2
	.byte	W03
	.byte		N01   , Bn2 , v024
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N02   , En2 , v100
	.byte	W03
	.byte		        Dn3 , v024
	.byte	W02
	.byte		PAN   , c_v+63
	.byte	W02
	.byte		N03   , Bn2 , v100
	.byte	W03
	.byte		N01   , Dn2 , v024
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N02   , Dn3 , v100
	.byte	W03
	.byte		N01   , En2 , v024
	.byte	W02
	.byte		PAN   , c_v-64
	.byte	W02
	.byte		N02   , En3 , v100
	.byte	W03
	.byte		N01   , Bn2 , v024
	.byte	W01
	.byte		VOICE , 86
	.byte	W01
	.byte		N40   , Fn2 , v080
	.byte	W05
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		        c_v+63
	.byte	W01
	.byte		MOD   , 2
	.byte	W05
	.byte		PAN   , c_v+0
	.byte	W30
	.byte	W01
	.byte		N40
	.byte	W48
	.byte		        Gs2
	.byte	W48
	.byte		N17   , Cn2
	.byte	W24
	.byte		        Cn3
	.byte	W24
	.byte		N64   , Ds3
	.byte	W72
	.byte		N09   , Cs3
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		N40   , As2
	.byte	W48
	.byte		MOD   , 0
	.byte		N17   , Bn2
	.byte	W24
	.byte		        Cs3
	.byte	W23
	.byte		VOICE , 85
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N08   , Ds2 , v100
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Cs3
	.byte	W03
	.byte		N03   , Ds2 , v024
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N08   , Ds3 , v100
	.byte	W08
	.byte		N01   , Cs3 , v024
	.byte	W02
	.byte		PAN   , c_v+63
	.byte	W02
	.byte		N02   , As2 , v100
	.byte	W03
	.byte		N01   , Ds3 , v024
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N03   , Cs3 , v100
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W02
	.byte		N02   , Cs2
	.byte	W03
	.byte		N01   , As2 , v024
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N02   , Ds2 , v100
	.byte	W03
	.byte		        Cs3 , v024
	.byte	W02
	.byte		PAN   , c_v+63
	.byte	W02
	.byte		N03   , As2 , v100
	.byte	W03
	.byte		N01   , Cs2 , v024
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N02   , Cs3 , v100
	.byte	W03
	.byte		N01   , Ds2 , v024
	.byte	W02
	.byte		PAN   , c_v-64
	.byte	W02
	.byte		N08   , Ds3 , v100
	.byte	W08
	.byte		N01   , Cs3 , v024
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , As2 , v100
	.byte	W03
	.byte		N01   , Ds3 , v024
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Cs3 , v100
	.byte	W05
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , As2
	.byte	W03
	.byte		N01   , As2 , v024
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
mus_messenger_from_the_void_11_003:
	.byte		N08   , Ds2 , v100
	.byte	W10
	.byte		N01   , As2 , v024
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Cs3 , v100
	.byte	W03
	.byte		N03   , Ds2 , v024
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N08   , Ds3 , v100
	.byte	W08
	.byte		N01   , Cs3 , v024
	.byte	W02
	.byte		PAN   , c_v+63
	.byte	W02
	.byte		N02   , As2 , v100
	.byte	W03
	.byte		N01   , Ds3 , v024
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N03   , Cs3 , v100
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W02
	.byte		N02   , Cs2
	.byte	W03
	.byte		N01   , As2 , v024
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N02   , Ds2 , v100
	.byte	W03
	.byte		        Cs3 , v024
	.byte	W02
	.byte		PAN   , c_v+63
	.byte	W02
	.byte		N03   , As2 , v100
	.byte	W03
	.byte		N01   , Cs2 , v024
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N02   , Cs3 , v100
	.byte	W03
	.byte		N01   , Ds2 , v024
	.byte	W02
	.byte		PAN   , c_v-64
	.byte	W02
	.byte		N08   , Ds3 , v100
	.byte	W08
	.byte		N01   , Cs3 , v024
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , As2 , v100
	.byte	W03
	.byte		N01   , Ds3 , v024
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Cs3 , v100
	.byte	W05
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , As2
	.byte	W03
	.byte		N01   , As2 , v024
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		PEND
	.byte	PATT
	 .word	mus_messenger_from_the_void_11_003
	.byte		N08   , Ds2 , v100
	.byte	W10
	.byte		N01   , As2 , v024
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Cs3 , v100
	.byte	W03
	.byte		N03   , Ds2 , v024
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N08   , Ds3 , v100
	.byte	W08
	.byte		N01   , Cs3 , v024
	.byte	W02
	.byte		PAN   , c_v+63
	.byte	W02
	.byte		N02   , As2 , v100
	.byte	W03
	.byte		N01   , Ds3 , v024
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N03   , Cs3 , v100
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W02
	.byte		N02   , Cs2
	.byte	W03
	.byte		N01   , As2 , v024
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N02   , Ds2 , v100
	.byte	W03
	.byte		        Cs3 , v024
	.byte	W02
	.byte		PAN   , c_v+63
	.byte	W02
	.byte		N03   , As2 , v100
	.byte	W03
	.byte		N01   , Cs2 , v024
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N02   , Cs3 , v100
	.byte	W03
	.byte		N01   , Ds2 , v024
	.byte	W02
	.byte		PAN   , c_v-64
	.byte	W02
	.byte		N08   , Ds3 , v100
	.byte	W08
	.byte		N01   , Cs3 , v024
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , As2 , v100
	.byte	W03
	.byte		N01   , Ds3 , v024
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Cs3 , v100
	.byte	W05
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , As2
	.byte	W03
	.byte		N01   , As2 , v024
	.byte	W02
	.byte	W03
	.byte		N02   , Cs3
	.byte	W07
	.byte		N01   , As2
	.byte	W84
	.byte	W02
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		VOICE , 87
	.byte	W01
	.byte		N90   , Cn3 , v108
	.byte	W12
	.byte		MOD   , 2
	.byte	W84
	.byte		N90   , Gn2
	.byte	W96
	.byte		        An2
	.byte	W96
	.byte		N42   , Bn2
	.byte	W48
	.byte		N18
	.byte	W24
	.byte		N18
	.byte	W24
	.byte		N66   , Cn3
	.byte	W72
	.byte		N12   , An2
	.byte	W19
	.byte		N04   , Cn3
	.byte	W05
	.byte		N66   , An3
	.byte	W72
	.byte		N07   , Fn3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		N66   , Bn3
	.byte	W72
	.byte		N07   , Gn3
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		N90   , Bn3 , v100
	.byte	W96
	.byte		MOD   , 0
	.byte	W96
	.byte	W44
	.byte	W03
	.byte		VOICE , 86
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N08   , An2
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , As2
	.byte	W03
	.byte		N03   , An2 , v040
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , An2 , v100
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N02   , Gn3
	.byte	W03
	.byte		N01   , As2 , v040
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , Dn3 , v100
	.byte	W03
	.byte		N01   , An2 , v040
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N08   , Gs2 , v100
	.byte	W10
	.byte		N01   , Dn3 , v040
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
mus_messenger_from_the_void_11_004:
	.byte		N08   , An2 , v100
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N02   , As2
	.byte	W03
	.byte		N03   , An2 , v040
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , An2 , v100
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Gn3
	.byte	W03
	.byte		N01   , As2 , v040
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , Dn3 , v100
	.byte	W03
	.byte		N01   , An2 , v040
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N10   , Gs2 , v100
	.byte	W10
	.byte		N01   , Dn3 , v040
	.byte	W05
	.byte		N03   , Gs2
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , Gs2 , v100
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , As2
	.byte	W05
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , En2
	.byte	W03
	.byte		N01   , Gs2 , v040
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N02   , Fn3 , v100
	.byte	W03
	.byte		N01   , As2 , v040
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , Gn3 , v100
	.byte	W03
	.byte		N01   , En2 , v040
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N08   , Gn3 , v100
	.byte	W10
	.byte		N01   , Gn3 , v040
	.byte	W02
	.byte		PEND
mus_messenger_from_the_void_11_005:
	.byte	W03
	.byte		N07   , Gn3 , v040
	.byte	W44
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N08   , An2 , v100
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , As2
	.byte	W03
	.byte		N03   , An2 , v040
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , An2 , v100
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N02   , Gn3
	.byte	W03
	.byte		N01   , As2 , v040
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , Dn3 , v100
	.byte	W03
	.byte		N01   , An2 , v040
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N08   , Gs2 , v100
	.byte	W10
	.byte		N01   , Dn3 , v040
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		PEND
	.byte		N08   , An2 , v100
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N02   , As2
	.byte	W03
	.byte		N03   , An2 , v040
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , An2 , v100
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Gn3
	.byte	W03
	.byte		N01   , As2 , v040
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , Dn3 , v100
	.byte	W03
	.byte		N01   , An2 , v040
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N10   , Gs2 , v100
	.byte	W03
	.byte		N01   , Gn3 , v040
	.byte	W07
	.byte		        Dn3
	.byte	W05
	.byte		N03   , Gs2
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , Gs2 , v100
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , As2
	.byte	W05
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , En2
	.byte	W03
	.byte		N01   , Gs2 , v040
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N02   , Fn3 , v100
	.byte	W03
	.byte		N01   , As2 , v040
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , Gn3 , v100
	.byte	W03
	.byte		N01   , En2 , v040
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N08   , Gn3 , v100
	.byte	W10
	.byte		N01   , Gn3 , v040
	.byte	W02
	.byte	PATT
	 .word	mus_messenger_from_the_void_11_005
	.byte	PATT
	 .word	mus_messenger_from_the_void_11_004
	.byte	PATT
	 .word	mus_messenger_from_the_void_11_005
	.byte		N08   , An2 , v100
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N02   , As2
	.byte	W03
	.byte		N03   , An2 , v040
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , An2 , v100
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , Gn3
	.byte	W03
	.byte		N01   , As2 , v040
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , Dn3 , v100
	.byte	W03
	.byte		N01   , An2 , v040
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N10   , Gs2 , v100
	.byte	W10
	.byte		N01   , Dn3 , v040
	.byte	W05
	.byte		N03   , Gs2
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , Gs2 , v100
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , As2
	.byte	W05
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , En2
	.byte	W03
	.byte		N01   , Gs2 , v040
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N02   , Fn3 , v100
	.byte	W03
	.byte		N01   , As2 , v040
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N02   , Gn3 , v100
	.byte	W03
	.byte		N01   , En2 , v040
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N08   , Gn3 , v100
	.byte	W10
	.byte		N01   , Gn3 , v040
	.byte	W01
	.byte		VOICE , 87
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N90   , Cn3 , v080
	.byte	W12
	.byte		MOD   , 2
	.byte	W84
	.byte		N90   , Dn3
	.byte	W96
	.byte		        An2
	.byte	W96
	.byte		N42
	.byte	W48
	.byte		N18
	.byte	W24
	.byte		N18
	.byte	W24
	.byte		N66   , Cn3
	.byte	W72
	.byte		N12   , An2
	.byte	W19
	.byte		N04   , Cn3
	.byte	W05
	.byte		N66
	.byte	W72
	.byte		N07   , An2
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		N66   , Fn3
	.byte	W72
	.byte		MOD   , 0
	.byte		N07
	.byte	W12
	.byte		N07
	.byte	W12
	.byte	W96
	.byte	GOTO
	 .word	mus_messenger_from_the_void_11_000
	.byte		FINE

@******************************************************@
	.align	2

mus_messenger_from_the_void:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_messenger_from_the_void_pri	@ Priority
	.byte	mus_messenger_from_the_void_rev	@ Reverb.

	.word	mus_messenger_from_the_void_grp

	.word	mus_messenger_from_the_void_1
	.word	mus_messenger_from_the_void_2
	.word	mus_messenger_from_the_void_3
	.word	mus_messenger_from_the_void_4
	.word	mus_messenger_from_the_void_5
	.word	mus_messenger_from_the_void_6
	.word	mus_messenger_from_the_void_7
	.word	mus_messenger_from_the_void_8
	.word	mus_messenger_from_the_void_9
	.word	mus_messenger_from_the_void_11

	.end
