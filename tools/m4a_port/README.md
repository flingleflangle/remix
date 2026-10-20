# Porting music from other GBA games

Perl scripts for porting songs from GBA games that use Nintendo's sound engine (M4A, also called
"Sappy"), starting from `.minigsf` rips in `sound/import/<game>/`. The song data is copied byte for
byte, so a ported song plays the same notes as the original, using Emerald instruments.

Run them from Git Bash in the repo root.

1. Unpack the game's `.gsflib` (the stripped ROM) and read a song's `.minigsf` to get its song number:

       perl tools/m4a_port/unpsf.pl "sound/import/<game>/<lib>.gsflib" lib.bin
       perl tools/m4a_port/unpsf.pl "sound/import/<game>/<song>.minigsf" song.bin
       od -An -tx1 song.bin      # the song number

2. Look at the song's tracks (song number in decimal, song table offset in hex, without 0x08):

       perl tools/m4a_port/dis.pl lib.bin <table> <song> mus_name 1

3. Emerald plays at most 10 music tracks and 5 sampled notes at once. Check which tracks to cut:

       perl tools/m4a_port/poly.pl lib.bin <table> <song> [tracks to leave out...]

4. List the instruments the song uses, to fill their slots in the game's voicegroup:

       perl tools/m4a_port/voices.pl lib.bin 0x<voicegroup address> <programs...>

   Check that each Emerald substitute plays in the same octave as the original:

       perl tools/m4a_port/pitch.pl lib.bin 0x<voicegroup address> <programs...> -- <Emerald sample names...>

5. Write the song, cutting tracks and shifting wave-channel tracks down an octave (Emerald's
   programmable waves repeat twice, so a one-cycle wave from the original plays an octave high):

       perl tools/m4a_port/dis.pl lib.bin <table> <song> mus_name \
         | perl tools/m4a_port/post.pl mus_name "Title" 0x<song> "<cut tracks>" "<wave tracks>" "<why they were cut>" \
         > sound/songs/mus_name.s

   Then add the song to `ld_script.ld`, `sound/song_table.inc` and `include/constants/songs.h`.

   Check that every drum key the song plays exists in its Emerald drum kit (a missing key plays the
   placeholder square wave). Add new kits to the list at the top of the script:

       perl tools/m4a_port/drumcheck.pl sound/songs/mus_*.s

6. After building, check the built song against the original (`"original track:length ..."` for
   each kept track, lengths from step 2):

       perl tools/m4a_port/verify.pl lib.bin <table> <song> pokeemerald.gba 0x<mus_name address> "1:429 2:299 ..."

## Super Robot Taisen: Original Generation

- Song table at ROM `0x08336330` (table offset `336330`). Each `.minigsf` sets the song number at `0x0808D294`.
- Every song uses the instrument set at `0x0833430C`, mirrored by `voicegroup_srt_og`
  (`sound/voicegroups/srt_og.inc`). `post.pl` points songs at it. Add slots there as new songs need them.

## When Emerald has no close instrument

Prefer Emerald's own instruments. When nothing in Emerald is close (like Super Robot Taisen's orchestra hit),
the original's sample can be brought over. Copy it out of the stripped ROM as a `.bin` (16-byte header, the
samples, and one extra byte), convert it to `.aif` with `tools/aif2pcm/aif2pcm.exe x.bin x.aif`, check that
converting back gives the same bytes, put the `.aif` in `sound/direct_sound_samples/`, and add a
`DirectSoundWaveData_` label for it in `sound/direct_sound_data.inc`. The build makes the `.bin` from the `.aif`.
