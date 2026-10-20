@ "Time Diver" from Super Robot Taisen: Original Generation (song 0x15), ported from sound/import.
@ Track numbers match the original. Tracks 7 (10 quiet low guitar notes) and 12 (a quiet doubling layer) were cut to fit Emerald's 10 tracks; up to 6 sampled notes still overlap very briefly (0.2% of the song). Track 8 (the bass) uses a soft wave (slot 109) at a lower volume instead of the original's buzzy saw, and is shifted down an octave.

	.include "MPlayDef.s"

	.equ	mus_time_diver_grp, voicegroup_srt_og
	.equ	mus_time_diver_pri, 0
	.equ	mus_time_diver_rev, reverb_set+48
	.equ	mus_time_diver_mvl, 127
	.equ	mus_time_diver_key, 0
	.equ	mus_time_diver_tbs, 1
	.equ	mus_time_diver_exg, 0
	.equ	mus_time_diver_cmp, 1

	.section .rodata
	.global	mus_time_diver
	.align	2

@**************** Track 1 ****************@

@ Track 1 plays the french horn (slot 60) an octave down from its first note. The original's lead
@ sample sounds an octave below the written notes, so this matches its pitch.

mus_time_diver_1:
	.byte		KEYSH , mus_time_diver_key+0
	.byte		TEMPO , 250*mus_time_diver_tbs/2
	.byte		VOICE , 31
	.byte	W01
	.byte		VOL   , 80*mus_time_diver_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		TEMPO , 140*mus_time_diver_tbs/2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_time_diver_1_000:
	.byte		KEYSH , mus_time_diver_key-12
	.byte		VOICE , 60
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		MOD   , 2
	.byte		N22   , Cs4 , v124
	.byte	W23
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		        c_v-56
	.byte		N22   , Cs5 , v112
	.byte	W01
	.byte		BEND  , c_v-48
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-27
	.byte	W02
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-16
	.byte	W02
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v+0
	.byte	W12
mus_time_diver_1_001:
	.byte		N32   , Gs4 , v124
	.byte	W36
	.byte		N06   , An4 , v120
	.byte	W07
	.byte		N05   , Gs4 , v104
	.byte	W05
	.byte		N64   , Cs4
	.byte	W48
	.byte		PEND
mus_time_diver_1_002:
	.byte	W36
	.byte		N06   , Cs4 , v124
	.byte	W12
	.byte		N12   , En4
	.byte	W12
	.byte		N06   , Fs4 , v104
	.byte	W12
	.byte		        Gs4
	.byte	W12
	.byte		        An4 , v100
	.byte	W12
	.byte		PEND
mus_time_diver_1_003:
	.byte		N10   , Gs4 , v127
	.byte	W12
	.byte		N06   , An4 , v104
	.byte	W07
	.byte		N92   , Cs4 , v112
	.byte	W76
	.byte	W01
	.byte		PEND
mus_time_diver_1_004:
	.byte	W36
	.byte		N06   , Cs4 , v124
	.byte	W12
	.byte		N12   , En4
	.byte	W12
	.byte		N06   , Cs4
	.byte	W12
	.byte		        Fs4
	.byte	W12
	.byte		        An4 , v120
	.byte	W12
	.byte		PEND
mus_time_diver_1_005:
	.byte		N12   , Cs5 , v127
	.byte	W12
	.byte		N06   , Dn5 , v104
	.byte	W07
	.byte		N52   , Fs4 , v116
	.byte	W64
	.byte	W01
	.byte		N06   , An4 , v120
	.byte	W12
	.byte		PEND
	.byte		N16   , Gs4 , v124
	.byte	W24
	.byte		        An4 , v120
	.byte	W24
	.byte		N14   , Gs4 , v124
	.byte	W18
	.byte		        En4
	.byte	W18
	.byte		TIE   , Cs4
	.byte	W12
	.byte	W96
	.byte	W04
	.byte		EOT   
	.byte	W44
	.byte		N22
	.byte	W24
	.byte		BEND  , c_v-56
	.byte		N22   , Cs5 , v112
	.byte	W01
	.byte		BEND  , c_v-48
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-27
	.byte	W02
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-16
	.byte	W02
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v+0
	.byte	W12
	.byte	PATT
	 .word	mus_time_diver_1_001
	.byte	PATT
	 .word	mus_time_diver_1_002
	.byte	PATT
	 .word	mus_time_diver_1_003
	.byte	PATT
	 .word	mus_time_diver_1_004
	.byte	PATT
	 .word	mus_time_diver_1_005
	.byte		N16   , Gs4 , v124
	.byte	W24
	.byte		        An4 , v120
	.byte	W24
	.byte		N14   , Gs4 , v124
	.byte	W18
	.byte		        En4
	.byte	W18
	.byte		N16   , Cs4
	.byte	W12
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N12   , Gs4
	.byte	W12
	.byte		N06   , Fs4
	.byte	W07
	.byte		N80   , Cs5
	.byte	W52
	.byte	W01
	.byte	W48
	.byte		N12   , Cs5 , v127
	.byte	W19
	.byte		        Ds5 , v124
	.byte	W17
	.byte		        Fn5 , v116
	.byte	W12
	.byte		N40   , Fs5
	.byte	W48
	.byte		N23   , En5 , v124
	.byte	W16
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-32
	.byte	W02
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		        c_v+0
	.byte		N23   , An4 , v100
	.byte	W24
	.byte		N15   , Dn5 , v116
	.byte	W18
	.byte		        Cs5 , v108
	.byte	W18
	.byte		N06   , Cs5 , v124
	.byte	W07
	.byte		        Dn5 , v104
	.byte	W05
	.byte		N24   , Bn4 , v112
	.byte	W36
	.byte		N06   , Bn4 , v124
	.byte	W07
	.byte		        Cs5 , v108
	.byte	W05
	.byte		N13   , Dn5 , v116
	.byte	W18
	.byte		        Cs5 , v108
	.byte	W18
	.byte		N06   , Dn5 , v112
	.byte	W12
	.byte		N36   , Dn5 , v104
	.byte	W48
	.byte		N30   , Dn5 , v116
	.byte	W36
	.byte		N06   , Cs5 , v108
	.byte	W12
	.byte		N40
	.byte	W48
	.byte		N28   , Fs4 , v124
	.byte	W36
	.byte		N06   , Fn4
	.byte	W07
	.byte		        Fs4 , v112
	.byte	W05
	.byte		N16   , Gs4 , v120
	.byte	W18
	.byte		        Fs4 , v112
	.byte	W18
	.byte		N10   , Fn4 , v116
	.byte	W12
	.byte		N15   , Fs4
	.byte	W24
	.byte		N22   , Gs4 , v112
	.byte	W24
	.byte		        An4
	.byte	W24
	.byte		N21   , Bn4 , v116
	.byte	W24
	.byte		N24   , Dn5 , v112
	.byte	W36
	.byte		N07   , En5 , v116
	.byte	W12
	.byte		N13   , Fs5
	.byte	W18
	.byte		        En5
	.byte	W18
	.byte		N07   , Fs5
	.byte	W12
	.byte		BEND  , c_v-28
	.byte		TIE   , Gs5 , v112
	.byte	W01
	.byte		BEND  , c_v-24
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W90
	.byte	W04
	.byte		EOT   
	.byte	W80
	.byte		N06   , Fs5 , v124
	.byte	W07
	.byte		N04   , Gs5 , v108
	.byte	W05
mus_time_diver_1_006:
	.byte		N13   , An5 , v116
	.byte	W19
	.byte		        Gs5 , v108
	.byte	W17
	.byte		N07   , An5 , v112
	.byte	W12
	.byte		N30   , Cs5
	.byte	W36
	.byte		N06   , Fs5 , v124
	.byte	W07
	.byte		N04   , Gs5 , v108
	.byte	W05
	.byte		PEND
mus_time_diver_1_007:
	.byte		N13   , An5 , v116
	.byte	W19
	.byte		        Gs5 , v108
	.byte	W17
	.byte		N16   , An5 , v112
	.byte	W24
	.byte		N06   , Fs5 , v116
	.byte	W12
	.byte		N10   , An5 , v112
	.byte	W12
	.byte		N06   , Cs6
	.byte	W12
	.byte		PEND
	.byte		N19   , Bn5 , v116
	.byte	W24
	.byte		N06   , Cs6 , v112
	.byte	W12
	.byte		N19   , Bn5 , v116
	.byte	W24
	.byte		N12   , Gs5 , v112
	.byte	W12
	.byte		N06   , En5 , v116
	.byte	W12
	.byte		N80   , Gs5 , v112
	.byte	W12
mus_time_diver_1_008:
	.byte	W84
	.byte		N06   , Fs5 , v124
	.byte	W07
	.byte		N04   , Gs5 , v108
	.byte	W05
	.byte		PEND
	.byte		N12   , An5 , v116
	.byte	W19
	.byte		        Gs5 , v108
	.byte	W17
	.byte		N07   , An5 , v112
	.byte	W12
	.byte		N21   , Dn5
	.byte	W36
	.byte		N06   , En5 , v124
	.byte	W07
	.byte		N04   , Fs5 , v112
	.byte	W05
	.byte		N12   , Gs5 , v120
	.byte	W19
	.byte		        Fs5 , v112
	.byte	W17
	.byte		N07   , Gs5
	.byte	W12
	.byte		N09   , An5
	.byte	W12
	.byte		N22   , En5 , v116
	.byte	W24
	.byte		N07   , Cs5 , v112
	.byte	W12
	.byte		N19   , Dn5
	.byte	W24
	.byte		        En5 , v116
	.byte	W24
	.byte		N14   , Fs5
	.byte	W19
	.byte		BEND  , c_v-26
	.byte		N16   , Bn5
	.byte	W01
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v+0
	.byte	W14
	.byte		N84   , Gs5 , v112
	.byte	W12
	.byte	PATT
	 .word	mus_time_diver_1_008
	.byte	PATT
	 .word	mus_time_diver_1_006
	.byte	PATT
	 .word	mus_time_diver_1_007
	.byte		N21   , Bn5 , v116
	.byte	W24
	.byte		N06   , Cs6 , v112
	.byte	W12
	.byte		N17   , Bn5 , v116
	.byte	W24
	.byte		BEND  , c_v-28
	.byte		N16   , En6 , v096
	.byte	W01
	.byte		BEND  , c_v-24
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W18
	.byte		N40   , Cs6 , v112
	.byte	W12
	.byte	W36
	.byte		N06
	.byte	W12
	.byte		N10   , Bn5 , v116
	.byte	W12
	.byte		N06   , Cs6 , v112
	.byte	W12
	.byte		        Bn5 , v116
	.byte	W12
	.byte		        An5 , v112
	.byte	W12
	.byte		N30   , Fs5 , v116
	.byte	W36
	.byte		N18   , Bn4
	.byte	W24
	.byte		        Cs5 , v112
	.byte	W24
	.byte		N07   , Dn5
	.byte	W12
	.byte		N06   , Cs5
	.byte	W07
	.byte		N05   , Dn5
	.byte	W05
	.byte		N18   , En5 , v116
	.byte	W24
	.byte		        Gs5 , v112
	.byte	W24
	.byte		        An5
	.byte	W24
	.byte		N07   , Bn5 , v116
	.byte	W12
	.byte		N24   , An5 , v112
	.byte	W36
	.byte		N17   , Fs5 , v116
	.byte	W24
	.byte		N05   , An5 , v112
	.byte	W12
	.byte		BEND  , c_v-24
	.byte		N11   , Cs6
	.byte	W01
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N56   , Bn5 , v116
	.byte	W12
	.byte	W48
	.byte	W01
	.byte		N23   , Gs5
	.byte	W16
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-32
	.byte	W02
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		        c_v+0
	.byte		N23   , En5 , v104
	.byte	W23
	.byte	W01
	.byte		TIE   , Fs5 , v084
	.byte	W92
	.byte	W03
	.byte	W96
	.byte	W04
	.byte		EOT   
	.byte	W92
	.byte	W96
	.byte	GOTO
	 .word	mus_time_diver_1_000
	.byte		FINE

@**************** Track 2 ****************@

mus_time_diver_2:
	.byte		KEYSH , mus_time_diver_key+0
	.byte		VOICE , 125
	.byte	W01
	.byte		VOL   , 80*mus_time_diver_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
mus_time_diver_2_000:
	.byte		N03   , Fs1 , v040
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v040
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v040
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v040
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		PEND
	.byte		        Fs1 , v040
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v040
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v040
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v040
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		N11   , As1 , v068
	.byte	W12
	.byte	PATT
	 .word	mus_time_diver_2_000
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		        Bn0 , v092
	.byte	W12
	.byte		        En1 , v116
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N06   , En1 , v120
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N06   , En1 , v120
	.byte	W07
	.byte		N05   , En1 , v100
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N06   , As1 , v076
	.byte	W12
	.byte		N11   , Bn0 , v092
	.byte		N11   , As1 , v076
	.byte	W12
mus_time_diver_2_001:
	.byte		N11   , Bn0 , v112
	.byte		N23   , Cs2 , v116
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte	W12
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N05   , Bn0 , v116
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		N11   , As1 , v068
	.byte	W12
	.byte		        Bn0 , v112
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N05   , En1 , v116
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N11   , Bn0 , v116
	.byte	W12
	.byte		N06   , En1
	.byte	W07
	.byte		N11   , As1 , v076
	.byte	W05
	.byte		N05   , Bn0 , v092
	.byte	W07
	.byte		N04   , As1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W12
	.byte		N11   , Bn0 , v092
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N11   , Bn0 , v116
	.byte	W12
	.byte		        En1
	.byte		N03   , Fs1 , v072
	.byte	W12
	.byte		N11   , As1 , v068
	.byte	W12
	.byte		        Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W12
	.byte		N11   , Bn0 , v092
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N11   , Bn0 , v116
	.byte	W12
	.byte		        En1
	.byte		N06   , As1 , v076
	.byte	W12
	.byte		N11
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N23   , Cs2 , v116
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte	W12
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N11   , Bn0 , v116
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		        As1 , v068
	.byte	W12
	.byte		        Bn0 , v112
	.byte		N23   , Cs2 , v116
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte	W12
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N11   , Bn0 , v116
	.byte	W12
	.byte		N06   , En1
	.byte	W07
	.byte		N11   , As1 , v076
	.byte	W05
	.byte		N06   , Bn0 , v092
	.byte	W07
	.byte		N04   , En1 , v088
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N23   , Cs2 , v116
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte	W12
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N23   , Cs2 , v092
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N06   , Bn0 , v116
	.byte	W12
	.byte		N11   , En1
	.byte	W12
	.byte		        As1 , v068
	.byte	W12
	.byte		N03   , Fs1 , v040
	.byte		N23   , Cs2 , v088
	.byte	W07
	.byte		N03   , Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v040
	.byte		N23   , Cs2 , v064
	.byte	W07
	.byte		N03   , Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		N04   , As1 , v056
	.byte	W05
	.byte		N03   , Fs1 , v040
	.byte		N23   , Cs2 , v072
	.byte	W07
	.byte		N03   , Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v040
	.byte		N23   , Cs2 , v060
	.byte	W07
	.byte		N03   , Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N23   , Cs2 , v116
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte	W12
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		        Fs1 , v052
	.byte	W07
	.byte		        Fs1 , v028
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N05   , Bn0 , v116
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		        Fs1 , v028
	.byte	W05
	.byte		N06   , En1 , v116
	.byte	W07
	.byte		N11   , Bn0 , v104
	.byte	W05
	.byte		        As1 , v068
	.byte	W12
mus_time_diver_2_002:
	.byte		N11   , Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N05   , Bn0 , v092
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		        Fs1 , v028
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		        Fs1 , v052
	.byte	W07
	.byte		        Fs1 , v028
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Bn0 , v116
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		        Fs1 , v028
	.byte	W05
	.byte		N06   , En1 , v116
	.byte	W07
	.byte		N11   , Bn0 , v104
	.byte		N11   , As1 , v076
	.byte	W12
	.byte		N04   , As1 , v068
	.byte	W05
	.byte		PEND
	.byte		N11   , Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N05   , Bn0 , v092
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		        Fs1 , v028
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		        Fs1 , v052
	.byte	W07
	.byte		        Fs1 , v028
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N05   , Bn0 , v116
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		        Fs1 , v028
	.byte	W05
	.byte		N06   , En1 , v116
	.byte	W07
	.byte		N11   , Bn0 , v104
	.byte	W05
	.byte		        As1 , v068
	.byte	W12
	.byte		        Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N05   , Bn0 , v092
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		        Fs1 , v028
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		        Fs1 , v052
	.byte	W07
	.byte		        Fs1 , v028
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Bn0 , v116
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		        Fs1 , v028
	.byte	W05
	.byte		N11   , En1 , v116
	.byte		N06   , As1 , v076
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N02   , As1 , v076
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N23   , Cs2 , v116
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte	W12
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		        Fs1 , v052
	.byte	W07
	.byte		        Fs1 , v028
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N05   , Bn0 , v116
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		        Fs1 , v028
	.byte	W05
	.byte		N06   , En1 , v116
	.byte	W07
	.byte		N05   , Bn0 , v104
	.byte	W05
	.byte		N11   , As1 , v068
	.byte	W12
	.byte	PATT
	 .word	mus_time_diver_2_002
	.byte		N11   , Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N05   , Bn0 , v092
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		        Fs1 , v028
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		        Fs1 , v052
	.byte	W07
	.byte		        Fs1 , v028
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N05   , Bn0 , v116
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		        Fs1 , v028
	.byte	W05
	.byte		N06   , En1 , v116
	.byte	W07
	.byte		N05   , Bn0 , v104
	.byte	W05
	.byte		N11   , As1 , v068
	.byte	W12
	.byte		        Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N05   , Bn0 , v092
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		        Fs1 , v028
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		        Fs1 , v052
	.byte	W07
	.byte		        Fs1 , v028
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v048
	.byte	W05
	.byte		N11   , Bn0 , v116
	.byte		N02   , En1 , v060
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		N02
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		N05   , Bn0 , v092
	.byte		N11   , En1 , v116
	.byte		N06   , As1 , v076
	.byte	W12
	.byte		        En1 , v092
	.byte		N11   , As1 , v076
	.byte	W07
	.byte		N04   , En1 , v116
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N23   , Cs2 , v116
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte	W12
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N11   , Bn0 , v116
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N06   , En1 , v116
	.byte	W07
	.byte		N04   , Bn0 , v104
	.byte	W05
	.byte		N11   , As1 , v068
	.byte	W12
mus_time_diver_2_003:
	.byte		N11   , Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N11   , Bn0 , v116
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N06   , En1 , v116
	.byte	W07
	.byte		N11   , Bn0 , v104
	.byte		N11   , As1 , v076
	.byte	W12
	.byte		N04   , As1 , v068
	.byte	W05
	.byte		PEND
	.byte		N11   , Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N11   , Bn0 , v116
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N06   , En1 , v116
	.byte	W07
	.byte		N04   , Bn0 , v104
	.byte	W05
	.byte		N11   , As1 , v068
	.byte	W12
	.byte		        Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N11   , Bn0 , v116
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N11   , En1 , v116
	.byte		N06   , As1 , v076
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N11   , As1 , v076
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N23   , Cs2 , v116
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte	W12
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N05   , Bn0 , v116
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N06   , En1 , v116
	.byte	W07
	.byte		N11   , Bn0 , v104
	.byte	W05
	.byte		        As1 , v068
	.byte	W12
	.byte	PATT
	 .word	mus_time_diver_2_003
	.byte		N11   , Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N05   , Bn0 , v116
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N06   , En1 , v116
	.byte	W07
	.byte		N04   , Bn0 , v104
	.byte	W05
	.byte		N11   , As1 , v068
	.byte	W12
	.byte		        Bn0 , v112
	.byte		N06   , En1 , v116
	.byte	W07
	.byte		N04   , En1 , v088
	.byte	W05
	.byte		N05   , Bn0 , v092
	.byte		N06   , En1 , v108
	.byte	W07
	.byte		N04   , En1 , v088
	.byte	W05
	.byte		N06   , En1 , v116
	.byte	W07
	.byte		N04   , En1 , v088
	.byte	W05
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N06   , En1 , v116
	.byte		N11   , As1 , v088
	.byte	W07
	.byte		N04   , En1 , v092
	.byte	W05
	.byte		N06   , Bn0 , v116
	.byte		N03   , Fs1 , v052
	.byte	W06
	.byte		N02   , En1 , v068
	.byte	W01
	.byte		N04   , As1 , v088
	.byte	W02
	.byte		N02   , En1 , v076
	.byte	W03
	.byte		N11   , Bn0 , v092
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N06   , En1 , v092
	.byte		N11   , As1 , v088
	.byte	W07
	.byte		N04   , En1 , v116
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		N05   , Bn0 , v112
	.byte		N11   , En1 , v116
	.byte		N23   , Cs2
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N06   , Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N05   , Bn0 , v112
	.byte		N05   , En1 , v116
	.byte	W12
	.byte		N11   , As1 , v068
	.byte	W12
	.byte		        Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		N05   , Bn0 , v112
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N06   , Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N06   , Bn0 , v112
	.byte		N05   , En1 , v116
	.byte	W07
	.byte		N11   , As1 , v076
	.byte	W12
	.byte		N04   , As1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		N05   , Bn0 , v112
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N06   , Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N05   , Bn0 , v112
	.byte		N05   , En1 , v116
	.byte	W12
	.byte		N11   , As1 , v068
	.byte	W12
	.byte		        Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		N05   , Bn0 , v112
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N06   , Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N11   , Bn0 , v112
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N06   , Bn0 , v112
	.byte		N11   , As1 , v076
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N23   , Cs2 , v096
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N05   , Bn0 , v112
	.byte		N11   , En1 , v116
	.byte		N23   , Cs2 , v112
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N06   , Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N05   , Bn0 , v112
	.byte		N05   , En1 , v116
	.byte	W12
	.byte		N11   , As1 , v068
	.byte	W12
	.byte		        Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		N05   , Bn0 , v112
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N06   , Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N05   , Bn0 , v112
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N11   , Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		N11   , As1 , v068
	.byte	W12
	.byte		N04   , As1 , v076
	.byte	W05
	.byte		N05   , Bn0 , v112
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N06   , Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N05   , Bn0 , v112
	.byte		N05   , En1 , v116
	.byte	W12
	.byte		N11   , As1 , v068
	.byte	W12
	.byte		        Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W12
	.byte		N11   , En1 , v096
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N05   , Bn0 , v112
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N03   , Fs1 , v072
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N05   , Bn0 , v112
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N06   , Bn0 , v112
	.byte		N11   , As1 , v076
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte	W72
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		N02   , En1 , v056
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
	.byte		N11   , Bn0 , v112
	.byte		N23   , Cs2 , v116
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte	W12
	.byte		N11   , En1 , v116
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N06   , Fn2 , v088
	.byte	W07
	.byte		N10   , En1 , v096
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N04   , En1 , v100
	.byte		N04   , Fn2 , v088
	.byte	W05
	.byte		N11   , Bn0 , v116
	.byte		N11   , Fn2 , v100
	.byte	W12
	.byte		        En1 , v116
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte		N11   , As1 , v068
	.byte	W12
	.byte		N05   , Bn0 , v112
	.byte		N06   , Fn2 , v120
	.byte	W07
	.byte		N04   , Fn2 , v088
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte		N11   , Fn2 , v100
	.byte	W12
	.byte		        En1 , v116
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N06   , Fn2 , v088
	.byte	W07
	.byte		N04   , En1 , v096
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N04   , En1 , v100
	.byte		N04   , Fn2 , v088
	.byte	W05
	.byte		N05   , Bn0 , v116
	.byte		N06   , Fn2 , v100
	.byte	W07
	.byte		N11   , Fn2 , v088
	.byte	W05
	.byte		N06   , En1 , v116
	.byte	W07
	.byte		N04   , Bn0 , v092
	.byte		N11   , As1 , v076
	.byte	W05
	.byte		N05   , Fn2 , v100
	.byte	W07
	.byte		N04   , As1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte		N11   , Fn2 , v088
	.byte	W12
	.byte		        En1 , v116
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N06   , Fn2 , v088
	.byte	W07
	.byte		N04   , En1 , v096
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N04   , En1 , v100
	.byte		N04   , Fn2 , v088
	.byte	W05
	.byte		N11   , Bn0 , v116
	.byte		N11   , Fn2 , v100
	.byte	W12
	.byte		        En1 , v116
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte		N11   , As1 , v068
	.byte	W12
	.byte		N05   , Bn0 , v112
	.byte		N06   , Fn2 , v120
	.byte	W07
	.byte		N04   , Fn2 , v088
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte		N11   , Fn2 , v100
	.byte	W12
	.byte		        En1 , v116
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N06   , Fn2 , v088
	.byte	W07
	.byte		N04   , En1 , v096
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N04   , En1 , v100
	.byte		N04   , Fn2 , v088
	.byte	W05
	.byte		N05   , Bn0 , v116
	.byte		N06   , Fn2 , v100
	.byte	W07
	.byte		N04   , Fn2 , v088
	.byte	W05
	.byte		N11   , En1 , v116
	.byte		N06   , As1 , v076
	.byte	W07
	.byte		N04   , Fn2 , v088
	.byte	W05
	.byte		N06   , Bn0 , v092
	.byte		N11   , As1 , v076
	.byte	W07
	.byte		N04   , En1 , v096
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N23   , Cs2 , v116
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte	W12
	.byte		N11   , En1 , v116
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N06   , Fn2 , v088
	.byte	W07
	.byte		N11   , En1 , v096
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N05   , En1 , v100
	.byte		N04   , Fn2 , v088
	.byte	W05
	.byte		N11   , Bn0 , v116
	.byte		N11   , Fn2 , v100
	.byte	W12
	.byte		        En1 , v116
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte		N11   , As1 , v068
	.byte	W12
	.byte		N05   , Bn0 , v112
	.byte		N06   , Fn2 , v120
	.byte	W07
	.byte		N04   , Fn2 , v088
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte		N11   , Fn2 , v100
	.byte	W12
	.byte		        En1 , v116
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N06   , Fn2 , v088
	.byte	W07
	.byte		N04   , En1 , v096
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N04   , En1 , v100
	.byte		N04   , Fn2 , v088
	.byte	W05
	.byte		N05   , Bn0 , v116
	.byte		N06   , Fn2 , v100
	.byte	W07
	.byte		N04   , Fn2 , v088
	.byte	W05
	.byte		N06   , En1 , v116
	.byte	W07
	.byte		N04   , Bn0 , v092
	.byte		N11   , As1 , v076
	.byte	W05
	.byte		N05   , Fn2 , v100
	.byte	W07
	.byte		N04   , As1 , v068
	.byte	W05
mus_time_diver_2_004:
	.byte		N11   , Bn0 , v112
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte		N11   , Fn2 , v088
	.byte	W12
	.byte		        En1 , v116
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N06   , Fn2 , v088
	.byte	W07
	.byte		N11   , En1 , v096
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N04   , En1 , v100
	.byte		N04   , Fn2 , v088
	.byte	W05
	.byte		N11   , Bn0 , v116
	.byte		N11   , Fn2 , v100
	.byte	W12
	.byte		        En1 , v116
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte		N11   , As1 , v068
	.byte	W12
	.byte		PEND
	.byte		N05   , Bn0 , v112
	.byte		N06   , En1 , v116
	.byte	W07
	.byte		N04   , En1 , v088
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte		N06   , En1 , v108
	.byte	W07
	.byte		N04   , En1 , v088
	.byte	W05
	.byte		N11   , En1 , v116
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N06   , Fn2 , v088
	.byte	W07
	.byte		N04   , Fn2 , v120
	.byte	W05
	.byte		N06   , En1 , v116
	.byte	W07
	.byte		N04   , En1 , v092
	.byte		N04   , Fn2 , v088
	.byte	W05
	.byte		N05   , Bn0 , v116
	.byte		N06   , Fn2 , v100
	.byte	W06
	.byte		N02   , En1 , v068
	.byte	W01
	.byte		N04   , Fn2 , v088
	.byte	W02
	.byte		N02   , En1 , v076
	.byte	W03
	.byte		N06   , Bn0 , v092
	.byte		N06   , En1 , v116
	.byte	W07
	.byte		N04   , En1 , v096
	.byte		N04   , Fn2 , v088
	.byte	W05
	.byte		N05   , En1 , v092
	.byte		N11   , As1 , v076
	.byte	W12
	.byte		        Bn0 , v112
	.byte		N23   , Cs2 , v116
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte	W12
	.byte		N11   , En1 , v116
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N06   , Fn2 , v088
	.byte	W07
	.byte		N11   , En1 , v096
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N04   , En1 , v100
	.byte		N04   , Fn2 , v088
	.byte	W05
	.byte		N11   , Bn0 , v116
	.byte		N11   , Fn2 , v100
	.byte	W12
	.byte		        En1 , v116
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N11   , As1 , v068
	.byte	W12
mus_time_diver_2_005:
	.byte		N05   , Bn0 , v112
	.byte		N06   , Fn2 , v120
	.byte	W07
	.byte		N04   , Fn2 , v088
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte		N11   , Fn2 , v100
	.byte	W12
	.byte		        En1 , v116
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N06   , Fn2 , v088
	.byte	W07
	.byte		N04   , En1 , v096
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N04   , En1 , v100
	.byte		N04   , Fn2 , v088
	.byte	W05
	.byte		N05   , Bn0 , v116
	.byte		N06   , Fn2 , v100
	.byte	W07
	.byte		N05   , Fn2 , v088
	.byte	W05
	.byte		N06   , En1 , v116
	.byte	W07
	.byte		N04   , Bn0 , v092
	.byte		N11   , As1 , v076
	.byte	W05
	.byte		N05   , Fn2 , v100
	.byte	W07
	.byte		N04   , As1 , v068
	.byte	W05
	.byte		PEND
	.byte	PATT
	 .word	mus_time_diver_2_004
	.byte		N05   , Bn0 , v112
	.byte		N06   , Fn2 , v120
	.byte	W07
	.byte		N04   , Fn2 , v088
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte		N11   , Fn2 , v100
	.byte	W12
	.byte		        En1 , v116
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N06   , Fn2 , v088
	.byte	W07
	.byte		N04   , En1 , v096
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		        En1 , v100
	.byte		N04   , Fn2 , v088
	.byte	W05
	.byte		N06   , Fn2 , v100
	.byte	W07
	.byte		N04   , Fn2 , v088
	.byte	W05
	.byte		N06   , Bn0 , v116
	.byte		N11   , En1
	.byte	W07
	.byte		N04   , Fn2 , v088
	.byte	W05
	.byte		N11   , As1 , v076
	.byte		N11   , Fn2 , v100
	.byte	W12
	.byte		        Bn0 , v112
	.byte		N23   , Cs2 , v116
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte	W12
	.byte		N11   , En1 , v116
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N06   , Fn2 , v088
	.byte	W07
	.byte		N11   , En1 , v096
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N04   , En1 , v100
	.byte		N04   , Fn2 , v088
	.byte	W05
	.byte		N11   , Bn0 , v116
	.byte		N11   , Fn2 , v100
	.byte	W12
	.byte		        En1 , v116
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte		N11   , As1 , v068
	.byte	W12
	.byte	PATT
	 .word	mus_time_diver_2_005
	.byte		N11   , Bn0 , v112
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N05   , Bn0 , v092
	.byte		N11   , Fn2 , v088
	.byte	W12
	.byte		        En1 , v116
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N06   , Fn2 , v088
	.byte	W07
	.byte		N11   , En1 , v096
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N04   , En1 , v100
	.byte		N04   , Fn2 , v088
	.byte	W05
	.byte		N11   , Bn0 , v116
	.byte		N11   , Fn2 , v100
	.byte	W12
	.byte		        En1 , v116
	.byte		N11   , Fn2 , v120
	.byte	W12
	.byte		N05   , Bn0 , v112
	.byte		N23   , Cs2 , v116
	.byte	W12
	.byte	W12
	.byte		N11   , Bn0 , v092
	.byte	W36
	.byte		N05   , Bn0 , v112
	.byte	W48
	.byte		N11
	.byte		N23   , Cs2 , v088
	.byte	W12
	.byte		N03   , Fs1 , v072
	.byte	W12
	.byte		        Fs1 , v040
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v040
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v040
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v040
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v040
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v040
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		N06   , En1 , v116
	.byte	W07
	.byte		N03   , Fs1 , v020
	.byte	W05
	.byte		N11   , As1 , v068
	.byte	W12
	.byte		        Bn0 , v112
	.byte	W07
	.byte		N03   , Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v040
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v040
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v040
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W07
	.byte		        Fs1 , v020
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte	W12
	.byte		        Bn0 , v092
	.byte	W12
	.byte		        En1 , v116
	.byte	W12
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N11   , Bn0 , v112
	.byte		N06   , En1 , v120
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N11   , Bn0 , v092
	.byte		N06   , En1 , v120
	.byte	W07
	.byte		N04   , En1 , v100
	.byte	W05
	.byte		N11   , Bn0 , v120
	.byte		N06   , As1 , v076
	.byte	W12
	.byte		N11   , Bn0 , v120
	.byte		N11   , As1 , v076
	.byte	W12
	.byte	GOTO
	 .word	mus_time_diver_2_001
	.byte		FINE

@**************** Track 3 ****************@

mus_time_diver_3:
	.byte		KEYSH , mus_time_diver_key+0
	.byte		VOICE , 110
	.byte	W01
	.byte		VOL   , 70*mus_time_diver_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		N17   , Bn0 , v127
	.byte		N11   , Dn1 , v024
	.byte	W13
	.byte		N04   , Fs1 , v008
	.byte	W05
	.byte		N11   , Bn0 , v020
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		N06   , Bn0 , v020
	.byte		N06   , Dn1 , v024
	.byte	W07
	.byte		N10   , En1 , v016
	.byte		N10   , As1
	.byte	W11
	.byte		N11   , Bn0 , v020
	.byte		N11   , Dn1 , v024
	.byte	W13
	.byte		N04   , Fs1 , v008
	.byte	W05
	.byte		N11   , Bn0 , v020
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		N06   , Bn0 , v020
	.byte		N06   , Dn1 , v024
	.byte	W07
	.byte		N10   , En1 , v016
	.byte		N10   , As1
	.byte	W11
	.byte		N11   , Bn0 , v020
	.byte		N11   , Dn1 , v024
	.byte	W13
	.byte		N04   , Fs1 , v008
	.byte	W05
	.byte		N11   , Bn0 , v020
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		N06   , Bn0 , v020
	.byte		N06   , Dn1 , v024
	.byte	W07
	.byte		N10   , En1 , v016
	.byte		N10   , As1
	.byte	W11
	.byte		N11   , Bn0 , v020
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		        Bn0 , v020
	.byte		N11   , Dn1 , v024
	.byte	W13
	.byte		N04   , Fs1 , v008
	.byte	W06
	.byte		N10   , En1 , v016
	.byte		N10   , As1
	.byte	W11
	.byte		N05   , Bn0 , v020
	.byte		N06   , Dn1 , v024
	.byte	W06
	.byte		N11   , Bn0 , v092
	.byte		N23   , Cn4 , v112
	.byte	W18
	.byte		N11   , Bn0 , v064
	.byte	W18
	.byte		        Bn0 , v048
	.byte	W18
	.byte		        Bn0 , v032
	.byte	W18
	.byte		        Bn0 , v020
	.byte	W24
	.byte		N06   , En1 , v080
	.byte	W07
	.byte		N04   , Dn1 , v052
	.byte	W05
	.byte		N06
	.byte	W07
	.byte		N04   , En1 , v080
	.byte	W05
	.byte		N06   , Dn1 , v052
	.byte	W07
	.byte		N04
	.byte	W05
	.byte		N06   , En1 , v080
	.byte	W07
	.byte		N04   , Dn1 , v104
	.byte	W05
	.byte		N06   , Dn1 , v052
	.byte	W07
	.byte		N04   , En1 , v080
	.byte	W17
	.byte		N12   , Cs4 , v100
	.byte	W12
	.byte		N12
	.byte	W12
mus_time_diver_3_000:
	.byte		N18   , Dn4 , v100
	.byte	W18
	.byte		N05   , En1 , v024
	.byte	W12
	.byte		        Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N11   , Dn1 , v024
	.byte	W18
	.byte		N05   , Bn0 , v020
	.byte		N05   , En1 , v024
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N11   , Dn1 , v024
	.byte	W18
	.byte		N05   , En1
	.byte	W12
	.byte		        Bn0 , v020
	.byte		N05   , Dn1 , v024
	.byte	W07
	.byte		N04   , En1 , v016
	.byte	W11
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		        Dn1
	.byte	W13
	.byte		N04   , Fs1 , v008
	.byte	W06
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N05   , Dn1 , v024
	.byte	W06
	.byte	W18
	.byte		        En1
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N11   , Dn1 , v024
	.byte	W13
	.byte		N04   , Fs1 , v008
	.byte	W05
	.byte		N05   , En1 , v024
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte	W18
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		N12   , Cs4 , v100
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N17   , Dn4
	.byte	W18
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N11   , Dn1 , v024
	.byte	W13
	.byte		N04   , Fs1 , v008
	.byte	W05
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte	W18
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		        Dn1
	.byte	W13
	.byte		N04   , Fs1 , v008
	.byte	W06
	.byte		        En1 , v016
	.byte	W11
	.byte		N05   , Bn0 , v020
	.byte	W06
	.byte	W18
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N05   , Dn1 , v024
	.byte	W18
	.byte		N11   , En1
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N11   , En1 , v016
	.byte	W11
	.byte		N12   , Dn4 , v100
	.byte	W12
	.byte		        Cs4 , v096
	.byte	W12
	.byte		N11   , Cn4 , v112
	.byte	W12
	.byte		N12   , Dn4 , v100
	.byte	W12
	.byte		        Cs4 , v096
	.byte	W12
	.byte		N11   , Cn4 , v112
	.byte	W12
	.byte		N12   , Cs4 , v096
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N18   , Dn4 , v100
	.byte	W18
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N11   , Dn1 , v024
	.byte	W18
	.byte		        En1
	.byte	W12
	.byte		N05   , Dn1
	.byte	W18
	.byte	W18
	.byte		N11   , En1
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N11   , En1 , v024
	.byte	W24
	.byte	W01
	.byte		N04   , Fs1 , v008
	.byte	W06
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N05   , Dn1 , v024
	.byte	W06
	.byte	W18
	.byte		N11   , En1
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N11   , Dn1 , v024
	.byte	W18
	.byte		        En1
	.byte	W12
	.byte		N06   , Dn1
	.byte	W18
	.byte	W18
	.byte		N11   , En1
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N11   , En1 , v024
	.byte	W24
	.byte		N12   , Dn4 , v108
	.byte	W07
	.byte		N05   , Dn1 , v024
	.byte	W05
	.byte		N12   , Dn4 , v108
	.byte	W12
	.byte	W18
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N11   , Dn1 , v024
	.byte	W18
	.byte		        En1
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
mus_time_diver_3_001:
	.byte	W18
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N11   , En1 , v024
	.byte	W24
	.byte	W01
	.byte		N04   , Fs1 , v008
	.byte	W17
	.byte		        Dn1 , v024
	.byte	W06
	.byte		PEND
	.byte	W18
	.byte		N11   , En1
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N11   , Dn1 , v024
	.byte	W18
	.byte		        En1
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N09   , En1 , v016
	.byte	W11
	.byte	W18
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		N06   , Dn1
	.byte	W06
	.byte		N18   , Dn4 , v108
	.byte	W01
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		N18   , Dn4 , v108
	.byte	W19
	.byte		N05   , Bn0 , v020
	.byte	W05
	.byte		N12   , Cs4 , v096
	.byte	W12
	.byte		N18   , Dn4 , v100
	.byte	W18
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N11   , Dn1 , v024
	.byte	W18
	.byte		N05   , En1
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N09   , En1 , v016
	.byte	W11
	.byte	W18
	.byte		N06   , Bn0 , v020
	.byte		N12   , En1 , v024
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N11   , En1 , v024
	.byte	W24
	.byte	W01
	.byte		N04   , Fs1 , v008
	.byte	W17
	.byte		N05   , Dn1 , v024
	.byte	W06
	.byte	W18
	.byte		N11   , En1
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N11   , Dn1 , v024
	.byte	W18
	.byte		N05   , En1
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte	W18
	.byte		N05   , Bn0 , v020
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N11   , En1 , v024
	.byte	W24
	.byte		N12   , Dn4 , v108
	.byte	W07
	.byte		N05   , Dn1 , v024
	.byte	W05
	.byte		N12   , Dn4 , v108
	.byte	W12
mus_time_diver_3_002:
	.byte	W18
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		N06   , Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N11   , Dn1 , v024
	.byte	W18
	.byte		N05   , Bn0 , v020
	.byte		N05   , En1 , v024
	.byte	W12
	.byte		        Dn1
	.byte	W18
	.byte		PEND
	.byte	PATT
	 .word	mus_time_diver_3_001
	.byte	PATT
	 .word	mus_time_diver_3_002
	.byte	W18
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		N06   , Dn1
	.byte	W06
	.byte		N18   , Dn4 , v108
	.byte	W01
	.byte		N10   , En1 , v016
	.byte	W23
	.byte		N18   , Dn4 , v108
	.byte	W24
	.byte		N12   , Cs4 , v096
	.byte	W12
	.byte	W13
	.byte		N04   , Fs1 , v008
	.byte	W05
	.byte		N05   , Bn0 , v020
	.byte		N05   , En1 , v024
	.byte	W12
	.byte		        Dn1
	.byte	W30
	.byte	W01
	.byte		N04   , Fs1 , v008
	.byte	W05
	.byte		N05   , Bn0 , v020
	.byte		N05   , En1 , v024
	.byte	W12
	.byte		        Bn0 , v020
	.byte		N05   , Dn1 , v024
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte	W13
	.byte		N04   , Fs1 , v008
	.byte	W05
	.byte		N05   , Bn0 , v020
	.byte		N05   , En1 , v024
	.byte	W12
	.byte		        Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W23
	.byte		N11   , Dn1 , v024
	.byte	W19
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N05   , Dn1 , v024
	.byte	W06
	.byte	W13
	.byte		N04   , Fs1 , v008
	.byte	W05
	.byte		N05   , Bn0 , v020
	.byte		N05   , En1 , v024
	.byte	W12
	.byte		        Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W24
	.byte		N04   , Fs1 , v008
	.byte	W05
	.byte		N05   , Bn0 , v020
	.byte		N05   , En1 , v024
	.byte	W12
	.byte		        Bn0 , v020
	.byte		N05   , Dn1 , v024
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte	W13
	.byte		N04   , Fs1 , v008
	.byte	W05
	.byte		N05   , Bn0 , v020
	.byte		N05   , En1 , v024
	.byte	W12
	.byte		        Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W23
	.byte		N11   , Dn1 , v024
	.byte		N04   , Fs1 , v028
	.byte	W12
	.byte		N12   , Cs4 , v100
	.byte	W12
	.byte		        Dn4 , v108
	.byte	W12
	.byte	W18
	.byte		N05   , En1 , v024
	.byte	W12
	.byte		N06   , Dn1
	.byte	W30
	.byte	W01
	.byte		N04   , Fs1 , v008
	.byte	W05
	.byte		N05   , Bn0 , v020
	.byte		N05   , En1 , v024
	.byte	W12
	.byte		        Bn0 , v020
	.byte		N05   , Dn1 , v024
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte	W13
	.byte		N04   , Fs1 , v008
	.byte	W05
	.byte		N05   , Bn0 , v020
	.byte		N05   , En1 , v024
	.byte	W12
	.byte		        Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W23
	.byte		N11   , Dn1 , v024
	.byte	W19
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N05   , Bn0 , v020
	.byte		N05   , Dn1 , v024
	.byte	W06
	.byte	W13
	.byte		N04   , Fs1 , v008
	.byte	W05
	.byte		N05   , En1 , v024
	.byte	W12
	.byte		        Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W24
	.byte		N04   , Fs1 , v008
	.byte	W05
	.byte		N05   , Bn0 , v020
	.byte		N05   , En1 , v024
	.byte	W12
	.byte		        Bn0 , v020
	.byte		N05   , Dn1 , v024
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W11
	.byte	W18
	.byte		N05   , En1 , v024
	.byte	W12
	.byte		        Dn1
	.byte	W07
	.byte		N10   , En1 , v016
	.byte	W23
	.byte		N11   , Dn1 , v024
	.byte	W19
	.byte		N04
	.byte	W05
	.byte		N12   , Cs4 , v100
	.byte	W12
	.byte		N11   , Bn0 , v112
	.byte		N04   , Fs1 , v088
	.byte		N12   , Dn4 , v108
	.byte	W12
	.byte		N11   , Bn0 , v112
	.byte		N02   , En1 , v028
	.byte		N04   , Fs1 , v072
	.byte		N12   , Cs4 , v100
	.byte	W03
	.byte		N02   , En1 , v036
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		N11   , Dn1 , v100
	.byte		N11   , En1 , v088
	.byte		N04   , Fs1
	.byte		N11   , Cn4 , v112
	.byte	W12
	.byte		N06   , En1 , v076
	.byte		N04   , Fs1 , v072
	.byte		N12   , Dn4 , v108
	.byte	W07
	.byte		N04   , Dn1 , v088
	.byte	W05
	.byte		N02   , En1 , v028
	.byte		N04   , Fs1 , v088
	.byte		N12   , Cs4 , v100
	.byte	W03
	.byte		N02   , En1 , v036
	.byte	W03
	.byte		N03   , En1 , v048
	.byte	W01
	.byte		N01   , Dn1 , v088
	.byte	W02
	.byte		N02   , En1 , v068
	.byte	W03
	.byte		N11   , En1 , v092
	.byte		N04   , Fs1 , v072
	.byte		N11   , Cn4 , v112
	.byte	W12
	.byte		        Dn1
	.byte		N12   , Cs4 , v100
	.byte	W12
	.byte		N11   , En1 , v108
	.byte		N12   , Cs4 , v100
	.byte	W12
	.byte		N21   , Dn4 , v124
	.byte	W19
	.byte		N05   , En1 , v024
	.byte	W17
	.byte		        Bn0 , v052
	.byte	W54
	.byte	W01
	.byte		N04   , En1 , v024
	.byte	W05
	.byte	W07
	.byte		N05
	.byte	W40
	.byte	W01
	.byte		        Bn0 , v052
	.byte	W19
	.byte		        En1 , v024
	.byte	W24
	.byte		N04
	.byte	W05
mus_time_diver_3_003:
	.byte	W19
	.byte		N04   , En1 , v024
	.byte	W17
	.byte		N05   , Bn0 , v052
	.byte	W54
	.byte	W01
	.byte		N04   , En1 , v024
	.byte	W05
	.byte		PEND
	.byte	W07
	.byte		N05
	.byte	W40
	.byte	W01
	.byte		        Bn0 , v052
	.byte	W19
	.byte		N04   , En1 , v024
	.byte	W28
	.byte	W01
	.byte	PATT
	 .word	mus_time_diver_3_003
mus_time_diver_3_004:
	.byte	W07
	.byte		N04   , En1 , v024
	.byte	W40
	.byte	W01
	.byte		N05   , Bn0 , v052
	.byte	W19
	.byte		N04   , En1 , v024
	.byte	W05
	.byte		N05   , Bn0 , v052
	.byte	W19
	.byte		N04   , En1 , v024
	.byte	W05
	.byte		PEND
	.byte	PATT
	 .word	mus_time_diver_3_003
	.byte	W07
	.byte		N04   , En1 , v024
	.byte	W28
	.byte	W01
	.byte		N18   , Dn4 , v108
	.byte	W07
	.byte		N04   , Dn1 , v024
	.byte	W05
	.byte		N05   , Bn0 , v052
	.byte	W12
	.byte		N18   , Dn4 , v108
	.byte	W24
	.byte		N12   , Cs4 , v096
	.byte	W07
	.byte		N04   , En1 , v024
	.byte	W05
	.byte		N23   , Cn4 , v112
	.byte	W19
	.byte		N04   , En1 , v024
	.byte	W17
	.byte		N05   , Bn0 , v052
	.byte	W54
	.byte	W01
	.byte		N04   , En1 , v024
	.byte	W05
	.byte	PATT
	 .word	mus_time_diver_3_004
	.byte	PATT
	 .word	mus_time_diver_3_003
	.byte	W07
	.byte		N04   , En1 , v024
	.byte	W40
	.byte	W01
	.byte		N05   , Bn0 , v052
	.byte	W19
	.byte		N04   , En1 , v024
	.byte	W17
	.byte		N12   , Dn4 , v100
	.byte	W12
	.byte	PATT
	 .word	mus_time_diver_3_003
	.byte	PATT
	 .word	mus_time_diver_3_004
	.byte	W19
	.byte		N04   , En1 , v024
	.byte	W17
	.byte		N05   , Bn0 , v052
	.byte	W54
	.byte	W01
	.byte		N04   , En1 , v028
	.byte	W05
	.byte		N02   , En1 , v016
	.byte	W03
	.byte		        En1 , v028
	.byte	W03
	.byte		        En1 , v036
	.byte	W03
	.byte		        En1 , v056
	.byte	W03
	.byte		N11   , En1 , v076
	.byte	W12
	.byte		        Dn1 , v100
	.byte		N04   , Fs1 , v072
	.byte	W12
	.byte		N05   , Bn0 , v104
	.byte		N04   , Fs1 , v072
	.byte		N18   , Dn4 , v100
	.byte	W07
	.byte		N04   , Dn1 , v076
	.byte	W05
	.byte		        Fs1 , v080
	.byte	W07
	.byte		        En1 , v068
	.byte	W05
	.byte		N11   , Bn0 , v112
	.byte		N04   , Fs1 , v072
	.byte		N18   , Dn4 , v100
	.byte	W12
	.byte		N11   , Dn1
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		        Fs1 , v072
	.byte		N11   , Cs4 , v096
	.byte	W07
	.byte		N03   , Dn1 , v076
	.byte	W05
	.byte	W18
	.byte		N11   , Bn0 , v020
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		N06   , Bn0 , v020
	.byte		N06   , Dn1 , v024
	.byte	W07
	.byte		N10   , En1 , v016
	.byte		N10   , As1
	.byte	W11
	.byte		N11   , Bn0 , v020
	.byte		N11   , Dn1 , v024
	.byte	W13
	.byte		N04   , Fs1 , v008
	.byte	W05
	.byte		N11   , Bn0 , v020
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		N06   , Bn0 , v020
	.byte		N06   , Dn1 , v024
	.byte	W07
	.byte		N10   , En1 , v016
	.byte		N10   , As1
	.byte	W11
	.byte		N11   , Bn0 , v020
	.byte		N11   , Dn1 , v024
	.byte	W13
	.byte		N04   , Fs1 , v008
	.byte	W05
	.byte		N11   , Bn0 , v020
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		N06   , Bn0 , v020
	.byte		N06   , Dn1 , v024
	.byte	W07
	.byte		N10   , En1 , v016
	.byte		N10   , As1
	.byte	W11
	.byte		N11   , Bn0 , v020
	.byte		N11   , En1 , v024
	.byte	W12
	.byte		        Bn0 , v020
	.byte		N11   , Dn1 , v024
	.byte	W13
	.byte		N04   , Fs1 , v008
	.byte	W06
	.byte		        En1 , v016
	.byte		N10   , As1
	.byte	W05
	.byte		N11   , Cs4 , v076
	.byte	W06
	.byte		N06   , Dn1 , v024
	.byte	W06
	.byte		N11   , Cn4 , v120
	.byte	W12
	.byte		        Cs4 , v076
	.byte	W06
	.byte		        En1 , v024
	.byte	W06
	.byte		        Cn4 , v112
	.byte	W06
	.byte		N06   , Dn1 , v024
	.byte	W06
	.byte		N11   , Cs4 , v076
	.byte	W01
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N11   , Dn1 , v024
	.byte		N11   , Cs4 , v076
	.byte	W12
	.byte		        Cn4 , v116
	.byte	W06
	.byte		        En1 , v024
	.byte	W06
	.byte		        Cn4 , v116
	.byte	W06
	.byte		N06   , Dn1 , v024
	.byte	W06
	.byte		N11   , Cs4 , v076
	.byte	W01
	.byte		N10   , En1 , v016
	.byte	W11
	.byte		N06   , En1 , v080
	.byte		N11   , Cn4 , v116
	.byte	W07
	.byte		N04   , Dn1 , v052
	.byte	W05
	.byte		N06
	.byte		N11   , Cn4 , v116
	.byte	W07
	.byte		N04   , En1 , v080
	.byte	W05
	.byte		N06   , Dn1 , v052
	.byte		N11   , Cn4 , v116
	.byte	W07
	.byte		N04   , Dn1 , v052
	.byte	W05
	.byte		N06   , En1 , v080
	.byte		N11   , Cs4 , v096
	.byte	W07
	.byte		N04   , Dn1 , v104
	.byte	W05
	.byte		N06   , Dn1 , v052
	.byte	W07
	.byte		N04   , En1 , v080
	.byte	W05
	.byte		N06   , Dn1 , v052
	.byte	W07
	.byte		N05
	.byte	W05
	.byte		N12   , Cs4 , v100
	.byte	W12
	.byte		N12
	.byte	W12
	.byte	GOTO
	 .word	mus_time_diver_3_000
	.byte		FINE

@**************** Track 4 ****************@

mus_time_diver_4:
	.byte		KEYSH , mus_time_diver_key+0
	.byte		VOICE , 61
	.byte	W01
	.byte		VOL   , 66*mus_time_diver_mvl/mxv
	.byte		PAN   , c_v+8
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte	W96
	.byte	W96
	.byte	W96
mus_time_diver_4_000:
	.byte	W72
	.byte		N05   , Cs3 , v100
	.byte	W06
	.byte		        En3 , v112
	.byte	W06
	.byte		        Fs3 , v120
	.byte	W06
	.byte		        Gs3 , v124
	.byte	W06
	.byte		PEND
mus_time_diver_4_001:
	.byte		N11   , Cs3 , v080
	.byte		N11   , An3 , v120
	.byte	W19
	.byte		        Bn2 , v080
	.byte		N11   , Gs3 , v120
	.byte	W17
	.byte		N05   , An2 , v080
	.byte		N05   , Fs3 , v120
	.byte	W12
	.byte		N68   , Cs3
	.byte	W48
	.byte	W36
	.byte		N05   , An2 , v080
	.byte		N05   , Cs3 , v120
	.byte	W12
	.byte		N11   , Cs3 , v080
	.byte		N11   , Fs3 , v120
	.byte	W12
	.byte		N05   , En3 , v080
	.byte		N05   , Gs3 , v120
	.byte	W12
	.byte		        Fs3 , v080
	.byte		N05   , An3 , v120
	.byte	W12
	.byte		        An3 , v080
	.byte		N05   , Cs4 , v120
	.byte	W12
	.byte		N17   , Gs3 , v080
	.byte		N17   , Bn3 , v120
	.byte	W24
	.byte		        Gs3 , v080
	.byte		N17   , Cs4 , v120
	.byte	W24
	.byte		N11   , Bn3 , v080
	.byte		N11   , Dn4 , v120
	.byte	W17
	.byte		N01   , Fn4
	.byte	W02
	.byte		N11   , Bn3 , v080
	.byte		N11   , Fs4 , v120
	.byte	W17
	.byte		N32   , An3 , v080
	.byte		N32   , Cs4 , v120
	.byte	W12
	.byte	W36
	.byte		N05   , En3 , v080
	.byte		N05   , An3 , v120
	.byte	W07
	.byte		        Gn3 , v080
	.byte		N04   , Bn3 , v120
	.byte	W05
	.byte		N10   , An3 , v080
	.byte		N10   , Cs4 , v120
	.byte	W12
	.byte		N06   , Cs4 , v080
	.byte		N06   , En4 , v120
	.byte	W12
	.byte		        An3 , v080
	.byte		N06   , Cs4 , v120
	.byte	W12
	.byte		N07   , Cs3 , v080
	.byte		N07   , Fs3 , v120
	.byte	W12
	.byte		N11   , Bn3
	.byte	W19
	.byte		        Fs3 , v080
	.byte		N11   , Cs4 , v120
	.byte	W17
	.byte		        Dn3 , v080
	.byte		N52   , Fs3 , v120
	.byte	W60
	.byte		N17   , Gs3 , v080
	.byte		N17   , Bn3 , v120
	.byte	W24
	.byte		        En3 , v080
	.byte		N17   , An3 , v120
	.byte	W24
	.byte		N11   , En3 , v080
	.byte		N11   , Gs3 , v120
	.byte	W19
	.byte		        Gs2 , v080
	.byte		N11   , En3 , v120
	.byte	W17
	.byte		TIE   , An2 , v080
	.byte		TIE   , Cs3 , v120
	.byte	W12
	.byte	W92
	.byte	W03
	.byte		EOT   , An2
	.byte		        Cs3
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W66
	.byte	W01
	.byte		N02   , Fs3 , v112
	.byte	W05
	.byte		N05   , An3
	.byte	W07
	.byte		N02   , Fs3 , v080
	.byte	W05
	.byte		N05   , Bn3 , v112
	.byte	W07
	.byte		N02   , Fs3 , v080
	.byte	W05
	.byte		N05   , Cs4 , v112
	.byte	W07
	.byte		N03   , Ds4
	.byte	W12
	.byte		        Fn4
	.byte	W20
	.byte		N02   , Bn3 , v088
	.byte	W03
	.byte		        Cs4
	.byte	W03
	.byte		        Ds4
	.byte	W03
	.byte		N09   , Fn4 , v108
	.byte	W19
	.byte		N09
	.byte	W17
	.byte		N08
	.byte	W12
mus_time_diver_4_002:
	.byte	W24
	.byte		N11   , An4 , v096
	.byte	W12
	.byte		N01   , Gn4 , v088
	.byte	W02
	.byte		        En4 , v080
	.byte	W02
	.byte		        Cs4 , v076
	.byte	W02
	.byte		N02   , An3
	.byte	W54
	.byte		PEND
	.byte	W48
	.byte		N17   , Gn3 , v072
	.byte	W24
	.byte		        Bn3 , v076
	.byte	W24
	.byte		N28   , As3
	.byte	W36
	.byte		N05   , Fn3
	.byte	W12
	.byte		N40   , Gn3
	.byte	W48
	.byte		N17   , Gs3 , v080
	.byte	W24
	.byte		        Bn3 , v088
	.byte	W24
	.byte		N04   , An3 , v092
	.byte	W12
	.byte		N03   , Cs4 , v108
	.byte	W12
	.byte		N05
	.byte	W07
	.byte		N03   , Dn4 , v092
	.byte	W05
	.byte		N10   , En4 , v096
	.byte	W12
	.byte	PATT
	 .word	mus_time_diver_4_002
	.byte	W24
	.byte		N11   , Gs4 , v096
	.byte	W12
	.byte		N02   , Fs4 , v088
	.byte	W03
	.byte		        Ds4 , v080
	.byte	W03
	.byte		        Cn4 , v076
	.byte	W06
	.byte		N15   , An3 , v080
	.byte	W24
	.byte		        Bn3
	.byte	W24
	.byte		N05   , Cs4 , v096
	.byte	W07
	.byte		N03   , Dn4 , v080
	.byte	W12
	.byte		        Dn4 , v092
	.byte	W12
	.byte		        Dn4 , v100
	.byte	W05
	.byte		        Fs4 , v088
	.byte	W12
	.byte		N11   , Dn4 , v092
	.byte	W19
	.byte		N03
	.byte	W28
	.byte	W01
	.byte	W12
	.byte		N04   , Cs4 , v116
	.byte	W12
	.byte		N05   , Bn3
	.byte	W07
	.byte		N03   , Cs4 , v108
	.byte	W12
	.byte		N07   , Cs4 , v116
	.byte	W12
	.byte		N04   , Fs4
	.byte	W05
	.byte		        Gs4 , v108
	.byte	W12
	.byte		N05   , Bn4 , v116
	.byte	W07
	.byte		N09   , Cs5 , v108
	.byte	W17
	.byte	W96
mus_time_diver_4_003:
	.byte	W60
	.byte		N05   , Fs4 , v092
	.byte	W12
	.byte		        En4 , v096
	.byte	W07
	.byte		N03   , Fs4 , v088
	.byte	W17
	.byte		PEND
mus_time_diver_4_004:
	.byte	W36
	.byte	W03
	.byte		N02   , Cs4 , v088
	.byte	W03
	.byte		        Ds4
	.byte	W03
	.byte		        Fn4
	.byte	W03
	.byte		N11   , Fs4 , v096
	.byte	W18
	.byte		N11
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		PEND
	.byte	W12
	.byte		N03   , En4 , v092
	.byte	W12
	.byte		N05   , Dn4 , v096
	.byte	W07
	.byte		N03   , En4 , v088
	.byte	W12
	.byte		N03
	.byte	W52
	.byte	W01
	.byte		N05   , En4 , v096
	.byte	W07
	.byte		        Dn4 , v092
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		N04   , Fs4 , v096
	.byte	W05
	.byte		N05   , Gs4 , v092
	.byte	W12
	.byte		N08   , Bn4 , v096
	.byte	W12
	.byte		N05   , Gs4 , v092
	.byte	W07
	.byte		        Bn4
	.byte	W12
	.byte		N11   , Bn4 , v096
	.byte	W17
	.byte	W60
	.byte	W03
	.byte		N02   , Dn4 , v088
	.byte	W03
	.byte		        En4
	.byte	W03
	.byte		        Fs4
	.byte	W03
	.byte		N09   , Gn4 , v096
	.byte	W24
	.byte	W60
	.byte		        An4
	.byte	W19
	.byte		N09
	.byte	W17
	.byte	W96
	.byte	W12
	.byte		N05   , Cs4 , v112
	.byte	W12
	.byte		        Bn3
	.byte	W07
	.byte		N03   , Cs4
	.byte	W12
	.byte		N08   , Fn4
	.byte	W12
	.byte		N04   , Gs4
	.byte	W12
	.byte		N10   , Cs5
	.byte	W11
	.byte		N01   , Bn4 , v088
	.byte	W02
	.byte		        Gs4 , v080
	.byte	W02
	.byte		        Fn4 , v076
	.byte	W02
	.byte		N02   , Cs4
	.byte	W12
	.byte	PATT
	 .word	mus_time_diver_4_003
	.byte	PATT
	 .word	mus_time_diver_4_004
	.byte	W12
	.byte		N03   , En4 , v092
	.byte	W12
	.byte		N05   , Dn4 , v096
	.byte	W07
	.byte		N03   , En4 , v088
	.byte	W12
	.byte		N03
	.byte	W44
	.byte		N02   , Bn3
	.byte	W03
	.byte		        Cs4
	.byte	W03
	.byte		        Dn4
	.byte	W03
	.byte		N05   , En4 , v096
	.byte	W07
	.byte		        Dn4 , v092
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		N03   , En4 , v096
	.byte	W05
	.byte		N05   , Gs4
	.byte	W12
	.byte		N17   , Bn4 , v092
	.byte	W24
	.byte		        En4 , v088
	.byte	W24
	.byte	W07
	.byte		N04   , Fs4 , v096
	.byte	W17
	.byte		N03
	.byte	W24
	.byte		N15   , Bn3 , v088
	.byte	W24
	.byte		        An3
	.byte	W24
	.byte		N24   , Gs3
	.byte	W36
	.byte		N15   , Cs4 , v080
	.byte	W24
	.byte		        Dn4 , v088
	.byte	W24
	.byte		N07   , En4 , v092
	.byte	W12
	.byte	W15
	.byte		N02   , Cs4 , v096
	.byte	W03
	.byte		        Dn4
	.byte	W03
	.byte		        En4
	.byte	W03
	.byte		N09   , Fs4 , v108
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT
	 .word	mus_time_diver_4_000
	.byte	GOTO
	 .word	mus_time_diver_4_001
	.byte		FINE

@**************** Track 5 ****************@

mus_time_diver_5:
	.byte		KEYSH , mus_time_diver_key+0
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_time_diver_5_000:
	.byte	W42
	.byte		VOICE , 100
	.byte		VOL   , 56*mus_time_diver_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		N17   , An4 , v112
	.byte	W18
	.byte		        Gs4
	.byte	W18
	.byte		N11   , Fs4
	.byte	W12
	.byte		N23   , Cs4
	.byte	W24
	.byte		N11   , Cs5
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		N17   , Bn4
	.byte	W18
	.byte		        Cs5
	.byte	W18
	.byte		N11   , Fs4
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
	.byte	W48
	.byte		N28   , Gs4
	.byte	W36
	.byte		N06   , An4
	.byte	W07
	.byte		N02   , Gs4 , v108
	.byte	W03
	.byte		VOICE , 48
	.byte		VOL   , 36*mus_time_diver_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N32   , Gs4 , v072
	.byte	W36
	.byte		N06   , An4 , v080
	.byte	W07
	.byte		N05   , Gs4 , v060
	.byte	W05
	.byte		N52   , Cs5 , v048
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W30
	.byte		VOICE , 100
	.byte		VOL   , 56*mus_time_diver_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		N11   , Cs5 , v108
	.byte	W12
	.byte		N06   , Dn5
	.byte	W07
	.byte		N52   , Fs4 , v100
	.byte	W40
	.byte	W01
	.byte	W84
	.byte		N03   , Fs4 , v108
	.byte	W04
	.byte		        Cs4 , v096
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		N48   , Fs3
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		N06   , Dn5 , v108
	.byte	W07
	.byte		N04   , As4
	.byte	W05
	.byte		N06   , Gn4
	.byte	W07
	.byte		N09   , Fn4
	.byte	W12
	.byte		N04
	.byte	W05
	.byte		N11   , Dn4
	.byte	W12
	.byte	W96
	.byte	W96
	.byte		N05   , Gs4 , v112
	.byte	W06
	.byte		        Gs3 , v100
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        En4
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
	.byte		N17   , Fs4
	.byte	W48
	.byte		        Cs5
	.byte	W48
	.byte		N11   , En4
	.byte	W72
	.byte		        Bn4 , v092
	.byte	W24
	.byte		N17   , Gs4 , v100
	.byte	W90
	.byte		VOICE , 48
	.byte		VOL   , 36*mus_time_diver_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		N30   , Bn4 , v048
	.byte	W36
	.byte		N18   , Dn5 , v056
	.byte	W24
	.byte		        En5 , v052
	.byte	W24
	.byte		N07   , Fs5
	.byte	W12
	.byte		N05   , En5
	.byte	W07
	.byte		        Fs5
	.byte	W05
	.byte		N76   , Gs5 , v036
	.byte	W84
	.byte		N24   , Fs5 , v052
	.byte	W36
	.byte		N17   , Dn5 , v056
	.byte	W24
	.byte		N05
	.byte	W12
	.byte		N11   , Fs5 , v052
	.byte	W12
	.byte		TIE   , En5 , v040
	.byte	W12
	.byte	W92
	.byte		EOT   
	.byte	W04
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_time_diver_5_000
	.byte		FINE

@**************** Track 6 ****************@

mus_time_diver_6:
	.byte		KEYSH , mus_time_diver_key+0
	.byte		VOICE , 26
	.byte	W01
	.byte		VOL   , 80*mus_time_diver_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
mus_time_diver_6_000:
	.byte		N03   , Fs2 , v088
	.byte	W12
	.byte		        En3 , v120
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		        En2 , v076
	.byte	W12
	.byte		        Fs2 , v088
	.byte	W07
	.byte		        En3 , v120
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		        En2 , v076
	.byte	W05
	.byte		N06   , Fs2
	.byte	W07
	.byte		N03   , Cs2
	.byte	W05
	.byte		PEND
mus_time_diver_6_001:
	.byte		N03   , Fs2 , v088
	.byte	W07
	.byte		        En3 , v120
	.byte	W06
	.byte		        Cs3 , v036
	.byte	W06
	.byte		        Fs3 , v120
	.byte	W12
	.byte		        Fs2 , v060
	.byte	W06
	.byte		N06   , En2 , v076
	.byte	W05
	.byte		        Fs2
	.byte	W06
	.byte		        An3 , v120
	.byte	W07
	.byte		N03   , Fs3 , v112
	.byte	W12
	.byte		        En3
	.byte	W05
	.byte		        Fs2 , v060
	.byte	W07
	.byte		N05   , Cn3 , v120
	.byte	W05
	.byte		N11   , Cs3 , v100
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_time_diver_6_000
mus_time_diver_6_002:
	.byte		N03   , Fs2 , v088
	.byte	W07
	.byte		        En3 , v120
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		        Cs2 , v068
	.byte	W05
	.byte		N02   , Gs3 , v096
	.byte	W07
	.byte		N03   , Gs2 , v068
	.byte	W05
	.byte		N07   , An2 , v120
	.byte	W07
	.byte		N03   , Bn2 , v108
	.byte	W05
	.byte		N07   , Cn3 , v116
	.byte	W07
	.byte		N03   , Cs3
	.byte	W12
	.byte		        Dn3 , v127
	.byte	W05
	.byte		N11   , En3
	.byte	W12
	.byte		PEND
mus_time_diver_6_003:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N10   , En3 , v076
	.byte	W12
	.byte		N04   , En3 , v056
	.byte	W06
	.byte		N03   , En3 , v048
	.byte	W06
	.byte		N10   , En3 , v068
	.byte	W12
	.byte		        En3 , v076
	.byte	W14
	.byte		N22   , En3 , v092
	.byte	W24
	.byte		N22
	.byte	W22
	.byte	W36
	.byte		N05   , En3 , v112
	.byte	W07
	.byte		N03   , Fs3 , v056
	.byte	W05
	.byte		N01   , Fs2 , v068
	.byte	W13
	.byte		N02   , Fs3 , v088
	.byte	W11
	.byte		N01   , Fs2 , v068
	.byte	W06
	.byte		N11   , Fs3 , v096
	.byte	W18
	.byte	W01
	.byte		N21   , Cs3 , v076
	.byte	W23
	.byte		N11   , Fs3 , v088
	.byte	W12
	.byte		N06   , Cs3 , v096
	.byte	W07
	.byte		N15   , Fs2
	.byte	W18
	.byte		N03   , En3 , v072
	.byte	W05
	.byte		N01   , En3 , v076
	.byte	W07
	.byte		N03   , En3 , v088
	.byte	W05
	.byte		N01   , Cs3 , v076
	.byte	W07
	.byte		N02   , En3 , v072
	.byte	W05
	.byte		N05   , An2 , v076
	.byte	W06
	.byte		N18   , Cs3
	.byte	W19
	.byte		N04   , Fs2
	.byte	W05
	.byte		N11   , An2 , v100
	.byte	W12
	.byte		N05   , Fs3 , v112
	.byte	W07
	.byte		N03   , En3 , v056
	.byte	W05
	.byte		N01   , Fs2 , v068
	.byte	W13
	.byte		N02   , Fs3 , v088
	.byte	W16
	.byte		N11   , An3 , v076
	.byte	W19
mus_time_diver_6_004:
	.byte		N06   , Cs4 , v116
	.byte	W07
	.byte		N04   , Bn3 , v060
	.byte	W12
	.byte		N03   , An3 , v092
	.byte	W12
	.byte		        Fs3 , v100
	.byte	W12
	.byte		        En3 , v092
	.byte	W11
	.byte		N06   , Bn2 , v116
	.byte	W07
	.byte		N10   , Cs3 , v060
	.byte	W32
	.byte	W03
	.byte		PEND
	.byte	W01
	.byte		        Dn3 , v076
	.byte	W12
	.byte		N03   , Fs3 , v072
	.byte	W05
	.byte		N01   , Dn3 , v076
	.byte	W07
	.byte		N03   , Fs3 , v088
	.byte	W05
	.byte		N05   , Bn2 , v076
	.byte	W06
	.byte		        En3 , v112
	.byte	W07
	.byte		N03   , Fs3 , v056
	.byte	W05
	.byte		N01   , Fs2 , v068
	.byte	W13
	.byte		N02   , An3 , v088
	.byte	W11
	.byte		N01   , Fs2 , v068
	.byte	W06
	.byte		N11   , Fs3 , v088
	.byte	W18
	.byte	W01
	.byte		N03   , Gs3
	.byte	W05
	.byte		N01   , En3 , v076
	.byte	W07
	.byte		N02   , Gs3 , v072
	.byte	W05
	.byte		N05   , Cs3 , v076
	.byte	W06
	.byte		        Fs3 , v112
	.byte	W07
	.byte		N32   , Gs3 , v056
	.byte	W36
	.byte		N01   , Gs2 , v068
	.byte	W11
	.byte		N11   , Gs3 , v096
	.byte	W18
	.byte	W01
	.byte		N17   , Cs3 , v076
	.byte	W18
	.byte		N04   , Fs2
	.byte	W05
	.byte		N06   , An2 , v100
	.byte	W07
	.byte		N04   , Fs2 , v068
	.byte	W05
	.byte		N05   , En3 , v112
	.byte	W07
	.byte		N03   , Fs3 , v056
	.byte	W05
	.byte		N01   , Fs2 , v068
	.byte	W13
	.byte		N02   , Cs3 , v088
	.byte	W17
	.byte		N11   , Fs3 , v096
	.byte	W18
	.byte	W01
	.byte		N05   , Fn3 , v088
	.byte	W06
	.byte		N01   , Gs2 , v056
	.byte	W06
	.byte		N09   , Cs3 , v052
	.byte	W12
	.byte		        Fn3 , v088
	.byte	W68
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT
	 .word	mus_time_diver_6_004
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
	.byte	W12
	.byte		N06   , Cs3 , v112
	.byte	W12
	.byte		        Bn2 , v127
	.byte	W07
	.byte		N04   , Cs3 , v072
	.byte	W12
	.byte		N09   , Fn3 , v112
	.byte	W12
	.byte		N05   , Gs3
	.byte	W12
	.byte		N11   , Cs4
	.byte	W28
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT
	 .word	mus_time_diver_6_000
	.byte	PATT
	 .word	mus_time_diver_6_001
	.byte	PATT
	 .word	mus_time_diver_6_000
	.byte	PATT
	 .word	mus_time_diver_6_002
	.byte	GOTO
	 .word	mus_time_diver_6_003
	.byte		FINE

@**************** Track 8 ****************@

mus_time_diver_8:
	.byte		KEYSH , mus_time_diver_key-12
	.byte		VOICE , 109
	.byte	W01
	.byte		VOL   , 85*mus_time_diver_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		TIE   , Fs1 , v127
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N07
	.byte	W96
	.byte	W96
mus_time_diver_8_000:
	.byte		N06   , Fs1 , v127
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N03   , En1
	.byte	W07
	.byte		N08   , Fs1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N03   , En1
	.byte	W05
	.byte		N10   , Fs1
	.byte	W12
	.byte		N06   , Bn1
	.byte	W12
	.byte		N12   , Cs2
	.byte	W12
	.byte		PEND
mus_time_diver_8_001:
	.byte		N06   , Fs1 , v127
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06   , Bn1
	.byte	W07
	.byte		N09   , Cs2
	.byte	W12
	.byte		N10   , Bn1
	.byte	W12
	.byte		N03   , An1
	.byte	W05
	.byte		N10   , Fs1
	.byte	W12
	.byte		N04   , En1
	.byte	W07
	.byte		N16   , An1
	.byte	W17
	.byte		PEND
mus_time_diver_8_002:
	.byte		N06   , En1 , v127
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N03   , Dn1
	.byte	W07
	.byte		N08   , En1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N03   , Dn1
	.byte	W05
	.byte		N10   , En1
	.byte	W12
	.byte		N06   , An1
	.byte	W12
	.byte		N12   , Bn1
	.byte	W12
	.byte		PEND
	.byte		N06   , An1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06   , Dn2
	.byte	W07
	.byte		N09   , En2
	.byte	W12
	.byte		N10   , Cs2
	.byte	W12
	.byte		N03   , Bn1
	.byte	W05
	.byte		N10   , An1
	.byte	W12
	.byte		N04   , Gs1
	.byte	W07
	.byte		N16   , An1
	.byte	W17
	.byte		N06   , Dn1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N03   , Cs1
	.byte	W07
	.byte		N08   , Dn1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N03   , Cs1
	.byte	W05
	.byte		N10   , Dn1
	.byte	W12
	.byte		N06   , Gs1
	.byte	W12
	.byte		N12   , An1
	.byte	W12
	.byte		N06   , En1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N03   , An1
	.byte	W07
	.byte		N10   , Bn1
	.byte	W12
	.byte		N12   , Gs1
	.byte	W12
	.byte		N03   , Fs1
	.byte	W05
	.byte		N10   , Gs1
	.byte	W12
	.byte		N04   , En1
	.byte	W07
	.byte		N16
	.byte	W17
	.byte	PATT
	 .word	mus_time_diver_8_000
	.byte	W96
mus_time_diver_8_003:
	.byte		N12   , Fs1 , v127
	.byte	W60
	.byte		N07
	.byte	W19
	.byte		N17   , En1
	.byte	W17
	.byte		PEND
	.byte	PATT
	 .word	mus_time_diver_8_003
	.byte	PATT
	 .word	mus_time_diver_8_003
mus_time_diver_8_004:
	.byte		N12   , Fs1 , v127
	.byte	W60
	.byte		N07
	.byte	W12
	.byte		N11   , An1
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		PEND
mus_time_diver_8_005:
	.byte		N12   , Bn1 , v127
	.byte	W60
	.byte		N07
	.byte	W19
	.byte		N17   , An1
	.byte	W17
	.byte		PEND
mus_time_diver_8_006:
	.byte		N12   , Cs2 , v127
	.byte	W60
	.byte		N07
	.byte	W19
	.byte		N16   , Gs1
	.byte	W17
	.byte		PEND
	.byte	PATT
	 .word	mus_time_diver_8_003
	.byte		N05   , Cs2 , v127
	.byte	W12
	.byte		N12   , Gs1
	.byte	W12
	.byte		N05   , Bn1
	.byte	W12
	.byte		N11   , Cs1
	.byte	W12
	.byte		        Cs2
	.byte	W19
	.byte		N11
	.byte	W17
	.byte		N11
	.byte	W12
	.byte	PATT
	 .word	mus_time_diver_8_003
	.byte	PATT
	 .word	mus_time_diver_8_003
	.byte	PATT
	 .word	mus_time_diver_8_003
	.byte	PATT
	 .word	mus_time_diver_8_004
	.byte	PATT
	 .word	mus_time_diver_8_005
	.byte	PATT
	 .word	mus_time_diver_8_006
	.byte	PATT
	 .word	mus_time_diver_8_003
	.byte		N05   , Cs2 , v127
	.byte	W12
	.byte		N12   , Gs1
	.byte	W12
	.byte		N05   , Bn1
	.byte	W12
	.byte		N11   , Cs1
	.byte	W12
	.byte		N06   , En2
	.byte	W07
	.byte		N04   , Cs2
	.byte	W05
	.byte		        Bn1
	.byte	W07
	.byte		        An1
	.byte	W12
	.byte		        Fs1
	.byte	W05
	.byte		N11   , En1
	.byte	W12
	.byte		N06   , Dn2
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Gs1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N09   , Fs1
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N06
	.byte	W07
	.byte		N09
	.byte	W12
	.byte		N05   , Fn1
	.byte	W05
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		        En2
	.byte	W12
	.byte		N06
	.byte	W07
	.byte		N09
	.byte	W12
	.byte		N05   , Ds2
	.byte	W05
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		        Dn2
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N06
	.byte	W07
	.byte		N09
	.byte	W12
	.byte		N05   , Bn1
	.byte	W05
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N06
	.byte	W07
	.byte		N09
	.byte	W12
	.byte		N05
	.byte	W05
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N06
	.byte	W72
	.byte		N22
	.byte	W09
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-64
	.byte	W04
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte	PATT
	 .word	mus_time_diver_8_000
	.byte	PATT
	 .word	mus_time_diver_8_001
	.byte	PATT
	 .word	mus_time_diver_8_002
mus_time_diver_8_007:
	.byte		N06   , En1 , v127
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06   , An1
	.byte	W07
	.byte		N09   , Bn1
	.byte	W12
	.byte		N10   , An1
	.byte	W12
	.byte		N03   , Gs1
	.byte	W05
	.byte		N10   , En1
	.byte	W12
	.byte		        Gs1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		PEND
	.byte		N06   , Dn1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N03   , Cn1
	.byte	W07
	.byte		N08   , Dn1
	.byte	W12
	.byte		N10   , Gn1
	.byte	W12
	.byte		N03   , Fn1
	.byte	W05
	.byte		N10   , Gn1
	.byte	W12
	.byte		N06   , Bn1
	.byte	W12
	.byte		N12   , Dn2
	.byte	W12
	.byte		N06   , En1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N03   , An1
	.byte	W07
	.byte		N10   , Bn1
	.byte	W12
	.byte		N12   , An1
	.byte	W12
	.byte		N03   , Gs1
	.byte	W05
	.byte		N10   , En1
	.byte	W12
	.byte		N04   , Gs1
	.byte	W07
	.byte		N16   , An1
	.byte	W17
	.byte		N06   , Dn1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N03   , Cn1
	.byte	W07
	.byte		N08   , Dn1
	.byte	W12
	.byte		N10   , Fs1
	.byte	W12
	.byte		N03   , An1
	.byte	W05
	.byte		N10   , Fs1
	.byte	W12
	.byte		N06   , Bn1
	.byte	W12
	.byte		N18   , Cs2
	.byte	W12
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N06   , An1
	.byte	W07
	.byte		N09   , Bn1
	.byte	W12
	.byte		N10   , Gs1
	.byte	W12
	.byte		N03   , Fn1
	.byte	W05
	.byte		N10   , Bn1
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		N10
	.byte	W12
	.byte	PATT
	 .word	mus_time_diver_8_000
	.byte	PATT
	 .word	mus_time_diver_8_001
	.byte	PATT
	 .word	mus_time_diver_8_002
	.byte	PATT
	 .word	mus_time_diver_8_007
	.byte		N06   , Bn1 , v127
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N03   , An1
	.byte	W07
	.byte		N08   , Bn1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N03   , An1
	.byte	W05
	.byte		N10   , Bn1
	.byte	W12
	.byte		N06   , En1
	.byte	W12
	.byte		N12   , Fs1
	.byte	W12
	.byte		N06   , Cs2
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N03   , Fs1
	.byte	W07
	.byte		N10   , Gs1
	.byte	W12
	.byte		N12   , En2
	.byte	W12
	.byte		N03   , Cs2
	.byte	W05
	.byte		N10   , En2
	.byte	W12
	.byte		N04   , Bn1
	.byte	W07
	.byte		N16
	.byte	W17
	.byte		N06   , Dn2
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N03   , Cs2
	.byte	W07
	.byte		N08   , Dn2
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N03   , Cs2
	.byte	W05
	.byte		N10   , Dn2
	.byte	W12
	.byte		N06   , An1
	.byte	W12
	.byte		TIE   , En1
	.byte	W12
	.byte	W90
	.byte		EOT   
	.byte	W06
	.byte		TIE   , Fs1
	.byte	W96
	.byte	W92
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		N07
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_time_diver_8_000
	.byte		FINE

@**************** Track 9 ****************@

mus_time_diver_9:
	.byte		KEYSH , mus_time_diver_key+0
	.byte		VOICE , 81
	.byte	W01
	.byte		VOL   , 40*mus_time_diver_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		TIE   , Fs2 , v040
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		TIE   , Cs5 , v032
	.byte	W96
	.byte	W92
	.byte		EOT   
	.byte	W01
	.byte		VOICE , 91
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W02
mus_time_diver_9_000:
	.byte		N10   , Fs3 , v092
	.byte	W12
	.byte		N04   , Fs3 , v072
	.byte	W06
	.byte		N03   , Fs3 , v060
	.byte	W06
	.byte		N10   , Fs3 , v080
	.byte	W12
	.byte		        Fs3 , v092
	.byte	W12
	.byte		N04   , Fs3 , v072
	.byte	W06
	.byte		N03   , Fs3 , v060
	.byte	W06
	.byte		N10   , Fs3 , v080
	.byte	W12
	.byte		        Fs3 , v092
	.byte	W12
	.byte		        Fs3 , v080
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_time_diver_9_000
mus_time_diver_9_001:
	.byte		N10   , En3 , v092
	.byte	W12
	.byte		N04   , En3 , v072
	.byte	W06
	.byte		N03   , En3 , v060
	.byte	W06
	.byte		N10   , En3 , v080
	.byte	W12
	.byte		        En3 , v092
	.byte	W12
	.byte		N04   , En3 , v072
	.byte	W06
	.byte		N03   , En3 , v060
	.byte	W06
	.byte		N10   , En3 , v080
	.byte	W12
	.byte		        En3 , v092
	.byte	W12
	.byte		        En3 , v080
	.byte	W12
	.byte		PEND
	.byte		        En3 , v092
	.byte	W06
	.byte		VOICE , 82
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		N02   , En4 , v060
	.byte	W02
	.byte		        Fn4
	.byte	W02
	.byte		        Gn4
	.byte	W02
	.byte		        An4
	.byte	W02
	.byte		        Bn4
	.byte	W02
	.byte		        Cn5
	.byte	W02
	.byte		N08   , Cs5 , v096
	.byte	W09
	.byte		VOICE , 91
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		N10   , En3 , v092
	.byte	W12
	.byte		N04   , En3 , v072
	.byte	W06
	.byte		N03   , En3 , v060
	.byte	W06
	.byte		N09   , An2 , v080
	.byte	W13
	.byte		N10   , Cs3
	.byte	W12
	.byte		        Cs3 , v072
	.byte	W11
	.byte	PATT
	 .word	mus_time_diver_9_000
	.byte	PATT
	 .word	mus_time_diver_9_001
	.byte		N10   , Fs3 , v092
	.byte	W12
	.byte		N04   , Fs3 , v072
	.byte	W06
	.byte		N03   , Bn4 , v068
	.byte	W03
	.byte		        Cn5 , v080
	.byte	W03
	.byte		N06   , Cs5 , v108
	.byte	W07
	.byte		N04   , Bn4
	.byte	W12
	.byte		        Fs4
	.byte	W12
	.byte		N05   , En4
	.byte	W05
	.byte		N02   , En4 , v068
	.byte	W02
	.byte		        Fn4
	.byte	W02
	.byte		        Gn4
	.byte	W02
	.byte		        An4
	.byte	W02
	.byte		        Bn4
	.byte	W02
	.byte		        Cn5
	.byte	W02
	.byte		N15   , Cs5 , v108
	.byte	W18
	.byte		VOICE , 91
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W04
	.byte		N10   , Gs2 , v048
	.byte	W01
	.byte	W11
	.byte		N04   , Gs2 , v028
	.byte	W08
	.byte		N03   , Gs2 , v016
	.byte	W04
	.byte		N10   , Gs2 , v036
	.byte	W12
	.byte		        Gs2 , v048
	.byte	W13
	.byte		N22   , An2 , v068
	.byte	W24
	.byte		        Gs2
	.byte	W24
	.byte	W01
	.byte		N44   , Cs3 , v052
	.byte	W44
	.byte	W03
	.byte		N01   , Cs2 , v040
	.byte	W12
	.byte		N03   , An2 , v060
	.byte	W11
	.byte		N01   , An1 , v040
	.byte	W08
	.byte		N10   , An2 , v060
	.byte	W17
	.byte		N23   , Fs2 , v056
	.byte	W24
	.byte		N32   , An2 , v060
	.byte	W36
	.byte		N03   , An2 , v048
	.byte	W06
	.byte		N01   , An2 , v036
	.byte	W06
	.byte		N03   , An2 , v060
	.byte	W06
	.byte		N01   , An2 , v036
	.byte	W06
	.byte		N02   , An2 , v048
	.byte	W07
	.byte		N22   , Fs2 , v036
	.byte	W05
	.byte	W30
	.byte	W01
	.byte		N15   , Fs2 , v040
	.byte	W17
	.byte		N01   , Cs2
	.byte	W12
	.byte		N03   , An2 , v060
	.byte	W12
	.byte		N01   , Fs2 , v040
	.byte	W07
	.byte		N10   , An2 , v060
	.byte	W17
	.byte		N68
	.byte	W72
	.byte	W01
	.byte		N09   , Cs3 , v068
	.byte	W12
	.byte		        Cs3 , v052
	.byte	W11
	.byte		N11   , Bn2
	.byte	W13
	.byte		N03   , Dn3 , v048
	.byte	W05
	.byte		N01   , Bn2 , v036
	.byte	W07
	.byte		N21   , Dn3 , v060
	.byte	W23
	.byte		N01   , Bn1 , v040
	.byte	W13
	.byte		N02   , Dn3 , v060
	.byte	W10
	.byte		N01   , Bn1 , v040
	.byte	W07
	.byte		N11   , Dn3 , v060
	.byte	W18
	.byte		N03   , Cs3
	.byte	W06
	.byte		N01   , Cs3 , v036
	.byte	W07
	.byte		N22   , En3 , v048
	.byte	W23
	.byte		N05   , Bn2 , v088
	.byte	W07
	.byte		N11   , Cs3 , v032
	.byte	W12
	.byte		N04   , Fs2 , v060
	.byte	W05
	.byte		N02   , Gs2 , v088
	.byte	W19
	.byte		N10   , Cs3 , v060
	.byte	W17
	.byte		N22   , An2 , v052
	.byte	W48
	.byte		N01   , Cs2 , v040
	.byte	W12
	.byte		N03   , Fs2 , v060
	.byte	W18
	.byte		N05   , An2
	.byte	W06
	.byte		VOICE , 82
	.byte		MOD   , 2
	.byte	W01
	.byte		PAN   , c_v+63
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N02   , An3 , v052
	.byte	W02
	.byte		        Bn3
	.byte	W02
	.byte		        Cn4
	.byte	W02
	.byte		        Dn4
	.byte	W02
	.byte		        En4
	.byte	W02
	.byte		N44   , Fn4 , v060
	.byte	W48
	.byte		N15
	.byte	W19
	.byte		N15
	.byte	W17
	.byte		N09
	.byte	W12
	.byte		        Fs4 , v068
	.byte	W09
	.byte		N02   , En4 , v048
	.byte	W02
	.byte		        Dn4
	.byte	W02
	.byte		        Cn4 , v040
	.byte	W02
	.byte		        Bn3
	.byte	W02
	.byte		        An3 , v036
	.byte	W02
	.byte		N03   , Gn3
	.byte	W05
	.byte		N06   , Cs4 , v072
	.byte	W07
	.byte		N03   , En4 , v060
	.byte	W12
	.byte		        Fs4
	.byte	W12
	.byte		        An4 , v072
	.byte	W12
	.byte		N11   , Fs4 , v060
	.byte	W11
	.byte		N02   , En4 , v040
	.byte	W02
	.byte		        Dn4
	.byte	W02
	.byte		        Cn4 , v036
	.byte	W02
	.byte		        Bn3
	.byte	W02
	.byte		        An3 , v032
	.byte	W02
	.byte		N03   , Gn3
	.byte	W07
	.byte		N01   , Fn4
	.byte	W01
	.byte		N12   , Fs4 , v060
	.byte	W12
	.byte		N06   , En4 , v072
	.byte	W07
	.byte		N03   , Fs4 , v060
	.byte	W12
	.byte		        Cs4 , v048
	.byte	W16
	.byte		N01   , Fn4 , v032
	.byte	W01
	.byte		N10   , Fs4 , v060
	.byte	W12
	.byte		N06   , En4 , v072
	.byte	W07
	.byte		N03   , Fs4 , v060
	.byte	W10
	.byte		N01   , Fn4 , v032
	.byte	W01
	.byte		N16   , Fs4 , v056
	.byte	W18
	.byte	W18
	.byte		N03   , Cs4 , v080
	.byte	W06
	.byte		N06   , Fs4 , v076
	.byte	W08
	.byte		N03   , Cs4 , v072
	.byte	W04
	.byte		N06   , An4 , v088
	.byte	W08
	.byte		N03   , En4 , v072
	.byte	W03
	.byte		N01   , Cn5 , v040
	.byte	W01
	.byte		N06   , Cs5 , v088
	.byte	W07
	.byte		N03   , Bn4 , v068
	.byte	W12
	.byte		        An4 , v072
	.byte	W12
	.byte		N11   , Fs4
	.byte	W11
	.byte		N02   , En4 , v048
	.byte	W02
	.byte		        Dn4
	.byte	W02
	.byte		        Cn4 , v040
	.byte	W02
	.byte		        Bn3
	.byte	W02
	.byte		        An3 , v036
	.byte	W02
	.byte		N03   , Gn3
	.byte	W08
	.byte		N15   , En4 , v060
	.byte	W24
	.byte		N09   , Fs4
	.byte	W12
	.byte		N03   , En4
	.byte	W05
	.byte		N02   , Gn4 , v040
	.byte	W02
	.byte		N04   , An4 , v068
	.byte	W12
	.byte		N04
	.byte	W12
	.byte		N03   , Cs4 , v060
	.byte	W05
	.byte		N09   , Fs4
	.byte	W09
	.byte		N02   , En4 , v040
	.byte	W02
	.byte		        Dn4
	.byte	W01
	.byte	W01
	.byte		        Cn4 , v036
	.byte	W02
	.byte		        Bn3
	.byte	W02
	.byte		        An3 , v032
	.byte	W02
	.byte		N03   , Gn3
	.byte	W17
	.byte		N06   , Bn3 , v072
	.byte	W07
	.byte		N03   , Cs4 , v060
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        Fs4 , v072
	.byte	W12
	.byte		N11   , Fs4 , v060
	.byte	W11
	.byte		N02   , En4 , v040
	.byte	W02
	.byte		        Dn4
	.byte	W02
	.byte		        Cn4 , v036
	.byte	W02
	.byte		        Bn3
	.byte	W02
	.byte		        An3 , v032
	.byte	W02
	.byte		N03   , Gn3
	.byte	W08
	.byte		N06   , Cs4 , v072
	.byte	W07
	.byte		N03   , Dn4 , v060
	.byte	W05
	.byte		N06   , En4
	.byte	W07
	.byte		N03   , Gs4
	.byte	W17
	.byte		N06   , En4 , v072
	.byte	W07
	.byte		N03   , Gs4 , v060
	.byte	W05
	.byte		N06   , Bn4
	.byte	W07
	.byte		N03   , Cs5
	.byte	W17
	.byte		N06   , En4 , v052
	.byte	W07
	.byte		N09   , Gs4 , v072
	.byte	W12
	.byte		N04
	.byte	W05
	.byte		N12   , Fs4 , v060
	.byte	W12
	.byte		N02   , En4 , v040
	.byte	W02
	.byte		        Dn4
	.byte	W02
	.byte		        Cn4 , v036
	.byte	W02
	.byte		        Bn3
	.byte	W02
	.byte		        An3 , v032
	.byte	W02
	.byte		        Gn3
	.byte	W02
	.byte		N06   , An3 , v072
	.byte	W07
	.byte		N03   , Cs4 , v060
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		        Fs4 , v072
	.byte	W12
	.byte		N12   , Fs4 , v060
	.byte	W19
	.byte		N02   , An3 , v052
	.byte	W02
	.byte		        Bn3
	.byte	W02
	.byte		        Cn4
	.byte	W02
	.byte		        Dn4
	.byte	W02
	.byte		        En4
	.byte	W02
	.byte		N92   , Fn4 , v060
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W36
	.byte		N02   , En4 , v052
	.byte	W02
	.byte		        Fn4
	.byte	W02
	.byte		        Gn4
	.byte	W02
	.byte		        An4
	.byte	W02
	.byte		        Bn4
	.byte	W02
	.byte		        Cn5
	.byte	W02
	.byte		N04   , Dn5 , v068
	.byte	W07
	.byte		        As4
	.byte	W05
	.byte		        Gn4
	.byte	W07
	.byte		        Fn4
	.byte	W12
	.byte		N04
	.byte	W11
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		N18   , Fn3 , v076
	.byte	W24
	.byte		        Gs3
	.byte	W24
	.byte		N04   , En3 , v080
	.byte	W12
	.byte		        Cs4 , v096
	.byte	W19
	.byte		        Dn4 , v080
	.byte	W05
	.byte		N11   , En4 , v088
	.byte	W12
	.byte	W24
	.byte		N12   , Fs4 , v072
	.byte	W72
	.byte	W24
	.byte		        En4
	.byte	W24
	.byte		N16   , Fs3
	.byte	W24
	.byte		N16
	.byte	W24
	.byte		N06   , Gs3 , v088
	.byte	W07
	.byte		N04   , An3 , v072
	.byte	W12
	.byte		        An3 , v080
	.byte	W12
	.byte		        An3 , v092
	.byte	W05
	.byte		        Dn4 , v072
	.byte	W12
	.byte		N12   , Fs3 , v080
	.byte	W48
	.byte	W12
	.byte		N05   , Gs3 , v076
	.byte	W12
	.byte		N06   , Fs3
	.byte	W07
	.byte		N04   , Gs3 , v068
	.byte	W12
	.byte		N08   , Gs3 , v076
	.byte	W12
	.byte		N06   , Cs4
	.byte	W05
	.byte		N05   , Ds4 , v068
	.byte	W12
	.byte		N06   , Fs4 , v076
	.byte	W07
	.byte		N10   , Gs4 , v068
	.byte	W17
	.byte	W90
	.byte		PAN   , c_v+63
	.byte	W06
	.byte		N56   , Fs4 , v064
	.byte	W60
	.byte		N03   , Fs4 , v068
	.byte	W12
	.byte		        En4
	.byte	W07
	.byte		N09   , Fs4
	.byte	W12
	.byte		N44
	.byte	W05
mus_time_diver_9_002:
	.byte	W48
	.byte		N15   , Fs4 , v068
	.byte	W19
	.byte		N15
	.byte	W17
	.byte		N09
	.byte	W12
	.byte		PEND
mus_time_diver_9_003:
	.byte		N11   , En4 , v068
	.byte	W12
	.byte		N06   , Dn4
	.byte	W07
	.byte		N05   , En4
	.byte	W12
	.byte		N48
	.byte	W52
	.byte	W01
	.byte		N02   , Cn4
	.byte	W02
	.byte		        Dn4
	.byte	W02
	.byte		        En4
	.byte	W02
	.byte		        Fn4
	.byte	W02
	.byte		        Gn4
	.byte	W02
	.byte		        An4
	.byte	W02
	.byte		PEND
mus_time_diver_9_004:
	.byte		N19   , Bn4 , v068
	.byte	W24
	.byte		        An4
	.byte	W24
	.byte		N13   , Gs4
	.byte	W19
	.byte		N24   , En4
	.byte	W28
	.byte	W01
	.byte		PEND
	.byte		N40   , Fs4
	.byte	W48
	.byte		        Gn4
	.byte	W48
	.byte		        Gs4
	.byte	W48
	.byte		        An4
	.byte	W48
	.byte		        Fs4
	.byte	W48
	.byte		N30
	.byte	W36
	.byte		N92   , Fn4
	.byte	W12
	.byte	W84
	.byte		N02   , An3
	.byte	W02
	.byte		        Bn3
	.byte	W02
	.byte		        Cn4
	.byte	W02
	.byte		        Dn4
	.byte	W02
	.byte		        En4
	.byte	W02
	.byte		        Fn4
	.byte	W02
	.byte		N56   , Fs4
	.byte	W60
	.byte		N03
	.byte	W12
	.byte		        En4
	.byte	W07
	.byte		N09   , Fs4
	.byte	W12
	.byte		N44
	.byte	W05
	.byte	PATT
	 .word	mus_time_diver_9_002
	.byte	PATT
	 .word	mus_time_diver_9_003
	.byte	PATT
	 .word	mus_time_diver_9_004
	.byte		N84   , Fs4 , v068
	.byte	W96
	.byte		        Gs4
	.byte	W96
	.byte		N54   , An4
	.byte	W60
	.byte		N12
	.byte	W24
	.byte		TIE   , Gs4 , v052
	.byte	W12
	.byte	W92
	.byte	W01
	.byte		EOT   
	.byte		VOICE , 81
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		TIE   , Fs2 , v040
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		TIE   , Cs5 , v032
	.byte	W96
	.byte	W90
	.byte		EOT   
	.byte	W03
	.byte		VOICE , 91
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W02
	.byte	GOTO
	 .word	mus_time_diver_9_000
	.byte		FINE

@**************** Track 10 ****************@

mus_time_diver_10:
	.byte		KEYSH , mus_time_diver_key+0
	.byte		VOICE , 85
	.byte	W01
	.byte		VOL   , 40*mus_time_diver_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		PAN   , c_v+63
	.byte		N03   , Fs2 , v100
	.byte	W06
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N09   , En2
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N09   , Fs2
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N09   , An2
	.byte	W12
	.byte		        Fs2
	.byte	W12
	.byte		N03   , Cs2
	.byte	W05
	.byte		        En2
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N09   , Cs2
	.byte	W12
	.byte		N03   , Fs2
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , Bn2
	.byte	W07
	.byte		        Cn3
	.byte	W05
mus_time_diver_10_000:
	.byte		N09   , Cs3 , v100
	.byte	W12
	.byte		N03   , Cn3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N09   , Bn2
	.byte	W12
	.byte		N03   , An2
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N09   , Fs2
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , En2
	.byte	W06
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N09   , Cs2
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , En2
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , Fs2
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , An2
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N09   , En2
	.byte	W12
	.byte		PEND
mus_time_diver_10_001:
	.byte		N03   , Fs2 , v100
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N09   , En2
	.byte	W12
	.byte		        Fs2
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N09   , An2
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N09   , Fs2
	.byte	W12
	.byte		N03   , Cs2
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , En2
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N09   , Cs2
	.byte	W12
	.byte		N03   , Fs2
	.byte	W05
	.byte		        Bn2
	.byte	W07
	.byte		        Cn3
	.byte	W05
	.byte		PEND
mus_time_diver_10_002:
	.byte		N09   , Cs3 , v100
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , Cn3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N09   , Bn2
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , An2
	.byte	W05
	.byte		N09   , Fs2
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , An2
	.byte	W07
	.byte		        Bn2
	.byte	W05
	.byte		        Cn3
	.byte	W06
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , Cs3
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Dn3
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N09   , En3
	.byte	W09
	.byte		VOICE , 96
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		PEND
mus_time_diver_10_003:
	.byte		N10   , An2 , v080
	.byte	W11
	.byte		N04   , An2 , v060
	.byte	W08
	.byte		N03   , An2 , v052
	.byte	W04
	.byte		N10   , An2 , v072
	.byte	W12
	.byte		        An2 , v080
	.byte	W12
	.byte		N04   , An2 , v060
	.byte	W08
	.byte		N03   , An2 , v052
	.byte	W04
	.byte		N10   , An2 , v072
	.byte	W12
	.byte		        An2 , v080
	.byte	W12
	.byte		        An2 , v072
	.byte	W12
	.byte		        An2 , v080
	.byte	W01
	.byte	W11
	.byte		N04   , An2 , v060
	.byte	W08
	.byte		N03   , An2 , v052
	.byte	W04
	.byte		N10   , An2 , v072
	.byte	W12
	.byte		        An2 , v080
	.byte	W12
	.byte		N04   , An2 , v060
	.byte	W08
	.byte		N03   , An2 , v052
	.byte	W04
	.byte		N10   , An2 , v072
	.byte	W12
	.byte		        An2 , v080
	.byte	W12
	.byte		        An2 , v072
	.byte	W12
	.byte		        Gs2 , v080
	.byte	W01
	.byte	W11
	.byte		N04   , Gs2 , v060
	.byte	W08
	.byte		N03   , Gs2 , v052
	.byte	W04
	.byte		N10   , Gs2 , v072
	.byte	W12
	.byte		        Gs2 , v080
	.byte	W12
	.byte		N04   , Gs2 , v060
	.byte	W08
	.byte		N03   , Gs2 , v052
	.byte	W04
	.byte		N10   , Gs2 , v072
	.byte	W12
	.byte		        Gs2 , v080
	.byte	W12
	.byte		        An2 , v072
	.byte	W12
	.byte		        An2 , v080
	.byte	W01
	.byte	W12
	.byte		N04   , En3 , v072
	.byte	W06
	.byte		N02   , En3 , v060
	.byte	W03
	.byte		VOICE , 87
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		N08   , Gs4 , v096
	.byte	W09
	.byte		VOICE , 96
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		N10   , An2 , v080
	.byte	W11
	.byte		N04   , An2 , v060
	.byte	W08
	.byte		N03   , An2 , v052
	.byte	W16
	.byte		N10   , En2 , v072
	.byte	W12
	.byte		        En2 , v060
	.byte	W12
	.byte		        An2 , v080
	.byte	W01
	.byte	W11
	.byte		N04   , An2 , v060
	.byte	W08
	.byte		N03   , An2 , v052
	.byte	W04
	.byte		N10   , An2 , v072
	.byte	W12
	.byte		        An2 , v080
	.byte	W12
	.byte		N04   , An2 , v060
	.byte	W08
	.byte		N03   , An2 , v052
	.byte	W04
	.byte		N10   , An2 , v072
	.byte	W12
	.byte		        An2 , v080
	.byte	W12
	.byte		        An2 , v072
	.byte	W13
	.byte		        Gs2 , v080
	.byte	W12
	.byte		N04   , Gs2 , v060
	.byte	W07
	.byte		N03   , Gs2 , v052
	.byte	W05
	.byte		N10   , An2 , v072
	.byte	W12
	.byte		        An2 , v080
	.byte	W12
	.byte		N04   , Gs2 , v060
	.byte	W07
	.byte		N03   , Gs2 , v052
	.byte	W05
	.byte		N10   , Gs2 , v072
	.byte	W12
	.byte		        Gs2 , v080
	.byte	W12
	.byte		        Gs2 , v072
	.byte	W11
	.byte		        An2 , v080
	.byte	W01
	.byte	W11
	.byte		N04   , An2 , v060
	.byte	W07
	.byte		N02   , Fs3
	.byte	W03
	.byte		VOICE , 87
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		N10   , An4 , v108
	.byte	W36
	.byte		N04   , Cs4 , v076
	.byte	W12
	.byte		N15   , An4 , v092
	.byte	W21
	.byte		VOICE , 85
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , Fs2
	.byte	W07
	.byte		N09   , En2
	.byte	W12
	.byte		        Fs2
	.byte	W12
	.byte		        An2
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N09   , Fs2
	.byte	W12
	.byte		N03   , Cs2
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , En2
	.byte	W07
	.byte		N09   , Cs2
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Fs2
	.byte	W05
	.byte		        Bn2
	.byte	W06
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , Cn3
	.byte	W05
mus_time_diver_10_004:
	.byte		N08   , Fs2 , v088
	.byte	W11
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , En3 , v100
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Fs2 , v088
	.byte	W04
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Fs3 , v100
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , En2 , v088
	.byte	W05
	.byte		N05   , Fs2
	.byte	W07
	.byte		N03   , Cs2
	.byte	W05
	.byte		N05   , Fs2
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , En3 , v100
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , Cs2 , v088
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Fs3 , v100
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , En2 , v088
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N05   , Fs2
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03
	.byte	W05
	.byte		PEND
mus_time_diver_10_005:
	.byte		N05   , Fs2 , v088
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , En3 , v100
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , Cs2 , v088
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Fs3 , v100
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , En2 , v088
	.byte	W05
	.byte		N05   , Fs2
	.byte	W07
	.byte		N03   , En2
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , An2
	.byte	W06
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , Fs2
	.byte	W05
	.byte		N05   , En2
	.byte	W07
	.byte		N03   , Cs2
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Fs2
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Cs3 , v100
	.byte	W05
	.byte		        En3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , En2 , v088
	.byte	W05
	.byte		PEND
mus_time_diver_10_006:
	.byte		N08   , Fs2 , v088
	.byte	W11
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , En3 , v100
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Fs2 , v088
	.byte	W04
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Fs3 , v100
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , En2 , v088
	.byte	W05
	.byte		N05   , Fs2
	.byte	W07
	.byte		N03   , Cs2
	.byte	W05
	.byte		N05   , Fs2
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , En3 , v100
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , Cs2 , v088
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Fs3 , v100
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , En2 , v088
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N05   , Fs2
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Cs2
	.byte	W05
	.byte		PEND
	.byte	PATT
	 .word	mus_time_diver_10_005
	.byte	PATT
	 .word	mus_time_diver_10_006
mus_time_diver_10_007:
	.byte		N05   , Fs2 , v088
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , En3 , v100
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , Cs2 , v088
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Fs3 , v100
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , En2 , v088
	.byte	W05
	.byte		N05   , Fs2
	.byte	W07
	.byte		N03   , En2
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , An2
	.byte	W06
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , Fs2
	.byte	W05
	.byte		N05   , En2
	.byte	W07
	.byte		N03   , Cs2
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Fs2
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Cs3 , v100
	.byte	W05
	.byte		        En3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N02   , En2 , v088
	.byte	W05
	.byte		PEND
	.byte		N08   , Fs2
	.byte	W11
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , En3 , v100
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Fs2 , v088
	.byte	W04
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Fs3 , v100
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , En2 , v088
	.byte	W05
	.byte		N05   , Fs2
	.byte	W07
	.byte		N03   , Cs2
	.byte	W05
	.byte		N05   , Fs2
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , En3 , v100
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , Cs2 , v088
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Fs3 , v100
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , En2 , v088
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N05   , Fs2
	.byte	W06
	.byte		VOICE , 87
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		MOD   , 0
	.byte		N44   , Bn3 , v052
	.byte	W12
	.byte		MOD   , 1
	.byte	W36
	.byte		        0
	.byte		N15
	.byte	W19
	.byte		N15
	.byte	W17
	.byte		N09
	.byte	W09
	.byte		VOICE , 85
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W01
	.byte	PATT
	 .word	mus_time_diver_10_004
	.byte	PATT
	 .word	mus_time_diver_10_005
	.byte	PATT
	 .word	mus_time_diver_10_006
	.byte	PATT
	 .word	mus_time_diver_10_005
	.byte	PATT
	 .word	mus_time_diver_10_006
	.byte	PATT
	 .word	mus_time_diver_10_007
	.byte		N08   , Fs2 , v088
	.byte	W11
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , En3 , v100
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Fs2 , v088
	.byte	W04
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Fs3 , v100
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , En2 , v088
	.byte	W05
	.byte		N05   , Fs2
	.byte	W07
	.byte		N03   , Cs2
	.byte	W05
	.byte		N05   , Fs2
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , En3 , v100
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , Cs2 , v088
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N01   , Fs3 , v100
	.byte	W02
	.byte		VOICE , 87
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		N03   , Fs3 , v072
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N06   , Gs3
	.byte	W07
	.byte		N04
	.byte	W12
	.byte		        Cs4
	.byte	W28
	.byte	W01
	.byte		N10   , Bn3 , v068
	.byte	W19
	.byte		N04   , Bn3 , v072
	.byte	W05
	.byte		PAN   , c_v-64
	.byte		N06   , Gs4 , v080
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte		N52   , Dn5 , v072
	.byte	W12
	.byte		MOD   , 2
	.byte	W60
	.byte		N06   , Gn4 , v080
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        Cs5
	.byte	W06
mus_time_diver_10_008:
	.byte		N52   , Dn5 , v072
	.byte	W72
	.byte		N06   , Gn4 , v080
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_time_diver_10_008
	.byte		N32   , Dn5 , v072
	.byte	W36
	.byte		        Cs5
	.byte	W36
	.byte		N06   , Bn4 , v080
	.byte	W06
	.byte		        Cs5
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		        En5
	.byte	W06
	.byte		TIE   , Fs5 , v072
	.byte	W96
	.byte	W10
	.byte		EOT   
	.byte	W14
	.byte		N23   , Gs5 , v068
	.byte	W24
	.byte		        An5
	.byte	W24
	.byte		        Bn5 , v056
	.byte	W24
	.byte		N92   , Dn5 , v072
	.byte	W96
	.byte		        Cs5
	.byte	W96
	.byte		MOD   , 0
	.byte	W92
	.byte	W01
	.byte		VOICE , 85
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N08   , Fs2 , v084
	.byte	W11
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , En3 , v092
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Fs2 , v076
	.byte	W04
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Fs3 , v092
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , En2 , v076
	.byte	W05
	.byte		N05   , Fs2 , v084
	.byte	W07
	.byte		N03   , Cs2
	.byte	W05
	.byte		N05   , Fs2
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , En3 , v092
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , Cs2 , v076
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Fs3 , v092
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , En2 , v084
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N05   , Fs2
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Cs2
	.byte	W05
	.byte		N05   , Fs2 , v076
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , En3 , v092
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , Cs2 , v076
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Fs3 , v092
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , En2 , v084
	.byte	W05
	.byte		N05   , Fs2
	.byte	W07
	.byte		N03   , En2 , v076
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , An2
	.byte	W06
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , Fs2
	.byte	W05
	.byte		N05   , En2 , v084
	.byte	W07
	.byte		N03   , Cs2
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Fs2
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Cs3 , v092
	.byte	W05
	.byte		        En3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , En2 , v076
	.byte	W05
	.byte		N08   , En2 , v084
	.byte	W11
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , En2 , v084
	.byte	W04
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , En3 , v092
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Dn2 , v076
	.byte	W05
	.byte		N05   , En2
	.byte	W07
	.byte		N03   , Bn1 , v084
	.byte	W05
	.byte		N05   , En2
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Dn3 , v092
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , Bn1 , v076
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , En3 , v092
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Dn2 , v076
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N05   , En2 , v084
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Bn1
	.byte	W05
	.byte		N05   , En3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Dn2 , v092
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , Bn1 , v076
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , En3 , v092
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , Dn2 , v076
	.byte	W05
	.byte		N05   , En2 , v084
	.byte	W07
	.byte		N03   , Dn2
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , Gn2
	.byte	W06
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , En2 , v076
	.byte	W05
	.byte		N05   , Dn2
	.byte	W07
	.byte		N03   , Bn1
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , En2 , v084
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Bn2 , v100
	.byte	W05
	.byte		        Dn3 , v092
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N02   , Dn2 , v076
	.byte	W02
	.byte		VOICE , 87
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		N40   , Dn4 , v060
	.byte	W12
	.byte		MOD   , 2
	.byte	W36
	.byte		N40   , Bn3
	.byte	W48
	.byte		        En4
	.byte	W48
	.byte		        Cs4
	.byte	W48
	.byte		        Dn4
	.byte	W48
	.byte		N30   , Bn3
	.byte	W36
	.byte		N23   , Cs4
	.byte	W12
	.byte	W11
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		MOD   , 0
	.byte		N06   , Gs3
	.byte	W12
	.byte		        Fs3
	.byte	W07
	.byte		N04   , Gs3
	.byte	W12
	.byte		N09   , Cn4
	.byte	W12
	.byte		N05   , Ds4
	.byte	W12
	.byte		N11   , Gs4
	.byte	W24
	.byte	W02
	.byte		VOICE , 85
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N08   , Fs2 , v076
	.byte	W11
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , En3 , v092
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Fs2 , v076
	.byte	W04
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Fs3 , v092
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , En2 , v076
	.byte	W05
	.byte		N05   , Fs2
	.byte	W07
	.byte		N03   , Cs2
	.byte	W05
	.byte		N05   , Fs2
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , En3 , v092
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , Cs2 , v076
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Fs3 , v092
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , En2 , v076
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N05   , Fs2
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Cs2
	.byte	W05
	.byte		N05   , Fs2
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , En3 , v092
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , Cs2 , v076
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Fs3 , v092
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , En2 , v076
	.byte	W05
	.byte		N05   , Fs2
	.byte	W07
	.byte		N03   , En2
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , An2
	.byte	W06
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , Fs2
	.byte	W05
	.byte		N05   , En2
	.byte	W07
	.byte		N03   , Cs2
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Fs2
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Cs3 , v092
	.byte	W05
	.byte		        En3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , En2 , v076
	.byte	W05
	.byte		N08
	.byte	W11
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Dn3 , v092
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , En2 , v076
	.byte	W04
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , En3 , v092
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Dn2 , v076
	.byte	W05
	.byte		N05   , En2
	.byte	W07
	.byte		N03   , Bn1
	.byte	W05
	.byte		N05   , En2
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Dn3 , v092
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , Bn1 , v076
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , En3 , v092
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Dn2 , v076
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N05   , En2
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Bn1
	.byte	W05
	.byte		N05   , En3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Dn2 , v092
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , Bn1 , v076
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , En3 , v092
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , Dn2 , v076
	.byte	W05
	.byte		N05   , En2
	.byte	W07
	.byte		N03   , Dn2
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N05   , Gn2
	.byte	W06
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , En2
	.byte	W05
	.byte		N05   , Dn2
	.byte	W07
	.byte		N03   , Bn1
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , En2
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N05   , Bn2 , v092
	.byte	W05
	.byte		        Dn3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N02   , Dn2 , v076
	.byte	W02
	.byte		VOICE , 87
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		N84   , Dn4 , v060
	.byte	W12
	.byte		MOD   , 2
	.byte	W84
	.byte		N84   , En4
	.byte	W96
	.byte		N54   , Fs4
	.byte	W60
	.byte		N12
	.byte	W24
	.byte		TIE   , En4 , v048
	.byte	W12
	.byte	W92
	.byte	W01
	.byte		EOT   
	.byte		VOICE , 85
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		MOD   , 0
	.byte		PAN   , c_v+63
	.byte		N03   , Fs2 , v100
	.byte	W06
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N09   , En2
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N09   , Fs2
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N09   , An2
	.byte	W12
	.byte		        Fs2
	.byte	W12
	.byte		N03   , Cs2
	.byte	W05
	.byte		        En2
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N09   , Cs2
	.byte	W12
	.byte		N03   , Fs2
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , Bn2
	.byte	W07
	.byte		        Cn3
	.byte	W05
	.byte	PATT
	 .word	mus_time_diver_10_000
	.byte	PATT
	 .word	mus_time_diver_10_001
	.byte	PATT
	 .word	mus_time_diver_10_002
	.byte	GOTO
	 .word	mus_time_diver_10_003
	.byte		FINE

@**************** Track 11 ****************@

mus_time_diver_11:
	.byte		KEYSH , mus_time_diver_key+0
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_time_diver_11_000:
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
	.byte	W18
	.byte		VOICE , 122
	.byte		VOL   , 80*mus_time_diver_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		N60   , Cn3 , v120
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		N60
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W90
	.byte		VOICE , 124
	.byte		VOL   , 66*mus_time_diver_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W05
mus_time_diver_11_001:
	.byte		N03   , Cs8 , v060
	.byte	W12
	.byte		        Cs8 , v052
	.byte	W12
	.byte		        Cs8 , v060
	.byte	W12
	.byte		        Cs8 , v052
	.byte	W12
	.byte		        Cs8 , v060
	.byte	W12
	.byte		        Cs8 , v052
	.byte	W12
	.byte		        Cs8 , v060
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_time_diver_11_001
	.byte	PATT
	 .word	mus_time_diver_11_001
	.byte		N03   , Cs8 , v060
	.byte	W12
	.byte		        Cs8 , v052
	.byte	W12
	.byte		        Cs8 , v060
	.byte	W12
	.byte		        Cs8 , v052
	.byte	W12
	.byte		        Cs8 , v060
	.byte	W12
	.byte		        Cs8 , v052
	.byte	W36
	.byte	PATT
	 .word	mus_time_diver_11_001
	.byte	PATT
	 .word	mus_time_diver_11_001
	.byte	PATT
	 .word	mus_time_diver_11_001
	.byte	PATT
	 .word	mus_time_diver_11_001
	.byte	PATT
	 .word	mus_time_diver_11_001
	.byte	PATT
	 .word	mus_time_diver_11_001
	.byte	PATT
	 .word	mus_time_diver_11_001
	.byte	PATT
	 .word	mus_time_diver_11_001
	.byte	PATT
	 .word	mus_time_diver_11_001
	.byte	PATT
	 .word	mus_time_diver_11_001
	.byte	PATT
	 .word	mus_time_diver_11_001
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_time_diver_11_000
	.byte		FINE

@******************************************************@
	.align	2

mus_time_diver:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_time_diver_pri	@ Priority
	.byte	mus_time_diver_rev	@ Reverb.

	.word	mus_time_diver_grp

	.word	mus_time_diver_1
	.word	mus_time_diver_2
	.word	mus_time_diver_3
	.word	mus_time_diver_4
	.word	mus_time_diver_5
	.word	mus_time_diver_6
	.word	mus_time_diver_8
	.word	mus_time_diver_9
	.word	mus_time_diver_10
	.word	mus_time_diver_11

	.end
