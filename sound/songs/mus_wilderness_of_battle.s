@ "Wilderness of Battle" from Super Robot Taisen: Original Generation (song 0x0C), ported from sound/import,
@ where the rip mislabels it as "09 Messenger from the Void".
@ Track numbers match the original. Track 11 (a quiet doubling layer) was cut to fit Emerald's 10 tracks and 5 sampled channels.
@ Track 10's wave bass plays the single-cycle saw (slot 104) with no octave shift. Emerald's own waves repeat twice and sound an octave high,
@ and shifting the track down an octave to make up for it put most of its notes below key 36, where the wave channel clamps
@ every note to the same pitch (MidiKeyToCgbFreq). The single-cycle waves sound an octave lower themselves.

	.include "MPlayDef.s"

	.equ	mus_wilderness_of_battle_grp, voicegroup_srt_og
	.equ	mus_wilderness_of_battle_pri, 0
	.equ	mus_wilderness_of_battle_rev, reverb_set+48
	.equ	mus_wilderness_of_battle_mvl, 127
	.equ	mus_wilderness_of_battle_key, 0
	.equ	mus_wilderness_of_battle_tbs, 1
	.equ	mus_wilderness_of_battle_exg, 0
	.equ	mus_wilderness_of_battle_cmp, 1

	.section .rodata
	.global	mus_wilderness_of_battle
	.align	2

@**************** Track 1 ****************@

mus_wilderness_of_battle_1:
	.byte		KEYSH , mus_wilderness_of_battle_key+0
	.byte		TEMPO , 240*mus_wilderness_of_battle_tbs/2
	.byte		VOICE , 127
	.byte	W01
	.byte		VOL   , 62*mus_wilderness_of_battle_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
mus_wilderness_of_battle_1_000:
	.byte		TEMPO , 104*mus_wilderness_of_battle_tbs/2
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
mus_wilderness_of_battle_1_001:
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N02   , Dn1 , v060
	.byte	W03
	.byte		        Dn1 , v072
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		        Dn1 , v100
	.byte	W03
	.byte		N11
	.byte	W12
	.byte		N02   , Dn1 , v060
	.byte	W03
	.byte		        Dn1 , v072
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		        Dn1 , v100
	.byte	W03
	.byte		N11   , Dn1 , v112
	.byte	W12
	.byte		        Dn1 , v080
	.byte	W24
	.byte		N02   , Dn1 , v060
	.byte	W03
	.byte		        Dn1 , v072
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		        Dn1 , v100
	.byte	W03
	.byte		PEND
	.byte	PATT
	 .word	mus_wilderness_of_battle_1_001
	.byte	PATT
	 .word	mus_wilderness_of_battle_1_001
	.byte	PATT
	 .word	mus_wilderness_of_battle_1_001
	.byte	PATT
	 .word	mus_wilderness_of_battle_1_001
	.byte	PATT
	 .word	mus_wilderness_of_battle_1_001
	.byte	PATT
	 .word	mus_wilderness_of_battle_1_001
mus_wilderness_of_battle_1_002:
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N02   , Dn1 , v060
	.byte	W03
	.byte		        Dn1 , v072
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		        Dn1 , v100
	.byte	W03
	.byte		N11
	.byte	W12
	.byte		N02   , Dn1 , v060
	.byte	W03
	.byte		        Dn1 , v072
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		        Dn1 , v100
	.byte	W03
	.byte		N11
	.byte	W12
	.byte		N02   , Dn1 , v060
	.byte	W03
	.byte		        Dn1 , v072
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		        Dn1 , v100
	.byte	W03
	.byte		N05   , Dn1 , v112
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_wilderness_of_battle_1_002
	.byte	PATT
	 .word	mus_wilderness_of_battle_1_002
	.byte	PATT
	 .word	mus_wilderness_of_battle_1_002
	.byte	PATT
	 .word	mus_wilderness_of_battle_1_002
	.byte	PATT
	 .word	mus_wilderness_of_battle_1_002
	.byte	PATT
	 .word	mus_wilderness_of_battle_1_002
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N02   , Dn1 , v060
	.byte	W03
	.byte		        Dn1 , v072
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		        Dn1 , v100
	.byte	W03
	.byte		N10
	.byte	W12
	.byte		N02   , Dn1 , v060
	.byte	W03
	.byte		        Dn1 , v072
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		        Dn1 , v100
	.byte	W03
	.byte		N11
	.byte	W12
	.byte		N02   , Dn1 , v060
	.byte	W03
	.byte		        Dn1 , v072
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		        Dn1 , v100
	.byte	W03
	.byte		N05   , Dn1 , v112
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11   , Dn1 , v100
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		N02   , Dn1 , v060
	.byte	W03
	.byte		        Dn1 , v072
	.byte	W03
	.byte		        Dn1 , v080
	.byte	W03
	.byte		        Dn1 , v100
	.byte	W03
mus_wilderness_of_battle_1_003:
	.byte		N05   , Dn1 , v112
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Dn1 , v100
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Dn1 , v100
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Dn1 , v100
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_wilderness_of_battle_1_003
	.byte	PATT
	 .word	mus_wilderness_of_battle_1_003
	.byte		N05   , Dn1 , v112
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Dn1 , v100
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Dn1 , v100
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Dn1 , v100
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v088
	.byte	W06
	.byte		        Dn1 , v100
	.byte	W06
	.byte	PATT
	 .word	mus_wilderness_of_battle_1_003
	.byte	PATT
	 .word	mus_wilderness_of_battle_1_003
	.byte	PATT
	 .word	mus_wilderness_of_battle_1_003
	.byte		N05   , Dn1 , v112
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Dn1 , v100
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Dn1 , v100
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Dn1 , v100
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N10
	.byte	W06
	.byte	W96
	.byte	W96
	.byte		TEMPO , 96*mus_wilderness_of_battle_tbs/2
	.byte	W72
	.byte		TEMPO , 88*mus_wilderness_of_battle_tbs/2
	.byte	W24
	.byte	W24
	.byte		TEMPO , 100*mus_wilderness_of_battle_tbs/2
	.byte	W72
	.byte		TEMPO , 104*mus_wilderness_of_battle_tbs/2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte	GOTO
	 .word	mus_wilderness_of_battle_1_000
	.byte		FINE

@**************** Track 2 ****************@

mus_wilderness_of_battle_2:
	.byte		KEYSH , mus_wilderness_of_battle_key+0
	.byte		VOICE , 48
	.byte	W01
	.byte		VOL   , 53*mus_wilderness_of_battle_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
mus_wilderness_of_battle_2_000:
	.byte		N23   , An1 , v100
	.byte		N23   , Cs2 , v088
	.byte		N23   , En2
	.byte		N23   , An2 , v100
	.byte	W24
	.byte		N44   , Dn1
	.byte		N23   , Dn2 , v088
	.byte		N44   , Fn2
	.byte		N44   , Dn3 , v100
	.byte	W24
	.byte		N23   , An2 , v088
	.byte	W24
	.byte		N44   , Cs1 , v100
	.byte		N44   , En2 , v088
	.byte		N23   , As2
	.byte		N44   , En3 , v100
	.byte	W24
	.byte		N23   , An2 , v088
	.byte	W24
	.byte		        Cn1 , v100
	.byte		N44   , En2 , v088
	.byte		N23   , Dn3
	.byte		N32   , Gn3 , v100
	.byte	W24
	.byte		N23   , As0
	.byte		N23   , Cn3 , v088
	.byte	W12
	.byte		N05   , Fn3 , v100
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		N28   , An0
	.byte		N23   , Cn2 , v088
	.byte		N23   , Fn2
	.byte		N23   , An2 , v100
	.byte	W24
	.byte		N44   , Dn2 , v088
	.byte		N23   , Fn2 , v100
	.byte	W12
	.byte		N11   , Dn1
	.byte	W12
	.byte		N44   , Gn0
	.byte		N44   , Gn1 , v088
	.byte		N23   , As2 , v100
	.byte	W24
	.byte		        En2 , v088
	.byte		N23   , Cn3 , v100
	.byte	W24
	.byte		N44   , Gs0
	.byte		N44   , En2 , v088
	.byte		N44   , As2
	.byte		N23   , Dn3 , v100
	.byte	W24
	.byte		        En3
	.byte	W24
	.byte		        An0
	.byte		N44   , Dn2 , v088
	.byte		N23   , Cn3
	.byte		N32   , Fs3 , v100
	.byte	W24
	.byte		N23   , Dn1
	.byte		N23   , An2 , v088
	.byte	W12
	.byte		N05   , En3 , v100
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		N44   , Gn0
	.byte		N44   , Dn2 , v088
	.byte		N23   , As2
	.byte		N23   , An3 , v100
	.byte	W24
	.byte		N11   , An2 , v088
	.byte		N23   , Gn3 , v100
	.byte	W12
	.byte		N11   , Gn2 , v088
	.byte	W12
	.byte		N44   , Cn1 , v100
	.byte		N44   , En2 , v088
	.byte		N23   , Dn3
	.byte		N32   , Gn3 , v100
	.byte	W24
	.byte		N23   , Cn3 , v088
	.byte	W12
	.byte		N05   , Fn3 , v100
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		N44   , Fn0
	.byte		N44   , Cn2 , v088
	.byte		N11   , Gn2
	.byte		N23   , As3 , v100
	.byte	W12
	.byte		        Fn2 , v088
	.byte	W12
	.byte		        An3 , v100
	.byte	W12
	.byte		N11   , Gn2 , v088
	.byte	W12
	.byte		N23   , Fs0 , v100
	.byte		N23   , En2 , v088
	.byte		N44   , An2
	.byte		N32   , An3 , v100
	.byte	W24
	.byte		N23   , Dn1
	.byte		N23   , Fs2 , v088
	.byte	W12
	.byte		N05   , Gn3 , v100
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		N44   , Gn0
	.byte		N11   , An2 , v088
	.byte		N32   , Dn3
	.byte		N23   , Cn4 , v100
	.byte	W12
	.byte		N32   , Gn2 , v088
	.byte	W12
	.byte		N23   , As3 , v100
	.byte	W12
	.byte		N11   , Fn3 , v088
	.byte	W12
	.byte		N44   , En0 , v100
	.byte		N23   , Cn3 , v088
	.byte		N23   , En3
	.byte		N11   , An3 , v100
	.byte	W12
	.byte		        As3
	.byte	W12
	.byte		        Fn2 , v088
	.byte		N11   , Dn3
	.byte		N11   , An3 , v100
	.byte	W12
	.byte		        En2 , v088
	.byte		N11   , Cn3
	.byte		N11   , Gn3 , v100
	.byte	W12
	.byte		N44   , Gs0
	.byte		N44   , Dn2 , v088
	.byte		N32   , As2
	.byte		N23   , Fn3 , v100
	.byte	W24
	.byte		        Dn3
	.byte	W12
	.byte		N11   , Gs2 , v088
	.byte	W12
	.byte		N17   , An0 , v100
	.byte		N44   , Dn2 , v088
	.byte		N23   , As2
	.byte		N64   , En3 , v100
	.byte	W24
	.byte		N17   , Gn0
	.byte		N40   , An2 , v088
	.byte	W24
	.byte		N17   , En0 , v100
	.byte		N17   , Cs2 , v076
	.byte	W24
	.byte		N23   , An0 , v100
	.byte		N23   , Cs3 , v088
	.byte		N23   , An3 , v100
	.byte	W24
	.byte		N17   , Dn1
	.byte		N44   , Dn4
	.byte	W24
	.byte		N17   , Cs1
	.byte		N11   , Gn3 , v080
	.byte	W12
	.byte		        Fn3
	.byte	W12
	.byte		N28   , Cn1 , v100
	.byte		N23   , Dn3 , v080
	.byte		N44   , En4 , v100
	.byte	W24
	.byte		N23   , Gn2 , v080
	.byte	W12
	.byte		N11   , Gn0 , v100
	.byte	W12
	.byte		N17   , An0
	.byte		N23   , Dn3 , v080
	.byte		N32   , Gn4 , v100
	.byte	W24
	.byte		N17   , Gn0
	.byte		N23   , Cs3 , v080
	.byte	W12
	.byte		N05   , Fn4 , v100
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		N11   , Fn0
	.byte		N44   , Cn3 , v080
	.byte		N23   , An3 , v100
	.byte	W12
	.byte		N11   , Gn0
	.byte	W12
	.byte		        An0
	.byte		N23   , Fn3
	.byte	W12
	.byte		N11   , Cn1
	.byte	W12
	.byte		N23   , As0
	.byte		N23   , Dn3 , v080
	.byte		N23   , As3 , v100
	.byte	W24
	.byte		N11   , An0
	.byte		N23   , En3 , v080
	.byte		N23   , Cn4 , v100
	.byte	W12
	.byte		N11   , Gn0
	.byte	W12
	.byte		N17   , Fn0
	.byte		N23   , Fn3 , v080
	.byte		N23   , Dn4 , v100
	.byte	W24
	.byte		        Cs1
	.byte		N23   , Gn3 , v080
	.byte		N23   , En4 , v100
	.byte	W24
	.byte		        Dn1
	.byte		N23   , Gs3 , v080
	.byte		N32   , Fs4 , v100
	.byte	W24
	.byte		N11   , Cn1
	.byte		N23   , An3 , v080
	.byte	W12
	.byte		N11   , As0 , v100
	.byte		N05   , En4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		N28   , Gn0
	.byte		N32   , As3 , v080
	.byte		N23   , An4 , v100
	.byte	W24
	.byte		        Gn4
	.byte	W12
	.byte		N11   , Dn1
	.byte		N11   , Dn3 , v080
	.byte	W12
	.byte		N23   , En1 , v100
	.byte		N11   , As3 , v080
	.byte		N32   , Gn4 , v100
	.byte	W12
	.byte		N11   , An3 , v080
	.byte	W12
	.byte		        Dn1 , v100
	.byte		N30   , En3 , v080
	.byte	W12
	.byte		N11   , Cs1 , v100
	.byte		N05   , Fn4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		N28   , An0
	.byte		N23   , As4
	.byte	W12
	.byte		        Gn3 , v080
	.byte	W12
	.byte		        An4 , v100
	.byte	W12
	.byte		N11   , En0
	.byte		N11   , Cs3 , v080
	.byte	W12
	.byte		        Dn0 , v100
	.byte		N23   , Dn3 , v080
	.byte		N17   , An4 , v100
	.byte	W12
	.byte		N11   , En0
	.byte	W12
	.byte		        Fn0
	.byte		N23   , Fn3 , v080
	.byte		N44   , Dn5 , v100
	.byte	W12
	.byte		N11   , Gn0
	.byte	W12
	.byte		        An0
	.byte		N23   , En3 , v080
	.byte	W12
	.byte		N11   , As0 , v100
	.byte	W12
	.byte		        Cn1
	.byte		N23   , Fn3 , v080
	.byte		N11   , An4 , v100
	.byte	W12
	.byte		        Dn1
	.byte		N11   , Dn4
	.byte	W12
	.byte		N17   , An0
	.byte		N23   , Dn3 , v080
	.byte		N03   , En4 , v116
	.byte	W04
	.byte		        Fn4 , v096
	.byte	W04
	.byte		        En4 , v116
	.byte	W04
	.byte		        Fn4 , v096
	.byte	W04
	.byte		        En4 , v116
	.byte	W04
	.byte		        Fn4 , v096
	.byte	W04
	.byte		N17   , Gs0 , v100
	.byte		N03   , En4 , v116
	.byte	W04
	.byte		        Fn4 , v096
	.byte	W04
	.byte		        En4 , v116
	.byte	W04
	.byte		        Fn4 , v096
	.byte	W04
	.byte		        En4 , v116
	.byte	W04
	.byte		        Fn4 , v096
	.byte	W04
	.byte		N17   , Gn0 , v100
	.byte		N03   , En4 , v116
	.byte	W04
	.byte		        Fn4 , v096
	.byte	W04
	.byte		        En4 , v116
	.byte	W04
	.byte		        Fn4 , v096
	.byte	W04
	.byte		        En4 , v116
	.byte	W04
	.byte		        Fn4 , v096
	.byte	W04
	.byte		N23   , Fs0 , v100
	.byte		N17   , En4
	.byte	W24
	.byte		N92   , Bn1
	.byte	W96
	.byte		        As1
	.byte	W96
	.byte		        An1
	.byte	W96
	.byte		        Gs1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N17   , Bn1
	.byte	W24
	.byte		N17
	.byte		N17   , Bn2
	.byte	W24
	.byte		N32   , As1
	.byte		N32   , As2
	.byte	W42
	.byte		N05   , Fs1
	.byte		N05   , Fs2
	.byte	W06
	.byte		N80   , An1
	.byte		N88   , An2
	.byte	W96
	.byte		N17   , Bn1
	.byte	W24
	.byte		N17
	.byte		N17   , Bn2
	.byte	W24
	.byte		N32   , As1
	.byte		N32   , As2
	.byte		N03   , Dn3
	.byte	W04
	.byte		        Cs3
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Bn4
	.byte	W02
	.byte		N05   , Dn2
	.byte		N05   , Dn3
	.byte	W02
	.byte		N03   , Dn5
	.byte	W04
	.byte		N88   , Fs2
	.byte		N88   , Fs3
	.byte		N03   , Fs5
	.byte	W04
	.byte		        Fs5 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        Dn5 , v100
	.byte	W04
	.byte		        Dn5 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        Bn4 , v100
	.byte	W04
	.byte		        Bn4 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        Fs4 , v100
	.byte	W04
	.byte		        Fs4 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        Dn5 , v100
	.byte	W04
	.byte		        Dn5 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        Bn4 , v100
	.byte	W04
	.byte		        Bn4 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        Fs4 , v100
	.byte	W04
	.byte		        Fs4 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        Dn4 , v100
	.byte	W04
	.byte		        Dn4 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		N17   , Bn1 , v092
	.byte		N17   , Bn2
	.byte	W24
	.byte		N68   , Fs2 , v080
	.byte		N23   , Cn3 , v092
	.byte		N23   , En3 , v100
	.byte	W24
	.byte		N44   , Bn2 , v092
	.byte		N44   , Dn3
	.byte	W48
	.byte	W24
	.byte		N68   , Bn2 , v080
	.byte		N23   , Fn3 , v092
	.byte		N23   , An3 , v100
	.byte	W24
	.byte		N44   , En3 , v092
	.byte		N44   , Gn3
	.byte	W48
	.byte	W24
	.byte		N23   , Cn3
	.byte		N68   , Fs3 , v080
	.byte		N23   , En4 , v100
	.byte	W24
	.byte		N44   , Bn2 , v092
	.byte		N44   , Dn4
	.byte	W48
	.byte	W24
	.byte		N23   , Fn3
	.byte		N56   , Bn3 , v080
	.byte		N23   , An4 , v100
	.byte	W24
	.byte		N44   , En3 , v092
	.byte		N44   , Gn4
	.byte	W48
	.byte	W24
	.byte		N11   , Fs3 , v072
	.byte	W12
	.byte		N05   , En3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		N11   , Gn3
	.byte	W12
	.byte		N05   , Fs3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		N11   , An3
	.byte	W12
	.byte		N05   , Gn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		N11   , Bn3
	.byte	W12
	.byte		N05   , As3
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		N11   , Cs4
	.byte	W12
	.byte		N05   , Bn3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		N11   , Dn4
	.byte	W12
	.byte		N05   , Cs4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		N11   , Fs3 , v080
	.byte	W12
	.byte		        Fs2
	.byte	W12
	.byte		N17   , Gn2
	.byte	W24
	.byte		N21   , Gn3 , v112
	.byte	W24
	.byte		        An3
	.byte	W24
	.byte		        Dn3
	.byte	W24
	.byte		N32   , Dn4
	.byte	W36
	.byte		N05   , Cn4
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		N09   , An3
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		        Cn4 , v120
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		N42   , Cn4 , v112
	.byte	W48
	.byte		        Dn4
	.byte	W48
	.byte		N30   , Fn4
	.byte	W36
	.byte		N05   , Ds4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		N09   , Gn3
	.byte	W12
	.byte		        As3
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		        Gn4
	.byte	W12
	.byte	W96
	.byte	W72
	.byte		        Fs3 , v080
	.byte		N09   , Dn4 , v092
	.byte	W12
	.byte		        An3
	.byte		N09   , Fs4 , v100
	.byte	W12
	.byte		N44   , As1
	.byte		N23   , Dn4 , v092
	.byte		N23   , Gn4 , v100
	.byte	W24
	.byte		N11   , Cn4 , v092
	.byte		N11   , An4 , v100
	.byte	W12
	.byte		        As3 , v092
	.byte		N11   , Gn4 , v100
	.byte	W12
	.byte		N44   , An1
	.byte		N32   , An3 , v092
	.byte		N32   , Fs4 , v100
	.byte	W36
	.byte		N11   , Dn3 , v092
	.byte		N11   , Fs3 , v100
	.byte	W12
	.byte		N23   , Gs1
	.byte		N23   , Cn3 , v092
	.byte		N23   , Fn3 , v100
	.byte	W24
	.byte		        Gn1
	.byte		N11   , Ds3 , v092
	.byte		N11   , Gn3 , v100
	.byte	W12
	.byte		        Dn3 , v092
	.byte		N11   , Fn3 , v100
	.byte	W12
	.byte		N23   , Fs1
	.byte		N23   , Cs3 , v092
	.byte		N23   , En3 , v100
	.byte	W24
	.byte		        Dn1
	.byte		N23   , Fs2 , v092
	.byte		N23   , Cn3 , v100
	.byte	W24
	.byte		N92   , Cs1
	.byte		N92   , Cs2 , v076
	.byte	W96
	.byte		        Cn1 , v100
	.byte		N68   , En3 , v076
	.byte	W72
	.byte		N11   , Dn2 , v080
	.byte		N11   , Dn3
	.byte	W12
	.byte		        En2
	.byte		N11   , En3
	.byte	W12
	.byte		N92   , Bn0 , v100
	.byte		N23   , Gn2 , v088
	.byte		N23   , Gn3
	.byte	W24
	.byte		N44   , Fs2 , v080
	.byte		N44   , Fs3
	.byte	W48
	.byte		N11   , Fs2 , v088
	.byte	W12
	.byte		        Bn2
	.byte	W12
	.byte		TIE   , Fs0 , v100
	.byte		N03   , Fs5
	.byte	W04
	.byte		        Fs5 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        Cs5 , v100
	.byte	W04
	.byte		        Cs5 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        As4 , v100
	.byte	W04
	.byte		        As4 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        Fs4 , v100
	.byte	W04
	.byte		        Fs4 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        Cs5 , v100
	.byte	W04
	.byte		        Cs5 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        As4 , v100
	.byte	W04
	.byte		        As4 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        Fs4 , v100
	.byte	W04
	.byte		        Fs4 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        Cs4 , v100
	.byte	W04
	.byte		        Cs4 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        As4 , v100
	.byte	W04
	.byte		        As4 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        Fs4 , v100
	.byte	W04
	.byte		        Fs4 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        Cs4 , v100
	.byte	W04
	.byte		        Cs4 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        As3 , v100
	.byte	W04
	.byte		        As3 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        Dn4 , v100
	.byte	W04
	.byte		        Dn4 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        Cs4 , v100
	.byte	W04
	.byte		        Cs4 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        As3 , v100
	.byte	W04
	.byte		        As3 , v080
	.byte	W04
	.byte		N03
	.byte	W04
	.byte		        Fs3 , v100
	.byte	W04
	.byte		        Fs3 , v080
	.byte	W04
	.byte		N03
	.byte	W03
	.byte		EOT   , Fs0
	.byte	W01
	.byte		N17   , Bn0 , v100
	.byte		N17   , Fs2 , v092
	.byte		N17   , Bn2
	.byte	W24
	.byte		N68   , Fs2 , v080
	.byte		N23   , Cn3 , v092
	.byte		N23   , En3 , v100
	.byte	W24
	.byte		N44   , Bn2 , v092
	.byte		N44   , Dn3
	.byte	W48
	.byte	W24
	.byte		N68   , As2 , v080
	.byte		N23   , Dn3 , v092
	.byte		N23   , An3 , v100
	.byte	W24
	.byte		N44   , En3 , v092
	.byte		N44   , Gn3
	.byte	W48
	.byte		N40   , An0 , v100
	.byte		N40   , Cs3 , v092
	.byte		N23   , As3 , v100
	.byte	W24
	.byte		N17   , An3 , v092
	.byte	W24
	.byte		N40   , Gs0 , v100
	.byte		N40   , Dn3 , v092
	.byte		N23   , Cn4 , v100
	.byte	W24
	.byte		N17   , As3 , v092
	.byte	W24
	.byte		N40   , Gn0 , v100
	.byte		N21   , An2 , v092
	.byte		N11   , Dn4 , v100
	.byte	W12
	.byte		N09   , Cs4 , v092
	.byte	W12
	.byte		N21   , As2
	.byte		N11   , En4 , v100
	.byte	W12
	.byte		N09   , Dn4 , v092
	.byte	W12
	.byte		N17   , An0 , v100
	.byte		N21   , Cs3 , v092
	.byte		N11   , Fn4 , v100
	.byte	W12
	.byte		N09   , En4 , v092
	.byte	W12
	.byte		N17   , Gs0 , v100
	.byte		N21   , Cn3 , v092
	.byte		N11   , Gn4 , v100
	.byte	W12
	.byte		N09   , Fn4 , v092
	.byte	W12
	.byte		N80   , En0 , v100
	.byte		N80   , Gs3 , v080
	.byte		N80   , As4 , v100
	.byte	W24
	.byte		N56   , En2 , v092
	.byte	W66
	.byte		N05   , An0 , v100
	.byte		N05   , Cs3 , v092
	.byte		N05   , An3 , v100
	.byte	W06
	.byte		N64   , An0
	.byte		N64   , Cs3 , v092
	.byte		N64   , An3 , v100
	.byte	W72
	.byte	GOTO
	 .word	mus_wilderness_of_battle_2_000
	.byte		FINE

@**************** Track 3 ****************@

mus_wilderness_of_battle_3:
	.byte		KEYSH , mus_wilderness_of_battle_key+0
	.byte		VOICE , 61
	.byte	W01
	.byte		VOL   , 70*mus_wilderness_of_battle_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
mus_wilderness_of_battle_3_000:
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
	.byte	W90
	.byte	W01
	.byte		N04   , Dn4 , v127
	.byte	W05
	.byte		N66   , Dn4 , v124
	.byte	W72
	.byte		N14   , Gn3 , v100
	.byte		N14   , En4 , v112
	.byte	W18
	.byte		N05   , Fs3 , v108
	.byte		N05   , Dn4 , v120
	.byte	W06
mus_wilderness_of_battle_3_001:
	.byte		N66   , Fs3 , v100
	.byte		N66   , Dn4 , v112
	.byte	W72
	.byte		N14   , Gn3 , v100
	.byte		N14   , En4 , v112
	.byte	W18
	.byte		N05   , Fs3 , v108
	.byte		N05   , Dn4 , v120
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_wilderness_of_battle_3_001
	.byte		N18   , Dn3 , v100
	.byte		N18   , Bn3 , v112
	.byte	W24
	.byte		        En3 , v100
	.byte		N18   , Cs4 , v112
	.byte	W24
	.byte		        Fs3 , v100
	.byte		N18   , Dn4 , v112
	.byte	W24
	.byte		        Bn3 , v100
	.byte		N18   , Gn4 , v112
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N17   , Bn2 , v100
	.byte	W24
	.byte		        Bn3
	.byte	W24
	.byte		N32   , As3
	.byte	W42
	.byte		N05   , Fs3
	.byte	W06
	.byte		N88   , An3
	.byte	W96
	.byte	W48
	.byte		N17   , Fs2
	.byte	W24
	.byte		        Fs3
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		N44   , Dn3 , v088
	.byte	W48
	.byte		N21   , An3
	.byte	W24
	.byte		N32   , Bn3
	.byte	W36
	.byte		N05   , An3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		N21   , Fs3
	.byte	W24
	.byte		        Dn3
	.byte	W24
	.byte		N42   , Fs3
	.byte	W48
	.byte		        Fn3
	.byte	W48
	.byte		        Dn3
	.byte	W48
	.byte		N19   , Ds3
	.byte	W24
	.byte		        Gn3
	.byte	W24
	.byte		N66   , Dn3 , v092
	.byte		N66   , Gn3 , v108
	.byte	W72
	.byte		N13   , Dn3 , v092
	.byte		N13   , An3 , v108
	.byte	W18
	.byte		N05   , Dn3 , v092
	.byte		N05   , Bn3 , v108
	.byte	W06
	.byte		N66   , Dn3 , v092
	.byte		N66   , Bn3 , v108
	.byte	W72
	.byte		N10   , Fs2 , v072
	.byte	W12
	.byte		        An2
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N09   , Fs3 , v100
	.byte	W12
	.byte		        Bn3
	.byte	W12
	.byte		N14   , Dn4
	.byte	W18
	.byte		N04   , Cs4
	.byte	W06
	.byte		N84   , Fs4
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte	GOTO
	 .word	mus_wilderness_of_battle_3_000
	.byte		FINE

@**************** Track 4 ****************@

mus_wilderness_of_battle_4:
	.byte		KEYSH , mus_wilderness_of_battle_key+0
	.byte		VOICE , 60
	.byte	W01
	.byte		VOL   , 59*mus_wilderness_of_battle_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
mus_wilderness_of_battle_4_000:
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
	.byte	W24
	.byte		N12   , Bn2 , v080
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		N24   , Cs3
	.byte	W24
	.byte		N17   , Gn3
	.byte	W19
	.byte		N04   , Fs3 , v092
	.byte	W05
	.byte		N66   , Fs3 , v088
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		        An2 , v100
	.byte		N66   , Fs3 , v120
	.byte	W72
	.byte		N12   , Bn2 , v100
	.byte		N12   , Gn3 , v120
	.byte	W18
	.byte		N06   , An2 , v100
	.byte		N06   , Fs3 , v120
	.byte	W06
	.byte		N66   , Gs2 , v100
	.byte		N66   , Fs3 , v120
	.byte	W72
	.byte		N12   , An2 , v100
	.byte		N12   , Gn3 , v120
	.byte	W18
	.byte		N06   , Gs2 , v100
	.byte		N06   , Fs3 , v120
	.byte	W06
	.byte		N42   , Dn2 , v100
	.byte		N42   , Fs3 , v120
	.byte	W48
	.byte		N18   , Fs2 , v100
	.byte		N18   , Dn3 , v120
	.byte	W24
	.byte		        Dn3 , v100
	.byte		N18   , Fs3 , v120
	.byte	W24
	.byte		N42   , Cs3 , v100
	.byte		N42   , Fs3 , v120
	.byte	W48
	.byte		N18   , As2 , v100
	.byte		N18   , Cs3 , v120
	.byte	W24
	.byte		        Cs3 , v100
	.byte		N18   , Fs3 , v120
	.byte	W24
	.byte	W48
	.byte		N17   , Fs2 , v108
	.byte	W24
	.byte		        Fs3
	.byte	W24
	.byte		N32   , Dn3
	.byte	W42
	.byte		N05   , An2 , v112
	.byte	W06
	.byte		N17   , Fs2 , v096
	.byte	W18
	.byte		N05   , Dn2 , v112
	.byte	W06
	.byte		N23   , Dn2 , v096
	.byte	W24
	.byte		N17   , Fs2 , v092
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N44   , Dn2 , v096
	.byte		N44   , Bn2 , v127
	.byte	W48
	.byte		        An2 , v096
	.byte		N44   , Cs3 , v127
	.byte	W48
	.byte		N21   , Gs2 , v096
	.byte		N32   , En3 , v127
	.byte	W24
	.byte		N21   , Gn2 , v096
	.byte	W12
	.byte		N05   , Dn3 , v127
	.byte	W06
	.byte		        Cs3
	.byte	W06
	.byte		N21   , Dn2 , v096
	.byte		N09   , Fs2 , v127
	.byte	W12
	.byte		        An2
	.byte	W12
	.byte		N21   , An2 , v096
	.byte		N09   , Dn3 , v127
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		N44   , Dn2 , v092
	.byte		N23   , Gn3 , v127
	.byte	W48
	.byte		N21   , Fs2 , v092
	.byte	W24
	.byte		        Fn2
	.byte	W24
	.byte		N18   , En2
	.byte	W24
	.byte		N44   , An1
	.byte	W48
	.byte		N21   , Dn2
	.byte	W24
	.byte		N42   , An2 , v080
	.byte	W48
	.byte		N42
	.byte	W48
	.byte		N19
	.byte	W24
	.byte		        Gs2
	.byte	W24
	.byte		N30   , Gn2
	.byte	W36
	.byte		N09   , Ds2
	.byte	W12
	.byte		N18   , Gn2
	.byte	W24
	.byte		        Fs2
	.byte	W24
	.byte		N30   , Fn2
	.byte	W36
	.byte		N09   , Dn2
	.byte	W12
	.byte		N18   , Fs2
	.byte	W24
	.byte		        Fn2
	.byte	W24
	.byte		N09   , Dn2 , v112
	.byte	W12
	.byte		        Fs2
	.byte	W36
	.byte	W24
	.byte		N23   , Ds3 , v092
	.byte	W24
	.byte		N11   , Dn3
	.byte	W12
	.byte		        Ds3
	.byte	W12
	.byte		N21   , An2
	.byte	W24
	.byte		        Gs2
	.byte	W24
	.byte		N11   , Gn2
	.byte	W12
	.byte		        Fn2
	.byte	W12
	.byte		N21   , An2
	.byte	W24
	.byte		        En3
	.byte	W24
	.byte		N92   , An2 , v080
	.byte		N68   , Fs3 , v112
	.byte	W72
	.byte		N09   , En3
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		N68   , As2 , v072
	.byte		N23   , An3 , v116
	.byte	W24
	.byte		N68   , Gn3 , v112
	.byte	W72
	.byte		N23   , Dn3 , v072
	.byte	W24
	.byte		N11   , En3
	.byte	W12
	.byte		        Dn3
	.byte	W12
	.byte		N32   , Cs3
	.byte	W36
	.byte		N11   , Fs2
	.byte	W12
	.byte		N14   , Dn3 , v108
	.byte	W18
	.byte		N04   , Cs3
	.byte	W06
	.byte		N84   , Fs3
	.byte	W72
	.byte	W24
	.byte		N21   , Cs2 , v096
	.byte	W24
	.byte		N11   , Dn2 , v100
	.byte	W12
	.byte		        En2
	.byte	W12
	.byte		N21   , Cs2 , v096
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		N23   , En2 , v080
	.byte	W24
	.byte		N40   , Fn2
	.byte	W48
	.byte		N21   , En2
	.byte	W24
	.byte		        Gn2 , v092
	.byte	W24
	.byte		        An2
	.byte	W24
	.byte		        Fn3
	.byte	W24
	.byte		N17   , En3 , v080
	.byte	W96
	.byte	W72
	.byte	GOTO
	 .word	mus_wilderness_of_battle_4_000
	.byte		FINE

@**************** Track 5 ****************@

mus_wilderness_of_battle_5:
	.byte		KEYSH , mus_wilderness_of_battle_key+0
	.byte		VOICE , 47
	.byte	W01
	.byte		VOL   , 75*mus_wilderness_of_battle_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
mus_wilderness_of_battle_5_000:
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N05   , An1 , v040
	.byte	W06
	.byte		        An1 , v068
	.byte	W06
	.byte		        An1 , v096
	.byte	W06
	.byte		        An1 , v124
	.byte	W06
	.byte		N23   , Dn1
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
mus_wilderness_of_battle_5_001:
	.byte		N17   , Fs1 , v127
	.byte	W18
	.byte		N05   , Fs1 , v108
	.byte	W06
	.byte		N17   , Fs1 , v127
	.byte	W18
	.byte		N05   , Fs1 , v108
	.byte	W06
	.byte		N17   , Fs1 , v127
	.byte	W18
	.byte		N05   , Fs1 , v108
	.byte	W06
	.byte		N11   , Fs1 , v127
	.byte	W12
	.byte		N05   , Fs1 , v108
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_wilderness_of_battle_5_001
	.byte	PATT
	 .word	mus_wilderness_of_battle_5_001
	.byte	PATT
	 .word	mus_wilderness_of_battle_5_001
	.byte		N23   , Bn1 , v127
	.byte	W96
	.byte	W84
	.byte		N05   , Fs1 , v108
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N23   , Bn1 , v127
	.byte	W96
	.byte	PATT
	 .word	mus_wilderness_of_battle_5_001
	.byte		N23   , Bn1 , v127
	.byte	W24
	.byte		        Fs1
	.byte	W24
	.byte		        Bn1
	.byte	W24
	.byte		        Fs1
	.byte	W24
	.byte		        Bn1
	.byte	W24
	.byte		        Fs1
	.byte	W24
	.byte		        Bn1
	.byte	W24
	.byte		N11   , Fs1
	.byte	W12
	.byte		N05   , Fs1 , v108
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N23   , Bn1 , v127
	.byte	W24
	.byte		        Fs1
	.byte	W24
	.byte		        Bn1
	.byte	W24
	.byte		N11   , Fs1
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N23   , Bn1
	.byte	W24
	.byte		N11   , Fs1
	.byte	W12
	.byte		N05   , Fs1 , v108
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		        Bn1
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		N23   , Bn1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		        As1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W18
	.byte		N05   , Fs1 , v092
	.byte	W06
	.byte		N17   , Fs1 , v120
	.byte	W18
	.byte		N05   , Fs1 , v100
	.byte	W06
	.byte		N17   , Fs1 , v124
	.byte	W18
	.byte		N05   , Fs1 , v104
	.byte	W06
	.byte		N11   , Fs1 , v127
	.byte	W12
	.byte		N05   , Fs1 , v108
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N23   , Bn1 , v127
	.byte	W24
	.byte		N17   , Bn1 , v124
	.byte	W18
	.byte		N05   , Bn1 , v104
	.byte	W06
	.byte		N17   , Bn1 , v124
	.byte	W18
	.byte		N05   , Bn1 , v104
	.byte	W06
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		N05   , Fs1 , v108
	.byte	W06
	.byte		        Fs1 , v120
	.byte	W06
	.byte		N17   , As1 , v127
	.byte	W18
	.byte		N05   , As1 , v104
	.byte	W06
	.byte		N17   , As1 , v124
	.byte	W18
	.byte		N05   , As1 , v104
	.byte	W06
	.byte		N17   , As1 , v124
	.byte	W18
	.byte		N05   , As1 , v104
	.byte	W06
	.byte		N11   , As1 , v127
	.byte	W12
	.byte		N05   , En1 , v108
	.byte	W06
	.byte		        En1 , v120
	.byte	W06
	.byte		N23   , An1 , v127
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte	GOTO
	 .word	mus_wilderness_of_battle_5_000
	.byte		FINE

@**************** Track 6 ****************@

mus_wilderness_of_battle_6:
	.byte		KEYSH , mus_wilderness_of_battle_key+0
	.byte		VOICE , 122
	.byte	W01
	.byte		VOL   , 62*mus_wilderness_of_battle_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
mus_wilderness_of_battle_6_000:
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N23   , Cn8 , v120
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N23
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N23
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N23
	.byte	W96
	.byte	W96
	.byte		N23
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N23
	.byte	W96
	.byte	W96
	.byte		N23
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N28
	.byte	W96
	.byte	W96
	.byte		N28
	.byte	W96
	.byte		N28
	.byte	W96
	.byte		N28
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte	GOTO
	 .word	mus_wilderness_of_battle_6_000
	.byte		FINE

@**************** Track 7 ****************@

mus_wilderness_of_battle_7:
	.byte		KEYSH , mus_wilderness_of_battle_key+0
	.byte		VOICE , 0
	.byte	W01
	.byte		VOL   , 35*mus_wilderness_of_battle_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
mus_wilderness_of_battle_7_000:
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N12   , Gn5 , v100
	.byte	W24
	.byte	W72
	.byte		        An5
	.byte	W24
	.byte	W72
	.byte		N12
	.byte	W24
	.byte	W72
	.byte		        Gn5
	.byte	W24
	.byte	W72
	.byte		        An5
	.byte	W24
	.byte	W72
	.byte		N12
	.byte	W24
	.byte	W72
	.byte		N12
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
	.byte	W72
	.byte	GOTO
	 .word	mus_wilderness_of_battle_7_000
	.byte		FINE

@**************** Track 8 ****************@

mus_wilderness_of_battle_8:
	.byte		KEYSH , mus_wilderness_of_battle_key+0
	.byte		VOICE , 82
	.byte	W01
	.byte		VOL   , 35*mus_wilderness_of_battle_mvl/mxv
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
mus_wilderness_of_battle_8_000:
	.byte		N23   , En2 , v092
	.byte	W24
	.byte		N04   , Fn2 , v080
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        En2
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Dn2
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Gs4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Dn2
	.byte	W06
	.byte		        En2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		        Dn2
	.byte	W06
	.byte		        En2
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        Fn4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Dn2
	.byte	W06
	.byte		        En2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		N11   , An2
	.byte	W12
	.byte		        As2
	.byte	W12
	.byte		        An2
	.byte	W12
	.byte		        Gn2
	.byte	W12
	.byte		N23   , Fn2
	.byte	W24
	.byte		        Dn2
	.byte	W24
	.byte		N64   , En2
	.byte	W72
	.byte		N24   , An2 , v100
	.byte	W24
	.byte		N18   , Fn3
	.byte	W24
	.byte		N18
	.byte	W24
	.byte		        En3
	.byte	W24
	.byte		        Gn3
	.byte	W24
	.byte		        An3
	.byte	W24
	.byte		        Cs4
	.byte	W24
	.byte		N36   , Cn4
	.byte	W36
	.byte		N06   , As3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		N24   , Fn3
	.byte	W24
	.byte		        Cn3
	.byte	W24
	.byte		        Dn3
	.byte	W24
	.byte		        Cs3
	.byte	W24
	.byte		N36   , Dn3
	.byte	W36
	.byte		N12   , Fs3
	.byte	W12
	.byte		        Fn3
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		N24   , Gn3
	.byte	W24
	.byte		        Dn3
	.byte	W24
	.byte		        Cs3
	.byte	W24
	.byte		N36   , Cn3
	.byte	W36
	.byte		N12   , An2
	.byte	W12
	.byte		N24   , An3
	.byte	W24
	.byte		        Dn4
	.byte	W24
	.byte		N12   , Cn4
	.byte	W12
	.byte		        As3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		N06   , Gn3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		N48   , An3
	.byte	W48
	.byte		        En3
	.byte	W48
	.byte		N11   , Dn3
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		N11   , Bn3
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N11   , As3
	.byte	W12
	.byte		N04   , Dn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		        As4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		N11   , As3
	.byte	W18
	.byte		N04
	.byte	W06
	.byte		N11   , An3
	.byte	W12
	.byte		N04   , Dn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        Dn5
	.byte	W06
	.byte		        An4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		N11   , An3
	.byte	W18
	.byte		N04
	.byte	W06
	.byte		N18   , Gs3
	.byte	W24
	.byte		N18
	.byte	W24
	.byte		        Dn3
	.byte	W24
	.byte		        En3
	.byte	W24
	.byte		N04   , Cs2
	.byte	W04
	.byte		        Fs2
	.byte	W04
	.byte		        An2
	.byte	W04
	.byte		        Fs2
	.byte	W04
	.byte		        An2
	.byte	W04
	.byte		        Cs3
	.byte	W04
	.byte		        An2
	.byte	W04
	.byte		        Cs3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        An4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Cs3
	.byte	W04
	.byte		        An2
	.byte	W04
	.byte		        Fs2
	.byte	W04
	.byte		        Cn2
	.byte	W04
	.byte		        Fs2
	.byte	W04
	.byte		        Gs2
	.byte	W04
	.byte		        Fs2
	.byte	W04
	.byte		        Gs2
	.byte	W04
	.byte		        Cn3
	.byte	W04
	.byte		        Gs2
	.byte	W04
	.byte		        Cn3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Gs3
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Gs4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        Gs3
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        Gs3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Cn3
	.byte	W04
	.byte		        Gs2
	.byte	W04
	.byte		        Fs2
	.byte	W04
	.byte		        Dn2
	.byte	W04
	.byte		        Fs2
	.byte	W04
	.byte		        Bn2
	.byte	W04
	.byte		        Fs2
	.byte	W04
	.byte		        Bn2
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Bn2
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Bn4
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
	.byte		        Bn3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Bn2
	.byte	W04
	.byte		        Fs2
	.byte	W04
	.byte		        Dn2
	.byte	W04
	.byte		        Fs2
	.byte	W04
	.byte		        Bn2
	.byte	W04
	.byte		        Fs2
	.byte	W04
	.byte		        Bn2
	.byte	W04
	.byte		        Cs3
	.byte	W04
	.byte		        Bn2
	.byte	W04
	.byte		        Cs3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        As4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		        As3
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		        As3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Cs3
	.byte	W04
	.byte		        As2
	.byte	W04
	.byte		        Fs2
	.byte	W04
	.byte		N18   , Bn2
	.byte	W48
	.byte		        Fs2
	.byte	W24
	.byte		N04
	.byte	W04
	.byte		        As2
	.byte	W04
	.byte		        Cs3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        As3
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		N10   , Fs4 , v112
	.byte	W12
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N06   , Gn4 , v100
	.byte	W06
	.byte		N03   , Fs4
	.byte	W03
	.byte		        Gn4 , v040
	.byte	W03
	.byte		        Fn4 , v100
	.byte	W03
	.byte		        Fs4 , v040
	.byte	W03
	.byte		        Fs4 , v100
	.byte	W03
	.byte		        Fn4 , v040
	.byte	W03
	.byte		N06   , Dn4 , v100
	.byte	W06
	.byte		N03   , Cs4
	.byte	W03
	.byte		        Dn4 , v040
	.byte	W03
	.byte		        Cn4 , v100
	.byte	W03
	.byte		        Cs4 , v040
	.byte	W03
	.byte		        Cs4 , v100
	.byte	W03
	.byte		        Cn4 , v040
	.byte	W03
	.byte		N06   , Gn3 , v100
	.byte	W06
	.byte		N03   , Fs3
	.byte	W03
	.byte		        Gn3 , v040
	.byte	W03
	.byte		        Fn3 , v100
	.byte	W03
	.byte		        Fs3 , v040
	.byte	W03
	.byte		        Fs3 , v100
	.byte	W03
	.byte		        Fn3 , v040
	.byte	W03
	.byte		N06   , Bn2 , v100
	.byte	W06
	.byte		N04   , As2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N04   , As2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06   , Dn3
	.byte	W06
	.byte		N04   , Cs3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N04   , Cs3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06   , Bn2
	.byte	W06
	.byte		N04   , An2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N04   , An2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N04   , An2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N04   , An2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06
	.byte	W06
	.byte		N03   , As2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , As2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , As2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Fs3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        An4
	.byte	W04
	.byte		N06   , Bn4
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , As2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , As2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , As2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Bn3
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		N04   , Bn2 , v092
	.byte	W04
	.byte		        Cn3
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Gn3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Gn4
	.byte	W04
	.byte		        An4
	.byte	W04
	.byte		        Bn4
	.byte	W04
	.byte		        An4
	.byte	W04
	.byte		        Gn4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Gn3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Cn3
	.byte	W04
	.byte		        Bn2
	.byte	W04
	.byte		        Cn3
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        En3
	.byte	W04
	.byte		        Fn3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		        Fn4
	.byte	W04
	.byte		        An4
	.byte	W04
	.byte		        Bn4
	.byte	W04
	.byte		        Gn4
	.byte	W04
	.byte		        Fn4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Gn3
	.byte	W04
	.byte		        Fn3
	.byte	W04
	.byte		        En3
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Cn3
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N44   , Fs2 , v080
	.byte	W48
	.byte		N21   , En2
	.byte	W24
	.byte		        Cs2
	.byte	W24
	.byte		        En2
	.byte	W24
	.byte		N44   , Bn1
	.byte	W48
	.byte		N09   , Dn2
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		N21   , Bn1
	.byte	W23
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N21   , Dn4
	.byte	W24
	.byte		        Fs4
	.byte	W24
	.byte		        An4
	.byte	W24
	.byte		N32   , Gn4
	.byte	W36
	.byte		N03   , Fn4
	.byte	W06
	.byte		        Ds4
	.byte	W06
	.byte		N21   , Dn4
	.byte	W24
	.byte		        An3
	.byte	W24
	.byte		N04   , Fs2
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Fs2
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Fs2
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Fs2
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Fs2
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Fs2
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Fn2 , v092
	.byte	W04
	.byte		        An2
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Fn3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Fn3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Ds4
	.byte	W04
	.byte		        Fn4
	.byte	W04
	.byte		        An4
	.byte	W04
	.byte		        Ds5
	.byte	W04
	.byte		        Cn5
	.byte	W04
	.byte		        Gn4
	.byte	W04
	.byte		        Ds4
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        Gn3
	.byte	W04
	.byte		        Gn4
	.byte	W04
	.byte		        Ds4
	.byte	W04
	.byte		        Cn4
	.byte	W04
	.byte		        Gn3
	.byte	W04
	.byte		        Ds3
	.byte	W04
	.byte		        Cn3
	.byte	W04
	.byte		        Gn2
	.byte	W04
	.byte		        Bn2
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Gn3
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Gn3
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		        Gn4
	.byte	W04
	.byte		        Bn4
	.byte	W04
	.byte		        Dn5
	.byte	W04
	.byte		        Bn4
	.byte	W04
	.byte		        Gn4
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Gn3
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Fn3
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Bn2
	.byte	W04
	.byte		        Gn2
	.byte	W04
	.byte		        Fs2
	.byte	W04
	.byte		        Bn2
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Fn3
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		        Fn4
	.byte	W04
	.byte		        Bn4
	.byte	W04
	.byte		        Dn5
	.byte	W04
	.byte		        Bn4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Bn2
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		        Fs4
	.byte	W04
	.byte		N10   , As4 , v080
	.byte	W12
	.byte		N11   , Gn3
	.byte	W12
	.byte		        An3
	.byte	W12
	.byte		        Gn3
	.byte	W12
	.byte		        Fs3
	.byte	W12
	.byte		        An2
	.byte	W12
	.byte		N23   , Dn4
	.byte	W24
	.byte		        Fn4
	.byte	W24
	.byte		N11   , Gn4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		N23   , En4
	.byte	W24
	.byte		        Cn4
	.byte	W24
	.byte		N92   , Cs3
	.byte	W96
	.byte		        Cn3
	.byte	W96
	.byte		        Bn2 , v088
	.byte	W96
	.byte		TIE   , As2 , v092
	.byte	W96
	.byte	W92
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte	W24
	.byte		N44   , Fs2
	.byte	W48
	.byte		N04
	.byte	W04
	.byte		        Bn2
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		N08   , Fs4
	.byte	W24
	.byte		N23   , Fs2
	.byte	W24
	.byte		        Gn2
	.byte	W24
	.byte		N04
	.byte	W04
	.byte		        As2
	.byte	W04
	.byte		        En3
	.byte	W04
	.byte		        Gn3
	.byte	W04
	.byte		        As3
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		N40   , An2
	.byte	W48
	.byte		        As2
	.byte	W48
	.byte		        Gn3
	.byte	W48
	.byte		N21   , An3
	.byte	W24
	.byte		        Gs3
	.byte	W24
	.byte		N04   , En1
	.byte	W04
	.byte		        Gs1
	.byte	W04
	.byte		        As1
	.byte	W04
	.byte		        En2
	.byte	W04
	.byte		        Gs2
	.byte	W04
	.byte		        As2
	.byte	W04
	.byte		        En3
	.byte	W04
	.byte		        Gs3
	.byte	W04
	.byte		        As3
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		        Gs4
	.byte	W04
	.byte		        As4
	.byte	W04
	.byte		        En5
	.byte	W04
	.byte		        As4
	.byte	W04
	.byte		        Gs4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		        As3
	.byte	W04
	.byte		        Gs3
	.byte	W04
	.byte		        En3
	.byte	W04
	.byte		        Bn2
	.byte	W04
	.byte		        Gs2
	.byte	W04
	.byte		        En2
	.byte	W06
	.byte		N05   , An2
	.byte	W06
	.byte		N20
	.byte	W24
	.byte		N04
	.byte	W04
	.byte		        Cs3
	.byte	W04
	.byte		        En3
	.byte	W04
	.byte		        An3
	.byte	W04
	.byte		        Cs4
	.byte	W04
	.byte		        En4
	.byte	W04
	.byte		N08   , An4
	.byte	W24
	.byte	GOTO
	 .word	mus_wilderness_of_battle_8_000
	.byte		FINE

@**************** Track 9 ****************@

mus_wilderness_of_battle_9:
	.byte		KEYSH , mus_wilderness_of_battle_key+0
	.byte		VOICE , 87
	.byte	W01
	.byte		VOL   , 35*mus_wilderness_of_battle_mvl/mxv
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
mus_wilderness_of_battle_9_000:
	.byte		N23   , An1 , v080
	.byte	W24
	.byte		N44   , Dn2
	.byte	W48
	.byte		        En2
	.byte	W48
	.byte		N32   , Gn2
	.byte	W36
	.byte		N05   , Fn2
	.byte	W06
	.byte		        En2
	.byte	W06
	.byte		N23   , An1
	.byte	W24
	.byte		        Fn1
	.byte	W24
	.byte		        As1
	.byte	W24
	.byte		        Cn2
	.byte	W24
	.byte		        Dn2
	.byte	W24
	.byte		        En2
	.byte	W24
	.byte		N32   , Fs2
	.byte	W36
	.byte		N05   , En2
	.byte	W06
	.byte		        Fs2
	.byte	W06
	.byte		N23   , An2
	.byte	W24
	.byte		        Gn2
	.byte	W24
	.byte		N32
	.byte	W36
	.byte		N05   , Fn2
	.byte	W06
	.byte		        Gn2
	.byte	W06
	.byte		N23   , As2
	.byte	W24
	.byte		        An2
	.byte	W24
	.byte		N32
	.byte	W36
	.byte		N05   , Gn2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		N23   , Cn3
	.byte	W24
	.byte		        As2
	.byte	W24
	.byte		        En2 , v076
	.byte	W24
	.byte		N11   , Dn2
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte		N32   , As1
	.byte	W36
	.byte		N11   , Gs1
	.byte	W12
	.byte		N64   , An1 , v072
	.byte	W72
	.byte		N24   , En2 , v100
	.byte	W24
	.byte		N18   , An2
	.byte	W24
	.byte		N18
	.byte	W24
	.byte		        Gn2
	.byte	W24
	.byte		        Cn3
	.byte	W24
	.byte		        As2
	.byte	W24
	.byte		        En3
	.byte	W24
	.byte		N36   , Fn3
	.byte	W36
	.byte		N06   , En3
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		N24   , As2
	.byte	W24
	.byte		        An2
	.byte	W24
	.byte		        Gs2
	.byte	W24
	.byte		        En2
	.byte	W24
	.byte		        Fs2
	.byte	W24
	.byte		        An2
	.byte	W24
	.byte		N48   , As2
	.byte	W48
	.byte		N24   , Gn2
	.byte	W24
	.byte		        As2
	.byte	W24
	.byte		        Gn2
	.byte	W24
	.byte		        En2
	.byte	W24
	.byte		        Fn2
	.byte	W24
	.byte		        An2
	.byte	W24
	.byte		N48   , Dn3
	.byte	W48
	.byte		        En3
	.byte	W48
	.byte		        An2
	.byte	W48
	.byte		N11   , Fs2
	.byte	W12
	.byte		N04
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		N11   , Dn3
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		N04   , Fs2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		N11   , Dn3
	.byte	W18
	.byte		N04
	.byte	W06
	.byte		N11
	.byte	W12
	.byte		N04   , Fs2
	.byte	W06
	.byte		        An2
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Fs4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		N11   , Dn3
	.byte	W18
	.byte		N04
	.byte	W06
	.byte		N18   , Bn2
	.byte	W24
	.byte		        Cs3
	.byte	W24
	.byte		        Gs2
	.byte	W24
	.byte		        Bn2
	.byte	W24
	.byte		N66   , Cs3
	.byte	W72
	.byte		N12
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N66   , Cn3
	.byte	W72
	.byte		N12
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N42   , Bn2
	.byte	W48
	.byte		N18
	.byte	W24
	.byte		        Fs2
	.byte	W24
	.byte		N42   , Bn2
	.byte	W48
	.byte		N18   , Fs2
	.byte	W24
	.byte		        As2
	.byte	W24
	.byte		        Bn1
	.byte	W72
	.byte		N04   , Fs1
	.byte	W04
	.byte		        As1
	.byte	W04
	.byte		        Cs2
	.byte	W04
	.byte		        Fs2
	.byte	W04
	.byte		        As2
	.byte	W04
	.byte		        Cs3
	.byte	W04
	.byte		N10   , Fs3 , v112
	.byte	W12
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N06   , Gn3 , v100
	.byte	W06
	.byte		N03   , Fs3
	.byte	W03
	.byte		        Gn3 , v040
	.byte	W03
	.byte		        Fn3 , v100
	.byte	W03
	.byte		        Fs3 , v040
	.byte	W03
	.byte		        Fs3 , v100
	.byte	W03
	.byte		        Fn3 , v040
	.byte	W03
	.byte		N06   , Dn3 , v100
	.byte	W06
	.byte		N03   , Cs3
	.byte	W03
	.byte		        Dn3 , v040
	.byte	W03
	.byte		        Cn3 , v100
	.byte	W03
	.byte		        Cs3 , v040
	.byte	W03
	.byte		        Cs3 , v100
	.byte	W03
	.byte		        Cn3 , v040
	.byte	W03
	.byte		N06   , Gn2 , v100
	.byte	W06
	.byte		N03   , Fs2
	.byte	W03
	.byte		        Gn2 , v040
	.byte	W03
	.byte		        Fn2 , v100
	.byte	W03
	.byte		        Fs2 , v040
	.byte	W03
	.byte		        Fs2 , v100
	.byte	W03
	.byte		        Fn2 , v040
	.byte	W03
	.byte		N06   , Bn1 , v100
	.byte	W06
	.byte		N04   , As1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N04   , As1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06   , Dn2
	.byte	W06
	.byte		N04   , Cs2
	.byte	W06
	.byte		        Dn2
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N04   , Cs2
	.byte	W06
	.byte		        Dn2
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06   , Bn1
	.byte	W06
	.byte		N04   , An1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N04   , An1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N04   , An1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N04   , An1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06
	.byte	W06
	.byte		N03   , As1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , As1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , As1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , As1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N03
	.byte	W06
mus_wilderness_of_battle_9_001:
	.byte		N06   , Bn1 , v100
	.byte	W06
	.byte		N03   , As1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , As1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , As1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , As1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PEND
mus_wilderness_of_battle_9_002:
	.byte		N06   , Bn2 , v100
	.byte	W06
	.byte		N03   , As2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , As2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , As2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , As2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_wilderness_of_battle_9_002
mus_wilderness_of_battle_9_003:
	.byte		N06   , Bn2 , v100
	.byte	W06
	.byte		N03   , As2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , As2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , An2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , An2
	.byte	W06
	.byte		        Bn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_wilderness_of_battle_9_003
	.byte	PATT
	 .word	mus_wilderness_of_battle_9_003
	.byte	PATT
	 .word	mus_wilderness_of_battle_9_003
	.byte		N06   , Cn2 , v100
	.byte	W06
	.byte		N03   , Bn1
	.byte	W06
	.byte		N02   , Cn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Bn1
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Bn1
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Bn1
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Bn1
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Bn1
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , As1
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , As1
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		N03
	.byte	W06
	.byte	PATT
	 .word	mus_wilderness_of_battle_9_001
	.byte		N06   , Bn1 , v100
	.byte	W06
	.byte		N03   , As1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , As1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , As1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N03
	.byte	W05
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N04   , Fs2 , v092
	.byte	W04
	.byte		        Bn2
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		        Dn4
	.byte	W04
	.byte		N10   , Gn4 , v080
	.byte	W12
	.byte		N11   , As2
	.byte	W12
	.byte		N23   , Gn2
	.byte	W24
	.byte		N11   , Fs2
	.byte	W12
	.byte		        Ds2
	.byte	W12
	.byte		N23   , Fs2
	.byte	W24
	.byte		        Cn4
	.byte	W24
	.byte		N11   , Ds4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		N23   , Cs4
	.byte	W24
	.byte		        Cn2
	.byte	W24
	.byte		N68   , Fs2
	.byte	W72
	.byte		N09   , En2 , v072
	.byte	W12
	.byte		        Fs2
	.byte	W12
	.byte		N92   , Cn2 , v080
	.byte	W96
	.byte		        Bn1 , v088
	.byte	W96
	.byte		TIE   , Fs2 , v092
	.byte	W96
	.byte	W92
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte	W24
	.byte		N21   , En2
	.byte	W24
	.byte		N23   , Dn2
	.byte	W24
	.byte		N04
	.byte	W04
	.byte		        Fs2
	.byte	W04
	.byte		        Bn2
	.byte	W04
	.byte		        Dn3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Bn3
	.byte	W04
	.byte		N08   , Dn4
	.byte	W24
	.byte		N23   , Dn2
	.byte	W24
	.byte		        En2
	.byte	W24
	.byte		N04
	.byte	W04
	.byte		        Gn2
	.byte	W04
	.byte		        As2
	.byte	W04
	.byte		        En3
	.byte	W04
	.byte		        Gn3
	.byte	W04
	.byte		        As3
	.byte	W04
	.byte		N40   , Cs2
	.byte	W48
	.byte		        Dn2
	.byte	W48
	.byte		N11   , Dn3
	.byte	W12
	.byte		N09   , Cs3
	.byte	W12
	.byte		N11   , En2
	.byte	W12
	.byte		N09   , Dn2
	.byte	W12
	.byte		N11   , Fn2
	.byte	W12
	.byte		N09   , En2
	.byte	W12
	.byte		N11   , Gn2
	.byte	W12
	.byte		N09   , Fn2
	.byte	W12
	.byte		N80   , Dn3
	.byte	W90
	.byte		N05   , En2
	.byte	W06
	.byte		N64
	.byte	W72
	.byte	GOTO
	 .word	mus_wilderness_of_battle_9_000
	.byte		FINE

@**************** Track 10 ****************@

mus_wilderness_of_battle_10:
	.byte		KEYSH , mus_wilderness_of_battle_key+0
	.byte		VOICE , 104
	.byte	W01
	.byte		VOL   , 70*mus_wilderness_of_battle_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W22
mus_wilderness_of_battle_10_000:
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N23   , An1 , v120
	.byte	W24
	.byte		N17   , Dn2
	.byte	W24
	.byte		        Cs2
	.byte	W24
	.byte		N28   , Cn2
	.byte	W36
	.byte		N11   , Gn1
	.byte	W12
	.byte		N17   , An1
	.byte	W24
	.byte		        Gn1
	.byte	W24
	.byte		N11   , Fn1
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte		N23   , As1
	.byte	W24
	.byte		N11   , An1
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		N17   , Fn1
	.byte	W24
	.byte		N23   , Cs2
	.byte	W24
	.byte		        Dn2
	.byte	W24
	.byte		N11   , Cn2
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		N28   , Gn1
	.byte	W36
	.byte		N11   , Dn2
	.byte	W12
	.byte		N23   , En2
	.byte	W24
	.byte		N11   , Dn2
	.byte	W12
	.byte		        Cs2
	.byte	W12
	.byte		N28   , An1
	.byte	W36
	.byte		N11   , En1
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		        Gn1
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte		        Dn2
	.byte	W12
	.byte		N17   , An1
	.byte	W24
	.byte		        Gs1
	.byte	W24
	.byte		        Gn1
	.byte	W24
	.byte		N23   , Fs1
	.byte	W24
mus_wilderness_of_battle_10_001:
	.byte		N10   , Bn1 , v120
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
mus_wilderness_of_battle_10_002:
	.byte		N10   , As1 , v120
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
	.byte		        An1
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
	.byte		        Gs1
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
	.byte		        Cs2
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
	.byte		        Cn2
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
	.byte	PATT
	 .word	mus_wilderness_of_battle_10_001
	.byte	PATT
	 .word	mus_wilderness_of_battle_10_002
	.byte		N17   , Bn1 , v120
	.byte	W24
	.byte		        Bn2
	.byte	W24
	.byte		N32   , As2
	.byte	W42
	.byte		N05   , Fs2
	.byte	W06
	.byte		N88   , An2
	.byte	W96
	.byte		N17   , Bn1
	.byte	W24
	.byte		        Bn2
	.byte	W24
	.byte		N32   , As2
	.byte	W42
	.byte		N05   , Dn2
	.byte	W06
	.byte		N88   , Fs2
	.byte	W96
mus_wilderness_of_battle_10_003:
	.byte		N11   , Bn1 , v120
	.byte	W24
	.byte		N11
	.byte	W24
	.byte		N11
	.byte	W24
	.byte		N11
	.byte	W24
	.byte		PEND
	.byte	PATT
	 .word	mus_wilderness_of_battle_10_003
mus_wilderness_of_battle_10_004:
	.byte		N06   , Bn1 , v120
	.byte	W06
	.byte		N04   , As1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N04   , As1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N04   , As1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N04   , As1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_wilderness_of_battle_10_004
mus_wilderness_of_battle_10_005:
	.byte		N06   , Bn1 , v120
	.byte	W06
	.byte		N04   , As1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N04   , As1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N04   , An1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N04   , An1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_wilderness_of_battle_10_005
	.byte	PATT
	 .word	mus_wilderness_of_battle_10_005
	.byte	PATT
	 .word	mus_wilderness_of_battle_10_005
mus_wilderness_of_battle_10_006:
	.byte		N06   , Cn2 , v120
	.byte	W06
	.byte		N04   , Bn1
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N04   , Bn1
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N04   , Bn1
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N04   , Bn1
	.byte	W06
	.byte		        Cn2
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		PEND
	.byte	PATT
	 .word	mus_wilderness_of_battle_10_006
	.byte	PATT
	 .word	mus_wilderness_of_battle_10_004
	.byte		N06   , Bn1 , v120
	.byte	W06
	.byte		N04   , As1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N04   , As1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N04   , As1
	.byte	W06
	.byte		        Bn1
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N24
	.byte	W24
	.byte		N18   , As1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		TIE   , Fs2
	.byte	W96
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte	PATT
	 .word	mus_wilderness_of_battle_10_001
	.byte	PATT
	 .word	mus_wilderness_of_battle_10_002
	.byte		N40   , An1 , v120
	.byte	W48
	.byte		        Gs1
	.byte	W48
	.byte		        Gn1
	.byte	W48
	.byte		N17   , An1
	.byte	W24
	.byte		        Gs1
	.byte	W24
	.byte		N80   , En2
	.byte	W90
	.byte		N05   , An2
	.byte	W06
	.byte		N64
	.byte	W72
	.byte	GOTO
	 .word	mus_wilderness_of_battle_10_000
	.byte		FINE

@******************************************************@
	.align	2

mus_wilderness_of_battle:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_wilderness_of_battle_pri	@ Priority
	.byte	mus_wilderness_of_battle_rev	@ Reverb.

	.word	mus_wilderness_of_battle_grp

	.word	mus_wilderness_of_battle_1
	.word	mus_wilderness_of_battle_2
	.word	mus_wilderness_of_battle_3
	.word	mus_wilderness_of_battle_4
	.word	mus_wilderness_of_battle_5
	.word	mus_wilderness_of_battle_6
	.word	mus_wilderness_of_battle_7
	.word	mus_wilderness_of_battle_8
	.word	mus_wilderness_of_battle_9
	.word	mus_wilderness_of_battle_10

	.end
