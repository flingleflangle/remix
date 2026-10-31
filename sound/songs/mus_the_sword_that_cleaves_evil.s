@ "The Sword that Cleaves Evil" from Super Robot Taisen: Original Generation (song 0x1D), ported from sound/import.
@ Track numbers match the original. Tracks 5 (a quiet guitar and strings part) and 12 (a quiet doubling layer) were cut to fit Emerald's 10 tracks and 5 sampled channels.
@ Track 11's wave bass plays the single-cycle saw (slot 104) with no octave shift. Emerald's own waves repeat twice and sound an octave high,
@ and shifting the track down an octave to make up for it put most of its notes below key 36, where the wave channel clamps
@ every note to the same pitch (MidiKeyToCgbFreq). The single-cycle waves sound an octave lower themselves.
@ Track 7 (a very low guitar part) uses the fingered bass (slot 33) instead of the guitar (slot 30), which sounds muddy that low.

	.include "MPlayDef.s"

	.equ	mus_the_sword_that_cleaves_evil_grp, voicegroup_srt_og
	.equ	mus_the_sword_that_cleaves_evil_pri, 0
	.equ	mus_the_sword_that_cleaves_evil_rev, reverb_set+48
	.equ	mus_the_sword_that_cleaves_evil_mvl, 127
	.equ	mus_the_sword_that_cleaves_evil_key, 0
	.equ	mus_the_sword_that_cleaves_evil_tbs, 1
	.equ	mus_the_sword_that_cleaves_evil_exg, 0
	.equ	mus_the_sword_that_cleaves_evil_cmp, 1

	.section .rodata
	.global	mus_the_sword_that_cleaves_evil
	.align	2

@**************** Track 1 ****************@

mus_the_sword_that_cleaves_evil_1:
	.byte		KEYSH , mus_the_sword_that_cleaves_evil_key+0
	.byte		TEMPO , 240*mus_the_sword_that_cleaves_evil_tbs/2
	.byte	W18
	.byte		TEMPO , 132*mus_the_sword_that_cleaves_evil_tbs/2
	.byte	W06
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W80
	.byte	W01
	.byte		VOICE , 28
	.byte		VOL   , 59*mus_the_sword_that_cleaves_evil_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		MOD   , 2
	.byte		N05   , Gn3 , v060
	.byte		N05   , As3 , v100
	.byte	W06
	.byte		        An3 , v060
	.byte		N05   , Cn4 , v100
	.byte	W06
	.byte		N28   , An3 , v060
	.byte		N28   , Dn4 , v100
	.byte	W36
	.byte		N05   , Fn3 , v060
	.byte		N05   , Cn4 , v100
	.byte	W06
	.byte		        An3 , v060
	.byte		N05   , Dn4 , v100
	.byte	W06
	.byte		BEND  , c_v-32
	.byte		N11   , Dn4 , v060
	.byte		N11   , Fn4 , v100
	.byte	W01
	.byte		BEND  , c_v-24
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-8
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N08   , Cn4 , v060
	.byte		N08   , En4 , v100
	.byte	W12
	.byte		        An3 , v060
	.byte		N08   , Cn4 , v100
	.byte	W12
	.byte		N32   , En3 , v060
	.byte		N68   , Gn3 , v100
	.byte	W12
	.byte	W24
	.byte		N23   , Dn3 , v060
	.byte	W24
	.byte		N11   , Cn3
	.byte	W12
	.byte		N11
	.byte		N11   , En3 , v100
	.byte	W12
	.byte		        En3 , v060
	.byte		N11   , Gn3 , v100
	.byte	W12
	.byte		N05   , Gn3 , v060
	.byte		N05   , Cn4 , v100
	.byte	W06
	.byte		        As3 , v060
	.byte		N05   , Dn4 , v100
	.byte	W06
	.byte		BEND  , c_v-32
	.byte		N17   , An3 , v060
	.byte		N17   , En4 , v100
	.byte	W01
	.byte		BEND  , c_v-24
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-8
	.byte	W02
	.byte		        c_v+0
	.byte	W12
	.byte		N40   , An3 , v060
	.byte		N56   , Dn4 , v100
	.byte	W66
	.byte		N23   , Cn4 , v060
	.byte		N23   , En4 , v100
	.byte	W04
	.byte		BEND  , c_v+32
	.byte	W04
	.byte		        c_v+0
	.byte	W04
	.byte	W12
	.byte		N10   , Gn3 , v060
	.byte		N10   , Dn4 , v100
	.byte	W12
	.byte		        As3 , v060
	.byte		N10   , En4 , v100
	.byte	W12
	.byte		BEND  , c_v-32
	.byte		N23   , En4 , v060
	.byte		N23   , Gn4 , v100
	.byte	W01
	.byte		BEND  , c_v-24
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-8
	.byte	W02
	.byte		        c_v+0
	.byte	W18
	.byte		N10   , An3 , v060
	.byte		N10   , En4 , v100
	.byte	W12
	.byte		        En3 , v060
	.byte		N10   , An3 , v100
	.byte	W12
	.byte		BEND  , c_v-32
	.byte		N10   , Cs4 , v060
	.byte		N10   , En4 , v100
	.byte	W01
	.byte		BEND  , c_v-24
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-8
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N76   , Dn4
	.byte	W96
	.byte	W84
	.byte	W03
	.byte		VOICE , 61
	.byte		VOL   , 75*mus_the_sword_that_cleaves_evil_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		N02   , Cn4 , v104
	.byte	W03
	.byte		        Cs4
	.byte	W03
mus_the_sword_that_cleaves_evil_1_000:
	.byte		N11   , Dn4 , v127
	.byte	W12
	.byte		N02   , Cn4 , v104
	.byte	W03
	.byte		        An3
	.byte	W03
	.byte		        Fn3 , v092
	.byte	W03
	.byte		        Dn3
	.byte	W03
	.byte		N11   , Dn4 , v060
	.byte	W12
	.byte		N02   , Cn4 , v052
	.byte	W03
	.byte		        An3
	.byte	W03
	.byte		        Fn3 , v040
	.byte	W03
	.byte		        Dn3
	.byte	W03
	.byte		N11   , Dn3 , v127
	.byte	W12
	.byte		N05   , En3
	.byte	W09
	.byte		N02   , Gn3 , v092
	.byte	W03
	.byte		N11   , An3 , v127
	.byte	W12
	.byte		N17   , Gn3
	.byte	W12
	.byte	W12
	.byte		N05   , Dn3
	.byte	W12
	.byte		N28
	.byte	W36
	.byte		N05
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        En3
	.byte	W12
	.byte		N17   , Fn3
	.byte	W24
	.byte		N05
	.byte	W09
	.byte		N02   , As3 , v092
	.byte	W03
	.byte		N17   , Cn4 , v127
	.byte	W24
	.byte		N11   , An3
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		N05   , Cn4
	.byte	W06
	.byte		N52   , An3
	.byte	W06
	.byte	W60
	.byte		N17   , En3
	.byte	W24
	.byte		N05   , Gn3
	.byte	W06
	.byte		N02   , Cn4 , v104
	.byte	W03
	.byte		        Cs4
	.byte	W03
	.byte		N11   , Dn4 , v127
	.byte	W12
	.byte		N02   , Cn4 , v104
	.byte	W03
	.byte		        An3
	.byte	W03
	.byte		        Fn3 , v092
	.byte	W03
	.byte		        Dn3
	.byte	W24
	.byte	W03
	.byte		N11   , Dn3 , v127
	.byte	W12
	.byte		N05   , En3
	.byte	W09
	.byte		N02   , Gn3 , v092
	.byte	W03
	.byte		N11   , An3 , v127
	.byte	W12
	.byte		N17   , Gn3
	.byte	W12
	.byte	W12
	.byte		N05   , As3
	.byte	W12
	.byte		N28
	.byte	W36
	.byte		N05
	.byte	W09
	.byte		N02   , As3 , v092
	.byte	W03
	.byte		N11   , Cn4 , v127
	.byte	W12
	.byte		N05   , As3
	.byte	W12
	.byte		        An3
	.byte	W06
	.byte		N04   , Cn4
	.byte	W06
	.byte		N17
	.byte	W21
	.byte		N02   , En4 , v092
	.byte	W03
	.byte		N17   , Fn4 , v127
	.byte	W24
	.byte		N05   , En4
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		N28   , Gn3
	.byte	W12
	.byte	W24
	.byte		N17
	.byte	W21
	.byte		N02   , Dn4 , v092
	.byte	W03
	.byte		N17   , Ds4 , v127
	.byte	W24
	.byte		        As3
	.byte	W21
	.byte		N02   , Cn4 , v092
	.byte	W03
	.byte		N76   , Dn4 , v127
	.byte	W96
	.byte	W36
	.byte		N17   , En3 , v124
	.byte	W18
	.byte		N02   , Gn3 , v092
	.byte	W03
	.byte		        Bn3
	.byte	W03
	.byte		N11   , Dn4 , v124
	.byte	W12
	.byte		N23   , An3
	.byte	W24
	.byte		N40   , As3
	.byte	W48
	.byte		N11
	.byte	W12
	.byte		N07   , Cn4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		N40   , An3
	.byte	W12
	.byte	W36
	.byte		N07
	.byte	W12
	.byte		N11   , Cn4
	.byte	W12
	.byte		N07   , An3
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        Cn3
	.byte	W12
	.byte		N17   , Fn3
	.byte	W24
	.byte		        Gn3
	.byte	W21
	.byte		N02   , Gn3 , v092
	.byte	W03
	.byte		N11   , An3 , v124
	.byte	W12
	.byte		N07   , Fn3
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		N40   , Gn3
	.byte	W12
	.byte	W36
	.byte		N16   , Ds3
	.byte	W18
	.byte		N02   , As3 , v092
	.byte	W03
	.byte		        Dn4
	.byte	W03
	.byte		N10   , Ds4 , v124
	.byte	W12
	.byte		N16   , As3
	.byte	W24
	.byte		        Cn4
	.byte	W24
	.byte		        As3
	.byte	W24
	.byte		N08   , Gs3 , v112
	.byte	W12
	.byte		N16   , As3 , v124
	.byte	W24
	.byte		N40   , Gn3
	.byte	W12
	.byte	W36
	.byte		N16
	.byte	W21
	.byte		N02   , Gn3 , v092
	.byte	W03
	.byte		N10   , An3 , v124
	.byte	W12
	.byte		        As3
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		N40   , Cn4
	.byte	W48
	.byte		N16   , Gn3
	.byte	W18
	.byte		N02   , An3 , v092
	.byte	W03
	.byte		        As3
	.byte	W03
	.byte		N08   , Cn4 , v124
	.byte	W12
	.byte		N56   , An3
	.byte	W12
	.byte	W80
	.byte	W01
	.byte		VOICE , 28
	.byte		VOL   , 59*mus_the_sword_that_cleaves_evil_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		N05   , Dn4 , v127
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		N23   , Dn4 , v116
	.byte	W36
	.byte		N05   , Cs4
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		N23   , Cs4
	.byte	W24
	.byte		N11   , Fs3
	.byte	W12
	.byte		BEND  , c_v-32
	.byte		N23   , Fs4
	.byte	W01
	.byte		BEND  , c_v-24
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-8
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte	W12
	.byte		N08   , Cs4 , v072
	.byte		N08   , En4 , v116
	.byte	W12
	.byte		N11   , Bn3 , v072
	.byte		N11   , Dn4 , v116
	.byte	W12
	.byte		N08   , Fs3 , v072
	.byte		N08   , Bn3 , v116
	.byte	W12
	.byte		N17   , Fs3 , v072
	.byte		N17   , Dn4 , v116
	.byte	W18
	.byte		N23   , Fs3 , v072
	.byte		N23   , Cs4 , v116
	.byte	W30
	.byte		N08   , Gn3 , v072
	.byte		N08   , Bn3 , v116
	.byte	W12
	.byte		N11   , An3 , v072
	.byte		N11   , Cs4 , v116
	.byte	W12
	.byte		N08   , Bn3 , v072
	.byte		N08   , Dn4 , v116
	.byte	W12
	.byte		N17   , An3 , v072
	.byte		N17   , Cs4 , v116
	.byte	W24
	.byte		BEND  , c_v-32
	.byte		N11   , Bn3 , v072
	.byte		N11   , Dn4 , v116
	.byte	W01
	.byte		BEND  , c_v-24
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-8
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N08   , An3 , v072
	.byte		N08   , Cs4 , v116
	.byte	W12
	.byte		        Fs3 , v072
	.byte		N08   , An3 , v116
	.byte	W12
	.byte		N21   , Cs3 , v072
	.byte		N21   , Fs3 , v116
	.byte	W24
	.byte		BEND  , c_v-32
	.byte		N23   , An3 , v072
	.byte		N23   , Dn4 , v116
	.byte	W01
	.byte		BEND  , c_v-24
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-8
	.byte	W02
	.byte		        c_v+0
	.byte	W18
	.byte		N23   , As3 , v072
	.byte		N23   , Cs4 , v116
	.byte	W36
	.byte		N05   , As3 , v072
	.byte		N05   , Dn4 , v116
	.byte	W06
	.byte		        An3 , v072
	.byte		N05   , Cs4 , v116
	.byte	W06
	.byte		N23   , Bn3 , v072
	.byte		N23   , Dn4 , v116
	.byte	W36
	.byte		N05   , An3 , v072
	.byte		N05   , Cs4 , v116
	.byte	W06
	.byte		        Gn3 , v072
	.byte		N05   , Bn3 , v116
	.byte	W06
	.byte		N17   , An3 , v072
	.byte		N17   , Cs4 , v116
	.byte	W24
	.byte		N11   , An3 , v072
	.byte		N11   , Cs4 , v116
	.byte	W12
	.byte		BEND  , c_v-32
	.byte		N20   , Dn4 , v072
	.byte		N20   , Fs4 , v116
	.byte	W01
	.byte		BEND  , c_v-24
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-8
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte	W12
	.byte		N06   , Dn4 , v072
	.byte		N06   , Fs4 , v116
	.byte	W12
	.byte		BEND  , c_v-32
	.byte		N11   , Fs4 , v072
	.byte		N11   , An4 , v116
	.byte	W01
	.byte		BEND  , c_v-24
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-8
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N09   , Dn4 , v072
	.byte		N09   , Fs4 , v116
	.byte	W12
	.byte		N17   , Dn4 , v072
	.byte		N17   , Fs4 , v116
	.byte	W18
	.byte		        Cs4 , v072
	.byte		N17   , En4 , v116
	.byte	W18
	.byte		N11   , An3 , v072
	.byte		N11   , Cs4 , v116
	.byte	W12
	.byte		N44   , Bn3 , v072
	.byte		N92   , Dn4 , v116
	.byte	W96
	.byte	W36
	.byte		N06   , An3 , v072
	.byte		N06   , Dn4 , v116
	.byte	W12
	.byte		BEND  , c_v-32
	.byte		N11   , Dn4 , v072
	.byte		N11   , Fs4 , v116
	.byte	W01
	.byte		BEND  , c_v-24
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-8
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N06   , Cs4 , v072
	.byte		N06   , En4 , v116
	.byte	W12
	.byte		        En4 , v072
	.byte		N06   , An4 , v116
	.byte	W12
	.byte		BEND  , c_v-32
	.byte		N32   , En4 , v072
	.byte		N90   , Bn4 , v116
	.byte	W01
	.byte		BEND  , c_v-24
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-8
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		VOICE , 61
	.byte		VOL   , 75*mus_the_sword_that_cleaves_evil_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		N02   , Cn4 , v100
	.byte	W03
	.byte		        Cs4
	.byte	W03
	.byte	GOTO
	 .word	mus_the_sword_that_cleaves_evil_1_000
	.byte		FINE

@**************** Track 2 ****************@

mus_the_sword_that_cleaves_evil_2:
	.byte		KEYSH , mus_the_sword_that_cleaves_evil_key+0
	.byte		VOICE , 58
	.byte	W01
	.byte		VOL   , 64*mus_the_sword_that_cleaves_evil_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		N04   , Dn4 , v092
	.byte	W12
	.byte		        Cn4
	.byte	W06
	.byte		        Dn4 , v040
	.byte	W06
	.byte		        An4 , v092
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W06
	.byte		        Dn4 , v092
	.byte	W06
	.byte		        Cn4
	.byte		N04   , An4 , v040
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        An3 , v092
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		        Fn4 , v092
	.byte	W06
	.byte		        As3 , v040
	.byte	W06
	.byte		        Cn4 , v092
	.byte	W06
	.byte		        Fn4 , v040
	.byte	W06
	.byte		        Dn4 , v096
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W06
	.byte		        Cn4 , v096
	.byte	W06
	.byte		        Dn4 , v040
	.byte	W06
	.byte		        An4 , v096
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W06
	.byte		        Dn4 , v096
	.byte	W06
	.byte		        Cn4
	.byte		N04   , An4 , v040
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        An3 , v096
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		        Fn4 , v096
	.byte	W06
	.byte		        As3 , v040
	.byte	W06
	.byte		        Cn4 , v096
	.byte	W06
	.byte		        Fn4 , v040
	.byte	W06
	.byte		        Dn4 , v108
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W06
	.byte		        Cn4 , v108
	.byte	W06
	.byte		        Dn4 , v040
	.byte	W06
	.byte		        An4 , v108
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W06
	.byte		        Dn4 , v108
	.byte	W06
	.byte		        Cn4
	.byte		N04   , An4 , v040
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        An3 , v108
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		        Fn4 , v108
	.byte	W06
	.byte		        As3 , v040
	.byte	W06
	.byte		        Cn4 , v108
	.byte	W06
	.byte		        Fn4 , v040
	.byte	W06
	.byte		        Dn4 , v116
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W06
	.byte		        Cn4 , v116
	.byte	W06
	.byte		        Dn4 , v040
	.byte	W06
	.byte		        An4 , v116
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W06
	.byte		        Dn4 , v116
	.byte	W06
	.byte		        Cn4
	.byte		N04   , An4 , v040
	.byte	W54
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N10   , Dn4 , v108
	.byte	W96
	.byte	W96
mus_the_sword_that_cleaves_evil_2_000:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W21
	.byte		VOICE , 56
	.byte		VOL   , 73*mus_the_sword_that_cleaves_evil_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		N18   , Dn4 , v120
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		N17
	.byte	W12
	.byte	W06
	.byte		N05   , Dn4 , v036
	.byte	W06
	.byte		N11   , Dn4 , v120
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Fs4
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N17   , Gn4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		N22   , Dn4
	.byte	W12
	.byte	W12
	.byte		N10   , Cn4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		N22   , Ds4
	.byte	W24
	.byte		        Fn4
	.byte	W24
	.byte		        Gn4
	.byte	W48
	.byte		N23   , Cs4 , v112
	.byte	W36
	.byte		        Dn4
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W12
	.byte		N16   , Gn4 , v127
	.byte	W18
	.byte		        Dn4
	.byte	W18
	.byte		        Bn3
	.byte	W18
	.byte		        Gn4
	.byte	W18
	.byte		N10   , Bn4
	.byte	W12
	.byte		N23   , An4
	.byte	W96
	.byte	W84
	.byte		N17   , En4 , v120
	.byte	W12
	.byte	W06
	.byte		N05   , En4 , v036
	.byte	W06
	.byte		N11   , En4 , v120
	.byte	W12
	.byte		        Fs4
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Gn4
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Gs4
	.byte	W12
	.byte		N17   , An4
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	mus_the_sword_that_cleaves_evil_2_000
	.byte		FINE

@**************** Track 3 ****************@

mus_the_sword_that_cleaves_evil_3:
	.byte		KEYSH , mus_the_sword_that_cleaves_evil_key+0
	.byte		VOICE , 119
	.byte	W01
	.byte		VOL   , 70*mus_the_sword_that_cleaves_evil_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
mus_the_sword_that_cleaves_evil_3_000:
	.byte	W72
	.byte		N10   , Bn4 , v127
	.byte	W12
	.byte		        Bn0
	.byte	W12
	.byte		PEND
	.byte		N10
	.byte	W72
	.byte		N01   , Dn1 , v108
	.byte	W01
	.byte		N10
	.byte	W23
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_3_000
	.byte		N11   , Bn0 , v127
	.byte	W24
	.byte		N11
	.byte	W24
	.byte		N11
	.byte	W12
	.byte		N02   , Dn1 , v056
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W03
	.byte		        Dn1 , v076
	.byte	W03
	.byte		        Dn1 , v088
	.byte	W03
	.byte		N11   , Dn1 , v108
	.byte	W12
	.byte		N05   , An1 , v120
	.byte	W06
	.byte		        Fn1
	.byte	W06
mus_the_sword_that_cleaves_evil_3_001:
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N05   , Bn0 , v127
	.byte	W06
	.byte		N11   , Dn1 , v060
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W12
	.byte		PEND
mus_the_sword_that_cleaves_evil_3_002:
	.byte	W06
	.byte		N05   , Dn1 , v060
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N05   , Bn0 , v127
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N17   , Dn1 , v108
	.byte	W18
	.byte		N05   , Dn1 , v060
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_3_001
	.byte	W06
	.byte		N05   , Dn1 , v060
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        An1 , v120
	.byte	W12
	.byte		N05   , Dn1 , v108
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11   , Fn1 , v120
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N05   , Bn0 , v127
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Bn0 , v127
	.byte	W06
	.byte		N11   , Dn1 , v108
	.byte	W12
	.byte		N05   , Bn0 , v127
	.byte	W06
	.byte		N11   , Dn1 , v060
	.byte	W06
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N05   , Bn0 , v127
	.byte	W12
	.byte		N11   , Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W12
	.byte		N05   , Dn1 , v108
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11   , Fn1 , v120
	.byte	W12
mus_the_sword_that_cleaves_evil_3_003:
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_3_001
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_3_002
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_3_001
	.byte	W06
	.byte		N05   , Dn1 , v060
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N05   , Bn0 , v127
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Bn0 , v127
	.byte	W06
	.byte		        Dn1 , v108
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_3_001
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_3_002
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_3_001
	.byte		N11   , Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W12
	.byte		N05   , Dn1 , v108
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Fn1 , v120
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W24
	.byte		N11
	.byte	W24
	.byte		N11
	.byte	W18
	.byte		N05
	.byte	W06
	.byte		N11   , Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W12
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        An1 , v120
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Fn1 , v120
	.byte	W12
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_3_001
mus_the_sword_that_cleaves_evil_3_004:
	.byte	W12
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N05   , Bn0 , v127
	.byte	W06
	.byte		N11   , Dn1 , v060
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		N23   , Dn1 , v108
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_3_001
	.byte	W12
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W24
	.byte		N11
	.byte	W12
	.byte		N05   , Dn1 , v108
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11   , Fn1 , v120
	.byte	W12
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_3_001
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_3_004
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_3_001
	.byte	W12
	.byte		N05   , Dn1 , v108
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        An1 , v120
	.byte	W06
	.byte		        Fn1
	.byte	W06
	.byte		N11   , Dn1 , v108
	.byte	W12
	.byte		N05   , Bn0 , v127
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Dn1 , v108
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        An1 , v120
	.byte	W06
	.byte		        Fn1
	.byte	W06
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_3_001
	.byte	W12
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N05   , Bn0 , v127
	.byte	W06
	.byte		N11   , Dn1 , v060
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		N17   , Dn1 , v108
	.byte	W18
	.byte		N05   , Dn1 , v060
	.byte	W06
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_3_001
	.byte	W12
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W12
	.byte		N05   , Dn1 , v108
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11   , Fn1 , v120
	.byte	W12
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_3_001
	.byte	W12
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N05   , Bn0 , v127
	.byte	W06
	.byte		N11   , Dn1 , v060
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N05   , Bn0 , v127
	.byte	W06
	.byte		N11   , Cn2 , v120
	.byte	W12
	.byte		N05   , Bn0 , v127
	.byte	W06
	.byte		N11   , Dn1 , v108
	.byte	W18
	.byte		        An1 , v120
	.byte	W12
	.byte		N11
	.byte	W06
	.byte		        Fn1
	.byte	W12
	.byte		N05   , Cn2
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        An1
	.byte	W06
	.byte		        Fn1
	.byte	W06
	.byte		N11   , Dn1 , v108
	.byte	W36
	.byte		N05   , Bn0 , v127
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11   , Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W12
	.byte	W24
	.byte		N11
	.byte	W24
	.byte		N11
	.byte	W18
	.byte		N05
	.byte	W06
	.byte		N11   , Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W12
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N05   , Dn1 , v108
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		        Dn1 , v108
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11   , An1 , v120
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W12
	.byte	W06
	.byte		N05   , Dn1 , v060
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		N05   , Dn1 , v060
	.byte	W06
	.byte		        Bn0 , v127
	.byte	W06
	.byte		N11   , Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W12
	.byte	W06
	.byte		N05   , Dn1 , v060
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		        Bn0 , v127
	.byte	W12
	.byte		N05   , Dn1 , v108
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11   , Fn1 , v120
	.byte	W12
	.byte	GOTO
	 .word	mus_the_sword_that_cleaves_evil_3_003
	.byte		FINE

@**************** Track 4 ****************@

mus_the_sword_that_cleaves_evil_4:
	.byte		KEYSH , mus_the_sword_that_cleaves_evil_key+0
	.byte	W24
	.byte	W44
	.byte	W01
	.byte		VOICE , 53
	.byte		VOL   , 70*mus_the_sword_that_cleaves_evil_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		N16   , Cn3 , v120
	.byte	W18
	.byte		        Cn3 , v040
	.byte	W18
	.byte		N10   , Cn3 , v020
	.byte	W12
mus_the_sword_that_cleaves_evil_4_000:
	.byte	W48
	.byte		N16   , Cn3 , v120
	.byte	W18
	.byte		        Cn3 , v040
	.byte	W18
	.byte		N10   , Cn3 , v020
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_4_000
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte	W03
	.byte		VOICE , 12
	.byte		VOL   , 32*mus_the_sword_that_cleaves_evil_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		N05   , An3 , v100
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
mus_the_sword_that_cleaves_evil_4_001:
	.byte		N05   , Dn4 , v040
	.byte	W06
	.byte		        Dn4 , v100
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Dn4 , v040
	.byte	W06
	.byte		        An3 , v100
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		        Cn4 , v100
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W06
	.byte		        Cs4 , v100
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		        Cs4 , v040
	.byte	W06
	.byte		PEND
mus_the_sword_that_cleaves_evil_4_002:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W21
	.byte		VOICE , 48
	.byte		VOL   , 38*mus_the_sword_that_cleaves_evil_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		N23   , An4 , v080
	.byte	W24
	.byte		        Gs4
	.byte	W24
	.byte		        Gn4
	.byte	W24
	.byte		        Fn4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		N32   , Fs4 , v076
	.byte	W12
	.byte	W24
	.byte		N22   , Gn4
	.byte	W24
	.byte		        An4
	.byte	W24
	.byte		        Fs4
	.byte	W24
	.byte		        Fn4
	.byte	W84
	.byte		        Gn4
	.byte	W12
	.byte	W12
	.byte		N10   , An4
	.byte	W12
	.byte		        As4
	.byte	W12
	.byte		N22   , Ds4
	.byte	W24
	.byte		N10   , As3
	.byte	W12
	.byte		        Gn4
	.byte	W12
	.byte		        As4
	.byte	W12
	.byte		N22   , Cn5
	.byte	W84
	.byte		N32   , Gn4
	.byte	W12
	.byte	W24
	.byte		N22   , An4
	.byte	W24
	.byte		        As4
	.byte	W24
	.byte		        Gn4
	.byte	W24
	.byte		        Gn3 , v088
	.byte	W24
	.byte		N05   , En4 , v096
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		        Cn5
	.byte	W18
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
	.byte		VOICE , 12
	.byte		VOL   , 32*mus_the_sword_that_cleaves_evil_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		N05   , An3 , v100
	.byte	W12
	.byte		        An3 , v040
	.byte	W06
	.byte		        Dn4 , v100
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Dn4 , v040
	.byte	W06
	.byte		        An3 , v100
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		        Cn4 , v100
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W06
	.byte		        An3 , v100
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_4_001
	.byte	GOTO
	 .word	mus_the_sword_that_cleaves_evil_4_002
	.byte		FINE

@**************** Track 6 ****************@

mus_the_sword_that_cleaves_evil_6:
	.byte		KEYSH , mus_the_sword_that_cleaves_evil_key+0
	.byte		VOICE , 47
	.byte	W01
	.byte		VOL   , 75*mus_the_sword_that_cleaves_evil_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W16
	.byte		N02   , Dn1 , v127
	.byte	W03
	.byte		N02
	.byte	W03
mus_the_sword_that_cleaves_evil_6_000:
	.byte		N23   , Dn1 , v127
	.byte	W24
	.byte		        Dn1 , v120
	.byte	W72
	.byte		PEND
mus_the_sword_that_cleaves_evil_6_001:
	.byte	W84
	.byte		N05   , An1 , v127
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_6_000
	.byte	W48
	.byte		N05   , An1 , v127
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte	W96
	.byte	W96
	.byte	W60
	.byte		N11
	.byte	W12
	.byte		        Dn1
	.byte	W24
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_6_001
mus_the_sword_that_cleaves_evil_6_002:
	.byte		N05   , Dn2 , v127
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte		N05   , An1
	.byte	W06
	.byte		N11   , Cs2
	.byte	W12
	.byte		N05   , An1
	.byte	W06
	.byte		N17   , Dn2
	.byte	W12
	.byte		PEND
mus_the_sword_that_cleaves_evil_6_003:
	.byte	W06
	.byte		N05   , Dn2 , v127
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		        Gs1
	.byte	W12
	.byte		PEND
mus_the_sword_that_cleaves_evil_6_004:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W60
	.byte		N11   , An1 , v127
	.byte	W12
	.byte		        En2
	.byte	W12
	.byte		N05   , An1
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N19   , Dn2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_6_002
	.byte	W06
	.byte		N05   , Dn2 , v127
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn2
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		        Dn2
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W36
	.byte		N05   , Dn2
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11   , Ds2
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		        Fn2
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		N17   , En2
	.byte	W12
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn2
	.byte	W12
	.byte		N05   , Bn1
	.byte	W06
	.byte		N11   , Ds2
	.byte	W12
	.byte		N05   , Bn1
	.byte	W06
	.byte		N17   , En2
	.byte	W12
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        En2
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		        En2
	.byte	W12
	.byte		N17   , An1
	.byte	W12
	.byte	W06
	.byte		N05   , Dn2
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte		N05   , An1
	.byte	W06
	.byte		N11   , Cs2
	.byte	W12
	.byte		N05   , An1
	.byte	W06
	.byte		N17   , Dn2
	.byte	W12
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_6_003
	.byte	GOTO
	 .word	mus_the_sword_that_cleaves_evil_6_004
	.byte		FINE

@**************** Track 7 ****************@

mus_the_sword_that_cleaves_evil_7:
	.byte		KEYSH , mus_the_sword_that_cleaves_evil_key+0
	.byte		VOICE , 33
	.byte	W01
	.byte		VOL   , 44*mus_the_sword_that_cleaves_evil_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		N13   , Dn2 , v108
	.byte	W16
	.byte		        An1
	.byte	W16
	.byte		        As1
	.byte	W16
	.byte		N60   , Dn1
	.byte	W48
	.byte	W16
	.byte		N13   , An1
	.byte	W16
	.byte		        Dn1
	.byte	W16
	.byte		        Cn1
	.byte	W16
	.byte		        Gn1
	.byte	W16
	.byte		        Cn2
	.byte	W16
	.byte		        Dn2
	.byte	W16
	.byte		        An1
	.byte	W16
	.byte		        As1
	.byte	W16
	.byte		        Dn1 , v112
	.byte	W16
	.byte		        En1
	.byte	W16
	.byte		        Fn1
	.byte	W16
	.byte		        Gn1
	.byte	W16
	.byte		        An1
	.byte	W16
	.byte		        As1
	.byte	W16
	.byte		        Cn2
	.byte	W16
	.byte		        An1
	.byte	W32
	.byte		N08   , Dn2 , v120
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		N20   , Cn1
	.byte	W12
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		N20   , En1
	.byte	W12
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		N08
	.byte	W12
	.byte	W12
	.byte		N06   , Dn1
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10   , Cs2
	.byte	W12
	.byte		N04   , An1
	.byte	W06
	.byte		N16   , Dn2
	.byte	W12
mus_the_sword_that_cleaves_evil_7_000:
	.byte	W06
	.byte		N04   , Dn2 , v120
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PEND
mus_the_sword_that_cleaves_evil_7_001:
	.byte		N56   , Dn1 , v120
	.byte	W60
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N68   , Gn1
	.byte	W12
	.byte		PEND
mus_the_sword_that_cleaves_evil_7_002:
	.byte	W60
	.byte		N04   , Gn1 , v120
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		PEND
	.byte		N56   , Fn1
	.byte	W60
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N56   , An1
	.byte	W12
	.byte	W48
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W42
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_7_001
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_7_002
mus_the_sword_that_cleaves_evil_7_003:
	.byte		N56   , Fn1 , v120
	.byte	W60
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N22   , En1
	.byte	W12
	.byte		PEND
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N22   , Ds1
	.byte	W24
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N22
	.byte	W24
	.byte		N04   , Dn1
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10   , Cs2
	.byte	W12
	.byte		N04   , An1
	.byte	W06
	.byte		N16   , Dn2
	.byte	W12
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W84
	.byte		N44   , Gn1
	.byte	W48
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N68   , Fs1
	.byte	W12
	.byte	W60
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_7_003
	.byte	W12
	.byte		N04   , En1 , v120
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N22   , Ds1
	.byte	W24
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N44   , Gs1
	.byte	W48
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N68   , Gn1
	.byte	W12
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_7_002
	.byte		N10   , Cn1 , v120
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N22   , Dn1
	.byte	W12
	.byte	W12
	.byte		N10   , Cn1
	.byte	W12
	.byte		        Dn1
	.byte	W24
	.byte		N22   , Ds1
	.byte	W24
	.byte		        Fn1
	.byte	W24
	.byte		N32   , Gn1
	.byte	W36
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N22   , An1
	.byte	W24
	.byte		N10
	.byte	W12
	.byte		N44   , Bn1
	.byte	W12
	.byte	W36
	.byte		N04   , Bn0
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N56   , En1
	.byte	W60
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N22   , Fs1
	.byte	W12
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N32   , Gn1
	.byte	W36
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N22   , Fs1
	.byte	W24
	.byte		N10
	.byte	W12
	.byte		N44   , Bn0
	.byte	W12
	.byte	W36
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10   , An1
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10   , Gn1
	.byte	W48
	.byte		N16   , Bn0
	.byte	W18
	.byte		        Gn1
	.byte	W18
	.byte		N10   , Bn0
	.byte	W12
	.byte		        An1
	.byte	W24
	.byte		N32   , An0
	.byte	W36
	.byte		N04   , An1
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W24
	.byte	W24
	.byte		N06   , Bn0
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10   , Ds1
	.byte	W12
	.byte		N04   , Bn0
	.byte	W06
	.byte		N16   , En1
	.byte	W12
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N10   , Gs1
	.byte	W12
	.byte		N18   , An1
	.byte	W12
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Dn2
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10   , Cs2
	.byte	W12
	.byte		N04   , An1
	.byte	W06
	.byte		N16   , Dn2
	.byte	W12
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_7_000
	.byte	GOTO
	 .word	mus_the_sword_that_cleaves_evil_7_001
	.byte		FINE

@**************** Track 8 ****************@

mus_the_sword_that_cleaves_evil_8:
	.byte		KEYSH , mus_the_sword_that_cleaves_evil_key+0
	.byte		VOICE , 16
	.byte	W01
	.byte		VOL   , 59*mus_the_sword_that_cleaves_evil_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W21
	.byte		VOICE , 124
	.byte	W01
mus_the_sword_that_cleaves_evil_8_000:
	.byte		N02   , Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W72
	.byte		PEND
	.byte		N02
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W48
	.byte		N02
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_8_000
	.byte		N02   , Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W12
	.byte		        Cn8 , v040
	.byte	W04
	.byte		        Cn8 , v020
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		        Cn8 , v060
	.byte	W12
	.byte		        Cn8 , v040
	.byte	W12
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W05
	.byte		VOICE , 122
	.byte	W01
mus_the_sword_that_cleaves_evil_8_001:
	.byte		N17   , Gn5 , v120
	.byte	W17
	.byte		VOICE , 124
	.byte	W01
	.byte		N02   , Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		PEND
mus_the_sword_that_cleaves_evil_8_002:
	.byte		N02   , Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		PEND
mus_the_sword_that_cleaves_evil_8_003:
	.byte		N02   , Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W05
	.byte		VOICE , 122
	.byte	W01
	.byte		N17   , Gn5 , v120
	.byte	W12
	.byte		PEND
	.byte	W05
	.byte		VOICE , 124
	.byte	W01
	.byte		N02   , Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W05
	.byte		VOICE , 122
	.byte	W01
	.byte		N17   , Gn5 , v120
	.byte	W17
	.byte		VOICE , 124
	.byte	W01
	.byte		N02   , Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W05
	.byte		VOICE , 122
	.byte	W01
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_8_001
mus_the_sword_that_cleaves_evil_8_004:
	.byte		N02   , Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W05
	.byte		VOICE , 122
	.byte	W01
	.byte		PEND
mus_the_sword_that_cleaves_evil_8_005:
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_8_001
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_8_002
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_8_002
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_8_002
	.byte		N02   , Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W05
	.byte		VOICE , 122
	.byte	W01
	.byte		N17   , Gn5 , v120
	.byte	W17
	.byte		VOICE , 124
	.byte	W01
	.byte		N02   , Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_8_002
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_8_002
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_8_004
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_8_001
	.byte		N02   , Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W05
	.byte		VOICE , 123
	.byte	W01
	.byte		N05   , Dn8 , v092
	.byte	W12
	.byte		        Dn8 , v072
	.byte	W11
	.byte		VOICE , 122
	.byte	W01
mus_the_sword_that_cleaves_evil_8_006:
	.byte		N17   , Gn5 , v120
	.byte	W17
	.byte		VOICE , 124
	.byte	W01
	.byte		N02   , Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W05
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Dn8 , v072
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		PEND
mus_the_sword_that_cleaves_evil_8_007:
	.byte		N02   , Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W05
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Dn8 , v072
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte		PEND
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_8_003
	.byte	W05
	.byte		VOICE , 124
	.byte	W01
	.byte		N02   , Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W05
	.byte		VOICE , 122
	.byte	W01
	.byte		N17   , Gn5 , v120
	.byte	W17
	.byte		VOICE , 124
	.byte	W01
	.byte		N02   , Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W05
	.byte		VOICE , 123
	.byte	W01
	.byte		N11   , Dn8 , v072
	.byte	W11
	.byte		VOICE , 122
	.byte	W01
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_8_006
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_8_007
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_8_003
	.byte	W05
	.byte		VOICE , 124
	.byte	W01
	.byte		N02   , Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W05
	.byte		VOICE , 122
	.byte	W01
mus_the_sword_that_cleaves_evil_8_008:
	.byte		N17   , Gn5 , v120
	.byte	W17
	.byte		VOICE , 124
	.byte	W01
	.byte		N02   , Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W05
	.byte		VOICE , 122
	.byte	W01
	.byte		N17   , Gn5 , v120
	.byte	W17
	.byte		VOICE , 124
	.byte	W01
	.byte		N02   , Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W05
	.byte		VOICE , 122
	.byte	W01
	.byte		N17   , Gn5 , v120
	.byte	W12
	.byte		PEND
mus_the_sword_that_cleaves_evil_8_009:
	.byte	W05
	.byte		VOICE , 124
	.byte	W01
	.byte		N02   , Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_8_007
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_8_004
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_8_008
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_8_009
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_8_007
	.byte		N02   , Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W05
	.byte		VOICE , 122
	.byte	W01
	.byte		N17   , Gn5 , v120
	.byte	W32
	.byte	W03
	.byte		VOICE , 124
	.byte	W01
	.byte		N02   , Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W05
	.byte		VOICE , 122
	.byte	W01
	.byte		N17   , Gn5 , v120
	.byte	W12
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_8_009
	.byte		N02   , Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W05
	.byte		VOICE , 123
	.byte	W01
	.byte		N05   , Dn8 , v092
	.byte	W11
	.byte		VOICE , 122
	.byte	W01
	.byte		N17   , Gn5 , v120
	.byte	W11
	.byte		VOICE , 124
	.byte	W01
	.byte	W06
	.byte		N02   , Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v060
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte		        Cn8 , v040
	.byte	W06
	.byte		        Cn8 , v020
	.byte	W06
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_8_002
	.byte	GOTO
	 .word	mus_the_sword_that_cleaves_evil_8_005
	.byte		FINE

@**************** Track 9 ****************@

mus_the_sword_that_cleaves_evil_9:
	.byte		KEYSH , mus_the_sword_that_cleaves_evil_key+0
	.byte		VOICE , 82
	.byte	W01
	.byte		VOL   , 35*mus_the_sword_that_cleaves_evil_mvl/mxv
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		MOD   , 2
	.byte		N92   , Dn3 , v080
	.byte	W96
	.byte		        En3
	.byte	W96
	.byte		        Fn3
	.byte	W96
	.byte		        Gn3
	.byte	W96
	.byte		N17   , Fn3
	.byte	W18
	.byte		N05   , Fn3 , v040
	.byte	W06
	.byte		N11   , Fn3 , v080
	.byte	W12
	.byte		N05   , Dn3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Fn3 , v040
	.byte	W06
	.byte		        Fn3 , v080
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		N05   , Dn3
	.byte	W06
	.byte		        Dn3 , v040
	.byte	W06
	.byte		N17   , Gn3 , v080
	.byte	W12
mus_the_sword_that_cleaves_evil_9_000:
	.byte	W06
	.byte		N05   , Gn3 , v040
	.byte	W06
	.byte		        Gn3 , v080
	.byte	W06
	.byte		        Gn3 , v040
	.byte	W06
	.byte		N11   , Gn3 , v080
	.byte	W12
	.byte		N05   , En3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        Gn3 , v040
	.byte	W06
	.byte		        Gn3 , v080
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		N05   , En3
	.byte	W06
	.byte		        En3 , v040
	.byte	W06
	.byte		N11   , Gn3 , v080
	.byte	W12
	.byte		PEND
	.byte		N17   , Fn3
	.byte	W18
	.byte		N05   , Fn3 , v040
	.byte	W06
	.byte		N11   , Fn3 , v080
	.byte	W12
	.byte		N05   , Dn3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Fn3 , v040
	.byte	W06
	.byte		        Fn3 , v080
	.byte	W06
	.byte		N11   , An3
	.byte	W12
	.byte		N05   , Dn3
	.byte	W06
	.byte		        Dn3 , v040
	.byte	W06
	.byte		N17   , Gn3 , v080
	.byte	W12
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_9_000
mus_the_sword_that_cleaves_evil_9_001:
	.byte		N04   , Dn4 , v127
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		        Dn4 , v040
	.byte	W06
	.byte		        An3 , v127
	.byte	W06
	.byte		        Dn4 , v040
	.byte	W06
	.byte		        An3 , v127
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		        Cn4 , v127
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		        Cn4 , v127
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W06
	.byte		        An3 , v127
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Cs4 , v040
	.byte	W06
	.byte		PEND
mus_the_sword_that_cleaves_evil_9_002:
	.byte		N04   , An3 , v040
	.byte	W06
	.byte		        Dn4 , v127
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		        Dn4 , v040
	.byte	W06
	.byte		        An3 , v127
	.byte	W06
	.byte		        Dn4 , v040
	.byte	W06
	.byte		        An3 , v127
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		        Cn4 , v127
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		        Cn4 , v127
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W06
	.byte		        Cs4 , v127
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W06
	.byte		        Cs4 , v127
	.byte	W06
	.byte		        Cs4 , v040
	.byte	W06
	.byte		PEND
mus_the_sword_that_cleaves_evil_9_003:
	.byte		N44   , Fn3 , v080
	.byte	W48
	.byte		N32   , An3
	.byte	W36
	.byte		N56   , Gn3
	.byte	W12
	.byte	W48
	.byte		N44   , Dn3
	.byte	W48
	.byte		        Fn3
	.byte	W48
	.byte		N32   , Cn4
	.byte	W36
	.byte		N56   , Dn4
	.byte	W12
	.byte	W48
	.byte		N44   , Cs4
	.byte	W48
	.byte		        Dn4
	.byte	W48
	.byte		N32   , An3
	.byte	W36
	.byte		N56   , Gn3
	.byte	W12
	.byte	W48
	.byte		N44   , As3
	.byte	W48
	.byte		        An3
	.byte	W48
	.byte		N32   , Cn4
	.byte	W36
	.byte		N44   , Gn3
	.byte	W12
	.byte	W36
	.byte		N32
	.byte	W36
	.byte		N03   , Ds3 , v100
	.byte	W04
	.byte		        Fn3
	.byte	W04
	.byte		        Gn3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        As3
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_9_001
	.byte		N04   , An3 , v040
	.byte	W06
	.byte		        Dn4 , v127
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		        Dn4 , v040
	.byte	W06
	.byte		        En4 , v127
	.byte	W06
	.byte		        Dn4 , v040
	.byte	W06
	.byte		        En4 , v127
	.byte	W06
	.byte		        En4 , v040
	.byte	W06
	.byte		        Fn4 , v127
	.byte	W06
	.byte		        En4 , v040
	.byte	W06
	.byte		        Fn4 , v127
	.byte	W06
	.byte		        Fn4 , v040
	.byte	W06
	.byte		        Fs4 , v127
	.byte	W06
	.byte		        Fn4 , v040
	.byte	W06
	.byte		        Fs4 , v127
	.byte	W06
	.byte		        Fs4 , v040
	.byte	W06
	.byte		N17   , As3 , v080
	.byte	W18
	.byte		N05   , As3 , v040
	.byte	W06
	.byte		N17   , As3 , v080
	.byte	W18
	.byte		N05   , As3 , v040
	.byte	W06
	.byte		N10   , As3 , v080
	.byte	W12
	.byte		N04   , Gn3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		N05   , Gn3 , v040
	.byte	W06
	.byte		N04   , Gn3 , v080
	.byte	W06
	.byte		N17   , Cn4
	.byte	W12
	.byte	W06
	.byte		N05   , Cn4 , v040
	.byte	W06
	.byte		        Cn4 , v080
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W06
	.byte		N17   , Cn4 , v080
	.byte	W18
	.byte		N05   , Cn4 , v040
	.byte	W06
	.byte		N17   , Fs3 , v080
	.byte	W18
	.byte		N05   , Fs3 , v040
	.byte	W06
	.byte		N17   , An3 , v080
	.byte	W18
	.byte		N05   , An3 , v040
	.byte	W06
	.byte		N17   , As3 , v080
	.byte	W18
	.byte		N05   , As3 , v040
	.byte	W06
	.byte		N17   , As3 , v080
	.byte	W18
	.byte		N05   , As3 , v040
	.byte	W06
	.byte		N10   , As3 , v080
	.byte	W12
	.byte		N04   , Fn3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		N05   , Fn3 , v040
	.byte	W06
	.byte		N04   , Fn3 , v080
	.byte	W06
	.byte		N17   , Gn3
	.byte	W12
	.byte	W06
	.byte		N05   , Gn3 , v040
	.byte	W06
	.byte		        As3 , v080
	.byte	W06
	.byte		        As3 , v040
	.byte	W06
	.byte		        As3 , v080
	.byte	W06
	.byte		        As3 , v040
	.byte	W06
	.byte		N17   , Gs3 , v080
	.byte	W18
	.byte		N05   , Gs3 , v040
	.byte	W06
	.byte		        Gn3 , v080
	.byte	W06
	.byte		        Gn3 , v040
	.byte	W06
	.byte		N17   , Gn3 , v080
	.byte	W18
	.byte		N05   , Gn3 , v040
	.byte	W06
	.byte		N17   , Cn4 , v080
	.byte	W18
	.byte		N05   , Cn4 , v040
	.byte	W06
	.byte		N17   , Cn4 , v080
	.byte	W18
	.byte		N05   , Cn4 , v040
	.byte	W06
	.byte		N10   , Cn4 , v080
	.byte	W12
	.byte		N04   , Gs3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		N05   , Gs3 , v040
	.byte	W06
	.byte		N04   , Gs3 , v080
	.byte	W06
	.byte		N17   , Dn4
	.byte	W12
	.byte	W06
	.byte		N05   , Dn4 , v040
	.byte	W06
	.byte		        Dn4 , v080
	.byte	W06
	.byte		        Dn4 , v040
	.byte	W06
	.byte		N17   , Dn4 , v080
	.byte	W18
	.byte		N05   , Dn4 , v040
	.byte	W06
	.byte		N17   , Gn3 , v080
	.byte	W18
	.byte		N05   , Gn3 , v040
	.byte	W06
	.byte		N17   , As3 , v080
	.byte	W18
	.byte		N05   , As3 , v040
	.byte	W06
	.byte		N17   , Cn4 , v080
	.byte	W18
	.byte		N05   , Cn4 , v040
	.byte	W06
	.byte		N17   , Cn4 , v080
	.byte	W18
	.byte		N05   , Cn4 , v040
	.byte	W06
	.byte		N10   , Cn4 , v080
	.byte	W12
	.byte		N04   , Gn3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		N05   , Gn3 , v040
	.byte	W06
	.byte		N04   , Gn3 , v080
	.byte	W06
	.byte		N17   , Dn4
	.byte	W12
	.byte	W06
	.byte		N05   , Dn4 , v040
	.byte	W06
	.byte		N10   , Fs3 , v080
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N03   , Gn3 , v116
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Gn2
	.byte	W04
	.byte		        As2
	.byte	W04
	.byte		        Ds3
	.byte	W04
	.byte		        Gn3
	.byte	W04
	.byte		        As3
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , Cn3
	.byte	W04
	.byte		        Fn3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        Fn4
	.byte	W04
	.byte		        An4
	.byte	W04
	.byte		N23   , Bn4 , v080
	.byte	W24
	.byte		        Gn4
	.byte	W24
	.byte		        En4
	.byte	W24
	.byte		N11   , Cs4
	.byte	W12
	.byte		N23   , Bn3
	.byte	W12
	.byte	W12
	.byte		N11   , Cs4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        Fs4
	.byte	W12
	.byte		N23   , Bn4
	.byte	W24
	.byte		        An4
	.byte	W24
	.byte		        Gn4
	.byte	W24
	.byte		N11   , Fs4
	.byte	W12
	.byte		N23   , En4
	.byte	W24
	.byte		N11   , Bn3
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		N23   , Fs4
	.byte	W12
	.byte	W12
	.byte		N05   , An3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        An4
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , Cs5 , v112
	.byte	W04
	.byte		        As4
	.byte	W03
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N04   , Fs4
	.byte	W04
	.byte		        Cs4
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N04   , As3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Cs3
	.byte	W04
	.byte		        Fs3
	.byte	W03
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N04   , As3
	.byte	W04
	.byte		        Cs4
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , Fs4
	.byte	W04
	.byte		        An4
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N11   , Gn3 , v080
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N05   , Dn4 , v100
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		N23   , Dn4
	.byte	W23
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N11   , Fs3 , v080
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N05   , Cs4 , v100
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		N11   , Cs4
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N23   , Bn3 , v080
	.byte	W12
	.byte	W12
	.byte		N05   , An3
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		N11   , An3 , v080
	.byte	W12
	.byte		N23   , Fs3
	.byte	W24
	.byte		N05
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Gn4 , v040
	.byte	W06
	.byte		N11   , Bn3 , v080
	.byte	W12
	.byte		N05   , Bn3 , v040
	.byte	W06
	.byte		N11   , Gn3 , v080
	.byte	W12
	.byte		N05   , Gn3 , v040
	.byte	W06
	.byte		        Gn3 , v080
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		N11   , An4
	.byte	W12
	.byte		        An4 , v040
	.byte	W12
	.byte		N56   , An2 , v080
	.byte	W60
	.byte		N04   , En4 , v127
	.byte	W12
	.byte		        En4 , v040
	.byte	W06
	.byte		        En4 , v127
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		        En4 , v040
	.byte	W06
	.byte		        Bn3 , v127
	.byte	W06
	.byte		        En4 , v040
	.byte	W06
	.byte		        Bn3 , v127
	.byte	W06
	.byte		        Bn3 , v040
	.byte	W06
	.byte		        Dn4 , v127
	.byte	W06
	.byte		        Bn3 , v040
	.byte	W06
	.byte		        Dn4 , v127
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		        Dn4 , v040
	.byte	W06
	.byte		        Bn3 , v127
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Ds4 , v040
	.byte	W06
	.byte	W06
	.byte		        En4 , v127
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		        En4 , v040
	.byte	W06
	.byte		        Fs4 , v127
	.byte	W06
	.byte		        En4 , v040
	.byte	W06
	.byte		        Fs4 , v127
	.byte	W06
	.byte		        Fs4 , v040
	.byte	W06
	.byte		        Gn4 , v127
	.byte	W06
	.byte		        Fs4 , v040
	.byte	W06
	.byte		        Gn4 , v127
	.byte	W06
	.byte		        Gn4 , v040
	.byte	W06
	.byte		        Gs4 , v127
	.byte	W06
	.byte		        Gn4 , v040
	.byte	W06
	.byte		        An4 , v127
	.byte	W06
	.byte		        An4 , v040
	.byte	W06
	.byte	W06
	.byte		        Dn4 , v127
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		        Dn4 , v040
	.byte	W06
	.byte		        An3 , v127
	.byte	W06
	.byte		        Dn4 , v040
	.byte	W06
	.byte		        An3 , v127
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		        Cn4 , v127
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		        Cn4 , v127
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W06
	.byte		        An3 , v127
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Cs4 , v040
	.byte	W06
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_9_002
	.byte	GOTO
	 .word	mus_the_sword_that_cleaves_evil_9_003
	.byte		FINE

@**************** Track 10 ****************@

mus_the_sword_that_cleaves_evil_10:
	.byte		KEYSH , mus_the_sword_that_cleaves_evil_key+0
	.byte		VOICE , 87
	.byte	W01
	.byte		VOL   , 35*mus_the_sword_that_cleaves_evil_mvl/mxv
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		MOD   , 2
	.byte		N92   , Fn2 , v080
	.byte	W96
	.byte		        Gn2
	.byte	W96
	.byte		        An2
	.byte	W96
	.byte		        As2
	.byte	W96
	.byte		N17   , Dn3
	.byte	W18
	.byte		N05   , Dn3 , v040
	.byte	W06
	.byte		N11   , Dn3 , v080
	.byte	W12
	.byte		N05   , As2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Dn3 , v040
	.byte	W06
	.byte		        Dn3 , v080
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		N05   , As2
	.byte	W06
	.byte		        As2 , v040
	.byte	W06
	.byte		N17   , En3 , v080
	.byte	W12
	.byte	W06
	.byte		N05   , En3 , v040
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		        En3 , v040
	.byte	W06
	.byte		N11   , En3 , v080
	.byte	W12
	.byte		N05   , Cn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        En3 , v040
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		N05   , Cn3
	.byte	W06
	.byte		        Cn3 , v040
	.byte	W06
	.byte		N11   , En3 , v080
	.byte	W12
	.byte		N17   , Dn3
	.byte	W18
	.byte		N05   , Dn3 , v040
	.byte	W06
	.byte		N11   , Dn3 , v080
	.byte	W12
	.byte		N05   , As2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Dn3 , v040
	.byte	W06
	.byte		        Dn3 , v080
	.byte	W06
	.byte		N11   , Fn3
	.byte	W12
	.byte		N05   , As2
	.byte	W06
	.byte		        As2 , v040
	.byte	W06
	.byte		N17   , En3 , v080
	.byte	W12
	.byte	W06
	.byte		N05   , En3 , v040
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		        En3 , v040
	.byte	W06
	.byte		N11   , En3 , v080
	.byte	W12
	.byte		N05   , As2
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        En3 , v040
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		N05   , Cs3
	.byte	W06
	.byte		        Cs3 , v040
	.byte	W06
	.byte		N11   , En3 , v080
	.byte	W12
mus_the_sword_that_cleaves_evil_10_000:
	.byte		N04   , An3 , v127
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		        En3 , v127
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		        En3 , v127
	.byte	W06
	.byte		        En3 , v040
	.byte	W06
	.byte		        Gn3 , v127
	.byte	W06
	.byte		        En3 , v040
	.byte	W06
	.byte		        Gn3 , v127
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Gn3 , v040
	.byte	W06
	.byte		        En3 , v127
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Gs3 , v040
	.byte	W06
	.byte		PEND
mus_the_sword_that_cleaves_evil_10_001:
	.byte		N04   , En3 , v040
	.byte	W06
	.byte		        An3 , v127
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		        En3 , v127
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		        En3 , v127
	.byte	W06
	.byte		        En3 , v040
	.byte	W06
	.byte		        Gn3 , v127
	.byte	W06
	.byte		        En3 , v040
	.byte	W06
	.byte		        Gn3 , v127
	.byte	W06
	.byte		        Gn3 , v040
	.byte	W06
	.byte		        Gs3 , v127
	.byte	W06
	.byte		        Gn3 , v040
	.byte	W06
	.byte		        Gs3 , v127
	.byte	W06
	.byte		        Gs3 , v040
	.byte	W06
	.byte		PEND
mus_the_sword_that_cleaves_evil_10_002:
	.byte		N44   , An2 , v080
	.byte	W48
	.byte		N32   , Fn3
	.byte	W36
	.byte		N56   , As2
	.byte	W12
	.byte	W48
	.byte		N44
	.byte	W48
	.byte		        An2
	.byte	W48
	.byte		N32   , An3
	.byte	W36
	.byte		        En3
	.byte	W12
	.byte	W24
	.byte		N23   , An3
	.byte	W24
	.byte		        Gs3
	.byte	W24
	.byte		        Gn3
	.byte	W24
	.byte		N44   , Fn3
	.byte	W48
	.byte		N32
	.byte	W36
	.byte		N56   , As2
	.byte	W12
	.byte	W48
	.byte		N44   , Dn3
	.byte	W48
	.byte		        Fn3
	.byte	W48
	.byte		N32   , An3
	.byte	W36
	.byte		N44   , Dn3
	.byte	W12
	.byte	W36
	.byte		N32
	.byte	W36
	.byte		N03   , Ds2 , v100
	.byte	W04
	.byte		        Fn2
	.byte	W04
	.byte		        Gn2
	.byte	W04
	.byte		        An2
	.byte	W04
	.byte		        As2
	.byte	W04
	.byte		        Cn3
	.byte	W04
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_10_000
	.byte		N04   , En3 , v040
	.byte	W06
	.byte		        An3 , v127
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		        Bn3 , v127
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		        Bn3 , v127
	.byte	W06
	.byte		        Bn3 , v040
	.byte	W06
	.byte		        Cn4 , v127
	.byte	W06
	.byte		        Bn3 , v040
	.byte	W06
	.byte		        Cn4 , v127
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W06
	.byte		        Cs4 , v127
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W06
	.byte		        Cs4 , v127
	.byte	W06
	.byte		        Cs4 , v040
	.byte	W06
	.byte		N17   , Dn3 , v080
	.byte	W18
	.byte		N05   , Dn3 , v040
	.byte	W06
	.byte		N17   , Dn3 , v080
	.byte	W18
	.byte		N05   , Dn3 , v040
	.byte	W06
	.byte		N10   , Dn3 , v080
	.byte	W12
	.byte		N04   , As2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		N05   , As2 , v040
	.byte	W06
	.byte		N04   , As2 , v080
	.byte	W06
	.byte		N17   , An3
	.byte	W12
	.byte	W06
	.byte		N05   , An3 , v040
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		N17   , An3 , v080
	.byte	W18
	.byte		N05   , An3 , v040
	.byte	W06
	.byte		N17   , An2 , v080
	.byte	W18
	.byte		N05   , An2 , v040
	.byte	W06
	.byte		N17   , Cn3 , v080
	.byte	W18
	.byte		N05   , Cn3 , v040
	.byte	W06
	.byte		N17   , Dn3 , v080
	.byte	W18
	.byte		N05   , Dn3 , v040
	.byte	W06
	.byte		N17   , Dn3 , v080
	.byte	W18
	.byte		N05   , Dn3 , v040
	.byte	W06
	.byte		N10   , Dn3 , v080
	.byte	W12
	.byte		N04   , As2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		N05   , As2 , v040
	.byte	W06
	.byte		N04   , As2 , v080
	.byte	W06
	.byte		N17
	.byte	W12
	.byte	W06
	.byte		N05   , As2 , v040
	.byte	W06
	.byte		        Gn3 , v080
	.byte	W06
	.byte		        Gn3 , v040
	.byte	W06
	.byte		        Gn3 , v080
	.byte	W06
	.byte		        Gn3 , v040
	.byte	W06
	.byte		N17   , As2 , v080
	.byte	W18
	.byte		N05   , As2 , v040
	.byte	W06
	.byte		        As2 , v080
	.byte	W06
	.byte		        As2 , v040
	.byte	W06
	.byte		N17   , As2 , v080
	.byte	W18
	.byte		N05   , As2 , v040
	.byte	W06
	.byte		N17   , Ds3 , v080
	.byte	W18
	.byte		N05   , Ds3 , v040
	.byte	W06
	.byte		N17   , Ds3 , v080
	.byte	W18
	.byte		N05   , Ds3 , v040
	.byte	W06
	.byte		N10   , Ds3 , v080
	.byte	W12
	.byte		N04   , Bn2
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		N05   , Bn2 , v040
	.byte	W06
	.byte		N04   , Bn2 , v080
	.byte	W06
	.byte		N17   , As3
	.byte	W12
	.byte	W06
	.byte		N05   , As3 , v040
	.byte	W06
	.byte		        As3 , v080
	.byte	W06
	.byte		        As3 , v040
	.byte	W06
	.byte		N17   , As3 , v080
	.byte	W18
	.byte		N05   , As3 , v040
	.byte	W06
	.byte		N17   , As2 , v080
	.byte	W18
	.byte		N05   , As2 , v040
	.byte	W06
	.byte		N17   , Dn3 , v080
	.byte	W18
	.byte		N05   , Dn3 , v040
	.byte	W06
	.byte		N17   , En3 , v080
	.byte	W18
	.byte		N05   , En3 , v040
	.byte	W06
	.byte		N17   , En3 , v080
	.byte	W18
	.byte		N05   , En3 , v040
	.byte	W06
	.byte		N10   , En3 , v080
	.byte	W12
	.byte		N04   , Cn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		N05   , Cn3 , v040
	.byte	W06
	.byte		N04   , Cn3 , v080
	.byte	W06
	.byte		N17   , Fs3
	.byte	W12
	.byte	W06
	.byte		N05   , Fs3 , v040
	.byte	W06
	.byte		N10   , An2 , v080
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N03   , As2 , v088
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , As1 , v116
	.byte	W04
	.byte		        Ds2
	.byte	W04
	.byte		        Gn2
	.byte	W04
	.byte		        As2
	.byte	W04
	.byte		        Ds3
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N03   , Fn2
	.byte	W04
	.byte		        An2
	.byte	W04
	.byte		        Cn3
	.byte	W04
	.byte		        Fn3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Cn4
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N23   , Gn3 , v080
	.byte	W24
	.byte		        Bn3
	.byte	W24
	.byte		        An3
	.byte	W24
	.byte		N11   , En3
	.byte	W12
	.byte		N32   , Dn3
	.byte	W12
	.byte	W24
	.byte		N11   , Fs3
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		N23   , Fs4
	.byte	W24
	.byte		        En4
	.byte	W24
	.byte		        Bn3
	.byte	W24
	.byte		N11   , An3
	.byte	W12
	.byte		N23   , Gn3
	.byte	W24
	.byte		N11   , En3
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		N23   , An3
	.byte	W12
	.byte	W12
	.byte		N05   , Fs3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Fs4
	.byte	W05
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , Cs4 , v112
	.byte	W04
	.byte		        As3
	.byte	W03
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N04   , Fs3
	.byte	W04
	.byte		        Cs3
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N04   , As2
	.byte	W04
	.byte		        Fs2
	.byte	W04
	.byte		        As2
	.byte	W04
	.byte		        Cs3
	.byte	W03
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N04   , Fs3
	.byte	W04
	.byte		        As3
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N04   , Cs4
	.byte	W04
	.byte		        Fs4
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Dn3 , v100
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N05   , Bn3 , v080
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		N23   , Bn3
	.byte	W23
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N11   , Cs3
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N05   , An3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		N11   , An3
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N23   , Dn3
	.byte	W12
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		        Dn3 , v040
	.byte	W06
	.byte		N11   , Dn3 , v080
	.byte	W12
	.byte		N23   , Bn2
	.byte	W24
	.byte		N05   , Dn3
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Bn3 , v040
	.byte	W06
	.byte		N11   , Dn3 , v080
	.byte	W12
	.byte		N05   , Dn3 , v040
	.byte	W06
	.byte		N11   , Bn2 , v080
	.byte	W12
	.byte		N05   , Bn2 , v040
	.byte	W06
	.byte		        Bn2 , v080
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		N11   , Cs4
	.byte	W12
	.byte		        Cs4 , v040
	.byte	W12
	.byte		N56   , En2 , v080
	.byte	W60
	.byte		N40   , An3 , v088
	.byte	W12
	.byte	W36
	.byte		        Gn3
	.byte	W48
	.byte		        Fs3
	.byte	W12
	.byte	W36
	.byte		N32   , Gn3
	.byte	W36
	.byte		N10   , Gs3
	.byte	W12
	.byte		N04   , An3 , v127
	.byte	W12
	.byte		        An3 , v040
	.byte	W06
	.byte		        An3 , v127
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		        En3 , v127
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		        En3 , v127
	.byte	W06
	.byte		        En3 , v040
	.byte	W06
	.byte		        Gn3 , v127
	.byte	W06
	.byte		        En3 , v040
	.byte	W06
	.byte		        Gn3 , v127
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Gn3 , v040
	.byte	W06
	.byte		        En3 , v127
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Gs3 , v040
	.byte	W06
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_10_001
	.byte	GOTO
	 .word	mus_the_sword_that_cleaves_evil_10_002
	.byte		FINE

@**************** Track 11 ****************@

mus_the_sword_that_cleaves_evil_11:
	.byte		KEYSH , mus_the_sword_that_cleaves_evil_key+0
	.byte		VOICE , 104
	.byte	W01
	.byte		VOL   , 75*mus_the_sword_that_cleaves_evil_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
	.byte		N14   , Dn1 , v127
	.byte	W16
	.byte		        An1
	.byte	W16
	.byte		        As1
	.byte	W16
	.byte		N60   , Dn1
	.byte	W48
	.byte	W16
	.byte		N14   , An1
	.byte	W16
	.byte		        Dn1
	.byte	W16
	.byte		        Cn1
	.byte	W16
	.byte		        Gn1
	.byte	W16
	.byte		        Cn1
	.byte	W16
	.byte		        Dn1
	.byte	W16
	.byte		        An1
	.byte	W16
	.byte		        As1
	.byte	W16
	.byte		        Dn1
	.byte	W16
	.byte		        En1
	.byte	W16
	.byte		        Fn1
	.byte	W16
	.byte		        Gn1
	.byte	W16
	.byte		        An1
	.byte	W16
	.byte		        As1
	.byte	W16
	.byte		        Cn2
	.byte	W16
	.byte		        An1
	.byte	W16
	.byte		        Cn2
	.byte	W16
	.byte		N10   , Dn2
	.byte	W12
	.byte		        Dn1
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
	.byte		N22   , Cn1
	.byte	W12
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
	.byte		        Dn1
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
	.byte		N22   , En1
	.byte	W12
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		        Cn1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		        Cs1
	.byte	W12
	.byte		N10
	.byte	W12
mus_the_sword_that_cleaves_evil_11_000:
	.byte		N04   , Dn1 , v127
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N06   , An1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N10   , Cn1
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10   , Cs1
	.byte	W12
	.byte		N04   , An1
	.byte	W06
	.byte		N16   , Dn1
	.byte	W12
	.byte		PEND
mus_the_sword_that_cleaves_evil_11_001:
	.byte	W06
	.byte		N04   , Dn1 , v127
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cn1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cs1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		PEND
mus_the_sword_that_cleaves_evil_11_002:
	.byte		N10   , Dn1 , v127
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N16
	.byte	W18
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N22   , Gn1
	.byte	W12
	.byte		PEND
mus_the_sword_that_cleaves_evil_11_003:
	.byte	W12
	.byte		N10   , Gn1 , v127
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N16
	.byte	W18
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		PEND
	.byte		        Fn1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N16
	.byte	W18
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N22   , An1
	.byte	W12
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N16
	.byte	W18
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_11_002
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_11_003
mus_the_sword_that_cleaves_evil_11_004:
	.byte		N10   , Fn1 , v127
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N16
	.byte	W18
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N22   , En1
	.byte	W12
	.byte		PEND
mus_the_sword_that_cleaves_evil_11_005:
	.byte	W12
	.byte		N10   , En1 , v127
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N22   , Ds1
	.byte	W24
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		PEND
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_11_000
	.byte	W06
	.byte		N04   , Dn1 , v127
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N16
	.byte	W18
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N22   , Fs1
	.byte	W12
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N16
	.byte	W18
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_11_004
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_11_005
	.byte		N10   , Gs1 , v127
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N16
	.byte	W18
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N22   , Gn1
	.byte	W12
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_11_003
	.byte		N10   , Cn1 , v127
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N16
	.byte	W18
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N22   , Dn1
	.byte	W12
	.byte	W12
	.byte		N10   , Cn1
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		N22   , Ds1
	.byte	W24
	.byte		N12   , Fn2
	.byte	W12
	.byte		N03   , Ds2
	.byte	W04
	.byte		        Cn2
	.byte	W02
	.byte		        An1
	.byte	W04
	.byte		        Fn1
	.byte	W02
	.byte		N10   , Gn1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N22   , Bn1
	.byte	W12
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
	.byte		        En1
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
	.byte		N22   , Fs1
	.byte	W12
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
	.byte		        Gn1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N22   , Bn1
	.byte	W12
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		N16
	.byte	W18
	.byte		        Dn1
	.byte	W18
	.byte		        Bn1
	.byte	W18
	.byte		        Gn1
	.byte	W18
	.byte		N10   , Bn1
	.byte	W12
	.byte		        An1
	.byte	W24
	.byte		N56
	.byte	W60
	.byte		N16   , En1
	.byte	W12
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N06   , Bn1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N10   , Dn1
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10   , Ds1
	.byte	W12
	.byte		N04   , Bn1
	.byte	W06
	.byte		N16   , En1
	.byte	W12
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Gs1
	.byte	W12
	.byte		N18   , An1
	.byte	W12
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N10   , Dn1
	.byte	W12
	.byte		N06   , An1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N10   , Cn1
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		N10   , Cs1
	.byte	W12
	.byte		N04   , An1
	.byte	W06
	.byte		N16   , Dn1
	.byte	W12
	.byte	PATT
	 .word	mus_the_sword_that_cleaves_evil_11_001
	.byte	GOTO
	 .word	mus_the_sword_that_cleaves_evil_11_002
	.byte		FINE

@******************************************************@
	.align	2

mus_the_sword_that_cleaves_evil:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_the_sword_that_cleaves_evil_pri	@ Priority
	.byte	mus_the_sword_that_cleaves_evil_rev	@ Reverb.

	.word	mus_the_sword_that_cleaves_evil_grp

	.word	mus_the_sword_that_cleaves_evil_1
	.word	mus_the_sword_that_cleaves_evil_2
	.word	mus_the_sword_that_cleaves_evil_3
	.word	mus_the_sword_that_cleaves_evil_4
	.word	mus_the_sword_that_cleaves_evil_6
	.word	mus_the_sword_that_cleaves_evil_7
	.word	mus_the_sword_that_cleaves_evil_8
	.word	mus_the_sword_that_cleaves_evil_9
	.word	mus_the_sword_that_cleaves_evil_10
	.word	mus_the_sword_that_cleaves_evil_11

	.end
