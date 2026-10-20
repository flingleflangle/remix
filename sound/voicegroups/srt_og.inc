@ Instruments for songs ported from Super Robot Taisen: Original Generation (sound/import).
@ That game's songs all share one instrument set, so this mirrors it: each slot holds the closest
@ Emerald instrument to the original's instrument in that slot. Add slots here as new songs need them.
voice_group srt_og
	voice_keysplit voicegroup_piano_keysplit, keysplit_piano @ piano
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_directsound 60, 0, DirectSoundWaveData_sc88pro_xylophone, 255, 235, 0, 204 @ marimba (xylophone in Emerald)
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_directsound 60, 0, DirectSoundWaveData_sc88pro_tubular_bell, 255, 165, 90, 216 @ tubular bells
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_directsound 60, 0, DirectSoundWaveData_sc88pro_organ2, 255, 0, 255, 210 @ rock organ. The original sounds an octave below its root note, like this sample
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_directsound 60, 0, DirectSoundWaveData_sc88pro_nylon_str_guitar, 255, 249, 25, 76 @ nylon guitar
	voice_directsound 60, 0, DirectSoundWaveData_sd90_classical_distortion_guitar_high, 255, 165, 154, 165 @ intro guitar, as in MUS_T_MARIONETTE
	voice_directsound 60, 0, DirectSoundWaveData_sc88pro_nylon_str_guitar, 255, 249, 25, 76 @ plucked guitar (nylon guitar in Emerald)
	voice_directsound 60, 0, DirectSoundWaveData_sc88pro_nylon_str_guitar, 255, 249, 25, 76 @ clean guitar (nylon guitar in Emerald)
	voice_keysplit voicegroup_trumpet_keysplit, keysplit_trumpet @ guitar lead (trumpet in Emerald, which suits its style better)
	voice_directsound 60, 0, DirectSoundWaveData_sd90_classical_distortion_guitar_low, 255, 0, 255, 127 @ overdriven guitar. The original sounds an octave below its root note, like this _low sample
	voice_directsound 60, 0, DirectSoundWaveData_sd90_classical_distortion_guitar_high, 255, 0, 255, 127 @ distortion guitar. The _low sample sounds an octave below its root note
	voice_keysplit voicegroup_trumpet_keysplit, keysplit_trumpet @ distortion lead (trumpet in Emerald, which suits its style better)
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_directsound 60, 0, DirectSoundWaveData_sc88pro_fingered_bass, 255, 253, 0, 149 @ fingered bass, for very low guitar parts
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_directsound 60, 0, DirectSoundWaveData_sc88pro_harp, 255, 242, 51, 242 @ harp
	voice_directsound 60, 0, DirectSoundWaveData_sc88pro_timpani, 255, 246, 0, 226 @ timpani
	voice_keysplit voicegroup_strings_keysplit, keysplit_srt_og_strings @ strings (with a range that reaches down to note 24)
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_keysplit voicegroup_strings_keysplit, keysplit_srt_og_strings @ synth strings (strings in Emerald)
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_directsound 60, 0, DirectSoundWaveData_classical_choir_voice_ahhs, 255, 0, 255, 0 @ choir
	voice_directsound 60, 0, DirectSoundWaveData_classical_choir_voice_ahhs, 255, 0, 255, 0 @ voice oohs (choir in Emerald)
	voice_directsound 60, 0, DirectSoundWaveData_srt_og_orchestra_hit, 255, 0, 255, 127 @ orchestra hit. Emerald has none, so this is the original's sample (direct_sound_samples/srt_og_orchestra_hit.aif)
	voice_directsound 60, 0, DirectSoundWaveData_srt_og_orchestra_hit_55, 255, 0, 255, 127 @ orchestra hit. Emerald has none, so this is the original's sample
	voice_keysplit voicegroup_trumpet_keysplit, keysplit_trumpet @ trumpet
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_keysplit voicegroup_tuba_keysplit, keysplit_tuba @ tuba
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_keysplit voicegroup_french_horn_keysplit, keysplit_french_horn @ french horn
	voice_keysplit voicegroup_trumpet_keysplit, keysplit_trumpet @ brass (trumpet in Emerald)
	voice_keysplit voicegroup_trumpet_keysplit, keysplit_trumpet @ synth brass (trumpet in Emerald)
	voice_keysplit voicegroup_french_horn_keysplit, keysplit_french_horn @ synth brass (french horn in Emerald)
	voice_directsound 60, 0, DirectSoundWaveData_sd90_classical_oboe, 255, 165, 154, 127 @ soprano sax (oboe in Emerald)
	voice_keysplit voicegroup_french_horn_keysplit, keysplit_french_horn @ alto sax (french horn in Emerald, like vs_rival's brass)
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_directsound 60, 0, DirectSoundWaveData_sd90_classical_oboe, 255, 165, 154, 127 @ reed (oboe in Emerald)
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_keysplit voicegroup_french_horn_keysplit, keysplit_french_horn @ ocarina (french horn in Emerald; the flute was too quiet)
	voice_square_1 60, 0, 0, 0, 0, 0, 13, 0 @ same as the original
	voice_square_1 60, 0, 0, 1, 0, 0, 13, 0 @ same as the original
	voice_square_1 60, 0, 0, 2, 0, 0, 13, 0 @ same as the original
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_2 60, 0, 0, 0, 0, 13, 0 @ same as the original
	voice_square_2 60, 0, 1, 0, 0, 13, 0 @ same as the original
	voice_square_2 60, 0, 2, 0, 0, 13, 0 @ same as the original
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 0, 0, 6, 1, 0 @ same as the original
	voice_square_1 60, 0, 0, 1, 0, 6, 1, 0 @ same as the original
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_2 60, 0, 0, 0, 6, 1, 0 @ same as the original
	voice_square_2 60, 0, 1, 0, 6, 1, 0 @ same as the original
	voice_square_2 60, 0, 2, 0, 6, 1, 0 @ same as the original
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_directsound 60, 0, DirectSoundWaveData_sd90_classical_detuned_ep1_low, 255, 188, 128, 226 @ bright synth (electric piano in Emerald). The _high sample sounds an octave above its root note
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_programmable_wave 60, 0, ProgrammableWaveData_2, 0, 0, 13, 0 @ triangle bass, the original's wave repeated twice (its tracks are shifted down an octave)
	voice_programmable_wave 60, 0, ProgrammableWaveData_3, 0, 0, 13, 0 @ saw bass, the original's wave repeated twice (its tracks are shifted down an octave)
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_programmable_wave 60, 0, ProgrammableWaveData_6, 0, 0, 13, 0 @ square bass. Emerald's waves repeat twice, so its tracks are shifted down an octave
	voice_programmable_wave 60, 0, ProgrammableWaveData_3, 0, 0, 13, 0 @ saw bass. Emerald's waves repeat twice, so its tracks are shifted down an octave
	voice_programmable_wave 60, 0, ProgrammableWaveData_1, 0, 0, 13, 0 @ soft bass (a smooth Emerald wave; tracks using it are shifted down an octave)
	voice_keysplit_all voicegroup_srt_og_drumset_110 @ drums and effects
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_keysplit_all voicegroup_srt_og_drumset_119 @ drums (kick, snare, toms)
	voice_noise_alt 60, 0, 0, 0, 0, 13, 0 @ same as the original
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_noise_alt 60, 0, 0, 0, 3, 0, 2 @ same as the original
	voice_noise_alt 60, 0, 0, 0, 4, 2, 0 @ same as the original
	voice_noise_alt 60, 0, 0, 0, 2, 0, 0 @ same as the original
	voice_keysplit_all voicegroup_srt_og_rock_drumset_1 @ rock drums
	voice_keysplit_all voicegroup_srt_og_rock_drumset_2 @ rock drums
	voice_keysplit_all voicegroup_rg_credits_drumset @ orchestral drums
