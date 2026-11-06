#ifndef GUARD_CONSTANTS_BATTLE_SETUP_H
#define GUARD_CONSTANTS_BATTLE_SETUP_H

#define TRAINER_BATTLE_SINGLE                           0
#define TRAINER_BATTLE_CONTINUE_SCRIPT_NO_MUSIC         1
#define TRAINER_BATTLE_CONTINUE_SCRIPT                  2
#define TRAINER_BATTLE_SINGLE_NO_INTRO_TEXT             3
#define TRAINER_BATTLE_DOUBLE                           4
#define TRAINER_BATTLE_REMATCH                          5
#define TRAINER_BATTLE_CONTINUE_SCRIPT_DOUBLE           6
#define TRAINER_BATTLE_REMATCH_DOUBLE                   7
#define TRAINER_BATTLE_CONTINUE_SCRIPT_DOUBLE_NO_MUSIC  8
#define TRAINER_BATTLE_PYRAMID                          9
#define TRAINER_BATTLE_SET_TRAINER_A                    10
#define TRAINER_BATTLE_SET_TRAINER_B                    11
#define TRAINER_BATTLE_HILL                             12

// The trainerbattle mode byte only needs its low 4 bits. Bits 4-5 hold the trainer's pay-off
// exception (the payoff= argument of the trainerbattle_* macros, see IsPayOffAllowed), and bit 6
// doubles what paying them costs (double_payoff=TRUE)
#define TRAINER_BATTLE_MODE_MASK      0x0F
#define TRAINER_BATTLE_PAYOFF_SHIFT   4
#define TRAINER_BATTLE_PAYOFF_MASK    3
#define TRAINER_BATTLE_PAYOFF_DOUBLE  (1 << 6)

#define PAYOFF_DEFAULT  0 // follow the map's policy (story and continue-script battles refuse)
#define PAYOFF_ALLOW    1 // can be paid off even on a refusing map or in a story/continue-script battle
                          // (paying never runs the continue script)
#define PAYOFF_FORBID   2 // never accepts payment

#endif // GUARD_CONSTANTS_BATTLE_SETUP_H
