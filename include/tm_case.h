#ifndef GUARD_TM_CASE_H
#define GUARD_TM_CASE_H

enum {
    TMCASE_FIELD, // Use TMs, from the bag or Select
    TMCASE_SELL,  // Sell TMs, from a Mart's sell menu
};

// Opens the TM Case, returning to exitCallback when it's closed.
// If closeWithSelect is set (opened as a registered item), Select also closes it.
void OpenTMCase(u8 mode, MainCallback exitCallback, bool8 closeWithSelect);
// Reopens the TM Case with the same mode and exit as before, e.g. after teaching a TM
void CB2_ReturnToTMCase(void);

#endif //GUARD_TM_CASE_H
