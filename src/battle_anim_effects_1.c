#include "global.h"
#include "malloc.h"
#include "battle_anim.h"
#include "battle_interface.h"
#include "decompress.h"
#include "gpu_regs.h"
#include "graphics.h"
#include "m4a.h"
#include "main.h"
#include "math_util.h"
#include "palette.h"
#include "random.h"
#include "scanline_effect.h"
#include "sound.h"
#include "trig.h"
#include "util.h"
#include "constants/rgb.h"
#include "constants/songs.h"

struct {
    s16 startX;
    s16 startY;
    s16 targetX;
    s16 targetY;
} static EWRAM_DATA sFrenzyPlantRootData = {0}; // Debug? Written to but never read.

static void AnimMovePowderParticle(struct Sprite *);
static void AnimMovePowderParticle_Step(struct Sprite *);
static void AnimPowerAbsorptionOrb(struct Sprite *);
static void AnimSolarBeamBigOrb(struct Sprite *);
static void AnimSolarBeamSmallOrb(struct Sprite *);
static void AnimSolarBeamSmallOrb_Step(struct Sprite *);
static void AnimAbsorptionOrb(struct Sprite *);
static void AnimAbsorptionOrb_Step(struct Sprite *);
static void AnimHyperBeamOrb(struct Sprite *);
static void AnimHyperBeamOrb_Step(struct Sprite *);
static void AnimSporeParticle(struct Sprite *);
static void AnimSporeParticle_Step(struct Sprite *);
static void AnimPetalDanceBigFlower(struct Sprite *);
static void AnimPetalDanceBigFlower_Step(struct Sprite *);
static void AnimPetalDanceSmallFlower(struct Sprite *);
static void AnimPetalDanceSmallFlower_Step(struct Sprite *);
static void AnimRazorLeafParticle(struct Sprite *);
static void AnimRazorLeafParticle_Step1(struct Sprite *);
static void AnimRazorLeafParticle_Step2(struct Sprite *);
static void AnimLeechSeed(struct Sprite *);
static void AnimLeechSeed_Step(struct Sprite *);
static void AnimLeechSeedSprouts(struct Sprite *);
static void AnimGrassKnotStep(struct Sprite *);
static void AnimGrassKnot(struct Sprite *);
static void AnimTranslateLinearSingleSineWave(struct Sprite *);
static void AnimTranslateLinearSingleSineWave_Step(struct Sprite *);
static void AnimConstrictBinding(struct Sprite *);
static void AnimConstrictBinding_Step1(struct Sprite *);
static void AnimConstrictBinding_Step2(struct Sprite *);
static void AnimMimicOrb(struct Sprite *);
static void AnimIngrainRoot(struct Sprite *);
static void AnimFrenzyPlantRoot(struct Sprite *);
static void AnimRootFlickerOut(struct Sprite *);
static void AnimIngrainOrb(struct Sprite *);
static void AnimPresent(struct Sprite *);
static void AnimKnockOffItem(struct Sprite *);
static void AnimPresentHealParticle(struct Sprite *);
static void AnimItemSteal(struct Sprite *);
static void AnimItemSteal_Step1(struct Sprite *);
static void AnimItemSteal_Step2(struct Sprite *);
static void AnimItemSteal_Step3(struct Sprite *);
static void AnimTrickBag(struct Sprite *);
static void AnimTrickBag_Step1(struct Sprite *);
static void AnimTrickBag_Step2(struct Sprite *);
static void AnimTrickBag_Step3(struct Sprite *);
static void AnimFlyingParticle(struct Sprite *);
static void AnimFlyingParticle_Step(struct Sprite *);
static void AnimNeedleArmSpike(struct Sprite *);
static void AnimNeedleArmSpike_Step(struct Sprite *);
static void AnimSlidingHit(struct Sprite *);
static void AnimWhipHit(struct Sprite *);
static void AnimFlickeringPunch(struct Sprite *);
static void AnimCuttingSlice(struct Sprite *);
static void AnimAirCutterSlice(struct Sprite *);
static void AnimSlice_Step(struct Sprite *);
static void AnimCirclingMusicNote(struct Sprite *);
static void AnimCirclingMusicNote_Step(struct Sprite *);
static void AnimProtect(struct Sprite *);
static void AnimProtect_Step(struct Sprite *);
static void AnimMilkBottle(struct Sprite *);
static void AnimMilkBottle_Step1(struct Sprite *);
static void AnimMilkBottle_Step2(struct Sprite *, int, int);
static void AnimGrantingStars(struct Sprite *);
static void AnimSparklingStars(struct Sprite *);
static void AnimBubbleBurst(struct Sprite *);
static void AnimBubbleBurst_Step(struct Sprite *);
static void AnimSleepLetterZ(struct Sprite *);
static void AnimSleepLetterZ_Step(struct Sprite *);
static void AnimLockOnTarget(struct Sprite *);
static void AnimLockOnTarget_Step1(struct Sprite *);
static void AnimLockOnTarget_Step2(struct Sprite *);
static void AnimLockOnTarget_Step3(struct Sprite *);
static void AnimLockOnTarget_Step4(struct Sprite *);
static void AnimLockOnTarget_Step5(struct Sprite *);
static void AnimLockOnTarget_Step6(struct Sprite *);
static void AnimLockOnMoveTarget(struct Sprite *);
static void AnimBowMon(struct Sprite *);
static void AnimBowMon_Step1(struct Sprite *);
static void AnimBowMon_Step1_Callback(struct Sprite *);
static void AnimBowMon_Step2(struct Sprite *);
static void AnimBowMon_Step3(struct Sprite *);
static void AnimBowMon_Step4(struct Sprite *);
static void AnimBowMon_Step3_Callback(struct Sprite *);
static void AnimTipMon(struct Sprite *);
static void AnimTipMon_Step(struct Sprite *);
static void AnimSlashSlice(struct Sprite *);
static void AnimFalseSwipeSlice(struct Sprite *);
static void AnimFalseSwipeSlice_Step1(struct Sprite *);
static void AnimFalseSwipeSlice_Step2(struct Sprite *);
static void AnimFalseSwipeSlice_Step3(struct Sprite *);
static void AnimFalseSwipePositionedSlice(struct Sprite *);
static void AnimEndureEnergy(struct Sprite *);
static void AnimEndureEnergy_Step(struct Sprite *);
static void AnimSharpenSphere(struct Sprite *);
static void AnimSharpenSphere_Step(struct Sprite *);
static void AnimConversion(struct Sprite *);
static void AnimConversion2(struct Sprite *);
static void AnimConversion2_Step(struct Sprite *);
static void AnimMoon(struct Sprite *);
static void AnimMoon_Step(struct Sprite *);
static void AnimMoonlightSparkle(struct Sprite *);
static void AnimMoonlightSparkle_Step(struct Sprite *);
static void AnimHornHit(struct Sprite *);
static void AnimHornHit_Step(struct Sprite *);
static void AnimSuperFang(struct Sprite *);
static void AnimWavyMusicNotes(struct Sprite *);
static void AnimWavyMusicNotes_Step(struct Sprite *);
static void AnimWavyMusicNotes_CalcVelocity(s16, s16, s16 *, s16 *, s8);
static void AnimFlyingMusicNotes(struct Sprite *);
static void AnimFlyingMusicNotes_Step(struct Sprite *);
static void AnimBellyDrumHand(struct Sprite *);
static void AnimSlowFlyingMusicNotes(struct Sprite *);
static void AnimSlowFlyingMusicNotes_Step(struct Sprite *);
static void AnimThoughtBubble(struct Sprite *);
static void AnimThoughtBubble_Step(struct Sprite *);
static void AnimMetronomeFinger(struct Sprite *);
static void AnimMetronomeFinger_Step(struct Sprite *);
static void AnimFollowMeFinger(struct Sprite *);
static void AnimFollowMeFinger_Step1(struct Sprite *);
static void AnimFollowMeFinger_Step2(struct Sprite *);
static void AnimTauntFinger(struct Sprite *);
static void AnimTauntFinger_Step1(struct Sprite *);
static void AnimTauntFinger_Step2(struct Sprite *);
static void AnimMoveTwisterParticle_Step(struct Sprite *);
static void AnimTask_MoonlightEndFade_Step(u8 taskId);
static void AnimTask_LeafBlade_Step(u8);
static void AnimTask_DuplicateAndShrinkToPos_Step1(u8);
static void AnimTask_DuplicateAndShrinkToPos_Step2(u8);
static s16 LeafBladeGetPosFactor(struct Sprite *);
static void AnimTask_LeafBlade_Step2(struct Task *, u8);
static void AnimTask_LeafBlade_Step2_Callback(struct Sprite *);
static void AnimTask_SkullBashPositionSet(u8);
static void AnimTask_SkullBashPositionReset(u8);
static void AnimTask_DoubleTeam_Step(u8);
static void AnimDoubleTeam(struct Sprite *);
static void AnimNightSlash(struct Sprite *);

const union AnimCmd gPowderParticlesAnimCmds[] =
{
    ANIMCMD_FRAME(0, 5),
    ANIMCMD_FRAME(2, 5),
    ANIMCMD_FRAME(4, 5),
    ANIMCMD_FRAME(6, 5),
    ANIMCMD_FRAME(8, 5),
    ANIMCMD_FRAME(10, 5),
    ANIMCMD_FRAME(12, 5),
    ANIMCMD_FRAME(14, 5),
    ANIMCMD_JUMP(0),
};

const union AnimCmd *const gPowderParticlesAnimTable[] =
{
    gPowderParticlesAnimCmds,
};

const struct SpriteTemplate gSleepPowderParticleSpriteTemplate =
{
    .tileTag = ANIM_TAG_SLEEP_POWDER,
    .paletteTag = ANIM_TAG_SLEEP_POWDER,
    .oam = &gOamData_AffineOff_ObjNormal_8x16,
    .anims = gPowderParticlesAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimMovePowderParticle,
};


const struct SpriteTemplate gStunSporeParticleSpriteTemplate =
{
    .tileTag = ANIM_TAG_STUN_SPORE,
    .paletteTag = ANIM_TAG_STUN_SPORE,
    .oam = &gOamData_AffineOff_ObjNormal_8x16,
    .anims = gPowderParticlesAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimMovePowderParticle,
};

const struct SpriteTemplate gPoisonPowderParticleSpriteTemplate =
{
    .tileTag = ANIM_TAG_POISON_POWDER,
    .paletteTag = ANIM_TAG_POISON_POWDER,
    .oam = &gOamData_AffineOff_ObjNormal_8x16,
    .anims = gPowderParticlesAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimMovePowderParticle,
};

const union AnimCmd gSolarBeamBigOrbAnimCmds1[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_END,
};

const union AnimCmd gSolarBeamBigOrbAnimCmds2[] =
{
    ANIMCMD_FRAME(1, 1),
    ANIMCMD_END,
};

const union AnimCmd gSolarBeamBigOrbAnimCmds3[] =
{
    ANIMCMD_FRAME(2, 1),
    ANIMCMD_END,
};

const union AnimCmd gSolarBeamBigOrbAnimCmds4[] =
{
    ANIMCMD_FRAME(3, 1),
    ANIMCMD_END,
};

const union AnimCmd gSolarBeamBigOrbAnimCmds5[] =
{
    ANIMCMD_FRAME(4, 1),
    ANIMCMD_END,
};

const union AnimCmd gSolarBeamBigOrbAnimCmds6[] =
{
    ANIMCMD_FRAME(5, 1),
    ANIMCMD_END,
};

const union AnimCmd gSolarBeamBigOrbAnimCmds7[] =
{
    ANIMCMD_FRAME(6, 1),
    ANIMCMD_END,
};

const union AnimCmd gSolarBeamSmallOrbAnimCms[] =
{
    ANIMCMD_FRAME(7, 1),
    ANIMCMD_END,
};

const union AnimCmd gPowerAbsorptionOrbAnimCmds[] =
{
    ANIMCMD_FRAME(8, 1),
    ANIMCMD_END,
};

const union AnimCmd *const gSolarBeamBigOrbAnimTable[] =
{
    gSolarBeamBigOrbAnimCmds1,
    gSolarBeamBigOrbAnimCmds2,
    gSolarBeamBigOrbAnimCmds3,
    gSolarBeamBigOrbAnimCmds4,
    gSolarBeamBigOrbAnimCmds5,
    gSolarBeamBigOrbAnimCmds6,
    gSolarBeamBigOrbAnimCmds7,
};

const union AnimCmd *const gSolarBeamSmallOrbAnimTable[] =
{
    gSolarBeamSmallOrbAnimCms,
};

const union AnimCmd *const gPowerAbsorptionOrbAnimTable[] =
{
    gPowerAbsorptionOrbAnimCmds,
};

const union AffineAnimCmd gPowerAbsorptionOrbAffineAnimCmds[] = {
    AFFINEANIMCMD_FRAME(-5, -5, 0, 1),
    AFFINEANIMCMD_JUMP(0),
};

const union AffineAnimCmd *const gPowerAbsorptionOrbAffineAnimTable[] = {
    gPowerAbsorptionOrbAffineAnimCmds,
};

const struct SpriteTemplate gPowerAbsorptionOrbSpriteTemplate =
{
    .tileTag = ANIM_TAG_ORBS,
    .paletteTag = ANIM_TAG_ORBS,
    .oam = &gOamData_AffineNormal_ObjBlend_16x16,
    .anims = gPowerAbsorptionOrbAnimTable,
    .images = NULL,
    .affineAnims = gPowerAbsorptionOrbAffineAnimTable,
    .callback = AnimPowerAbsorptionOrb,
};

const struct SpriteTemplate gSolarBeamBigOrbSpriteTemplate =
{
    .tileTag = ANIM_TAG_ORBS,
    .paletteTag = ANIM_TAG_ORBS,
    .oam = &gOamData_AffineOff_ObjNormal_8x8,
    .anims = gSolarBeamBigOrbAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSolarBeamBigOrb,
};

const struct SpriteTemplate gSolarBeamSmallOrbSpriteTemplate =
{
    .tileTag = ANIM_TAG_ORBS,
    .paletteTag = ANIM_TAG_ORBS,
    .oam = &gOamData_AffineOff_ObjNormal_8x8,
    .anims = gSolarBeamSmallOrbAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSolarBeamSmallOrb,
};

const union AffineAnimCmd gStockpileAbsorptionOrbAffineCmds[] = {
    AFFINEANIMCMD_FRAME(320, 320, 0, 0),
    AFFINEANIMCMD_FRAME(-14, -14, 0, 1),
    AFFINEANIMCMD_JUMP(1),
};

const union AffineAnimCmd *const gStockpileAbsorptionOrbAffineAnimTable[] = {
    gStockpileAbsorptionOrbAffineCmds,
};

const struct SpriteTemplate gStockpileAbsorptionOrbSpriteTemplate =
{
    .tileTag = ANIM_TAG_GRAY_ORB,
    .paletteTag = ANIM_TAG_GRAY_ORB,
    .oam = &gOamData_AffineDouble_ObjNormal_8x8,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gStockpileAbsorptionOrbAffineAnimTable,
    .callback = AnimPowerAbsorptionOrb,
};

const union AffineAnimCmd gAbsorptionOrbAffineAnimCmds[] = {
    AFFINEANIMCMD_FRAME(-5, -5, 0, 1),
    AFFINEANIMCMD_JUMP(0),
};

const union AffineAnimCmd *const gAbsorptionOrbAffineAnimTable[] = {
    gAbsorptionOrbAffineAnimCmds,
};

const struct SpriteTemplate gAbsorptionOrbSpriteTemplate =
{
    .tileTag = ANIM_TAG_ORBS,
    .paletteTag = ANIM_TAG_ORBS,
    .oam = &gOamData_AffineNormal_ObjBlend_16x16,
    .anims = gPowerAbsorptionOrbAnimTable,
    .images = NULL,
    .affineAnims = gAbsorptionOrbAffineAnimTable,
    .callback = AnimAbsorptionOrb,
};

const struct SpriteTemplate gHyperBeamOrbSpriteTemplate =
{
    .tileTag = ANIM_TAG_ORBS,
    .paletteTag = ANIM_TAG_ORBS,
    .oam = &gOamData_AffineOff_ObjNormal_8x8,
    .anims = gSolarBeamBigOrbAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimHyperBeamOrb,
};

const union AnimCmd gNightSlashLeftAnimCmd0[] =
{
    ANIMCMD_FRAME(0, 4),
    ANIMCMD_FRAME(16, 4),
    ANIMCMD_FRAME(32, 4),
    ANIMCMD_FRAME(48, 4),
    ANIMCMD_END,
};

const union AnimCmd gNightSlashLeftAnimCmd1[] =
{
    ANIMCMD_FRAME(48, 4),
    ANIMCMD_END,
};

const union AnimCmd *const gNightSlashLeftAnimTable[] =
{
    gNightSlashLeftAnimCmd0,
    gNightSlashLeftAnimCmd1,
};

const struct SpriteTemplate gNightSlashLeftSpriteTemplate =
{
    .tileTag = ANIM_TAG_SLASH,
    .paletteTag = ANIM_TAG_SLASH,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = gNightSlashLeftAnimTable,
    .callback = AnimNightSlash,
};

const union AnimCmd gNightSlashRightAnimCmd0[] =
{
    ANIMCMD_FRAME(0, 4, .vFlip = TRUE, .hFlip = TRUE),
    ANIMCMD_FRAME(16, 4, .vFlip = TRUE, .hFlip = TRUE),
    ANIMCMD_FRAME(32, 4, .vFlip = TRUE, .hFlip = TRUE),
    ANIMCMD_FRAME(48, 4, .vFlip = TRUE, .hFlip = TRUE),
    ANIMCMD_END,
};

const union AnimCmd gNightSlashRightAnimCmd1[] =
{
    ANIMCMD_FRAME(48, 4, .vFlip = TRUE, .hFlip = TRUE),
    ANIMCMD_END,
};

const union AnimCmd *const gNightSlashRightAnimTable[] =
{
    gNightSlashRightAnimCmd0,
    gNightSlashRightAnimCmd1,
};

const struct SpriteTemplate gNightSlashRightSpriteTemplate =
{
    .tileTag = ANIM_TAG_SLASH,
    .paletteTag = ANIM_TAG_SLASH,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = gNightSlashRightAnimTable,
    .callback = AnimNightSlash,
};

void AnimTask_BlendNightSlash(u8 taskId)
{
    int paletteOffset = IndexOfSpritePaletteTag(ANIM_TAG_SLASH) * 16 + 256;
    BlendPalette(paletteOffset, 16, 6, RGB_RED);
    DestroyAnimVisualTask(taskId);
}

static void AnimNightSlash(struct Sprite *sprite)
{
    sprite->callback = AnimSlashSlice;
    sprite->callback(sprite);
}

const union AnimCmd gLeechSeedAnimCmds1[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_END,
};

const union AnimCmd gLeechSeedAnimCmds2[] =
{
    ANIMCMD_FRAME(4, 7),
    ANIMCMD_FRAME(8, 7),
    ANIMCMD_JUMP(0),
};

const union AnimCmd *const gLeechSeedAnimTable[] =
{
    gLeechSeedAnimCmds1,
    gLeechSeedAnimCmds2,
};

const struct SpriteTemplate gLeechSeedSpriteTemplate =
{
    .tileTag = ANIM_TAG_SEED,
    .paletteTag = ANIM_TAG_SEED,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = gLeechSeedAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimLeechSeed,
};

const union AnimCmd gSporeParticleAnimCmds1[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_END,
};

const union AnimCmd gSporeParticleAnimCmds2[] =
{
    ANIMCMD_FRAME(4, 7),
    ANIMCMD_END,
};

const union AnimCmd *const gSporeParticleAnimTable[] =
{
    gSporeParticleAnimCmds1,
    gSporeParticleAnimCmds2,
};

const struct SpriteTemplate gSporeParticleSpriteTemplate =
{
    .tileTag = ANIM_TAG_SPORE,
    .paletteTag = ANIM_TAG_SPORE,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = gSporeParticleAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSporeParticle,
};

const union AnimCmd gPetalDanceBigFlowerAnimCmds[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_END,
};

const union AnimCmd gPetalDanceSmallFlowerAnimCmds[] =
{
    ANIMCMD_FRAME(4, 1),
    ANIMCMD_END,
};

const union AnimCmd *const gPetalDanceBigFlowerAnimTable[] =
{
    gPetalDanceBigFlowerAnimCmds,
};

const union AnimCmd *const gPetalDanceSmallFlowerAnimTable[] =
{
    gPetalDanceSmallFlowerAnimCmds,
};

const struct SpriteTemplate gPetalDanceBigFlowerSpriteTemplate =
{
    .tileTag = ANIM_TAG_FLOWER,
    .paletteTag = ANIM_TAG_FLOWER,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = gPetalDanceBigFlowerAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimPetalDanceBigFlower,
};

const struct SpriteTemplate gPetalDanceSmallFlowerSpriteTemplate =
{
    .tileTag = ANIM_TAG_FLOWER,
    .paletteTag = ANIM_TAG_FLOWER,
    .oam = &gOamData_AffineOff_ObjNormal_8x8,
    .anims = gPetalDanceSmallFlowerAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimPetalDanceSmallFlower,
};

const union AnimCmd gRazorLeafParticleAnimCmds1[] =
{
    ANIMCMD_FRAME(0, 5),
    ANIMCMD_FRAME(4, 5),
    ANIMCMD_FRAME(8, 5),
    ANIMCMD_FRAME(12, 5),
    ANIMCMD_FRAME(16, 5),
    ANIMCMD_FRAME(20, 5),
    ANIMCMD_FRAME(16, 5),
    ANIMCMD_FRAME(12, 5),
    ANIMCMD_FRAME(8, 5),
    ANIMCMD_FRAME(4, 5),
    ANIMCMD_JUMP(0),
};

const union AnimCmd gRazorLeafParticleAnimCmds2[] =
{
    ANIMCMD_FRAME(24, 5),
    ANIMCMD_FRAME(28, 5),
    ANIMCMD_FRAME(32, 5),
    ANIMCMD_END,
};

const union AnimCmd *const gRazorLeafParticleAnimTable[] =
{
    gRazorLeafParticleAnimCmds1,
    gRazorLeafParticleAnimCmds2,
};

const struct SpriteTemplate gRazorLeafParticleSpriteTemplate =
{
    .tileTag = ANIM_TAG_LEAF,
    .paletteTag = ANIM_TAG_LEAF,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = gRazorLeafParticleAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimRazorLeafParticle,
};

const struct SpriteTemplate gTwisterLeafSpriteTemplate =
{
    .tileTag = ANIM_TAG_LEAF,
    .paletteTag = ANIM_TAG_LEAF,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = gRazorLeafParticleAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimMoveTwisterParticle,
};

const union AnimCmd gRazorLeafCutterAnimCmds[] =
{
    ANIMCMD_FRAME(0, 3),
    ANIMCMD_FRAME(0, 3, .hFlip = TRUE),
    ANIMCMD_FRAME(0, 3, .vFlip = TRUE, .hFlip = TRUE),
    ANIMCMD_FRAME(0, 3, .vFlip = TRUE),
    ANIMCMD_JUMP(0),
};

const union AnimCmd *const gRazorLeafCutterAnimTable[] =
{
    gRazorLeafCutterAnimCmds,
};

const struct SpriteTemplate gRazorLeafCutterSpriteTemplate =
{
    .tileTag = ANIM_TAG_RAZOR_LEAF,
    .paletteTag = ANIM_TAG_RAZOR_LEAF,
    .oam = &gOamData_AffineOff_ObjNormal_32x16,
    .anims = gRazorLeafCutterAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimTranslateLinearSingleSineWave,
};

const struct SpriteTemplate gGrassKnotSpriteTemplate =
{
    .tileTag = ANIM_TAG_RAZOR_LEAF,
    .paletteTag = ANIM_TAG_RAZOR_LEAF,
    .oam = &gOamData_AffineOff_ObjNormal_32x16,
    .anims = gRazorLeafCutterAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimGrassKnot,
};

const union AffineAnimCmd gSwiftStarAffineAnimCmds[] = {
    AFFINEANIMCMD_FRAME(0, 0, 0, 1),
    AFFINEANIMCMD_JUMP(0),
};

const union AffineAnimCmd *const gSwiftStarAffineAnimTable[] = {
    gSwiftStarAffineAnimCmds,
};

const struct SpriteTemplate gSwiftStarSpriteTemplate =
{
    .tileTag = ANIM_TAG_YELLOW_STAR,
    .paletteTag = ANIM_TAG_YELLOW_STAR,
    .oam = &gOamData_AffineNormal_ObjNormal_32x32,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gSwiftStarAffineAnimTable,
    .callback = AnimTranslateLinearSingleSineWave,
};

static const union AnimCmd sAnim_ConstrictBinding[] =
{
    ANIMCMD_FRAME(0, 4),
    ANIMCMD_FRAME(32, 4),
    ANIMCMD_FRAME(64, 4),
    ANIMCMD_FRAME(96, 4),
    ANIMCMD_END,
};

static const union AnimCmd sAnim_ConstrictBinding_Flipped[] =
{
    ANIMCMD_FRAME(0,  4, .hFlip = TRUE),
    ANIMCMD_FRAME(32, 4, .hFlip = TRUE),
    ANIMCMD_FRAME(64, 4, .hFlip = TRUE),
    ANIMCMD_FRAME(96, 4, .hFlip = TRUE),
    ANIMCMD_END,
};

static const union AnimCmd *const sAnims_ConstrictBinding[] =
{
    sAnim_ConstrictBinding,
    sAnim_ConstrictBinding_Flipped,
};

static const union AffineAnimCmd sAffineAnim_ConstrictBinding[] = {
    AFFINEANIMCMD_FRAME(0x100, 0x100, 0, 0),
    AFFINEANIMCMD_FRAME(-11, 0, 0, 6),
    AFFINEANIMCMD_FRAME(11, 0, 0, 6),
    AFFINEANIMCMD_END,
};

static const union AffineAnimCmd sAffineAnim_ConstrictBinding_Flipped[] = {
    AFFINEANIMCMD_FRAME(-0x100, 0x100, 0, 0),
    AFFINEANIMCMD_FRAME(11, 0, 0, 6),
    AFFINEANIMCMD_FRAME(-11, 0, 0, 6),
    AFFINEANIMCMD_END,
};

static const union AffineAnimCmd *const sAffineAnims_ConstrictBinding[] = {
    sAffineAnim_ConstrictBinding,
    sAffineAnim_ConstrictBinding_Flipped,
};

const struct SpriteTemplate gConstrictBindingSpriteTemplate =
{
    .tileTag = ANIM_TAG_TENDRILS,
    .paletteTag = ANIM_TAG_TENDRILS,
    .oam = &gOamData_AffineNormal_ObjNormal_64x32,
    .anims = sAnims_ConstrictBinding,
    .images = NULL,
    .affineAnims = sAffineAnims_ConstrictBinding,
    .callback = AnimConstrictBinding,
};

const union AffineAnimCmd gMimicOrbAffineAnimCmds1[] = {
    AFFINEANIMCMD_FRAME(0, 0, 0, 0),
    AFFINEANIMCMD_FRAME(48, 48, 0, 14),
    AFFINEANIMCMD_END,
};

const union AffineAnimCmd gMimicOrbAffineAnimCmds2[] = {
    AFFINEANIMCMD_FRAME(-16, -16, 0, 1),
    AFFINEANIMCMD_JUMP(0),
};

const union AffineAnimCmd *const gMimicOrbAffineAnimTable[] = {
    gMimicOrbAffineAnimCmds1,
    gMimicOrbAffineAnimCmds2,
};

const struct SpriteTemplate gMimicOrbSpriteTemplate =
{
    .tileTag = ANIM_TAG_ORBS,
    .paletteTag = ANIM_TAG_ORBS,
    .oam = &gOamData_AffineDouble_ObjNormal_16x16,
    .anims = gPowerAbsorptionOrbAnimTable,
    .images = NULL,
    .affineAnims = gMimicOrbAffineAnimTable,
    .callback = AnimMimicOrb,
};

const union AnimCmd gIngrainRootAnimCmds1[] =
{
    ANIMCMD_FRAME(0, 7),
    ANIMCMD_FRAME(16, 7),
    ANIMCMD_FRAME(32, 7),
    ANIMCMD_FRAME(48, 7),
    ANIMCMD_END,
};

const union AnimCmd gIngrainRootAnimCmds2[] =
{
    ANIMCMD_FRAME(0, 7, .hFlip = TRUE),
    ANIMCMD_FRAME(16, 7, .hFlip = TRUE),
    ANIMCMD_FRAME(32, 7, .hFlip = TRUE),
    ANIMCMD_FRAME(48, 7, .hFlip = TRUE),
    ANIMCMD_END,
};

const union AnimCmd gIngrainRootAnimCmds3[] =
{
    ANIMCMD_FRAME(0, 7),
    ANIMCMD_FRAME(16, 7),
    ANIMCMD_FRAME(32, 7),
    ANIMCMD_END,
};

const union AnimCmd gIngrainRootAnimCmds4[] =
{
    ANIMCMD_FRAME(0, 7, .hFlip = TRUE),
    ANIMCMD_FRAME(16, 7, .hFlip = TRUE),
    ANIMCMD_FRAME(32, 7, .hFlip = TRUE),
    ANIMCMD_END,
};

const union AnimCmd *const gIngrainRootAnimTable[] =
{
    gIngrainRootAnimCmds1,
    gIngrainRootAnimCmds2,
    gIngrainRootAnimCmds3,
    gIngrainRootAnimCmds4,
};

const struct SpriteTemplate gIngrainRootSpriteTemplate =
{
    .tileTag = ANIM_TAG_ROOTS,
    .paletteTag = ANIM_TAG_ROOTS,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = gIngrainRootAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimIngrainRoot,
};

const struct SpriteTemplate gFrenzyPlantRootSpriteTemplate =
{
    .tileTag = ANIM_TAG_ROOTS,
    .paletteTag = ANIM_TAG_ROOTS,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = gIngrainRootAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimFrenzyPlantRoot,
};

const union AnimCmd gIngrainOrbAnimCmds[] =
{
    ANIMCMD_FRAME(3, 3),
    ANIMCMD_FRAME(0, 5),
    ANIMCMD_JUMP(0),
};

const union AnimCmd *const gIngrainOrbAnimTable[] =
{
    gIngrainOrbAnimCmds,
};

const struct SpriteTemplate gIngrainOrbSpriteTemplate =
{
    .tileTag = ANIM_TAG_ORBS,
    .paletteTag = ANIM_TAG_ORBS,
    .oam = &gOamData_AffineOff_ObjNormal_8x8,
    .anims = gIngrainOrbAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimIngrainOrb,
};

const union AnimCmd gFallingBagAnimCmds[] =
{
    ANIMCMD_FRAME(0, 30),
    ANIMCMD_END,
};

const union AnimCmd *const gFallingBagAnimTable[] =
{
    gFallingBagAnimCmds,
};

const union AffineAnimCmd gFallingBagAffineAnimCmds1[] = {
    AFFINEANIMCMD_FRAME(0, 0, -4, 10),
    AFFINEANIMCMD_FRAME(0, 0, 4, 20),
    AFFINEANIMCMD_FRAME(0, 0, -4, 10),
    AFFINEANIMCMD_END,
};

const union AffineAnimCmd gFallingBagAffineAnimCmds2[] = {
    AFFINEANIMCMD_FRAME(0, 0, -1, 2),
    AFFINEANIMCMD_FRAME(0, 0, 1, 4),
    AFFINEANIMCMD_FRAME(0, 0, -1, 4),
    AFFINEANIMCMD_FRAME(0, 0, 1, 4),
    AFFINEANIMCMD_FRAME(0, 0, -1, 4),
    AFFINEANIMCMD_FRAME(0, 0, 1, 2),
    AFFINEANIMCMD_END,
};

const union AffineAnimCmd *const gFallingBagAffineAnimTable[] = {
    gFallingBagAffineAnimCmds1,
    gFallingBagAffineAnimCmds2,
};

const struct SpriteTemplate gPresentSpriteTemplate =
{
    .tileTag = ANIM_TAG_ITEM_BAG,
    .paletteTag = ANIM_TAG_ITEM_BAG,
    .oam = &gOamData_AffineNormal_ObjNormal_32x32,
    .anims = gFallingBagAnimTable,
    .images = NULL,
    .affineAnims = gFallingBagAffineAnimTable,
    .callback = AnimPresent,
};

const struct SpriteTemplate gKnockOffItemSpriteTemplate =
{
    .tileTag = ANIM_TAG_ITEM_BAG,
    .paletteTag = ANIM_TAG_ITEM_BAG,
    .oam = &gOamData_AffineNormal_ObjNormal_32x32,
    .anims = gFallingBagAnimTable,
    .images = NULL,
    .affineAnims = gFallingBagAffineAnimTable,
    .callback = AnimKnockOffItem,
};

const union AnimCmd gPresentHealParticleAnimCmds[] =
{
    ANIMCMD_FRAME(0, 4),
    ANIMCMD_FRAME(4, 4),
    ANIMCMD_FRAME(8, 4),
    ANIMCMD_FRAME(12, 4),
    ANIMCMD_END,
};

const union AnimCmd *const gPresentHealParticleAnimTable[] =
{
    gPresentHealParticleAnimCmds,
};

const struct SpriteTemplate gPresentHealParticleSpriteTemplate =
{
    .tileTag = ANIM_TAG_GREEN_SPARKLE,
    .paletteTag = ANIM_TAG_GREEN_SPARKLE,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = gPresentHealParticleAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimPresentHealParticle,
};

const struct SpriteTemplate gItemStealSpriteTemplate =
{
    .tileTag = ANIM_TAG_ITEM_BAG,
    .paletteTag = ANIM_TAG_ITEM_BAG,
    .oam = &gOamData_AffineNormal_ObjNormal_32x32,
    .anims = gFallingBagAnimTable,
    .images = NULL,
    .affineAnims = gFallingBagAffineAnimTable,
    .callback = AnimItemSteal,
};

const union AffineAnimCmd gTrickBagAffineAnimCmds1[] = {
    AFFINEANIMCMD_FRAME(0, 0, 0, 3),
    AFFINEANIMCMD_END,
};

const union AffineAnimCmd gTrickBagAffineAnimCmds2[] = {
    AFFINEANIMCMD_FRAME(0, -10, 0, 3),
    AFFINEANIMCMD_FRAME(0, -6, 0, 3),
    AFFINEANIMCMD_FRAME(0, -2, 0, 3),
    AFFINEANIMCMD_FRAME(0, 0, 0, 3),
    AFFINEANIMCMD_FRAME(0, 2, 0, 3),
    AFFINEANIMCMD_FRAME(0, 6, 0, 3),
    AFFINEANIMCMD_FRAME(0, 10, 0, 3),
    AFFINEANIMCMD_END,
};

const union AffineAnimCmd *const gTrickBagAffineAnimTable[] = {
    gTrickBagAffineAnimCmds1,
    gTrickBagAffineAnimCmds2,
    gFallingBagAffineAnimCmds1,
    gFallingBagAffineAnimCmds2,
};

const struct SpriteTemplate gTrickBagSpriteTemplate =
{
    .tileTag = ANIM_TAG_ITEM_BAG,
    .paletteTag = ANIM_TAG_ITEM_BAG,
    .oam = &gOamData_AffineNormal_ObjNormal_32x32,
    .anims = gFallingBagAnimTable,
    .images = NULL,
    .affineAnims = gTrickBagAffineAnimTable,
    .callback = AnimTrickBag,
};

const s8 gTrickBagCoordinates[][3] =
{
    {5, 24,   1},
    {0,  4,   0},
    {8, 16,  -1},
    {0,  2,   0},
    {8, 16,   1},
    {0,  2,   0},
    {8, 16,   1},
    {0,  2,   0},
    {8, 16,   1},
    {0, 16,   0},
    {0,  0, 127},
};

const union AnimCmd gLeafBladeAnimCmds1[] =
{
    ANIMCMD_FRAME(28, 1),
    ANIMCMD_END,
};

const union AnimCmd gLeafBladeAnimCmds2[] =
{
    ANIMCMD_FRAME(32, 1),
    ANIMCMD_END,
};

const union AnimCmd gLeafBladeAnimCmds3[] =
{
    ANIMCMD_FRAME(20, 1),
    ANIMCMD_END,
};

const union AnimCmd gLeafBladeAnimCmds4[] =
{
    ANIMCMD_FRAME(28, 1, .hFlip = TRUE),
    ANIMCMD_END,
};

const union AnimCmd gLeafBladeAnimCmds5[] =
{
    ANIMCMD_FRAME(16, 1),
    ANIMCMD_END,
};

const union AnimCmd gLeafBladeAnimCmds6[] =
{
    ANIMCMD_FRAME(16, 1, .hFlip = TRUE),
    ANIMCMD_END,
};

const union AnimCmd gLeafBladeAnimCmds7[] =
{
    ANIMCMD_FRAME(28, 1),
    ANIMCMD_END,
};

const union AnimCmd *const gLeafBladeAnimTable[] =
{
    gLeafBladeAnimCmds1,
    gLeafBladeAnimCmds2,
    gLeafBladeAnimCmds3,
    gLeafBladeAnimCmds4,
    gLeafBladeAnimCmds5,
    gLeafBladeAnimCmds6,
    gLeafBladeAnimCmds7,
};

const struct SpriteTemplate gLeafBladeSpriteTemplate =
{
    .tileTag = ANIM_TAG_LEAF,
    .paletteTag = ANIM_TAG_LEAF,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = gLeafBladeAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

const union AffineAnimCmd gAromatherapyBigFlowerAffineAnimCmds[] = {
    AFFINEANIMCMD_FRAME(256, 256, 0, 0),
    AFFINEANIMCMD_FRAME(0, 0, 4, 1),
    AFFINEANIMCMD_JUMP(1),
};

const union AffineAnimCmd *const gAromatherapyBigFlowerAffineAnimTable[] = {
    gAromatherapyBigFlowerAffineAnimCmds,
};

const struct SpriteTemplate gAromatherapySmallFlowerSpriteTemplate =
{
    .tileTag = ANIM_TAG_FLOWER,
    .paletteTag = ANIM_TAG_FLOWER,
    .oam = &gOamData_AffineOff_ObjNormal_8x8,
    .anims = gPetalDanceSmallFlowerAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimFlyingParticle,
};

const struct SpriteTemplate gAromatherapyBigFlowerSpriteTemplate =
{
    .tileTag = ANIM_TAG_FLOWER,
    .paletteTag = ANIM_TAG_FLOWER,
    .oam = &gOamData_AffineNormal_ObjNormal_16x16,
    .anims = gPetalDanceBigFlowerAnimTable,
    .images = NULL,
    .affineAnims = gAromatherapyBigFlowerAffineAnimTable,
    .callback = AnimFlyingParticle,
};

const union AffineAnimCmd gSilverWindBigSparkAffineAnimCmds[] = {
    AFFINEANIMCMD_FRAME(256, 256, 0, 0),
    AFFINEANIMCMD_FRAME(0, 0, -10, 1),
    AFFINEANIMCMD_JUMP(1),
};

const union AffineAnimCmd gSilverWindMediumSparkAffineAnimCmds[] = {
    AFFINEANIMCMD_FRAME(192, 192, 0, 0),
    AFFINEANIMCMD_FRAME(0, 0, -12, 1),
    AFFINEANIMCMD_JUMP(1),
};

const union AffineAnimCmd gSilverWindSmallSparkAffineAnimCmds[] = {
    AFFINEANIMCMD_FRAME(143, 143, 0, 0),
    AFFINEANIMCMD_FRAME(0, 0, -15, 1),
    AFFINEANIMCMD_JUMP(1),
};

const union AffineAnimCmd *const gSilverWindBigSparkAffineAnimTable[] = {
    gSilverWindBigSparkAffineAnimCmds,
};

const union AffineAnimCmd *const gSilverWindMediumSparkAffineAnimTable[] = {
    gSilverWindMediumSparkAffineAnimCmds,
};

const union AffineAnimCmd *const gSilverWindSmallSparkAffineAnimTable[] = {
    gSilverWindSmallSparkAffineAnimCmds,
};

const struct SpriteTemplate gSilverWindBigSparkSpriteTemplate =
{
    .tileTag = ANIM_TAG_SPARKLE_6,
    .paletteTag = ANIM_TAG_SPARKLE_6,
    .oam = &gOamData_AffineNormal_ObjNormal_16x16,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gSilverWindBigSparkAffineAnimTable,
    .callback = AnimFlyingParticle,
};

const struct SpriteTemplate gSilverWindMediumSparkSpriteTemplate =
{
    .tileTag = ANIM_TAG_SPARKLE_6,
    .paletteTag = ANIM_TAG_SPARKLE_6,
    .oam = &gOamData_AffineNormal_ObjNormal_16x16,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gSilverWindMediumSparkAffineAnimTable,
    .callback = AnimFlyingParticle,
};

const struct SpriteTemplate gSilverWindSmallSparkSpriteTemplate =
{
    .tileTag = ANIM_TAG_SPARKLE_6,
    .paletteTag = ANIM_TAG_SPARKLE_6,
    .oam = &gOamData_AffineNormal_ObjNormal_16x16,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gSilverWindSmallSparkAffineAnimTable,
    .callback = AnimFlyingParticle,
};

const u16 gMagicalLeafBlendColors[] =
{
    RGB_RED,
    RGB(31, 19, 0),
    RGB_YELLOW,
    RGB_GREEN,
    RGB(5, 14, 31),
    RGB(22, 10, 31),
    RGB(22, 21, 31),
};

const struct SpriteTemplate gNeedleArmSpikeSpriteTemplate =
{
    .tileTag = ANIM_TAG_GREEN_SPIKE,
    .paletteTag = ANIM_TAG_GREEN_SPIKE,
    .oam = &gOamData_AffineNormal_ObjNormal_16x16,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimNeedleArmSpike,
};

static const union AnimCmd sAnim_Whip[] =
{
    ANIMCMD_FRAME(64, 3),
    ANIMCMD_FRAME(80, 3),
    ANIMCMD_FRAME(96, 3),
    ANIMCMD_FRAME(112, 6),
    ANIMCMD_END,
};

static const union AnimCmd sAnim_Whip_Flipped[] =
{
    ANIMCMD_FRAME(64, 3, .hFlip = TRUE),
    ANIMCMD_FRAME(80, 3, .hFlip = TRUE),
    ANIMCMD_FRAME(96, 3, .hFlip = TRUE),
    ANIMCMD_FRAME(112, 6, .hFlip = TRUE),
    ANIMCMD_END,
};

static const union AnimCmd *const sAnims_Whip[] =
{
    sAnim_Whip,
    sAnim_Whip_Flipped,
};

const struct SpriteTemplate gSlamHitSpriteTemplate =
{
    .tileTag = ANIM_TAG_SLAM_HIT,
    .paletteTag = ANIM_TAG_SLAM_HIT,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = sAnims_Whip,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimWhipHit,
};

const struct SpriteTemplate gVineWhipSpriteTemplate =
{
    .tileTag = ANIM_TAG_WHIP_HIT,
    .paletteTag = ANIM_TAG_WHIP_HIT,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = sAnims_Whip,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimWhipHit,
};

static const union AnimCmd sAnim_SlidingHit[] =
{
    ANIMCMD_FRAME(0, 4),
    ANIMCMD_FRAME(16, 4),
    ANIMCMD_FRAME(32, 4),
    ANIMCMD_FRAME(48, 4),
    ANIMCMD_FRAME(64, 5),
    ANIMCMD_END,
};

static const union AnimCmd *const sAnims_SlidingHit[] =
{
    sAnim_SlidingHit,
};

// Unused
static const struct SpriteTemplate sSlidingHit1SpriteTemplate =
{
    .tileTag = ANIM_TAG_HIT,
    .paletteTag = ANIM_TAG_HIT,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = sAnims_SlidingHit,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSlidingHit,
};

// Unused
static const struct SpriteTemplate sSlidingHit2SpriteTemplate =
{
    .tileTag = ANIM_TAG_HIT_2,
    .paletteTag = ANIM_TAG_HIT_2,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = sAnims_SlidingHit,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSlidingHit,
};

static const union AffineAnimCmd sAffineAnim_FlickeringPunch_Normal[] = {
    AFFINEANIMCMD_FRAME(256, 256, 0, 0),
    AFFINEANIMCMD_END,
};

static const union AffineAnimCmd sAffineAnim_FlickeringPunch_TurnedTopLeft[] = {
    AFFINEANIMCMD_FRAME(256, 256, 32, 0),
    AFFINEANIMCMD_END,
};

static const union AffineAnimCmd sAffineAnim_FlickeringPunch_TurnedLeft[] = {
    AFFINEANIMCMD_FRAME(256, 256, 64, 0),
    AFFINEANIMCMD_END,
};

static const union AffineAnimCmd sAffineAnim_FlickeringPunch_TurnedBottomLeft[] = {
    AFFINEANIMCMD_FRAME(256, 256, 96, 0),
    AFFINEANIMCMD_END,
};

static const union AffineAnimCmd sAffineAnim_FlickeringPunch_UpsideDown[] = {
    AFFINEANIMCMD_FRAME(256, 256, -128, 0),
    AFFINEANIMCMD_END,
};

static const union AffineAnimCmd sAffineAnim_FlickeringPunch_TurnedBottomRight[] = {
    AFFINEANIMCMD_FRAME(256, 256, -96, 0),
    AFFINEANIMCMD_END,
};

static const union AffineAnimCmd sAffineAnim_FlickeringPunch_TurnedRight[] = {
    AFFINEANIMCMD_FRAME(256, 256, -64, 0),
    AFFINEANIMCMD_END,
};

static const union AffineAnimCmd sAffineAnim_FlickeringPunch_TurnedTopRight[] = {
    AFFINEANIMCMD_FRAME(256, 256, -32, 0),
    AFFINEANIMCMD_END,
};

static const union AffineAnimCmd *const sAffineAnims_FlickeringPunch[] = {
    sAffineAnim_FlickeringPunch_Normal,
    sAffineAnim_FlickeringPunch_TurnedTopLeft,
    sAffineAnim_FlickeringPunch_TurnedLeft,
    sAffineAnim_FlickeringPunch_TurnedBottomLeft,
    sAffineAnim_FlickeringPunch_UpsideDown,
    sAffineAnim_FlickeringPunch_TurnedBottomRight,
    sAffineAnim_FlickeringPunch_TurnedRight,
    sAffineAnim_FlickeringPunch_TurnedTopRight,
};

// Unused
static const struct SpriteTemplate sFlickeringPunchSpriteTemplate =
{
    .tileTag = ANIM_TAG_HANDS_AND_FEET,
    .paletteTag = ANIM_TAG_HANDS_AND_FEET,
    .oam = &gOamData_AffineNormal_ObjNormal_32x32,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = sAffineAnims_FlickeringPunch,
    .callback = AnimFlickeringPunch,
};

const union AnimCmd gCuttingSliceAnimCmds[] =
{
    ANIMCMD_FRAME(0, 5),
    ANIMCMD_FRAME(16, 5),
    ANIMCMD_FRAME(32, 5),
    ANIMCMD_FRAME(48, 5),
    ANIMCMD_END,
};

const union AnimCmd *const gCuttingSliceAnimTable[] =
{
    gCuttingSliceAnimCmds,
};

const struct SpriteTemplate gCuttingSliceSpriteTemplate =
{
    .tileTag = ANIM_TAG_CUT,
    .paletteTag = ANIM_TAG_CUT,
    .oam = &gOamData_AffineOff_ObjBlend_32x32,
    .anims = gCuttingSliceAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimCuttingSlice,
};

const struct SpriteTemplate gAirCutterSliceSpriteTemplate =
{
    .tileTag = ANIM_TAG_CUT,
    .paletteTag = ANIM_TAG_CUT,
    .oam = &gOamData_AffineOff_ObjBlend_32x32,
    .anims = gCuttingSliceAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimAirCutterSlice,
};

static const union AnimCmd sAnim_CirclingMusicNote_Eighth[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_END,
};

static const union AnimCmd sAnim_CirclingMusicNote_BeamedEighth[] =
{
    ANIMCMD_FRAME(4, 1),
    ANIMCMD_END,
};

static const union AnimCmd sAnim_CirclingMusicNote_SlantedBeamedEighth[] =
{
    ANIMCMD_FRAME(8, 1),
    ANIMCMD_END,
};

static const union AnimCmd sAnim_CirclingMusicNote_Quarter[] =
{
    ANIMCMD_FRAME(12, 1),
    ANIMCMD_END,
};

static const union AnimCmd sAnim_CirclingMusicNote_QuarterRest[] =
{
    ANIMCMD_FRAME(16, 1),
    ANIMCMD_END,
};

static const union AnimCmd sAnim_CirclingMusicNote_EighthRest[] =
{
    ANIMCMD_FRAME(20, 1),
    ANIMCMD_END,
};

static const union AnimCmd sAnim_CirclingMusicNote_Eighth_Flipped[] =
{
    ANIMCMD_FRAME(0, 1, .vFlip = TRUE),
    ANIMCMD_END,
};

static const union AnimCmd sAnim_CirclingMusicNote_BeamedEighth_Flipped[] =
{
    ANIMCMD_FRAME(4, 1, .vFlip = TRUE),
    ANIMCMD_END,
};

static const union AnimCmd sAnim_CirclingMusicNote_SlantedBeamedEighth_Flipped[] =
{
    ANIMCMD_FRAME(8, 1, .vFlip = TRUE),
    ANIMCMD_END,
};

static const union AnimCmd sAnim_CirclingMusicNote_Quarter_Flipped[] =
{
    ANIMCMD_FRAME(12, 1, .vFlip = TRUE),
    ANIMCMD_END,
};

static const union AnimCmd *const sAnims_CirclingMusicNote[] =
{
    sAnim_CirclingMusicNote_Eighth,
    sAnim_CirclingMusicNote_BeamedEighth,
    sAnim_CirclingMusicNote_SlantedBeamedEighth,
    sAnim_CirclingMusicNote_Quarter,
    sAnim_CirclingMusicNote_QuarterRest,
    sAnim_CirclingMusicNote_EighthRest,
    sAnim_CirclingMusicNote_Eighth_Flipped,
    sAnim_CirclingMusicNote_BeamedEighth_Flipped,
    sAnim_CirclingMusicNote_SlantedBeamedEighth_Flipped,
    sAnim_CirclingMusicNote_Quarter_Flipped,
};

// Unused
static const struct SpriteTemplate sCirclingMusicNoteSpriteTemplate =
{
    .tileTag = ANIM_TAG_MUSIC_NOTES,
    .paletteTag = ANIM_TAG_MUSIC_NOTES,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = sAnims_CirclingMusicNote,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimCirclingMusicNote,
};

const struct SpriteTemplate gProtectSpriteTemplate =
{
    .tileTag = ANIM_TAG_PROTECT,
    .paletteTag = ANIM_TAG_PROTECT,
    .oam = &gOamData_AffineOff_ObjBlend_64x64,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimProtect,
};

const union AffineAnimCmd gMilkBottleAffineAnimCmds1[] =
{
    AFFINEANIMCMD_FRAME(0x100, 0x100, 0, 0),
    AFFINEANIMCMD_END,
};

const union AffineAnimCmd gMilkBottleAffineAnimCmds2[] =
{
    AFFINEANIMCMD_FRAME(0x0, 0x0, 2, 12),
    AFFINEANIMCMD_FRAME(0x0, 0x0, 0, 6),
    AFFINEANIMCMD_FRAME(0x0, 0x0, -2, 24),
    AFFINEANIMCMD_FRAME(0x0, 0x0, 0, 6),
    AFFINEANIMCMD_FRAME(0x0, 0x0, 2, 12),
    AFFINEANIMCMD_JUMP(0),
};

const union AffineAnimCmd *const gMilkBottleAffineAnimTable[] =
{
    gMilkBottleAffineAnimCmds1,
    gMilkBottleAffineAnimCmds2,
};

const struct SpriteTemplate gMilkBottleSpriteTemplate =
{
    .tileTag = ANIM_TAG_MILK_BOTTLE,
    .paletteTag = ANIM_TAG_MILK_BOTTLE,
    .oam = &gOamData_AffineNormal_ObjBlend_32x32,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gMilkBottleAffineAnimTable,
    .callback = AnimMilkBottle,
};

const union AnimCmd gGrantingStarsAnimCmds[] =
{
    ANIMCMD_FRAME(0, 7),
    ANIMCMD_FRAME(16, 7),
    ANIMCMD_FRAME(32, 7),
    ANIMCMD_FRAME(48, 7),
    ANIMCMD_FRAME(64, 7),
    ANIMCMD_FRAME(80, 7),
    ANIMCMD_FRAME(96, 7),
    ANIMCMD_FRAME(112, 7),
    ANIMCMD_JUMP(0),
};

const union AnimCmd *const gGrantingStarsAnimTable[] =
{
    gGrantingStarsAnimCmds,
};

const struct SpriteTemplate gGrantingStarsSpriteTemplate =
{
    .tileTag = ANIM_TAG_SPARKLE_2,
    .paletteTag = ANIM_TAG_SPARKLE_2,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = gGrantingStarsAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimGrantingStars,
};

const struct SpriteTemplate gSparklingStarsSpriteTemplate =
{
    .tileTag = ANIM_TAG_SPARKLE_2,
    .paletteTag = ANIM_TAG_SPARKLE_2,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = gGrantingStarsAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSparklingStars,
};

static const union AnimCmd sAnim_BubbleBurst[] =
{
    ANIMCMD_FRAME(0, 10),
    ANIMCMD_FRAME(4, 10),
    ANIMCMD_FRAME(8, 10),
    ANIMCMD_FRAME(12, 10),
    ANIMCMD_FRAME(16, 26),
    ANIMCMD_FRAME(16, 5),
    ANIMCMD_FRAME(20, 5),
    ANIMCMD_FRAME(24, 15),
    ANIMCMD_END,
};

static const union AnimCmd sAnim_BubbleBurst_Flipped[] =
{
    ANIMCMD_FRAME(0, 10, .hFlip = TRUE),
    ANIMCMD_FRAME(4, 10, .hFlip = TRUE),
    ANIMCMD_FRAME(8, 10, .hFlip = TRUE),
    ANIMCMD_FRAME(12, 10, .hFlip = TRUE),
    ANIMCMD_FRAME(16, 26, .hFlip = TRUE),
    ANIMCMD_FRAME(16, 5, .hFlip = TRUE),
    ANIMCMD_FRAME(20, 5, .hFlip = TRUE),
    ANIMCMD_FRAME(24, 15, .hFlip = TRUE),
    ANIMCMD_END,
};

static const union AnimCmd *const sAnims_BubbleBurst[] =
{
    sAnim_BubbleBurst,
    sAnim_BubbleBurst_Flipped,
};

// Unused
static const struct SpriteTemplate sBubbleBurstSpriteTemplate =
{
    .tileTag = ANIM_TAG_BUBBLE_BURST,
    .paletteTag = ANIM_TAG_BUBBLE_BURST,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = sAnims_BubbleBurst,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimBubbleBurst,
};

const union AnimCmd gSleepLetterZAnimCmds[] =
{
    ANIMCMD_FRAME(0, 40),
    ANIMCMD_END,
};

const union AnimCmd *const gSleepLetterZAnimTable[] =
{
    gSleepLetterZAnimCmds,
};

const union AffineAnimCmd gSleepLetterZAffineAnimCmds1[] =
{
    AFFINEANIMCMD_FRAME(0x14, 0x14, -30, 0),
    AFFINEANIMCMD_FRAME(0x8, 0x8, 1, 24),
    AFFINEANIMCMD_END,
};

const union AffineAnimCmd gSleepLetterZAffineAnimCmds1_2[] =
{
    AFFINEANIMCMD_LOOP(0),
    AFFINEANIMCMD_FRAME(0x0, 0x0, 1, 24),
    AFFINEANIMCMD_LOOP(10),
};

const union AffineAnimCmd gSleepLetterZAffineAnimCmds2[] =
{
    AFFINEANIMCMD_FRAME(0x14, 0x14, 30, 0),
    AFFINEANIMCMD_FRAME(0x8, 0x8, -1, 24),
    AFFINEANIMCMD_END,
};

const union AffineAnimCmd gSleepLetterZAffineAnimCmds2_2[] =
{
    AFFINEANIMCMD_LOOP(0),
    AFFINEANIMCMD_FRAME(0x0, 0x0, -1, 24),
    AFFINEANIMCMD_LOOP(10),
};

const union AffineAnimCmd *const gSleepLetterZAffineAnimTable[] =
{
    gSleepLetterZAffineAnimCmds1,
    gSleepLetterZAffineAnimCmds2,
};

const struct SpriteTemplate gSleepLetterZSpriteTemplate =
{
    .tileTag = ANIM_TAG_LETTER_Z,
    .paletteTag = ANIM_TAG_LETTER_Z,
    .oam = &gOamData_AffineNormal_ObjNormal_32x32,
    .anims = gSleepLetterZAnimTable,
    .images = NULL,
    .affineAnims = gSleepLetterZAffineAnimTable,
    .callback = AnimSleepLetterZ,
};

const struct SpriteTemplate gLockOnTargetSpriteTemplate =
{
    .tileTag = ANIM_TAG_LOCK_ON,
    .paletteTag = ANIM_TAG_LOCK_ON,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimLockOnTarget,
};

const struct SpriteTemplate gLockOnMoveTargetSpriteTemplate =
{
    .tileTag = ANIM_TAG_LOCK_ON,
    .paletteTag = ANIM_TAG_LOCK_ON,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimLockOnMoveTarget,
};

const s8 gInclineMonCoordTable[][2] =
{
    { 64,  64},
    {  0, -64},
    {-64,  64},
    { 32, -32},
};

const struct SpriteTemplate gBowMonSpriteTemplate =
{
    .tileTag = 0,
    .paletteTag = 0,
    .oam = &gDummyOamData,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimBowMon,
};

// Unused
// Same as BowMon above but without backing up
static const struct SpriteTemplate sTipMonSpriteTemplate =
{
    .tileTag = 0,
    .paletteTag = 0,
    .oam = &gDummyOamData,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimTipMon,
};

const union AnimCmd gSlashSliceAnimCmds1[] =
{
    ANIMCMD_FRAME(0, 4),
    ANIMCMD_FRAME(16, 4),
    ANIMCMD_FRAME(32, 4),
    ANIMCMD_FRAME(48, 4),
    ANIMCMD_END,
};

const union AnimCmd gSlashSliceAnimCmds2[] =
{
    ANIMCMD_FRAME(48, 4),
    ANIMCMD_END,
};

const union AnimCmd *const gSlashSliceAnimTable[] =
{
    gSlashSliceAnimCmds1,
    gSlashSliceAnimCmds2,
};

const struct SpriteTemplate gSlashSliceSpriteTemplate =
{
    .tileTag = ANIM_TAG_SLASH,
    .paletteTag = ANIM_TAG_SLASH,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = gSlashSliceAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSlashSlice,
};

const struct SpriteTemplate gFalseSwipeSliceSpriteTemplate =
{
    .tileTag = ANIM_TAG_SLASH_2,
    .paletteTag = ANIM_TAG_SLASH_2,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = gSlashSliceAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimFalseSwipeSlice,
};

const struct SpriteTemplate gFalseSwipePositionedSliceSpriteTemplate =
{
    .tileTag = ANIM_TAG_SLASH_2,
    .paletteTag = ANIM_TAG_SLASH_2,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = gSlashSliceAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimFalseSwipePositionedSlice,
};

const union AnimCmd gEndureEnergyAnimCmds[] =
{
    ANIMCMD_FRAME(0, 4),
    ANIMCMD_FRAME(8, 12),
    ANIMCMD_FRAME(16, 4),
    ANIMCMD_FRAME(24, 4),
    ANIMCMD_END,
};

const union AnimCmd *const gEndureEnergyAnimTable[] =
{
    gEndureEnergyAnimCmds,
};

const struct SpriteTemplate gEndureEnergySpriteTemplate =
{
    .tileTag = ANIM_TAG_FOCUS_ENERGY,
    .paletteTag = ANIM_TAG_FOCUS_ENERGY,
    .oam = &gOamData_AffineOff_ObjNormal_16x32,
    .anims = gEndureEnergyAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimEndureEnergy,
};

const union AnimCmd gSharpenSphereAnimCmds[] =
{
    ANIMCMD_FRAME(0, 18),
    ANIMCMD_FRAME(0, 6),
    ANIMCMD_FRAME(16, 18),
    ANIMCMD_FRAME(0, 6),
    ANIMCMD_FRAME(16, 6),
    ANIMCMD_FRAME(32, 18),
    ANIMCMD_FRAME(16, 6),
    ANIMCMD_FRAME(32, 6),
    ANIMCMD_FRAME(48, 18),
    ANIMCMD_FRAME(32, 6),
    ANIMCMD_FRAME(48, 6),
    ANIMCMD_FRAME(64, 18),
    ANIMCMD_FRAME(48, 6),
    ANIMCMD_FRAME(64, 54),
    ANIMCMD_END,
};

const union AnimCmd *const gSharpenSphereAnimTable[] =
{
    gSharpenSphereAnimCmds,
};

const struct SpriteTemplate gSharpenSphereSpriteTemplate =
{
    .tileTag = ANIM_TAG_SPHERE_TO_CUBE,
    .paletteTag = ANIM_TAG_SPHERE_TO_CUBE,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = gSharpenSphereAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSharpenSphere,
};

const struct SpriteTemplate gOctazookaBallSpriteTemplate =
{
    .tileTag = ANIM_TAG_BLACK_BALL,
    .paletteTag = ANIM_TAG_BLACK_BALL,
    .oam = &gOamData_AffineOff_ObjNormal_8x8,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = TranslateAnimSpriteToTargetMonLocation,
};

const union AnimCmd gOctazookaAnimCmds[] =
{
    ANIMCMD_FRAME(0, 3),
    ANIMCMD_FRAME(16, 3),
    ANIMCMD_FRAME(32, 3),
    ANIMCMD_FRAME(48, 3),
    ANIMCMD_FRAME(64, 3),
    ANIMCMD_END,
};

const union AnimCmd *const gOctazookaAnimTable[] =
{
    gOctazookaAnimCmds,
};

const struct SpriteTemplate gOctazookaSmokeSpriteTemplate =
{
    .tileTag = ANIM_TAG_GRAY_SMOKE,
    .paletteTag = ANIM_TAG_GRAY_SMOKE,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = gOctazookaAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteOnMonPos,
};

const union AnimCmd gConversionAnimCmds[] =
{
    ANIMCMD_FRAME(3, 5),
    ANIMCMD_FRAME(2, 5),
    ANIMCMD_FRAME(1, 5),
    ANIMCMD_FRAME(0, 5),
    ANIMCMD_END,
};

const union AnimCmd *const gConversionAnimTable[] =
{
    gConversionAnimCmds,
};

const union AffineAnimCmd gConversionAffineAnimCmds[] =
{
    AFFINEANIMCMD_FRAME(0x200, 0x200, 0, 0),
    AFFINEANIMCMD_END,
};

const union AffineAnimCmd *const gConversionAffineAnimTable[] =
{
    gConversionAffineAnimCmds,
};

const struct SpriteTemplate gConversionSpriteTemplate =
{
    .tileTag = ANIM_TAG_CONVERSION,
    .paletteTag = ANIM_TAG_CONVERSION,
    .oam = &gOamData_AffineDouble_ObjBlend_8x8,
    .anims = gConversionAnimTable,
    .images = NULL,
    .affineAnims = gConversionAffineAnimTable,
    .callback = AnimConversion,
};

const union AnimCmd gConversion2AnimCmds[] =
{
    ANIMCMD_FRAME(0, 5),
    ANIMCMD_FRAME(1, 5),
    ANIMCMD_FRAME(2, 5),
    ANIMCMD_FRAME(3, 5),
    ANIMCMD_END,
};

const union AnimCmd *const gConversion2AnimTable[] =
{
    gConversion2AnimCmds,
};

const struct SpriteTemplate gConversion2SpriteTemplate =
{
    .tileTag = ANIM_TAG_CONVERSION,
    .paletteTag = ANIM_TAG_CONVERSION,
    .oam = &gOamData_AffineDouble_ObjBlend_8x8,
    .anims = gConversion2AnimTable,
    .images = NULL,
    .affineAnims = gConversionAffineAnimTable,
    .callback = AnimConversion2,
};

const struct SpriteTemplate gMoonSpriteTemplate =
{
    .tileTag = ANIM_TAG_MOON,
    .paletteTag = ANIM_TAG_MOON,
    .oam = &gOamData_AffineOff_ObjBlend_64x64,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimMoon,
};

const union AnimCmd gMoonlightSparkleAnimCmds[] =
{
    ANIMCMD_FRAME(0, 8),
    ANIMCMD_FRAME(4, 8),
    ANIMCMD_FRAME(8, 8),
    ANIMCMD_FRAME(12, 8),
    ANIMCMD_JUMP(0),
};

const union AnimCmd *const gMoonlightSparkleAnimTable[] =
{
    gMoonlightSparkleAnimCmds,
};

const struct SpriteTemplate gMoonlightSparkleSpriteTemplate =
{
    .tileTag = ANIM_TAG_GREEN_SPARKLE,
    .paletteTag = ANIM_TAG_GREEN_SPARKLE,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = gMoonlightSparkleAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimMoonlightSparkle,
};

const union AnimCmd gHealingBlueStarAnimCmds[] =
{
    ANIMCMD_FRAME(0, 2),
    ANIMCMD_FRAME(16, 2),
    ANIMCMD_FRAME(32, 2),
    ANIMCMD_FRAME(48, 3),
    ANIMCMD_FRAME(64, 5),
    ANIMCMD_FRAME(80, 3),
    ANIMCMD_FRAME(96, 2),
    ANIMCMD_FRAME(0, 2),
    ANIMCMD_END,
};

const union AnimCmd *const gHealingBlueStarAnimTable[] =
{
    gHealingBlueStarAnimCmds,
};

const struct SpriteTemplate gHealingBlueStarSpriteTemplate =
{
    .tileTag = ANIM_TAG_BLUE_STAR,
    .paletteTag = ANIM_TAG_BLUE_STAR,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = gHealingBlueStarAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSpriteOnMonPos,
};

const struct SpriteTemplate gHornHitSpriteTemplate =
{
    .tileTag = ANIM_TAG_HORN_HIT,
    .paletteTag = ANIM_TAG_HORN_HIT,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimHornHit,
};

const union AnimCmd gSuperFangAnimCmds[] =
{
    ANIMCMD_FRAME(0, 2),
    ANIMCMD_FRAME(16, 2),
    ANIMCMD_FRAME(32, 2),
    ANIMCMD_FRAME(48, 2),
    ANIMCMD_END,
};

const union AnimCmd *const gSuperFangAnimTable[] =
{
    gSuperFangAnimCmds,
};

const struct SpriteTemplate gSuperFangSpriteTemplate =
{
    .tileTag = ANIM_TAG_FANG_ATTACK,
    .paletteTag = ANIM_TAG_FANG_ATTACK,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = gSuperFangAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSuperFang,
};

const union AnimCmd gWavyMusicNotesAnimCmds1[] =
{
    ANIMCMD_FRAME(0, 10),
    ANIMCMD_END,
};

const union AnimCmd gWavyMusicNotesAnimCmds2[] =
{
    ANIMCMD_FRAME(4, 10),
    ANIMCMD_END,
};

const union AnimCmd gWavyMusicNotesAnimCmds3[] =
{
    ANIMCMD_FRAME(8, 41),
    ANIMCMD_END,
};

const union AnimCmd gWavyMusicNotesAnimCmds4[] =
{
    ANIMCMD_FRAME(12, 10),
    ANIMCMD_END,
};

const union AnimCmd gWavyMusicNotesAnimCmds5[] =
{
    ANIMCMD_FRAME(16, 10),
    ANIMCMD_END,
};

const union AnimCmd gWavyMusicNotesAnimCmds6[] =
{
    ANIMCMD_FRAME(20, 10),
    ANIMCMD_END,
};

const union AnimCmd gWavyMusicNotesAnimCmds7[] =
{
    ANIMCMD_FRAME(0, 10, .vFlip = TRUE),
    ANIMCMD_END,
};

const union AnimCmd gWavyMusicNotesAnimCmds8[] =
{
    ANIMCMD_FRAME(4, 10, .vFlip = TRUE),
    ANIMCMD_END,
};

const union AnimCmd *const gMusicNotesAnimTable[] =
{
    gWavyMusicNotesAnimCmds1,
    gWavyMusicNotesAnimCmds2,
    gWavyMusicNotesAnimCmds3,
    gWavyMusicNotesAnimCmds4,
    gWavyMusicNotesAnimCmds5,
    gWavyMusicNotesAnimCmds6,
    gWavyMusicNotesAnimCmds7,
    gWavyMusicNotesAnimCmds8,
};

const union AffineAnimCmd gWavyMusicNotesAffineAnimCmds[] =
{
    AFFINEANIMCMD_FRAME(0xC, 0xC, 0, 16),
    AFFINEANIMCMD_FRAME(0xFFF4, 0xFFF4, 0, 16),
    AFFINEANIMCMD_JUMP(0),
};

const union AffineAnimCmd *const gMusicNotesAffineAnimTable[] =
{
    gWavyMusicNotesAffineAnimCmds,
};

const struct SpriteTemplate gWavyMusicNotesSpriteTemplate =
{
    .tileTag = ANIM_TAG_MUSIC_NOTES,
    .paletteTag = ANIM_TAG_MUSIC_NOTES,
    .oam = &gOamData_AffineDouble_ObjNormal_16x16,
    .anims = gMusicNotesAnimTable,
    .images = NULL,
    .affineAnims = gMusicNotesAffineAnimTable,
    .callback = AnimWavyMusicNotes,
};

const u16 gParticlesColorBlendTable[][6] =
{
    {ANIM_TAG_MUSIC_NOTES,     RGB_WHITE, RGB(31, 26, 28), RGB(31, 22, 26), RGB(31, 17, 24), RGB(31, 13, 22)},
    {ANIM_TAG_BENT_SPOON,      RGB_WHITE, RGB(25, 31, 26), RGB(20, 31, 21), RGB(15, 31, 16), RGB(10, 31, 12)},
    {ANIM_TAG_SPHERE_TO_CUBE,  RGB_WHITE, RGB(31, 31, 24), RGB(31, 31, 17), RGB(31, 31, 10), RGB(31, 31, 3)},
    {ANIM_TAG_LARGE_FRESH_EGG, RGB_WHITE, RGB(26, 28, 31), RGB(21, 26, 31), RGB(16, 24, 31), RGB(12, 22, 31)},
};

const struct SpriteTemplate gFastFlyingMusicNotesSpriteTemplate =
{
    .tileTag = ANIM_TAG_MUSIC_NOTES,
    .paletteTag = ANIM_TAG_MUSIC_NOTES,
    .oam = &gOamData_AffineDouble_ObjNormal_16x16,
    .anims = gMusicNotesAnimTable,
    .images = NULL,
    .affineAnims = gMusicNotesAffineAnimTable,
    .callback = AnimFlyingMusicNotes,
};

const struct SpriteTemplate gBellyDrumHandSpriteTemplate =
{
    .tileTag = ANIM_TAG_PURPLE_HAND_OUTLINE,
    .paletteTag = ANIM_TAG_PURPLE_HAND_OUTLINE,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimBellyDrumHand,
};

const union AffineAnimCmd gSlowFlyingMusicNotesAffineAnimCmds[] =
{
    AFFINEANIMCMD_FRAME(0xA0, 0xA0, 0, 0),
    AFFINEANIMCMD_FRAME(0x4, 0x4, 0, 1),
    AFFINEANIMCMD_JUMP(1),
};

const union AffineAnimCmd *const gSlowFlyingMusicNotesAffineAnimTable[] =
{
    gSlowFlyingMusicNotesAffineAnimCmds,
};

const struct SpriteTemplate gSlowFlyingMusicNotesSpriteTemplate =
{
    .tileTag = ANIM_TAG_MUSIC_NOTES,
    .paletteTag = ANIM_TAG_MUSIC_NOTES,
    .oam = &gOamData_AffineDouble_ObjNormal_16x16,
    .anims = gMusicNotesAnimTable,
    .images = NULL,
    .affineAnims = gSlowFlyingMusicNotesAffineAnimTable,
    .callback = AnimSlowFlyingMusicNotes,
};

const union AnimCmd gMetronomeThroughtBubbleAnimCmds1[] =
{
    ANIMCMD_FRAME(0, 2, .hFlip = TRUE),
    ANIMCMD_FRAME(16, 2, .hFlip = TRUE),
    ANIMCMD_FRAME(32, 2, .hFlip = TRUE),
    ANIMCMD_FRAME(48, 2, .hFlip = TRUE),
    ANIMCMD_END,
};

const union AnimCmd gMetronomeThroughtBubbleAnimCmds3[] =
{
    ANIMCMD_FRAME(48, 2, .hFlip = TRUE),
    ANIMCMD_FRAME(32, 2, .hFlip = TRUE),
    ANIMCMD_FRAME(16, 2, .hFlip = TRUE),
    ANIMCMD_FRAME(0, 2, .hFlip = TRUE),
    ANIMCMD_END,
};

const union AnimCmd gMetronomeThroughtBubbleAnimCmds2[] =
{
    ANIMCMD_FRAME(0, 2),
    ANIMCMD_FRAME(16, 2),
    ANIMCMD_FRAME(32, 2),
    ANIMCMD_FRAME(48, 2),
    ANIMCMD_END,
};

const union AnimCmd gMetronomeThroughtBubbleAnimCmds4[] =
{
    ANIMCMD_FRAME(48, 2),
    ANIMCMD_FRAME(32, 2),
    ANIMCMD_FRAME(16, 2),
    ANIMCMD_FRAME(0, 2),
    ANIMCMD_END,
};

const union AnimCmd *const gMetronomeThroughtBubbleAnimTable[] =
{
    gMetronomeThroughtBubbleAnimCmds1,
    gMetronomeThroughtBubbleAnimCmds2,
    gMetronomeThroughtBubbleAnimCmds3,
    gMetronomeThroughtBubbleAnimCmds4,
};

const struct SpriteTemplate gThoughtBubbleSpriteTemplate =
{
    .tileTag = ANIM_TAG_THOUGHT_BUBBLE,
    .paletteTag = ANIM_TAG_THOUGHT_BUBBLE,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = gMetronomeThroughtBubbleAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimThoughtBubble,
};

const union AffineAnimCmd gMetronomeFingerAffineAnimCmds1[] =
{
    AFFINEANIMCMD_FRAME(0x10, 0x10, 0, 0),
    AFFINEANIMCMD_FRAME(0x1E, 0x1E, 0, 8),
    AFFINEANIMCMD_END,
};

const union AffineAnimCmd gMetronomeFingerAffineAnimCmds2[] =
{
    AFFINEANIMCMD_FRAME(0x0, 0x0, 4, 11),
    AFFINEANIMCMD_FRAME(0x0, 0x0, -4, 11),
    AFFINEANIMCMD_LOOP(2),
    AFFINEANIMCMD_FRAME(0xFFE2, 0xFFE2, 0, 8),
    AFFINEANIMCMD_END,
};

const union AffineAnimCmd gMetronomeFingerAffineAnimCmds2_2[] =
{
    AFFINEANIMCMD_FRAME(16, 16, 0, 0),
    AFFINEANIMCMD_FRAME(30, 30, 0, 8),
    AFFINEANIMCMD_FRAME(0, 0, 0, 16),
    AFFINEANIMCMD_LOOP(0),
    AFFINEANIMCMD_FRAME(0, 0, 4, 11),
    AFFINEANIMCMD_FRAME(0, 0, -4, 11),
    AFFINEANIMCMD_LOOP(2),
    AFFINEANIMCMD_FRAME(-30, -30, 0, 8),
    AFFINEANIMCMD_END,
};

const union AffineAnimCmd *const gMetronomeFingerAffineAnimTable[] =
{
    gMetronomeFingerAffineAnimCmds1,
    gMetronomeFingerAffineAnimCmds2,
};

const struct SpriteTemplate gMetronomeFingerSpriteTemplate =
{
    .tileTag = ANIM_TAG_FINGER,
    .paletteTag = ANIM_TAG_FINGER,
    .oam = &gOamData_AffineDouble_ObjNormal_32x32,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gMetronomeFingerAffineAnimTable,
    .callback = AnimMetronomeFinger,
};

const struct SpriteTemplate gFollowMeFingerSpriteTemplate =
{
    .tileTag = ANIM_TAG_FINGER,
    .paletteTag = ANIM_TAG_FINGER,
    .oam = &gOamData_AffineNormal_ObjNormal_32x32,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gMetronomeFingerAffineAnimTable,
    .callback = AnimFollowMeFinger,
};

const union AnimCmd gTauntFingerAnimCmds1[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_END,
};

const union AnimCmd gTauntFingerAnimCmds2[] =
{
    ANIMCMD_FRAME(0, 1, .hFlip = TRUE),
    ANIMCMD_END,
};

const union AnimCmd gTauntFingerAnimCmds3[] =
{
    ANIMCMD_FRAME(0, 4),
    ANIMCMD_FRAME(16, 4),
    ANIMCMD_FRAME(32, 4),
    ANIMCMD_FRAME(16, 4),
    ANIMCMD_FRAME(0, 4),
    ANIMCMD_FRAME(16, 4),
    ANIMCMD_FRAME(32, 4),
    ANIMCMD_END,
};

const union AnimCmd gTauntFingerAnimCmds4[] =
{
    ANIMCMD_FRAME(0, 4, .hFlip = TRUE),
    ANIMCMD_FRAME(16, 4, .hFlip = TRUE),
    ANIMCMD_FRAME(32, 4, .hFlip = TRUE),
    ANIMCMD_FRAME(16, 4, .hFlip = TRUE),
    ANIMCMD_FRAME(0, 4, .hFlip = TRUE),
    ANIMCMD_FRAME(16, 4, .hFlip = TRUE),
    ANIMCMD_FRAME(32, 4, .hFlip = TRUE),
    ANIMCMD_END,
};

const union AnimCmd *const gTauntFingerAnimTable[] =
{
    gTauntFingerAnimCmds1,
    gTauntFingerAnimCmds2,
    gTauntFingerAnimCmds3,
    gTauntFingerAnimCmds4,
};

const struct SpriteTemplate gTauntFingerSpriteTemplate =
{
    .tileTag = ANIM_TAG_FINGER_2,
    .paletteTag = ANIM_TAG_FINGER_2,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = gTauntFingerAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimTauntFinger,
};

// Animates the falling particles that horizontally wave back and forth.
// Used by Sleep Powder, Stun Spore, and Poison Powder.
// arg 0: initial x pixel offset
// arg 1: initial y pixel offset
// arg 2: total duration in frames
// arg 3: vertical movement speed (sub-pixel value)
// arg 4: wave amplitude
// arg 5: wave speed
static void AnimMovePowderParticle(struct Sprite *sprite)
{
    sprite->x += gBattleAnimArgs[0];
    sprite->y += gBattleAnimArgs[1];
    sprite->data[0] = gBattleAnimArgs[2];
    sprite->data[1] = gBattleAnimArgs[3];

    if (GetBattlerSide(gBattleAnimAttacker))
    {
        sprite->data[3] = -gBattleAnimArgs[4];
    }
    else
    {
        sprite->data[3] = gBattleAnimArgs[4];
    }

    sprite->data[4] = gBattleAnimArgs[5];
    sprite->callback = AnimMovePowderParticle_Step;
}

static void AnimMovePowderParticle_Step(struct Sprite *sprite)
{
    if (sprite->data[0] > 0)
    {
        sprite->data[0]--;
        sprite->y2 = sprite->data[2] >> 8;
        sprite->data[2] += sprite->data[1];
        sprite->x2 = Sin(sprite->data[5], sprite->data[3]);
        sprite->data[5] = (sprite->data[5] + sprite->data[4]) & 0xFF;
    }
    else
    {
        DestroyAnimSprite(sprite);
    }
}

// Moves an energy orb towards the center of the mon.
// arg 0: initial x pixel offset
// arg 1: initial y pixel offset
// arg 2: duration
static void AnimPowerAbsorptionOrb(struct Sprite *sprite)
{
    InitSpritePosToAnimAttacker(sprite, TRUE);
    sprite->data[0] = gBattleAnimArgs[2];
    sprite->data[2] = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X_2);
    sprite->data[4] = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y_PIC_OFFSET);
    sprite->callback = StartAnimLinearTranslation;
    StoreSpriteCallbackInData6(sprite, DestroySpriteAndMatrix);
}

// Moves an orb in a straight line towards the target mon.
// arg 0: initial x pixel offset
// arg 1: initial y pixel offset
// arg 2: duration
// arg 3: sprite anim number
static void AnimSolarBeamBigOrb(struct Sprite *sprite)
{
    InitSpritePosToAnimAttacker(sprite, TRUE);
    StartSpriteAnim(sprite, gBattleAnimArgs[3]);
    sprite->data[0] = gBattleAnimArgs[2];
    sprite->data[2] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2);
    sprite->data[4] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET);
    sprite->callback = StartAnimLinearTranslation;
    StoreSpriteCallbackInData6(sprite, DestroyAnimSprite);
}

// Moves a small orb in a wavy pattern towards the target mon.
// The small orb "circles" the big orbs in AnimSolarBeamBigOrb.
// arg 0: initial x pixel offset
// arg 1: initial y pixel offset
// arg 2: duration
// arg 3: initial wave offset
static void AnimSolarBeamSmallOrb(struct Sprite *sprite)
{
    InitSpritePosToAnimAttacker(sprite, TRUE);
    sprite->data[0] = gBattleAnimArgs[2];
    sprite->data[1] = sprite->x;
    sprite->data[2] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2);
    sprite->data[3] = sprite->y;
    sprite->data[4] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET);
    InitAnimLinearTranslation(sprite);
    sprite->data[5] = gBattleAnimArgs[3];
    sprite->callback = AnimSolarBeamSmallOrb_Step;
    sprite->callback(sprite);
}

static void AnimSolarBeamSmallOrb_Step(struct Sprite *sprite)
{
    if (AnimTranslateLinear(sprite))
    {
        DestroySprite(sprite);
    }
    else
    {
        if (sprite->data[5] > 0x7F)
            sprite->subpriority = GetBattlerSpriteSubpriority(gBattleAnimTarget) + 1;
        else
            sprite->subpriority = GetBattlerSpriteSubpriority(gBattleAnimTarget) + 6;

        sprite->x2 += Sin(sprite->data[5], 5);
        sprite->y2 += Cos(sprite->data[5], 14);
        sprite->data[5] = (sprite->data[5] + 15) & 0xFF;
    }
}

// Creates 15 small secondary orbs used in the SolarBeam anim effect.
// There is a 7-frame delay between each of them.
// No args.
void AnimTask_CreateSmallSolarBeamOrbs(u8 taskId)
{
    if (--gTasks[taskId].data[0] == -1)
    {
        gTasks[taskId].data[1]++;
        gTasks[taskId].data[0] = 6;
        gBattleAnimArgs[0] = 15;
        gBattleAnimArgs[1] = 0;
        gBattleAnimArgs[2] = 80;
        gBattleAnimArgs[3] = 0;
        CreateSpriteAndAnimate(&gSolarBeamSmallOrbSpriteTemplate, 0, 0, GetBattlerSpriteSubpriority(gBattleAnimTarget) + 1);
    }

    if (gTasks[taskId].data[1] == 15)
        DestroyAnimVisualTask(taskId);
}

// Moves an orb from the target mon to the attacking mon in an arc-like fashion.
// arg 0: initial x pixel offset
// arg 1: initial y pixel offset
// arg 2: wave amplitude
// arg 3: wave period (lower means faster wave)
static void AnimAbsorptionOrb(struct Sprite *sprite)
{
    InitSpritePosToAnimTarget(sprite, TRUE);
    sprite->data[0] = gBattleAnimArgs[3];
    sprite->data[2] = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X_2);
    sprite->data[4] = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y_PIC_OFFSET);
    sprite->data[5] = gBattleAnimArgs[2];
    InitAnimArcTranslation(sprite);
    sprite->callback = AnimAbsorptionOrb_Step;
}

static void AnimAbsorptionOrb_Step(struct Sprite *sprite)
{
    if (TranslateAnimHorizontalArc(sprite))
        DestroyAnimSprite(sprite);
}

// Moves an orb in a wave-like fashion towards the target mon. The wave's
// properties and the sprite anim are randomly determined.
static void AnimHyperBeamOrb(struct Sprite *sprite)
{
    u16 speed;
    u16 animNum = Random2();

    StartSpriteAnim(sprite, animNum % 8);
    sprite->x = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X_2);
    sprite->y = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y_PIC_OFFSET);
    if (GetBattlerSide(gBattleAnimAttacker) != B_SIDE_PLAYER)
        sprite->x -= 20;
    else
        sprite->x += 20;

    speed = Random2();
    sprite->data[0] = (speed & 31) + 64;
    sprite->data[1] = sprite->x;
    sprite->data[2] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2);
    sprite->data[3] = sprite->y;
    sprite->data[4] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET);
    InitAnimFastLinearTranslationWithSpeed(sprite);
    sprite->data[5] = Random2() & 0xFF;
    sprite->data[6] = sprite->subpriority;
    sprite->callback = AnimHyperBeamOrb_Step;
    sprite->callback(sprite);
}

static void AnimHyperBeamOrb_Step(struct Sprite *sprite)
{
    if (AnimFastTranslateLinear(sprite))
    {
        DestroyAnimSprite(sprite);
    }
    else
    {
        sprite->y2 += Cos(sprite->data[5], 12);
        if (sprite->data[5] < 0x7F)
            sprite->subpriority = sprite->data[6];
        else
            sprite->subpriority = sprite->data[6] + 1;

        sprite->data[5] += 24;
        sprite->data[5] &= 0xFF;
    }
}

// seed (sprouts a sapling from a seed.)
// Used by Leech Seed.
// arg 0: initial x pixel offset
// arg 1: initial y pixel offset
// arg 2: target x pixel offset
// arg 3: target y pixel offset
// arg 4: duration
// arg 5: wave amplitude
static void AnimLeechSeed(struct Sprite *sprite)
{
    InitSpritePosToAnimAttacker(sprite, TRUE);
    if (GetBattlerSide(gBattleAnimAttacker) != B_SIDE_PLAYER)
        gBattleAnimArgs[2] = -gBattleAnimArgs[2];

    sprite->data[0] = gBattleAnimArgs[4];
    sprite->data[2] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X) + gBattleAnimArgs[2];
    sprite->data[4] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y) + gBattleAnimArgs[3];
    sprite->data[5] = gBattleAnimArgs[5];
    InitAnimArcTranslation(sprite);
    sprite->callback = AnimLeechSeed_Step;
}

static void AnimLeechSeed_Step(struct Sprite *sprite)
{
    if (TranslateAnimHorizontalArc(sprite))
    {
        sprite->invisible = TRUE;
        sprite->data[0] = 10;
        sprite->callback = WaitAnimForDuration;
        StoreSpriteCallbackInData6(sprite, AnimLeechSeedSprouts);
    }
}

static void AnimLeechSeedSprouts(struct Sprite *sprite)
{
    sprite->invisible = FALSE;
    StartSpriteAnim(sprite, 1);
    sprite->data[0] = 60;
    sprite->callback = WaitAnimForDuration;
    StoreSpriteCallbackInData6(sprite, DestroyAnimSprite);
}

// Moves a spore particle in a halo around the target mon.
// The sprite's priority is updated to give the effect of going
// behind the mon's sprite.
// arg 0: initial x pixel offset
// arg 1: initial y pixel offset
// arg 2: initial wave offset
// arg 3: duration
// arg 4: blend (0 = off, 1 = on)
static void AnimSporeParticle(struct Sprite *sprite)
{
    InitSpritePosToAnimTarget(sprite, TRUE);
    StartSpriteAnim(sprite, gBattleAnimArgs[4]);
    if (gBattleAnimArgs[4] == 1)
        sprite->oam.objMode = ST_OAM_OBJ_BLEND;

    sprite->data[0] = gBattleAnimArgs[3];
    sprite->data[1] = gBattleAnimArgs[2];
    sprite->callback = AnimSporeParticle_Step;
    sprite->callback(sprite);
}

static void AnimSporeParticle_Step(struct Sprite *sprite)
{
    sprite->x2 = Sin(sprite->data[1], 32);
    sprite->y2 = Cos(sprite->data[1], -3) + ((sprite->data[2] += 24) >> 8);
    if ((u16)(sprite->data[1] - 0x40) < 0x80)
    {
        sprite->oam.priority = GetBattlerSpriteBGPriority(gBattleAnimTarget);
    }
    else
    {
        u8 priority = GetBattlerSpriteBGPriority(gBattleAnimTarget) + 1;
        if (priority > 3)
            priority = 3;

        sprite->oam.priority = priority;
    }

    sprite->data[1] += 2;
    sprite->data[1] &= 0xFF;
    if (--sprite->data[0] == -1)
        DestroyAnimSprite(sprite);
}

// In a double battle, Updates the mon sprite background priorities to allow
// the circling effect controlled by AnimSporeParticle.
// No args.
void AnimTask_SporeDoubleBattle(u8 taskId)
{
    if (IsContest() || !IsDoubleBattle())
    {
        DestroyAnimVisualTask(taskId);
    }
    else
    {
        if (GetBattlerSpriteBGPriorityRank(gBattleAnimTarget) == 1)
            SetAnimBgAttribute(2, BG_ANIM_PRIORITY, 3);
        else
            SetAnimBgAttribute(1, BG_ANIM_PRIORITY, 1);

        DestroyAnimVisualTask(taskId);
    }
}

// Rotates a big flower around the attacking mon, and slowly floats
// downward.
// arg 0: initial x pixel offset
// arg 1: initial y pixel offset
// arg 2: target y pixel offset
// arg 3: duration
static void AnimPetalDanceBigFlower(struct Sprite *sprite)
{
    InitSpritePosToAnimAttacker(sprite, FALSE);
    sprite->data[0] = gBattleAnimArgs[3];
    sprite->data[1] = sprite->x;
    sprite->data[2] = sprite->x;
    sprite->data[3] = sprite->y;
    sprite->data[4] = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y_PIC_OFFSET) + gBattleAnimArgs[2];
    InitAnimLinearTranslation(sprite);
    sprite->data[5] = 0x40;
    sprite->callback = AnimPetalDanceBigFlower_Step;
    sprite->callback(sprite);
}

static void AnimPetalDanceBigFlower_Step(struct Sprite *sprite)
{
    if (!AnimTranslateLinear(sprite))
    {
        sprite->x2 += Sin(sprite->data[5], 32);
        sprite->y2 += Cos(sprite->data[5], -5);
        if ((u16)(sprite->data[5] - 0x40) < 0x80)
            sprite->subpriority = GetBattlerSpriteSubpriority(gBattleAnimAttacker) - 1;
        else
            sprite->subpriority = GetBattlerSpriteSubpriority(gBattleAnimAttacker) + 1;

        sprite->data[5] = (sprite->data[5] + 5) & 0xFF;
    }
    else
    {
        DestroyAnimSprite(sprite);
    }
}

// Slowly floats a small flower downard, while swaying from right to left.
// arg 0: initial x pixel offset
// arg 1: initial y pixel offset
// arg 2: target y pixel offset
// arg 3: duration
static void AnimPetalDanceSmallFlower(struct Sprite *sprite)
{
    InitSpritePosToAnimAttacker(sprite, TRUE);
    sprite->data[0] = gBattleAnimArgs[3];
    sprite->data[1] = sprite->x;
    sprite->data[2] = sprite->x;
    sprite->data[3] = sprite->y;
    sprite->data[4] = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y_PIC_OFFSET) + gBattleAnimArgs[2];
    InitAnimLinearTranslation(sprite);
    sprite->data[5] = 0x40;
    sprite->callback = AnimPetalDanceSmallFlower_Step;
    sprite->callback(sprite);
}

static void AnimPetalDanceSmallFlower_Step(struct Sprite *sprite)
{
    if (!AnimTranslateLinear(sprite))
    {
        sprite->x2 += Sin(sprite->data[5], 8);
        if ((u16)(sprite->data[5] - 59) < 5 || (u16)(sprite->data[5] - 187) < 5)
            sprite->oam.matrixNum ^= ST_OAM_HFLIP;

        sprite->data[5] += 5;
        sprite->data[5] &= 0xFF;
    }
    else
    {
       DestroyAnimSprite(sprite);
    }
}

// Shoots a leaf upward, then floats it downward while swaying back and forth.
// arg 0: upward x delta per frame
// arg 1: upward y delta per frame
// arg 2: upward duration
static void AnimRazorLeafParticle(struct Sprite *sprite)
{
    sprite->x = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X_2);
    sprite->y = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y_PIC_OFFSET);
    sprite->data[0] = gBattleAnimArgs[0];
    sprite->data[1] = gBattleAnimArgs[1];
    sprite->data[2] = gBattleAnimArgs[2];
    sprite->callback = AnimRazorLeafParticle_Step1;
}

static void AnimRazorLeafParticle_Step1(struct Sprite *sprite)
{
    if (!sprite->data[2])
    {
        if (sprite->data[1] & 1)
        {
            sprite->data[0] = 0x80;
            sprite->data[1] = 0;
            sprite->data[2] = 0;
        }
        else
        {
            sprite->data[0] = 0;
            sprite->data[1] = 0;
            sprite->data[2] = 0;
        }
        sprite->callback = AnimRazorLeafParticle_Step2;
    }
    else
    {
        sprite->data[2]--;
        sprite->x += sprite->data[0];
        sprite->y += sprite->data[1];
    }
}

static void AnimRazorLeafParticle_Step2(struct Sprite *sprite)
{
    if (GetBattlerSide(gBattleAnimAttacker))
        sprite->x2 = -Sin(sprite->data[0], 25);
    else
        sprite->x2 = Sin(sprite->data[0], 25);

    sprite->data[0] += 2;
    sprite->data[0] &= 0xFF;
    sprite->data[1]++;
    if (!(sprite->data[1] & 1))
        sprite->y2++;

    if (sprite->data[1] > 80)
        DestroyAnimSprite(sprite);
}

// Animates a sprite that moves linearly from one location to another, with a
// single-cycle sine wave added to the y position along the way.
// Used by Razor Leaf and Magical Leaf.
// arg 0: initial x offset
// arg 1: initial y offset
// arg 2: target x offset
// arg 3: target y offset
// arg 4: translation duration
// arg 5: wave amplitude
// arg 6: target between double battle opponents (boolean)
static void AnimTranslateLinearSingleSineWave(struct Sprite *sprite)
{
    InitSpritePosToAnimAttacker(sprite, TRUE);
    if (GetBattlerSide(gBattleAnimAttacker) != B_SIDE_PLAYER)
        gBattleAnimArgs[2] = -gBattleAnimArgs[2];

    sprite->data[0] = gBattleAnimArgs[4];
    if (!gBattleAnimArgs[6])
    {
        sprite->data[2] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2) + gBattleAnimArgs[2];
        sprite->data[4] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET) + gBattleAnimArgs[3];
    }
    else
    {
        SetAverageBattlerPositions(gBattleAnimTarget, TRUE, &sprite->data[2], &sprite->data[4]);
        sprite->data[2] += gBattleAnimArgs[2];
        sprite->data[4] += gBattleAnimArgs[3];
    }

    sprite->data[5] = gBattleAnimArgs[5];
    InitAnimArcTranslation(sprite);
    if (GetBattlerSide(gBattleAnimAttacker) == GetBattlerSide(gBattleAnimTarget))
        sprite->data[0] = 1;
    else
        sprite->data[0] = 0;

    sprite->callback = AnimTranslateLinearSingleSineWave_Step;
}

static void AnimTranslateLinearSingleSineWave_Step(struct Sprite *sprite)
{
    bool8 destroy = FALSE;
    s16 a = sprite->data[0];
    s16 b = sprite->data[7];
    s16 r0;

    sprite->data[0] = 1;
    TranslateAnimHorizontalArc(sprite);
    r0 = sprite->data[7];
    sprite->data[0] = a;
    if (b > 200 && r0 < 56 && sprite->oam.affineParam == 0)
        sprite->oam.affineParam++;

    if (sprite->oam.affineParam && sprite->data[0])
    {
        sprite->invisible ^= 1;
        sprite->oam.affineParam++;
        if (sprite->oam.affineParam == 30)
            destroy = TRUE;
    }

    if (sprite->x + sprite->x2 > DISPLAY_WIDTH + 16
     || sprite->x + sprite->x2 < -16
     || sprite->y + sprite->y2 > DISPLAY_HEIGHT
     || sprite->y + sprite->y2 < -16)
        destroy = TRUE;

    if (destroy)
        DestroyAnimSprite(sprite);
}

// Animates particles in the Twister move animation.
// arg 0: duration
// arg 1: total y delta (the particles rise upward)
// arg 2: wave period (higher means faster wave)
// arg 3: wave amplitude
// arg 4: speedup frame (particles move faster at the end of the animation)
void AnimMoveTwisterParticle(struct Sprite *sprite)
{
    if (IsDoubleBattle() == TRUE)
        SetAverageBattlerPositions(gBattleAnimTarget, TRUE, &sprite->x, &sprite->y);

    sprite->y += 32;
    sprite->data[0] = gBattleAnimArgs[0];
    sprite->data[1] = gBattleAnimArgs[1];
    sprite->data[2] = gBattleAnimArgs[2];
    sprite->data[3] = gBattleAnimArgs[3];
    sprite->data[4] = gBattleAnimArgs[4];
    sprite->callback = AnimMoveTwisterParticle_Step;
}

static void AnimMoveTwisterParticle_Step(struct Sprite *sprite)
{
    if (sprite->data[1] == 0xFF)
    {
        sprite->y -= 2;
    }
    else if (sprite->data[1] > 0)
    {
        sprite->y -= 2;
        sprite->data[1] -= 2;
    }

    sprite->data[5] += sprite->data[2];
    if (sprite->data[0] < sprite->data[4])
        sprite->data[5] += sprite->data[2];

    sprite->data[5] &= 0xFF;
    sprite->x2 = Cos(sprite->data[5], sprite->data[3]);
    sprite->y2 = Sin(sprite->data[5], 5);
    if (sprite->data[5] < 0x80)
        sprite->oam.priority = GetBattlerSpriteBGPriority(gBattleAnimTarget) - 1;
    else
        sprite->oam.priority = GetBattlerSpriteBGPriority(gBattleAnimTarget) + 1;

    if (--sprite->data[0] == 0)
        DestroyAnimSprite(sprite);
}

// Squeezes a constricting "rope" several times via affine animations.
// arg 0: initial x pixel offset
// arg 1: initial y pixel offset
// arg 2: affine anim num
// arg 3: num squeezes
static void AnimConstrictBinding(struct Sprite *sprite)
{
    InitSpritePosToAnimTarget(sprite, FALSE);
    sprite->affineAnimPaused = 1;
    StartSpriteAffineAnim(sprite, gBattleAnimArgs[2]);
    sprite->data[6] = gBattleAnimArgs[2];
    sprite->data[7] = gBattleAnimArgs[3];
    sprite->callback = AnimConstrictBinding_Step1;
}

static void AnimConstrictBinding_Step1(struct Sprite *sprite)
{
    u8 UNUSED spriteId;

    if ((u16)gBattleAnimArgs[7] == 0xFFFF)
    {
        sprite->affineAnimPaused = 0;
        spriteId = GetAnimBattlerSpriteId(ANIM_TARGET);
        sprite->data[0] = 0x100;
        sprite->callback = AnimConstrictBinding_Step2;
    }
}

static void AnimConstrictBinding_Step2(struct Sprite *sprite)
{
    u8 UNUSED spriteId = GetAnimBattlerSpriteId(ANIM_TARGET);
    if (!sprite->data[2])
        sprite->data[0] += 11;
    else
        sprite->data[0] -= 11;

    if (++sprite->data[1] == 6)
    {
        sprite->data[1] = 0;
        sprite->data[2] ^= 1;
    }

    if (sprite->affineAnimEnded)
    {
        if (--sprite->data[7] > 0)
            StartSpriteAffineAnim(sprite, sprite->data[6]);
        else
            DestroyAnimSprite(sprite);
    }
}

void AnimTask_ShrinkTargetCopy(u8 taskId)
{
    u8 spriteId = GetAnimBattlerSpriteId(ANIM_TARGET);
    if (gSprites[spriteId].invisible)
    {
        DestroyAnimVisualTask(taskId);
    }
    else
    {
        PrepareBattlerSpriteForRotScale(spriteId, ST_OAM_OBJ_BLEND);
        gTasks[taskId].data[14] = gSprites[spriteId].oam.priority;
        gSprites[spriteId].oam.priority = GetBattlerSpriteBGPriority(gBattleAnimTarget);
        spriteId = GetAnimBattlerSpriteId(ANIM_DEF_PARTNER);
        gTasks[taskId].data[15] = gSprites[spriteId].oam.priority;
        gSprites[spriteId].oam.priority = GetBattlerSpriteBGPriority(BATTLE_PARTNER(gBattleAnimTarget));
        gTasks[taskId].data[0] = gBattleAnimArgs[0];
        gTasks[taskId].data[1] = gBattleAnimArgs[1];
        gTasks[taskId].data[11] = 0x100;
        gTasks[taskId].func = AnimTask_DuplicateAndShrinkToPos_Step1;
    }
}

static void AnimTask_DuplicateAndShrinkToPos_Step1(u8 taskId)
{
    u8 spriteId = GetAnimBattlerSpriteId(ANIM_TARGET);
    gTasks[taskId].data[10] += gTasks[taskId].data[0];
    gSprites[spriteId].x2 = gTasks[taskId].data[10] >> 8;
    if (GetBattlerSide(gBattleAnimTarget) != B_SIDE_PLAYER)
        gSprites[spriteId].x2 = -gSprites[spriteId].x2;

    gTasks[taskId].data[11] += 16;
    SetSpriteRotScale(spriteId, gTasks[taskId].data[11], gTasks[taskId].data[11], 0);
    SetBattlerSpriteYOffsetFromYScale(spriteId);
    if (--gTasks[taskId].data[1] == 0)
    {
        gTasks[taskId].data[0] = 0;
        gTasks[taskId].func = AnimTask_DuplicateAndShrinkToPos_Step2;
    }
}

static void AnimTask_DuplicateAndShrinkToPos_Step2(u8 taskId)
{
    if ((u16)gBattleAnimArgs[7] == 0xFFFF)
    {
        if (gTasks[taskId].data[0] == 0)
        {
            u8 spriteId = GetAnimBattlerSpriteId(ANIM_TARGET);
            ResetSpriteRotScale(spriteId);
            gSprites[spriteId].x2 = 0;
            gSprites[spriteId].y2 = 0;
            gSprites[spriteId].oam.priority = gTasks[taskId].data[14];
            spriteId = GetAnimBattlerSpriteId(ANIM_DEF_PARTNER);
            gSprites[spriteId].oam.priority = gTasks[taskId].data[15];
            gTasks[taskId].data[0]++;
            return;
        }
    }
    else
    {
        if (gTasks[taskId].data[0] == 0)
            return;
    }

    gTasks[taskId].data[0]++;
    if (gTasks[taskId].data[0] == 3)
        DestroyAnimVisualTask(taskId);
}

// Moves an orb from the target mon to the attacking mon.
// arg 0: initial x pixel offset
// arg 1: initial y pixel offset
static void AnimMimicOrb(struct Sprite *sprite)
{
    switch (sprite->data[0])
    {
    case 0:
        if (GetBattlerSide(gBattleAnimTarget) == B_SIDE_PLAYER)
            gBattleAnimArgs[0] *= -1;

        sprite->x = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X) + gBattleAnimArgs[0];
        sprite->y = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y) + gBattleAnimArgs[1];
        sprite->invisible = TRUE;
        sprite->data[0]++;
        break;
    case 1:
        sprite->invisible = FALSE;
        if (sprite->affineAnimEnded)
        {
            ChangeSpriteAffineAnim(sprite, 1);
            sprite->data[0] = 25;
            sprite->data[2] = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X_2);
            sprite->data[4] = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y_PIC_OFFSET);
            sprite->callback = InitAndRunAnimFastLinearTranslation;
            StoreSpriteCallbackInData6(sprite, DestroyAnimSprite);
            break;
        }
    }
}

// Animates a root that flickers away after some time.
// arg 0: x pixel offset
// arg 1: y pixel offset
// arg 2: sprite subpriority offset
// arg 3: sprite anim num
// arg 4: duration
static void AnimIngrainRoot(struct Sprite *sprite)
{
    if (!sprite->data[0])
    {
        sprite->x = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X_2);
        sprite->y = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y);
        sprite->x2 = gBattleAnimArgs[0];
        sprite->y2 = gBattleAnimArgs[1];
        sprite->subpriority = gBattleAnimArgs[2] + 30;
        StartSpriteAnim(sprite, gBattleAnimArgs[3]);
        sprite->data[2] = gBattleAnimArgs[4];
        sprite->data[0]++;
        if (sprite->y + sprite->y2 > 120)
            sprite->y += sprite->y2 + sprite->y - 120;
    }
    sprite->callback = AnimRootFlickerOut;
}

// functions
// args[0] - initial x offset
// args[1] - initial y offset
// args[2] - some param to linear translation
// args[3] - some param to linear translation
// args[4] - offset that gets added to param for Sin
// args[5] - another param for Sin
static void AnimGrassKnot(struct Sprite *sprite)
{
    if (BATTLE_PARTNER(gBattleAnimAttacker) == gBattleAnimTarget && GetBattlerPosition(gBattleAnimTarget) < B_POSITION_PLAYER_RIGHT)
        gBattleAnimArgs[0] *= -1;

    InitSpritePosToAnimTarget(sprite, TRUE);

     if (GetBattlerSide(gBattleAnimAttacker) != B_SIDE_PLAYER)
        gBattleAnimArgs[2] = -gBattleAnimArgs[2];

    sprite->data[0] = gBattleAnimArgs[3];
    sprite->data[1] = sprite->x;
    sprite->data[2] = sprite->x + gBattleAnimArgs[2];
    sprite->data[3] = sprite->y;
    sprite->data[4] = sprite->y;

    InitAnimLinearTranslation(sprite);

    sprite->data[5] = gBattleAnimArgs[5];
    sprite->data[6] = gBattleAnimArgs[4];
    sprite->data[7] = 0;

    sprite->callback = AnimGrassKnotStep;
}

static void AnimGrassKnotStep(struct Sprite *sprite)
{
    if (!AnimTranslateLinear(sprite))
    {
        sprite->y2 += Sin(sprite->data[7] >> 8, sprite->data[5]);
        sprite->data[7] += sprite->data[6];
    }
    else
    {
        DestroyAnimSprite(sprite);
    }
}

// Places a root on the path to the target mon that flickers away after some time.
// arg 0: percent along the path to the target mon
// arg 1: x pixel offset
// arg 2: y pixel offset
// arg 3: sprite subpriority offset
// arg 4: sprite anum num
// arg 5: duration
static void AnimFrenzyPlantRoot(struct Sprite *sprite)
{
    s16 attackerX = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X_2);
    s16 attackerY = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y_PIC_OFFSET);
    s16 targetX = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2);
    s16 targetY = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET);

    targetX -= attackerX;
    targetY -= attackerY;
    sprite->x = attackerX + targetX * gBattleAnimArgs[0] / 100;
    sprite->y = attackerY + targetY * gBattleAnimArgs[0] / 100;
    sprite->x2 = gBattleAnimArgs[1];
    sprite->y2 = gBattleAnimArgs[2];
    sprite->subpriority = gBattleAnimArgs[3] + 30;
    StartSpriteAnim(sprite, gBattleAnimArgs[4]);
    sprite->data[2] = gBattleAnimArgs[5];
    sprite->callback = AnimRootFlickerOut;
    sFrenzyPlantRootData.startX = sprite->x;
    sFrenzyPlantRootData.startY = sprite->y;
    sFrenzyPlantRootData.targetX = targetX;
    sFrenzyPlantRootData.targetY = targetY;
}

static void AnimRootFlickerOut(struct Sprite *sprite)
{
    if (++sprite->data[0] > (sprite->data[2] - 10))
        sprite->invisible = sprite->data[0] % 2;

    if (sprite->data[0] > sprite->data[2])
        DestroyAnimSprite(sprite);
}

// Moves an orb in a fast wavy path.
// arg 0: initial x pixel offset
// arg 1: initial y pixel offset
// arg 2: horizontal velocity
// arg 3: wave amplitude
// arg 4: duration
static void AnimIngrainOrb(struct Sprite *sprite)
{
    if (!sprite->data[0])
    {
        sprite->x = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X_2) + gBattleAnimArgs[0];
        sprite->y = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y) + gBattleAnimArgs[1];
        sprite->data[1] = gBattleAnimArgs[2];
        sprite->data[2] = gBattleAnimArgs[3];
        sprite->data[3] = gBattleAnimArgs[4];
    }

    sprite->data[0]++;
    sprite->x2 = sprite->data[1] * sprite->data[0];
    sprite->y2 = Sin((sprite->data[0] * 20) & 0xFF, sprite->data[2]);
    if (sprite->data[0] > sprite->data[3])
        DestroyAnimSprite(sprite);
}

static void InitItemBagData(struct Sprite *sprite, s16 c)
{
    int a = (sprite->x << 8) | sprite->y;
    int b = (sprite->data[6] << 8) | sprite->data[7];
    c <<= 8;
    sprite->data[5] = a;
    sprite->data[6] = b;
    sprite->data[7] = c;
}

bool8 moveAlongLinearPath(struct Sprite *sprite)
{
    u16 xStartPos = (u8)(sprite->data[5] >> 8);
    u16 yStartPos = (u8)sprite->data[5];
    s32 xEndPos = (u8)(sprite->data[6] >> 8);
    s32 yEndPos = (u8)sprite->data[6];
    s16 totalTime = sprite->data[7] >> 8;
    s16 currentTime = sprite->data[7] & 0xFF;
    s16 yEndPos_2;
    s16 r0;
    s32 var1;
    s32 vaxEndPos;

    if (xEndPos == 0)
        xEndPos = -32;
    else if (xEndPos == 255)
        xEndPos = DISPLAY_WIDTH + 32;

    yEndPos_2 = yEndPos - yStartPos;
    r0 = xEndPos - xStartPos;
    var1 = r0 * currentTime / totalTime;
    vaxEndPos = yEndPos_2 * currentTime / totalTime;
    sprite->x = var1 + xStartPos;
    sprite->y = vaxEndPos + yStartPos;
    if (++currentTime == totalTime)
        return TRUE;

    sprite->data[7] = (totalTime << 8) | currentTime;
    return FALSE;
}

static void AnimItemSteal_Step2(struct Sprite *sprite)
{
    if (sprite->data[0] == 10)
        StartSpriteAffineAnim(sprite, 1);

    sprite->data[0]++;
    if (sprite->data[0] > 50)
        DestroyAnimSprite(sprite);
}

static void AnimItemSteal_Step1(struct Sprite *sprite)
{
    sprite->data[0] += sprite->data[3] * 128 / sprite->data[4];
    if (sprite->data[0] >= 128)
    {
        sprite->data[1]++;
        sprite->data[0] = 0;
    }

    sprite->y2 = Sin(sprite->data[0] + 128, 30 - sprite->data[1] * 8);
    if (moveAlongLinearPath(sprite))
    {
        sprite->y2 = 0;
        sprite->data[0] = 0;
        sprite->callback = AnimItemSteal_Step2;
    }
}

static void AnimPresent(struct Sprite *sprite)
{
    s16 targetX;
    s16 targetY;
    InitSpritePosToAnimAttacker(sprite, FALSE);
    targetX = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X);
    targetY = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y);
    if (BATTLE_PARTNER(gBattleAnimAttacker) == gBattleAnimTarget)
    {
        sprite->data[6] = targetX;
        sprite->data[7] = targetY + 10;
        InitItemBagData(sprite, 60);
        sprite->data[3] = 1;
    }
    else
    {
        sprite->data[6] = targetX;
        sprite->data[7] = targetY + 10;
        InitItemBagData(sprite, 60);
        sprite->data[3] = 3;
    }

    sprite->data[4] = 60;
    sprite->callback = AnimItemSteal_Step1;
}

static void AnimKnockOffOpponentsItem(struct Sprite *sprite)
{
    sprite->data[0] += ((sprite->data[3] * 128) / sprite->data[4]);
    if (sprite->data[0] > 0x7F)
    {
        sprite->data[1]++;
        sprite->data[0] = 0;
    }

    sprite->y2 = Sin(sprite->data[0] + 0x80, 30 - sprite->data[1] * 8);
    if (moveAlongLinearPath(sprite))
    {
        sprite->y2 = 0;
        sprite->data[0] = 0;
        DestroyAnimSprite(sprite);
    }
}

static void AnimKnockOffItem(struct Sprite *sprite)
{
    s16 targetY = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y);
    if (GetBattlerSide(gBattleAnimTarget) == B_SIDE_PLAYER)
    {
        sprite->data[6] = 0;
        sprite->data[7] = targetY + 10;
        InitItemBagData(sprite, 40);
        sprite->data[3] = 3;
        sprite->data[4] = 60;
        sprite->callback = AnimItemSteal_Step1;
    }
    else
    {
        sprite->data[6] = 255;
        sprite->data[7] = targetY + 10;
        if (IsContest())
            sprite->data[6] = 0;

        InitItemBagData(sprite, 40);
        sprite->data[3] = 3;
        sprite->data[4] = 60;
        sprite->callback = AnimKnockOffOpponentsItem;
    }
}

// Animates a heal particle upward.
// arg 0: initial x pixel offset
// arg 1: initial y pixel offset
// arg 2: vertical velocity
// arg 3: unused
static void AnimPresentHealParticle(struct Sprite *sprite)
{
    if (!sprite->data[0])
    {
        InitSpritePosToAnimTarget(sprite, FALSE);
        sprite->data[1] = gBattleAnimArgs[2];
    }

    sprite->data[0]++;
    sprite->y2 = sprite->data[1] * sprite->data[0];
    if (sprite->animEnded)
        DestroyAnimSprite(sprite);
}

static void AnimItemSteal(struct Sprite *sprite)
{
    s16 attackerX;
    s16 attackerY;
    InitSpritePosToAnimTarget(sprite, FALSE);
    attackerX = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X);
    attackerY = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y);
    if (BATTLE_PARTNER(gBattleAnimTarget) == gBattleAnimAttacker)
    {
        sprite->data[6] = attackerX;
        sprite->data[7] = attackerY + 10;
        InitItemBagData(sprite, 60);
        sprite->data[3] = 1;
    }
    else
    {
        sprite->data[6] = attackerX;
        sprite->data[7] = attackerY + 10;
        InitItemBagData(sprite, 60);
        sprite->data[3] = 3;
    }

    sprite->data[4] = 60;
    sprite->callback = AnimItemSteal_Step3;
}

static void AnimItemSteal_Step3(struct Sprite *sprite)
{
    sprite->data[0] += ((sprite->data[3] * 128) / sprite->data[4]);
    if (sprite->data[0] > 127)
    {
        sprite->data[1]++;
        sprite->data[0] = 0;
    }

    sprite->y2 = Sin(sprite->data[0] + 0x80, 30 - sprite->data[1] * 8);
    if (sprite->y2 == 0)
        PlaySE12WithPanning(SE_M_BUBBLE2, BattleAnimAdjustPanning(SOUND_PAN_TARGET));

    if (moveAlongLinearPath(sprite))
    {
        sprite->y2 = 0;
        sprite->data[0] = 0;
        sprite->callback = AnimItemSteal_Step2;
        PlaySE12WithPanning(SE_M_BUBBLE2, BattleAnimAdjustPanning(SOUND_PAN_ATTACKER));
    }
}

// Moves a bag in a circular motion.
// arg 0: y position
// arg 1: initial wave offset
static void AnimTrickBag(struct Sprite *sprite)
{
    int a;
    int b;

    if (!sprite->data[0])
    {
        if (!IsContest())
        {
            sprite->data[1] = gBattleAnimArgs[1];
            sprite->x = 120;
        }
        else
        {
            a = gBattleAnimArgs[1] - 32;
            if (a < 0)
                b = gBattleAnimArgs[1] + 0xDF;
            else
                b = a;

            sprite->data[1] = a - ((b >> 8) << 8);
            sprite->x = 70;
        }

        sprite->y = gBattleAnimArgs[0];
        sprite->data[2] = gBattleAnimArgs[0];
        sprite->data[4] = 20;
        sprite->x2 = Cos(sprite->data[1], 60);
        sprite->y2 = Sin(sprite->data[1], 20);
        sprite->callback = AnimTrickBag_Step1;
        if (sprite->data[1] > 0 && sprite->data[1] < 192)
            sprite->subpriority = 31;
        else
            sprite->subpriority = 29;
    }
}

static void AnimTrickBag_Step1(struct Sprite *sprite)
{
    switch (sprite->data[3])
    {
    case 0:
        if (sprite->data[2] > 78)
        {
            sprite->data[3] = 1;
            StartSpriteAffineAnim(sprite, 1);
            break;
        }
        else
        {
            sprite->data[2] += sprite->data[4] / 10;
            sprite->data[4] += 3;
            sprite->y = sprite->data[2];
            break;
        }
        break;
    case 1:
        if (sprite->data[3] && sprite->affineAnimEnded)
        {
            sprite->data[0] = 0;
            sprite->data[2] = 0;
            sprite->callback = AnimTrickBag_Step2;
        }
        break;
    }
}

static void AnimTrickBag_Step2(struct Sprite *sprite)
{
    if (sprite->data[2] == gTrickBagCoordinates[sprite->data[0]][1])
    {
        if (gTrickBagCoordinates[sprite->data[0]][2] == 127)
        {
            sprite->data[0] = 0;
            sprite->callback = AnimTrickBag_Step3;
        }

        sprite->data[2] = 0;
        sprite->data[0]++;
    }
    else
    {
        sprite->data[2]++;
        sprite->data[1] = (gTrickBagCoordinates[sprite->data[0]][0] * gTrickBagCoordinates[sprite->data[0]][2] + sprite->data[1]) & 0xFF;
        if (!IsContest())
        {
            if ((u16)(sprite->data[1] - 1) < 191)
                sprite->subpriority = 31;
            else
                sprite->subpriority = 29;
        }

        sprite->x2 = Cos(sprite->data[1], 60);
        sprite->y2 = Sin(sprite->data[1], 20);
    }
}

static void AnimTrickBag_Step3(struct Sprite *sprite)
{
    if (sprite->data[0] > 20)
        DestroyAnimSprite(sprite);

    sprite->invisible = sprite->data[0] % 2;
    sprite->data[0]++;
}

void AnimTask_LeafBlade(u8 taskId)
{
    struct Task *task = &gTasks[taskId];

    task->data[4] = GetBattlerSpriteSubpriority(gBattleAnimTarget) - 1;
    task->data[6] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2);
    task->data[7] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET);
    task->data[10] = GetBattlerSpriteCoordAttr(gBattleAnimTarget, BATTLER_COORD_ATTR_WIDTH);
    task->data[11] = GetBattlerSpriteCoordAttr(gBattleAnimTarget, BATTLER_COORD_ATTR_HEIGHT);
    task->data[5] = (GetBattlerSide(gBattleAnimTarget) == B_SIDE_OPPONENT) ? 1 : -1;
    task->data[9] = 56 - (task->data[5] * 64);
    task->data[8] = task->data[7] - task->data[9] + task->data[6];
    task->data[2] = CreateSprite(&gLeafBladeSpriteTemplate, task->data[8], task->data[9], task->data[4]);
    if (task->data[2] == MAX_SPRITES)
        DestroyAnimVisualTask(taskId);

    gSprites[task->data[2]].data[0] = 10;
    gSprites[task->data[2]].data[1] = task->data[8];
    gSprites[task->data[2]].data[2] = task->data[6] - (task->data[10] / 2 + 10) * task->data[5];
    gSprites[task->data[2]].data[3] = task->data[9];
    gSprites[task->data[2]].data[4] = task->data[7] + (task->data[11] / 2 + 10) * task->data[5];
    gSprites[task->data[2]].data[5] = LeafBladeGetPosFactor(&gSprites[task->data[2]]);
    InitAnimArcTranslation(&gSprites[task->data[2]]);
    task->func = AnimTask_LeafBlade_Step;
}

static void AnimTask_LeafBlade_Step(u8 taskId)
{
    struct Task *task = &gTasks[taskId];
    struct Sprite *sprite = &gSprites[task->data[2]];
    int a = task->data[0];
    switch (a)
    {
    case 4:
        AnimTask_LeafBlade_Step2(task, taskId);
        if (TranslateAnimHorizontalArc(sprite))
        {
            task->data[15] = 5;
            task->data[0] = 0xFF;
        }
        break;
    case 8:
        AnimTask_LeafBlade_Step2(task, taskId);
        if (TranslateAnimHorizontalArc(sprite))
        {
            task->data[15] = 9;
            task->data[0] = 0xFF;
        }
        break;
    case 0:
        AnimTask_LeafBlade_Step2(task, taskId);
        if (TranslateAnimHorizontalArc(sprite))
        {
            task->data[15] = 1;
            task->data[0] = 0xFF;
        }
        break;
    case 1:
        sprite->x += sprite->x2;
        sprite->y += sprite->y2;
        sprite->x2 = 0;
        sprite->y2 = 0;
        sprite->data[0] = 10;
        sprite->data[1] = sprite->x;
        sprite->data[2] = task->data[6];
        sprite->data[3] = sprite->y;
        sprite->data[4] = task->data[7];
        sprite->data[5] = LeafBladeGetPosFactor(sprite);
        task->data[4] += 2;
        task->data[3] = a;
        sprite->subpriority = task->data[4];
        StartSpriteAnim(sprite, task->data[3]);
        InitAnimArcTranslation(sprite);
        task->data[0]++;
        break;
    case 2:
        AnimTask_LeafBlade_Step2(task, taskId);
        if (TranslateAnimHorizontalArc(sprite))
        {
            task->data[15] = 3;
            task->data[0] = 0xFF;
        }
        break;
    case 3:
        sprite->x += sprite->x2;
        sprite->y += sprite->y2;
        sprite->x2 = 0;
        sprite->y2 = 0;
        sprite->data[0] = 10;
        sprite->data[1] = sprite->x;
        sprite->data[2] = task->data[6] - ((task->data[10] / 2) + 10) * task->data[5];
        sprite->data[3] = sprite->y;
        sprite->data[4] = task->data[7] - ((task->data[11] / 2) + 10) * task->data[5];
        sprite->data[5] = LeafBladeGetPosFactor(sprite);
        task->data[3] = 2;
        sprite->subpriority = task->data[4];
        StartSpriteAnim(sprite, task->data[3]);
        InitAnimArcTranslation(sprite);
        task->data[0]++;
        break;
    case 5:
        sprite->x += sprite->x2;
        sprite->y += sprite->y2;
        sprite->x2 = 0;
        sprite->y2 = 0;
        sprite->data[0] = 10;
        sprite->data[1] = sprite->x;
        sprite->data[2] = task->data[6] + ((task->data[10] / 2) + 10) * task->data[5];
        sprite->data[3] = sprite->y;
        sprite->data[4] = task->data[7] + ((task->data[11] / 2) + 10) * task->data[5];
        sprite->data[5] = LeafBladeGetPosFactor(sprite);
        task->data[4] -= 2;
        task->data[3] = 3;
        sprite->subpriority = task->data[4];
        StartSpriteAnim(sprite, task->data[3]);
        InitAnimArcTranslation(sprite);
        task->data[0]++;
        break;
    case 6:
        AnimTask_LeafBlade_Step2(task, taskId);
        if (TranslateAnimHorizontalArc(sprite))
        {
            task->data[15] = 7;
            task->data[0] = 0xFF;
        }
        break;
    case 7:
        sprite->x += sprite->x2;
        sprite->y += sprite->y2;
        sprite->x2 = 0;
        sprite->y2 = 0;
        sprite->data[0] = 10;
        sprite->data[1] = sprite->x;
        sprite->data[2] = task->data[6];
        sprite->data[3] = sprite->y;
        sprite->data[4] = task->data[7];
        sprite->data[5] = LeafBladeGetPosFactor(sprite);
        task->data[4] += 2;
        task->data[3] = 4;
        sprite->subpriority = task->data[4];
        StartSpriteAnim(sprite, task->data[3]);
        InitAnimArcTranslation(sprite);
        task->data[0]++;
        break;
    case 9:
        sprite->x += sprite->x2;
        sprite->y += sprite->y2;
        sprite->x2 = 0;
        sprite->y2 = 0;
        sprite->data[0] = 10;
        sprite->data[1] = sprite->x;
        sprite->data[2] = task->data[6] - ((task->data[10] / 2) + 10) * task->data[5];
        sprite->data[3] = sprite->y;
        sprite->data[4] = task->data[7] + ((task->data[11] / 2) + 10) * task->data[5];
        sprite->data[5] = LeafBladeGetPosFactor(sprite);
        task->data[3] = 5;
        sprite->subpriority = task->data[4];
        StartSpriteAnim(sprite, task->data[3]);
        InitAnimArcTranslation(sprite);
        task->data[0]++;
        break;
    case 10:
        AnimTask_LeafBlade_Step2(task, taskId);
        if (TranslateAnimHorizontalArc(sprite))
        {
            task->data[15] = 11;
            task->data[0] = 0xFF;
        }
        break;
    case 11:
    {
        sprite->x += sprite->x2;
        sprite->y += sprite->y2;
        sprite->x2 = 0;
        sprite->y2 = 0;
        sprite->data[0] = 10;
        sprite->data[1] = sprite->x;
        sprite->data[2] = task->data[8];
        sprite->data[3] = sprite->y;
        sprite->data[4] = task->data[9];
        sprite->data[5] = LeafBladeGetPosFactor(sprite);
        task->data[4] -= 2;
        task->data[3] = 6;
        sprite->subpriority = task->data[4];
        StartSpriteAnim(sprite, task->data[3]);
        InitAnimArcTranslation(sprite);
        task->data[0]++;
        break;
    }
    case 12:
        AnimTask_LeafBlade_Step2(task, taskId);
        if (TranslateAnimHorizontalArc(sprite))
        {
            DestroySprite(sprite);
            task->data[0]++;
        }
        break;
    case 13:
        if (task->data[12] == 0)
            DestroyAnimVisualTask(taskId);
        break;
    case 0xFF:
        if (++task->data[1] > 5)
        {
            task->data[1] = 0;
            task->data[0] = task->data[15];
        }
        break;
    }
}

static s16 LeafBladeGetPosFactor(struct Sprite *sprite)
{
    s16 var = 8;
    if (sprite->data[4] < sprite->y)
        var = -var;

    return var;
}

static void AnimTask_LeafBlade_Step2(struct Task *task, u8 taskId)
{
    task->data[14]++;
    if (task->data[14] > 0)
    {
        u8 spriteId;
        s16 spriteX;
        s16 spriteY;
        task->data[14] = 0;
        spriteX = gSprites[task->data[2]].x + gSprites[task->data[2]].x2;
        spriteY = gSprites[task->data[2]].y + gSprites[task->data[2]].y2;
        spriteId = CreateSprite(&gLeafBladeSpriteTemplate, spriteX, spriteY, task->data[4]);
        if (spriteId != MAX_SPRITES)
        {
            gSprites[spriteId].data[6] = taskId;
            gSprites[spriteId].data[7] = 12;
            gTasks[taskId].data[12]++;
            gSprites[spriteId].data[0] = task->data[13] & 1;
            gTasks[taskId].data[13]++;
            StartSpriteAnim(&gSprites[spriteId], task->data[3]);
            gSprites[spriteId].subpriority = task->data[4];
            gSprites[spriteId].callback = AnimTask_LeafBlade_Step2_Callback;
        }
    }
}

static void AnimTask_LeafBlade_Step2_Callback(struct Sprite *sprite)
{
    sprite->data[0]++;
    if (sprite->data[0] > 1)
    {
        sprite->data[0] = 0;
        sprite->invisible ^= 1;
        sprite->data[1]++;
        if (sprite->data[1] > 8)
        {
            gTasks[sprite->data[6]].data[sprite->data[7]]--;
            DestroySprite(sprite);
        }
    }
}

static void AnimFlyingParticle(struct Sprite *sprite)
{
    u8 battler;
    if (!gBattleAnimArgs[6])
        battler = gBattleAnimAttacker;
    else
        battler = gBattleAnimTarget;

    if (GetBattlerSide(battler) != B_SIDE_PLAYER)
    {
        sprite->data[4] = 0;
        sprite->data[2] = gBattleAnimArgs[3];
        sprite->x = -16;
    }
    else
    {
        sprite->data[4] = 1;
        sprite->data[2] = -gBattleAnimArgs[3];
        sprite->x = DISPLAY_WIDTH + 16;
    }

    sprite->data[1] = gBattleAnimArgs[1];
    sprite->data[0] = gBattleAnimArgs[2];
    sprite->data[3] = gBattleAnimArgs[4];
    switch (gBattleAnimArgs[5])
    {
    case 0:
        sprite->y = gBattleAnimArgs[0];
        sprite->oam.priority = GetBattlerSpriteBGPriority(battler);
        break;
    case 1:
        sprite->y = gBattleAnimArgs[0];
        sprite->oam.priority = GetBattlerSpriteBGPriority(battler) + 1;
        break;
    case 2:
        sprite->y = GetBattlerSpriteCoord(battler, BATTLER_COORD_Y_PIC_OFFSET) + gBattleAnimArgs[0];
        sprite->oam.priority = GetBattlerSpriteBGPriority(battler);
        break;
    case 3:
        sprite->y = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET) + gBattleAnimArgs[0];
        GetAnimBattlerSpriteId(ANIM_TARGET);
        sprite->oam.priority = GetBattlerSpriteBGPriority(battler) + 1;
        break;
    }

    sprite->callback = AnimFlyingParticle_Step;
}

static void AnimFlyingParticle_Step(struct Sprite *sprite)
{
    int a = sprite->data[7];
    sprite->data[7]++;
    sprite->y2 = (sprite->data[1] * gSineTable[sprite->data[0]]) >> 8;
    sprite->x2 = sprite->data[2] * a;
    sprite->data[0] = (sprite->data[3] * a) & 0xFF;
    if (!sprite->data[4])
    {
        if (sprite->x2 + sprite->x < DISPLAY_WIDTH + 8)
            return;
    }
    else
    {
        if (sprite->x2 + sprite->x > -16)
            return;
    }

    DestroySpriteAndMatrix(sprite);
}

void AnimTask_CycleMagicalLeafPal(u8 taskId)
{
    struct Task *task = &gTasks[taskId];
    switch (task->data[0])
    {
    case 0:
        task->data[8] = OBJ_PLTT_ID(IndexOfSpritePaletteTag(ANIM_TAG_LEAF));
        task->data[12] = OBJ_PLTT_ID(IndexOfSpritePaletteTag(ANIM_TAG_RAZOR_LEAF));
        task->data[0]++;
        break;
    case 1:
        if (++task->data[9] >= 0)
        {
            task->data[9] = 0;
            BlendPalette(task->data[8], 16, task->data[10], gMagicalLeafBlendColors[task->data[11]]);
            BlendPalette(task->data[12], 16, task->data[10], gMagicalLeafBlendColors[task->data[11]]);
            if (++task->data[10] == 17)
            {
                task->data[10] = 0;
                if (++task->data[11] == 7)
                    task->data[11] = 0;
            }
        }
        break;
    }

    if (gBattleAnimArgs[7] == -1)
        DestroyAnimVisualTask(taskId);
}

static void AnimNeedleArmSpike(struct Sprite *sprite)
{
    u8 a;
    u8 b;
    u16 c;
    u16 x;
    u16 y;

    if (gBattleAnimArgs[4] == 0)
    {
        DestroyAnimSprite(sprite);
    }
    else
    {
        if (gBattleAnimArgs[0] == 0)
        {
            a = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X_2);
            b = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y_PIC_OFFSET);
        }
        else
        {
            a = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2);
            b = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET);
        }

        sprite->data[0] = gBattleAnimArgs[4];
        if (gBattleAnimArgs[1] == 0)
        {
            sprite->x = gBattleAnimArgs[2] + a;
            sprite->y = gBattleAnimArgs[3] + b;
            sprite->data[5] = a;
            sprite->data[6] = b;
        }
        else
        {
            sprite->x = a;
            sprite->y = b;
            sprite->data[5] = gBattleAnimArgs[2] + a;
            sprite->data[6] = gBattleAnimArgs[3] + b;
        }

        x = sprite->x;
        sprite->data[1] = x * 16;
        y = sprite->y;
        sprite->data[2] = y * 16;
        sprite->data[3] = (sprite->data[5] - sprite->x) * 16 / gBattleAnimArgs[4];
        sprite->data[4] = (sprite->data[6] - sprite->y) * 16 / gBattleAnimArgs[4];
        c = ArcTan2Neg(sprite->data[5] - x, sprite->data[6] - y);
        if (IsContest())
            c -= 0x8000;

        TrySetSpriteRotScale(sprite, FALSE, 0x100, 0x100, c);
        sprite->callback = AnimNeedleArmSpike_Step;
    }
}

static void AnimNeedleArmSpike_Step(struct Sprite *sprite)
{
    if (sprite->data[0])
    {
        sprite->data[1] += sprite->data[3];
        sprite->data[2] += sprite->data[4];
        sprite->x = sprite->data[1] >> 4 ;
        sprite->y = sprite->data[2] >> 4 ;
        sprite->data[0]--;
    }
    else
    {
        DestroySpriteAndMatrix(sprite);
    }
}

static void AnimWhipHit_WaitEnd(struct Sprite *sprite)
{
    if (sprite->animEnded)
        DestroyAnimSprite(sprite);
}

static void AnimSlidingHit(struct Sprite *sprite)
{
    if (GetBattlerSide(gBattleAnimAttacker) != B_SIDE_PLAYER)
    {
        sprite->x -= gBattleAnimArgs[0];
        sprite->y += gBattleAnimArgs[1];
    }
    else
    {
        sprite->x += gBattleAnimArgs[0];
        sprite->y += gBattleAnimArgs[1];
    }

    sprite->callback = RunStoredCallbackWhenAnimEnds;
    StoreSpriteCallbackInData6(sprite, DestroyAnimSprite);
}

static void AnimWhipHit(struct Sprite *sprite)
{
    if (GetBattlerSide(gBattleAnimAttacker) == B_SIDE_PLAYER)
        StartSpriteAnim(sprite, 1);

    sprite->callback = AnimWhipHit_WaitEnd;
    SetAnimSpriteInitialXOffset(sprite, gBattleAnimArgs[0]);
    sprite->y += gBattleAnimArgs[1];
}

static void AnimFlickeringPunch(struct Sprite *sprite)
{
    sprite->x += gBattleAnimArgs[0];
    sprite->y += gBattleAnimArgs[1];
    sprite->data[0] = gBattleAnimArgs[2];
    sprite->data[1] = gBattleAnimArgs[3];
    sprite->data[3] = gBattleAnimArgs[4];
    sprite->data[5] = gBattleAnimArgs[5];
    StartSpriteAffineAnim(sprite, gBattleAnimArgs[6]);
    StoreSpriteCallbackInData6(sprite, DestroySpriteAndMatrix);
    sprite->callback = TranslateSpriteLinearAndFlicker;
}

// Moves the sprite in a diagonally slashing motion across the target mon.
// Used by moves such as MOVE_CUT and MOVE_AERIAL_ACE.
// arg 0: initial x pixel offset
// arg 1: initial y pixel offset
// arg 2: slice direction; 0 = right-to-left, 1 = left-to-right
static void AnimCuttingSlice(struct Sprite *sprite)
{
    sprite->x = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X);
    sprite->y = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y);
    if (GetBattlerSide(gBattleAnimTarget) == B_SIDE_PLAYER)
        sprite->y += 8;

    sprite->callback = AnimSlice_Step;
    if (gBattleAnimArgs[2] == 0)
    {
        sprite->x += gBattleAnimArgs[0];
    }
    else
    {
        sprite->x -= gBattleAnimArgs[0];
        sprite->hFlip = 1;
    }

    sprite->y += gBattleAnimArgs[1];
    sprite->data[1] -= 0x400;
    sprite->data[2] += 0x400;
    sprite->data[5] = gBattleAnimArgs[2];
    if (sprite->data[5] == 1)
        sprite->data[1] = -sprite->data[1];
}

static void AnimAirCutterSlice(struct Sprite *sprite)
{
    u8 x, y;
    switch (gBattleAnimArgs[3])
    {
    case 1:
        x = GetBattlerSpriteCoord(BATTLE_PARTNER(gBattleAnimTarget), BATTLER_COORD_X);
        y = GetBattlerSpriteCoord(BATTLE_PARTNER(gBattleAnimTarget), BATTLER_COORD_Y);
        break;
    case 2:
        x = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X);
        y = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y);
        if (IsBattlerSpriteVisible(BATTLE_PARTNER(gBattleAnimTarget)))
        {
            x = (GetBattlerSpriteCoord(BATTLE_PARTNER(gBattleAnimTarget), BATTLER_COORD_X) + x) / 2;
            y = (GetBattlerSpriteCoord(BATTLE_PARTNER(gBattleAnimTarget), BATTLER_COORD_Y) + y) / 2;
        }
        break;
    case 0:
    default:
        x = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X);
        y = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y);
        break;
    }

    sprite->x = x;
    sprite->y = y;
    if (GetBattlerSide(gBattleAnimTarget) == B_SIDE_PLAYER)
        sprite->y += 8;

    sprite->callback = AnimSlice_Step;
    if (gBattleAnimArgs[2] == 0)
    {
        sprite->x += gBattleAnimArgs[0];
    }
    else
    {
        sprite->x -= gBattleAnimArgs[0];
        sprite->hFlip = 1;
    }

    sprite->y += gBattleAnimArgs[1];
    sprite->data[1] -= 0x400;
    sprite->data[2] += 0x400;
    sprite->data[5] = gBattleAnimArgs[2];
    if (sprite->data[5] == 1)
        sprite->data[1] = -sprite->data[1];
}

static void AnimSlice_Step(struct Sprite *sprite)
{
    sprite->data[3] += sprite->data[1];
    sprite->data[4] += sprite->data[2];
    if (sprite->data[5] == 0)
        sprite->data[1] += 0x18;
    else
        sprite->data[1] -= 0x18;

    sprite->data[2] -= 0x18;
    sprite->x2 = sprite->data[3] >> 8;
    sprite->y2 = sprite->data[4] >> 8;
    sprite->data[0]++;
    if (sprite->data[0] == 20)
    {
        StoreSpriteCallbackInData6(sprite, DestroyAnimSprite);
        sprite->data[0] = 3;
        sprite->callback = WaitAnimForDuration;
    }
}

#define tVertical   data[0]
#define tLineStart  data[1]
#define tLineLength data[2]
#define tCross      data[3]
#define tThickness  data[4]
#define tHoldTimer  data[5]
#define tHead       data[6]
#define tTail       data[7]
#define tSpeed      data[8]
#define tState      data[9]
#define tReverse    data[10]
#define tBend       data[11]
#define tBandTop    data[12]
#define tBandBottom data[13]

static void AnimTask_SliceLine_Step(u8);

// How far the line has bent off its axis at pos pixels along it. The bend grows quadratically,
// so the stroke starts straight and curves off toward its end.
static s16 SliceLine_BendAt(struct Task *task, s16 pos)
{
    return -((s32)task->tBend * pos * pos) / ((s32)task->tLineLength * task->tLineLength);
}

static void SliceLine_UpdateWindow(struct Task *task)
{
    u8 lo[112], hi[112];
    s16 t, pos, row, r, edge, first, last;
    u16 value;

    for (row = task->tBandTop; row < task->tBandBottom; row++)
    {
        lo[row] = 255;
        hi[row] = 0;
    }

    // Only the drawn part of the line, which grows away from the attacker's side
    if (task->tReverse)
    {
        first = task->tLineLength - task->tHead;
        last = task->tLineLength - task->tTail;
    }
    else
    {
        first = task->tTail;
        last = task->tHead;
    }

    for (pos = first; pos < last; pos++)
    {
        if (task->tVertical)
        {
            row = task->tLineStart + pos;
            if (row < task->tBandTop || row >= task->tBandBottom)
                continue;
            edge = task->tCross + SliceLine_BendAt(task, pos) - task->tThickness / 2;
            if (edge < 0)
                edge = 0;
            if (edge < lo[row])
                lo[row] = edge;
            if (edge + task->tThickness > hi[row])
                hi[row] = edge + task->tThickness;
        }
        else
        {
            t = task->tLineStart + pos;
            edge = task->tCross + SliceLine_BendAt(task, pos) - task->tThickness / 2;
            for (r = 0; r < task->tThickness; r++)
            {
                row = edge + r;
                if (row < task->tBandTop || row >= task->tBandBottom)
                    continue;
                if (t < lo[row])
                    lo[row] = t;
                if (t + 1 > hi[row])
                    hi[row] = t + 1;
            }
        }
    }

    for (row = task->tBandTop; row < task->tBandBottom; row++)
    {
        value = (lo[row] < hi[row]) ? WIN_RANGE(lo[row], hi[row]) : 0;
        gScanlineEffectRegBuffers[0][row] = value;
        gScanlineEffectRegBuffers[1][row] = value;
    }
}

// Draws a thin white line that slices across the target mon, then retracts.
// Used by MOVE_TRIPLE_SLASH.
// arg 0: FALSE = horizontal slice, TRUE = vertical slice
// arg 1: line thickness in pixels
// arg 2: half-length of the line in pixels
// arg 3: frames to hold the full line before it retracts
// arg 4: brightness of the line, 0-16 (16 = solid white, lower = more see-through)
// arg 5: pixel offset of the line's center along its length (negative = up/left)
// arg 6: how far the far end (right/bottom) of the line bends off its axis, in pixels (positive = up/left)
// arg 7: pixel offset of the whole line across its length (positive = down/right)
void AnimTask_SliceLine(u8 taskId)
{
    struct Task *task = &gTasks[taskId];
    struct ScanlineEffectParams params;
    s16 x = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2);
    s16 y = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET);
    s16 start, end, center, top, bottom;
    u16 i;

    task->tVertical = gBattleAnimArgs[0];
    center = (task->tVertical ? y : x) + gBattleAnimArgs[5];
    start = center - gBattleAnimArgs[2];
    end = center + gBattleAnimArgs[2];
    if (start < 0)
        start = 0;
    if (task->tVertical)
    {
        if (end > 112) // keep clear of the text box
            end = 112;
        task->tCross = x + gBattleAnimArgs[7];
    }
    else
    {
        if (end > DISPLAY_WIDTH)
            end = DISPLAY_WIDTH;
        task->tCross = y + gBattleAnimArgs[7];
    }
    task->tThickness = gBattleAnimArgs[1];
    task->tLineStart = start;
    task->tLineLength = end - start;
    task->tHoldTimer = gBattleAnimArgs[3];
    task->tBend = gBattleAnimArgs[6];
    task->tHead = 0;
    task->tTail = 0;
    task->tSpeed = task->tLineLength / 5 + 1;
    task->tState = 0;
    // Slice away from the attacker's side
    task->tReverse = (GetBattlerSide(gBattleAnimTarget) == B_SIDE_PLAYER);

    if (task->tVertical)
    {
        top = start;
        bottom = end;
    }
    else
    {
        top = task->tCross - abs(task->tBend) - task->tThickness;
        bottom = task->tCross + abs(task->tBend) + task->tThickness;
        if (top < 0)
            top = 0;
        if (bottom > 112)
            bottom = 112;
    }
    task->tBandTop = top;
    task->tBandBottom = bottom;

    for (i = 0; i < DISPLAY_HEIGHT; i++)
    {
        gScanlineEffectRegBuffers[0][i] = 0;
        gScanlineEffectRegBuffers[1][i] = 0;
    }
    gBattle_WIN0H = 0;
    gBattle_WIN0V = WIN_RANGE(top, bottom);
    params.dmaDest = &REG_WIN0H;
    params.dmaControl = SCANLINE_EFFECT_DMACNT_16BIT;
    params.initState = 1;
    params.unused9 = 0;
    ScanlineEffect_SetParams(params);

    SliceLine_UpdateWindow(task);
    SetGpuReg(REG_OFFSET_WININ, WININ_WIN0_BG_ALL | WININ_WIN0_OBJ | WININ_WIN0_CLR | WININ_WIN1_BG_ALL | WININ_WIN1_OBJ | WININ_WIN1_CLR);
    SetGpuReg(REG_OFFSET_WINOUT, WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ | WINOUT_WINOBJ_BG_ALL | WINOUT_WINOBJ_OBJ | WINOUT_WINOBJ_CLR);
    SetGpuReg(REG_OFFSET_BLDCNT, BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN);
    SetGpuReg(REG_OFFSET_BLDY, gBattleAnimArgs[4]);
    task->func = AnimTask_SliceLine_Step;
}

static void AnimTask_SliceLine_Step(u8 taskId)
{
    struct Task *task = &gTasks[taskId];

    switch (task->tState)
    {
    case 0: // extend
        task->tHead += task->tSpeed;
        if (task->tHead >= task->tLineLength)
        {
            task->tHead = task->tLineLength;
            task->tState++;
        }
        break;
    case 1: // hold
        if (--task->tHoldTimer <= 0)
            task->tState++;
        break;
    case 2: // retract
        task->tTail += task->tSpeed;
        if (task->tTail >= task->tLineLength)
        {
            gScanlineEffect.state = 3;
            gBattle_WIN0H = 0;
            gBattle_WIN0V = 0;
            SetGpuReg(REG_OFFSET_WININ, WININ_WIN0_BG_ALL | WININ_WIN0_OBJ | WININ_WIN0_CLR | WININ_WIN1_BG_ALL | WININ_WIN1_OBJ | WININ_WIN1_CLR);
            SetGpuReg(REG_OFFSET_WINOUT, WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ | WINOUT_WIN01_CLR | WINOUT_WINOBJ_BG_ALL | WINOUT_WINOBJ_OBJ | WINOUT_WINOBJ_CLR);
            SetGpuReg(REG_OFFSET_BLDCNT, 0);
            SetGpuReg(REG_OFFSET_BLDY, 0);
            DestroyAnimVisualTask(taskId);
            return;
        }
        break;
    }
    SliceLine_UpdateWindow(task);
}

// A Slash mark positioned so the tip of its stroke lands on a point, for stitching marks along a slice line.
// Used by MOVE_TRIPLE_SLASH.
// arg 0: x pixel offset of the tip from the target
// arg 1: y pixel offset of the tip from the target
// arg 2: 0 = strikes down from the upper right, 1 = strikes up from the lower right,
//        2 = strikes down from the upper left, 3 = strikes up from the lower left
static void AnimSlashMarkToPoint(struct Sprite *sprite)
{
    s16 dx = 15, dy = -15;

    sprite->x = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2) + gBattleAnimArgs[0];
    sprite->y = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET) + gBattleAnimArgs[1];
    if (gBattleAnimArgs[2] == 1 || gBattleAnimArgs[2] == 3)
    {
        sprite->vFlip = TRUE;
        dy = -dy;
    }
    if (gBattleAnimArgs[2] == 2 || gBattleAnimArgs[2] == 3)
    {
        sprite->hFlip = TRUE;
        dx = -dx;
    }
    sprite->x += dx;
    sprite->y += dy;
    sprite->data[0] = 0;
    sprite->data[1] = 0;
    StoreSpriteCallbackInData6(sprite, AnimFalseSwipeSlice_Step3);
    sprite->callback = RunStoredCallbackWhenAnimEnds;
}

const struct SpriteTemplate gSlashMarkToPointSpriteTemplate =
{
    .tileTag = ANIM_TAG_SLASH,
    .paletteTag = ANIM_TAG_SLASH,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = gSlashSliceAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimSlashMarkToPoint,
};

#undef tVertical
#undef tLineStart
#undef tLineLength
#undef tCross
#undef tThickness
#undef tHoldTimer
#undef tHead
#undef tTail
#undef tSpeed
#undef tState
#undef tReverse
#undef tBend
#undef tBandTop
#undef tBandBottom

extern const union AnimCmd *const gScratchAnimTable[];

static const union AnimCmd sAnim_WideSlashCutter[] =
{
    ANIMCMD_FRAME(0, 2),
    ANIMCMD_FRAME(0, 2, .hFlip = TRUE),
    ANIMCMD_FRAME(0, 2, .vFlip = TRUE, .hFlip = TRUE),
    ANIMCMD_FRAME(0, 2, .vFlip = TRUE),
    ANIMCMD_JUMP(0),
};

static const union AnimCmd *const sAnims_WideSlashCutter[] =
{
    sAnim_WideSlashCutter,
};

// Spinning Razor Wind crescent that rides the head of the Wide Slash line. Moved by AnimTask_WideSlashLine.
static const struct SpriteTemplate sWideSlashCutterSpriteTemplate =
{
    .tileTag = ANIM_TAG_AIR_WAVE_2,
    .paletteTag = ANIM_TAG_AIR_WAVE_2,
    .oam = &gOamData_AffineOff_ObjNormal_32x16,
    .anims = sAnims_WideSlashCutter,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

// Flickers every frame so it reads as see-through, and is destroyed when its animation ends
static void AnimWideSlashScratch(struct Sprite *sprite)
{
    sprite->invisible ^= TRUE;
    if (sprite->animEnded)
        DestroyAnimSprite(sprite);
}

static const struct SpriteTemplate sWideSlashScratchSpriteTemplate =
{
    .tileTag = ANIM_TAG_SCRATCH,
    .paletteTag = ANIM_TAG_SCRATCH,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = gScratchAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimWideSlashScratch,
};

#define tStartX     data[0]
#define tLength     data[1]
#define tBaseY      data[2]
#define tSag        data[3]
#define tThickness  data[4]
#define tSpeed      data[5]
#define tHoldTimer  data[6]
#define tHead       data[7]
#define tTail       data[8]
#define tState      data[9]
#define tBandTop    data[10]
#define tBandHeight data[11]
#define tCutterId   data[12]
#define tScratchTimer data[13]
#define tScratchSide  data[14]

#define WIDE_SLASH_MAX_BAND 64

static void AnimTask_WideSlashLine_Step(u8);

static s16 WideSlash_CurveY(struct Task *task, s16 t)
{
    s32 d = 2 * t - task->tLength;
    return task->tBaseY + task->tSag - (task->tSag * d * d) / (task->tLength * task->tLength);
}

// Each half of the arc goes in its own window, so every scanline only ever needs one span per window
static void WideSlash_DrawLine(struct Task *task)
{
    u8 lo0[WIDE_SLASH_MAX_BAND], hi0[WIDE_SLASH_MAX_BAND], lo1[WIDE_SLASH_MAX_BAND], hi1[WIDE_SLASH_MAX_BAND];
    s16 t, r, row, x, y;
    u32 value;

    for (r = 0; r < task->tBandHeight; r++)
    {
        lo0[r] = lo1[r] = 255;
        hi0[r] = hi1[r] = 0;
    }

    for (t = task->tTail; t < task->tHead; t++)
    {
        x = task->tStartX + t;
        y = WideSlash_CurveY(task, t) - task->tThickness / 2;
        for (r = 0; r < task->tThickness; r++)
        {
            row = y + r - task->tBandTop;
            if (row < 0 || row >= task->tBandHeight)
                continue;
            if (t < task->tLength / 2)
            {
                if (x < lo0[row])
                    lo0[row] = x;
                if (x + 1 > hi0[row])
                    hi0[row] = x + 1;
            }
            else
            {
                if (x < lo1[row])
                    lo1[row] = x;
                if (x + 1 > hi1[row])
                    hi1[row] = x + 1;
            }
        }
    }

    for (r = 0; r < task->tBandHeight; r++)
    {
        value = 0;
        if (lo0[r] < hi0[r])
            value |= WIN_RANGE(lo0[r], hi0[r]);
        if (lo1[r] < hi1[r])
            value |= (u32)WIN_RANGE(lo1[r], hi1[r]) << 16;
        ((u32 *)gScanlineEffectRegBuffers[0])[task->tBandTop + r] = value;
        ((u32 *)gScanlineEffectRegBuffers[1])[task->tBandTop + r] = value;
    }
}

static void WideSlash_SpawnScratch(struct Task *task)
{
    u8 spriteId;
    s16 t = task->tHead - 12;
    s16 subpriority = GetBattlerSpriteSubpriority(gBattleAnimTarget) - 1;

    if (t < 0)
        return;
    if (subpriority < 3)
        subpriority = 3;
    task->tScratchSide ^= 1;
    spriteId = CreateSprite(&sWideSlashScratchSpriteTemplate,
                            task->tStartX + t,
                            WideSlash_CurveY(task, t) + (task->tScratchSide ? -6 : 6),
                            subpriority);
    if (spriteId != MAX_SPRITES)
    {
        gSprites[spriteId].hFlip = task->tScratchSide;
        gAnimVisualTaskCount++;
    }
}

// Draws a long, slightly curved white line from left to right across the target's side of the field,
// led by a spinning Razor Wind crescent and trailed by flickering Scratch marks, then retracts it.
// Load ANIM_TAG_AIR_WAVE_2 and ANIM_TAG_SCRATCH first. Used by MOVE_WIDE_SLASH.
// arg 0: line thickness in pixels
// arg 1: how far the middle of the line dips below its ends, in pixels (negative = bows upward)
// arg 2: pixels the line extends per frame
// arg 3: frames to hold the full line before it retracts
// arg 4: brightness of the line, 0-16 (16 = solid white, lower = more see-through)
void AnimTask_WideSlashLine(u8 taskId)
{
    struct Task *task = &gTasks[taskId];
    struct ScanlineEffectParams params;
    s16 x, y, top, bottom, subpriority;
    u16 i;

    x = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2);
    y = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET);
    if (IsDoubleBattle() && IsBattlerSpriteVisible(BATTLE_PARTNER(gBattleAnimTarget)))
    {
        x = (x + GetBattlerSpriteCoord(BATTLE_PARTNER(gBattleAnimTarget), BATTLER_COORD_X_2)) / 2;
        y = (y + GetBattlerSpriteCoord(BATTLE_PARTNER(gBattleAnimTarget), BATTLER_COORD_Y_PIC_OFFSET)) / 2;
    }

    task->tLength = 128;
    task->tStartX = x - task->tLength / 2;
    if (task->tStartX < 0)
        task->tStartX = 0;
    if (task->tStartX + task->tLength > DISPLAY_WIDTH)
        task->tStartX = DISPLAY_WIDTH - task->tLength;
    task->tBaseY = y;
    task->tThickness = gBattleAnimArgs[0];
    task->tSag = gBattleAnimArgs[1];
    task->tSpeed = gBattleAnimArgs[2];
    task->tHoldTimer = gBattleAnimArgs[3];
    task->tHead = 0;
    task->tTail = 0;
    task->tState = 0;
    task->tScratchTimer = 0;
    task->tScratchSide = 0;

    top = y - abs(task->tSag) - task->tThickness;
    bottom = y + abs(task->tSag) + task->tThickness;
    if (top < 0)
        top = 0;
    if (bottom > 112) // keep clear of the text box
        bottom = 112;
    if (bottom - top > WIDE_SLASH_MAX_BAND)
        bottom = top + WIDE_SLASH_MAX_BAND;
    task->tBandTop = top;
    task->tBandHeight = bottom - top;

    for (i = 0; i < DISPLAY_HEIGHT; i++)
    {
        ((u32 *)gScanlineEffectRegBuffers[0])[i] = 0;
        ((u32 *)gScanlineEffectRegBuffers[1])[i] = 0;
    }
    gBattle_WIN0H = 0;
    gBattle_WIN1H = 0;
    gBattle_WIN0V = WIN_RANGE(top, bottom);
    gBattle_WIN1V = WIN_RANGE(top, bottom);
    params.dmaDest = &REG_WIN0H; // writes WIN0H and WIN1H together
    params.dmaControl = SCANLINE_EFFECT_DMACNT_32BIT;
    params.initState = 1;
    params.unused9 = 0;
    ScanlineEffect_SetParams(params);
    SetGpuRegBits(REG_OFFSET_DISPCNT, DISPCNT_WIN1_ON); // battles leave WIN1 off

    SetGpuReg(REG_OFFSET_WININ, WININ_WIN0_BG_ALL | WININ_WIN0_OBJ | WININ_WIN0_CLR | WININ_WIN1_BG_ALL | WININ_WIN1_OBJ | WININ_WIN1_CLR);
    SetGpuReg(REG_OFFSET_WINOUT, WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ | WINOUT_WINOBJ_BG_ALL | WINOUT_WINOBJ_OBJ | WINOUT_WINOBJ_CLR);
    SetGpuReg(REG_OFFSET_BLDCNT, BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN);
    SetGpuReg(REG_OFFSET_BLDY, gBattleAnimArgs[4]);

    subpriority = GetBattlerSpriteSubpriority(gBattleAnimTarget) - 2;
    if (subpriority < 3)
        subpriority = 3;
    task->tCutterId = CreateSprite(&sWideSlashCutterSpriteTemplate, task->tStartX, WideSlash_CurveY(task, 0), subpriority);
    task->func = AnimTask_WideSlashLine_Step;
}

static void AnimTask_WideSlashLine_Step(u8 taskId)
{
    struct Task *task = &gTasks[taskId];

    switch (task->tState)
    {
    case 0: // extend, with the cutter leading
        task->tHead += task->tSpeed;
        if (task->tHead >= task->tLength)
        {
            task->tHead = task->tLength;
            if (task->tCutterId != MAX_SPRITES)
            {
                DestroySprite(&gSprites[task->tCutterId]);
                task->tCutterId = MAX_SPRITES;
            }
            task->tState++;
        }
        else
        {
            if (task->tCutterId != MAX_SPRITES)
            {
                gSprites[task->tCutterId].x = task->tStartX + task->tHead;
                gSprites[task->tCutterId].y = WideSlash_CurveY(task, task->tHead);
            }
            if (++task->tScratchTimer >= 3)
            {
                task->tScratchTimer = 0;
                WideSlash_SpawnScratch(task);
            }
        }
        break;
    case 1: // hold
        if (--task->tHoldTimer <= 0)
            task->tState++;
        break;
    case 2: // retract
        task->tTail += task->tSpeed;
        if (task->tTail >= task->tLength)
        {
            gScanlineEffect.state = 3;
            gBattle_WIN0H = 0;
            gBattle_WIN0V = 0;
            gBattle_WIN1H = 0;
            gBattle_WIN1V = 0;
            if (!IsContest())
                ClearGpuRegBits(REG_OFFSET_DISPCNT, DISPCNT_WIN1_ON);
            SetGpuReg(REG_OFFSET_WININ, WININ_WIN0_BG_ALL | WININ_WIN0_OBJ | WININ_WIN0_CLR | WININ_WIN1_BG_ALL | WININ_WIN1_OBJ | WININ_WIN1_CLR);
            SetGpuReg(REG_OFFSET_WINOUT, WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ | WINOUT_WIN01_CLR | WINOUT_WINOBJ_BG_ALL | WINOUT_WINOBJ_OBJ | WINOUT_WINOBJ_CLR);
            SetGpuReg(REG_OFFSET_BLDCNT, 0);
            SetGpuReg(REG_OFFSET_BLDY, 0);
            DestroyAnimVisualTask(taskId);
            return;
        }
        break;
    }
    WideSlash_DrawLine(task);
}

#undef tStartX
#undef tLength
#undef tBaseY
#undef tSag
#undef tThickness
#undef tSpeed
#undef tHoldTimer
#undef tHead
#undef tTail
#undef tState
#undef tBandTop
#undef tBandHeight
#undef tCutterId
#undef tScratchTimer
#undef tScratchSide

#define QUICK_DRAW_SAMPLES 256 // points around the oval, one per gSineTable step

#define tHead       data[0]
#define tSpeed      data[1]
#define tCenterX    data[2]
#define tCenterY    data[3]
#define tMajorX     data[4]
#define tMajorY     data[5]
#define tMinorX     data[6]
#define tMinorY     data[7]
#define tBandTop    data[8]
#define tBandBottom data[9]
#define tThickness  data[10]
#define tTopBottom  data[11] // oval point indices of the topmost (low byte) and bottommost (high byte) points
#define tFrame      data[12]
#define tHoldTimer  data[13]
#define tGap        data[14]
#define tDim        data[15] // dim amount (low byte) and frames to ease it in and out over (high byte)

#define TOP_IDX(task)    ((u16)(task)->tTopBottom & 0xFF)
#define BOTTOM_IDX(task) ((u16)(task)->tTopBottom >> 8)

static void AnimTask_QuickDrawSlash_Step(u8);

// Dims the screen by step/steps of the full dim amount
static void QuickDraw_SetDim(struct Task *task, s16 step)
{
    s16 dim = task->tDim & 0xFF;
    s16 steps = (u16)task->tDim >> 8;

    if (steps == 0 || step >= steps)
        BlendPalettes(PALETTES_ALL, dim, RGB_BLACK);
    else if (step <= 0)
        BlendPalettes(PALETTES_ALL, 0, RGB_BLACK);
    else
        BlendPalettes(PALETTES_ALL, dim * step / steps, RGB_BLACK);
}

// Point i of the oval. Point 0 is the attacker; halfway round is the far end, past the target.
static void QuickDraw_GetPoint(struct Task *task, s16 i, s16 *x, s16 *y)
{
    i &= QUICK_DRAW_SAMPLES - 1;
    *x = task->tCenterX - Cos(i, task->tMajorX) + Sin(i, task->tMinorX);
    *y = task->tCenterY - Cos(i, task->tMajorY) + Sin(i, task->tMinorY);
}

// The oval is convex, so every scanline crosses it at most twice: once on the chain running from its topmost
// point to its bottommost point one way round (WIN0), and once on the chain going the other way (WIN1)
static void QuickDraw_DrawStroke(struct Task *task)
{
    u8 lo[2][112], hi[2][112];
    s16 i, x, y, r, row, chain;
    u16 chainALength = (BOTTOM_IDX(task) - TOP_IDX(task)) & (QUICK_DRAW_SAMPLES - 1);
    u32 value;

    for (row = task->tBandTop; row < task->tBandBottom; row++)
    {
        lo[0][row] = lo[1][row] = 255;
        hi[0][row] = hi[1][row] = 0;
    }

    for (i = task->tGap; i <= task->tHead && i <= QUICK_DRAW_SAMPLES - task->tGap; i++)
    {
        QuickDraw_GetPoint(task, i, &x, &y);
        if (x < 0 || x >= DISPLAY_WIDTH)
            continue;
        chain = (((i - TOP_IDX(task)) & (QUICK_DRAW_SAMPLES - 1)) <= chainALength) ? 0 : 1;
        for (r = 0; r < task->tThickness; r++)
        {
            row = y - task->tThickness / 2 + r;
            if (row < task->tBandTop || row >= task->tBandBottom)
                continue;
            if (x < lo[chain][row])
                lo[chain][row] = x;
            if (x + task->tThickness > hi[chain][row])
                hi[chain][row] = min(x + task->tThickness, DISPLAY_WIDTH);
        }
    }

    for (row = task->tBandTop; row < task->tBandBottom; row++)
    {
        value = 0;
        if (lo[0][row] < hi[0][row])
            value |= WIN_RANGE(lo[0][row], hi[0][row]);
        if (lo[1][row] < hi[1][row])
            value |= (u32)WIN_RANGE(lo[1][row], hi[1][row]) << 16;
        ((u32 *)gScanlineEffectRegBuffers[0])[row] = value;
        ((u32 *)gScanlineEffectRegBuffers[1])[row] = value;
    }
}

// Dims the screen while a semi-transparent white stroke traces an open oval: it starts just to one side of the
// attacker, sweeps around through the target and comes back to just the other side, like a crescent.
// Then restores the screen. Used by MOVE_QUICK_DRAW.
// The stroke reaches the far side of the target about QUICK_DRAW_SAMPLES / 2 / arg 3 frames after starting this task.
// arg 0: oval width, in 16ths of the attacker-target distance (each side of the long axis)
// arg 1: stroke thickness in pixels
// arg 2: how dark to dim the screen, 0-16
// arg 3: oval points drawn per frame (QUICK_DRAW_SAMPLES for the whole oval)
// arg 4: brightness of the stroke, 0-16 (16 = solid white, lower = more see-through)
// arg 5: frames to hold the finished oval before restoring the screen
// arg 6: oval points left off each end next to the attacker, which opens the oval up (QUICK_DRAW_SAMPLES per lap)
// arg 7: frames to ease the dim in at the start and out at the end (0 = instant)
void AnimTask_QuickDrawSlash(u8 taskId)
{
    struct Task *task = &gTasks[taskId];
    struct ScanlineEffectParams params;
    s16 startX, startY, dx, dy, x, y, top, bottom, i, topIdx, bottomIdx;
    u16 j;

    startX = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X_2);
    startY = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y_PIC_OFFSET);
    dx = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2) - startX;
    dy = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET) - startY;

    // The long axis runs from the attacker to a quarter past the target, so the oval sweeps through it
    task->tMajorX = dx * 5 / 8;
    task->tMajorY = dy * 5 / 8;
    task->tCenterX = startX + task->tMajorX;
    task->tCenterY = startY + task->tMajorY;
    task->tMinorX = -dy * gBattleAnimArgs[0] / 16;
    task->tMinorY = dx * gBattleAnimArgs[0] / 16;
    task->tThickness = gBattleAnimArgs[1];
    task->tSpeed = gBattleAnimArgs[3];
    task->tHoldTimer = gBattleAnimArgs[5];
    task->tGap = gBattleAnimArgs[6];
    task->tHead = task->tGap + task->tSpeed;
    task->tDim = gBattleAnimArgs[2] | (gBattleAnimArgs[7] << 8);
    task->tFrame = 0;

    topIdx = bottomIdx = 0;
    top = bottom = startY;
    for (i = 0; i < QUICK_DRAW_SAMPLES; i++)
    {
        QuickDraw_GetPoint(task, i, &x, &y);
        if (y < top)
        {
            top = y;
            topIdx = i;
        }
        if (y > bottom)
        {
            bottom = y;
            bottomIdx = i;
        }
    }
    task->tTopBottom = topIdx | (bottomIdx << 8);
    top -= task->tThickness;
    bottom += task->tThickness;
    if (top < 0)
        top = 0;
    if (bottom > 112)
        bottom = 112;
    task->tBandTop = top;
    task->tBandBottom = bottom;

    for (j = 0; j < DISPLAY_HEIGHT; j++)
    {
        ((u32 *)gScanlineEffectRegBuffers[0])[j] = 0;
        ((u32 *)gScanlineEffectRegBuffers[1])[j] = 0;
    }
    gBattle_WIN0H = 0;
    gBattle_WIN1H = 0;
    gBattle_WIN0V = WIN_RANGE(top, bottom);
    gBattle_WIN1V = WIN_RANGE(top, bottom);
    params.dmaDest = &REG_WIN0H; // writes WIN0H and WIN1H together
    params.dmaControl = SCANLINE_EFFECT_DMACNT_32BIT;
    params.initState = 1;
    params.unused9 = 0;
    ScanlineEffect_SetParams(params);
    SetGpuRegBits(REG_OFFSET_DISPCNT, DISPCNT_WIN1_ON); // battles leave WIN1 off

    // Dimmed screen, with the stroke brightened inside the windows
    QuickDraw_SetDim(task, 1);
    SetGpuReg(REG_OFFSET_WININ, WININ_WIN0_BG_ALL | WININ_WIN0_OBJ | WININ_WIN0_CLR | WININ_WIN1_BG_ALL | WININ_WIN1_OBJ | WININ_WIN1_CLR);
    SetGpuReg(REG_OFFSET_WINOUT, WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ | WINOUT_WINOBJ_BG_ALL | WINOUT_WINOBJ_OBJ | WINOUT_WINOBJ_CLR);
    SetGpuReg(REG_OFFSET_BLDCNT, BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN);
    SetGpuReg(REG_OFFSET_BLDY, gBattleAnimArgs[4]);

    QuickDraw_DrawStroke(task);
    task->func = AnimTask_QuickDrawSlash_Step;
}

static void AnimTask_QuickDrawSlash_Step(u8 taskId)
{
    struct Task *task = &gTasks[taskId];

    task->tFrame++;
    if (task->tHead < QUICK_DRAW_SAMPLES - task->tGap)
    {
        task->tHead += task->tSpeed;
        QuickDraw_DrawStroke(task);
        QuickDraw_SetDim(task, task->tFrame + 1);
    }
    else if (--task->tHoldTimer >= 0)
    {
        // Keep easing in if the stroke finished first
        QuickDraw_SetDim(task, task->tFrame + 1);
    }
    else if (-task->tHoldTimer < ((u16)task->tDim >> 8))
    {
        // Ease the dim back out, with the stroke still showing
        QuickDraw_SetDim(task, ((u16)task->tDim >> 8) + task->tHoldTimer);
    }
    else
    {
        BlendPalettes(PALETTES_ALL, 0, RGB_BLACK);
        gScanlineEffect.state = 3;
        gBattle_WIN0H = 0;
        gBattle_WIN0V = 0;
        gBattle_WIN1H = 0;
        gBattle_WIN1V = 0;
        if (!IsContest())
            ClearGpuRegBits(REG_OFFSET_DISPCNT, DISPCNT_WIN1_ON);
        SetGpuReg(REG_OFFSET_WININ, WININ_WIN0_BG_ALL | WININ_WIN0_OBJ | WININ_WIN0_CLR | WININ_WIN1_BG_ALL | WININ_WIN1_OBJ | WININ_WIN1_CLR);
        SetGpuReg(REG_OFFSET_WINOUT, WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ | WINOUT_WIN01_CLR | WINOUT_WINOBJ_BG_ALL | WINOUT_WINOBJ_OBJ | WINOUT_WINOBJ_CLR);
        SetGpuReg(REG_OFFSET_BLDCNT, 0);
        SetGpuReg(REG_OFFSET_BLDY, 0);
        DestroyAnimVisualTask(taskId);
    }
}

#undef tHead
#undef tSpeed
#undef tCenterX
#undef tCenterY
#undef tMajorX
#undef tMajorY
#undef tMinorX
#undef tMinorY
#undef tBandTop
#undef tBandBottom
#undef tThickness
#undef tTopBottom
#undef tFrame
#undef TOP_IDX
#undef BOTTOM_IDX
#undef tDim
#undef tHoldTimer
#undef tGap

#define tTimer      data[0]
#define tDuration   data[1]
#define tTargetWait data[2]
#define tSyncTime   data[3]
#define tPeriod     data[4]
#define tPixels     data[5]
#define tGlow       data[6] // 0 to RESONATE_SWAY_EASE, how far the in-step glow has eased in

#define RESONATE_SWAY_EASE 16 // frames to ease each sway, and the glow, in and out
#define RESONATE_GOLD      RGB(31, 25, 6)
#define RESONATE_GLOW_MAX  5  // strongest the glow gets, 0-16

static void AnimTask_ResonateSway_Step(u8);

// How far into its sway a mon is, 0 to RESONATE_SWAY_EASE, easing in from start and out by end
static s16 ResonateSway_Ease(s16 t, s16 end)
{
    s16 ease = RESONATE_SWAY_EASE;

    if (t < 0 || t >= end)
        return 0;
    if (t < ease)
        ease = t;
    if (end - t < ease)
        ease = end - t;
    return ease;
}

// The attacker sways from side to side, then the target joins in out of step and falls into rhythm with it.
// Once they're in step, both glow gold, pulsing gently with the sway. Used by MOVE_RESONATE.
// arg 0: total frames
// arg 1: frames before the target starts swaying
// arg 2: frames the target takes to fall into step
// arg 3: frames per sway (there and back)
// arg 4: sway distance in pixels
void AnimTask_ResonateSway(u8 taskId)
{
    struct Task *task = &gTasks[taskId];

    task->tTimer = 0;
    task->tDuration = gBattleAnimArgs[0];
    task->tTargetWait = gBattleAnimArgs[1];
    task->tSyncTime = gBattleAnimArgs[2];
    task->tPeriod = gBattleAnimArgs[3];
    task->tPixels = gBattleAnimArgs[4];
    task->tGlow = 0;
    task->func = AnimTask_ResonateSway_Step;
}

static void AnimTask_ResonateSway_Step(u8 taskId)
{
    struct Task *task = &gTasks[taskId];
    struct Sprite *attacker = &gSprites[gBattlerSpriteIds[gBattleAnimAttacker]];
    struct Sprite *target = &gSprites[gBattlerSpriteIds[gBattleAnimTarget]];
    s16 t = task->tTimer;
    s16 phase = (t * 256 / task->tPeriod) & 0xFF;
    s16 targetT = t - task->tTargetWait;
    s16 offset = 0;
    u32 bothPals = GetBattlePalettesMask(FALSE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE);

    if (t >= task->tDuration)
    {
        attacker->x2 = 0;
        target->x2 = 0;
        BlendPalettes(bothPals, 0, RESONATE_GOLD);
        DestroyAnimVisualTask(taskId);
        return;
    }

    attacker->x2 = Sin(phase, task->tPixels) * ResonateSway_Ease(t, task->tDuration) / RESONATE_SWAY_EASE;

    // The target starts half a sway out of step and slides into time with the attacker
    if (targetT < task->tSyncTime)
        offset = 128 * (task->tSyncTime - targetT) / task->tSyncTime;
    target->x2 = Sin((phase + offset) & 0xFF, task->tPixels) * ResonateSway_Ease(targetT, task->tDuration - task->tTargetWait) / RESONATE_SWAY_EASE;

    // In step: glow gold, easing in, and back out as the sways wind down
    if (targetT >= task->tSyncTime && task->tDuration - t > RESONATE_SWAY_EASE)
    {
        if (task->tGlow < RESONATE_SWAY_EASE)
            task->tGlow++;
    }
    else if (task->tGlow > 0)
    {
        task->tGlow--;
    }
    if (task->tGlow > 0 || targetT >= task->tSyncTime)
        BlendPalettes(bothPals, (RESONATE_GLOW_MAX * (6 + Sin(phase, 2)) / 8) * task->tGlow / RESONATE_SWAY_EASE, RESONATE_GOLD);

    task->tTimer++;
}

#undef tTimer
#undef tDuration
#undef tTargetWait
#undef tSyncTime
#undef tPeriod
#undef tPixels
#undef tGlow

extern const struct OamData gOamData_AffineDouble_ObjBlend_16x32;

static const union AffineAnimCmd sAffineAnim_ResonateRing[] =
{
    AFFINEANIMCMD_FRAME(0x90, 0x90, 0, 0), // small
    AFFINEANIMCMD_END,
};

static const union AffineAnimCmd *const sAffineAnims_ResonateRing[] =
{
    sAffineAnim_ResonateRing,
};

#define sTimer    data[0]
#define sLeg      data[1]
#define sNumLegs  data[2]
#define sLegTime  data[3]
#define sHeight   data[4]
#define sAttacker data[5] // attacker's position: x (low byte), y (high byte)
#define sTarget   data[6] // target's position, packed the same way
#define sChime    data[7]

static void AnimResonateRing_Step(struct Sprite *);

// A small, see-through gold ring that bounces back and forth between the attacker and the target, starting from
// the attacker. Use setalpha for the transparency. Used by MOVE_RESONATE.
// arg 0: number of hops (one way each)
// arg 1: frames per hop
// arg 2: height of each hop in pixels
// arg 3: TRUE to chime every time it lands
static void AnimResonateRing(struct Sprite *sprite)
{
    s16 ax = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X_2);
    s16 ay = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y_PIC_OFFSET);
    s16 tx = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2);
    s16 ty = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET);

    sprite->sTimer = 0;
    sprite->sLeg = 0;
    sprite->sNumLegs = gBattleAnimArgs[0];
    sprite->sLegTime = gBattleAnimArgs[1];
    sprite->sHeight = gBattleAnimArgs[2];
    sprite->sChime = gBattleAnimArgs[3];
    sprite->sAttacker = (ax & 0xFF) | ((ay & 0xFF) << 8);
    sprite->sTarget = (tx & 0xFF) | ((ty & 0xFF) << 8);
    sprite->x = ax;
    sprite->y = ay;
    sprite->callback = AnimResonateRing_Step;
}

static void AnimResonateRing_Step(struct Sprite *sprite)
{
    s16 fromX, fromY, toX, toY;
    s16 from = (sprite->sLeg & 1) ? sprite->sTarget : sprite->sAttacker;
    s16 to = (sprite->sLeg & 1) ? sprite->sAttacker : sprite->sTarget;

    fromX = from & 0xFF;
    fromY = (u16)from >> 8;
    toX = to & 0xFF;
    toY = (u16)to >> 8;

    sprite->sTimer++;
    sprite->x = fromX + (toX - fromX) * sprite->sTimer / sprite->sLegTime;
    sprite->y = fromY + (toY - fromY) * sprite->sTimer / sprite->sLegTime;
    sprite->y2 = -Sin((sprite->sTimer * 128 / sprite->sLegTime) & 0x7F, sprite->sHeight);

    if (sprite->sTimer >= sprite->sLegTime)
    {
        sprite->sTimer = 0;
        sprite->y2 = 0;
        if (sprite->sChime)
            PlaySE12WithPanning(SE_M_HEAL_BELL, BattleAnimAdjustPanning((sprite->sLeg & 1) ? SOUND_PAN_ATTACKER : SOUND_PAN_TARGET));
        if (++sprite->sLeg >= sprite->sNumLegs)
            DestroyAnimSprite(sprite);
    }
}

const struct SpriteTemplate gResonateRingSpriteTemplate =
{
    .tileTag = ANIM_TAG_GOLD_RING,
    .paletteTag = ANIM_TAG_GOLD_RING,
    .oam = &gOamData_AffineDouble_ObjBlend_16x32,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = sAffineAnims_ResonateRing,
    .callback = AnimResonateRing,
};

#undef sTimer
#undef sLeg
#undef sNumLegs
#undef sLegTime
#undef sHeight
#undef sAttacker
#undef sTarget
#undef sChime

#define sTimer      data[0]
#define sDuration   data[1]
#define sStartX     data[2]
#define sStartY     data[3]
#define sEndX       data[4]
#define sEndY       data[5]
#define sPassTime   data[6] // when it passes the target and goes behind it
#define sFlags      data[7]

#define ECHO_RING_BEHIND     (1 << 0) // behind the target
#define ECHO_RING_COMES_BACK (1 << 1) // turns around at the far end and flies back to the attacker
#define ECHO_RING_RETURNING  (1 << 2) // on its way back

static void AnimEchoPassingRing_Step(struct Sprite *);

// A growing sound ring that flies from the attacker straight past the target, going behind it and on into the
// distance. Then it either flickers out, or flies back past the target to the attacker. Used by MOVE_ECHO.
// arg 0: frames to reach the far end (and as long again to come back)
// arg 1: how far past the target it goes, in 16ths of the attacker-target distance
// arg 2: TRUE to come back to the attacker
static void AnimEchoPassingRing(struct Sprite *sprite)
{
    s16 tx = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2);
    s16 ty = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET);

    sprite->sStartX = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X_2);
    sprite->sStartY = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y_PIC_OFFSET);
    sprite->sEndX = tx + (tx - sprite->sStartX) * gBattleAnimArgs[1] / 16;
    sprite->sEndY = ty + (ty - sprite->sStartY) * gBattleAnimArgs[1] / 16;
    sprite->sDuration = gBattleAnimArgs[0];
    sprite->sPassTime = gBattleAnimArgs[0] * 16 / (16 + gBattleAnimArgs[1]);
    sprite->sTimer = 0;
    sprite->sFlags = gBattleAnimArgs[2] ? ECHO_RING_COMES_BACK : 0;
    sprite->x = sprite->sStartX;
    sprite->y = sprite->sStartY;
    sprite->callback = AnimEchoPassingRing_Step;
}

static void AnimEchoPassingRing_Step(struct Sprite *sprite)
{
    bool8 returning = (sprite->sFlags & ECHO_RING_RETURNING) != 0;
    bool8 behind;
    s16 t;

    sprite->sTimer++;
    // How far along the way out it is (counting back down on the way back)
    t = returning ? sprite->sDuration - sprite->sTimer : sprite->sTimer;
    sprite->x = sprite->sStartX + (sprite->sEndX - sprite->sStartX) * t / sprite->sDuration;
    sprite->y = sprite->sStartY + (sprite->sEndY - sprite->sStartY) * t / sprite->sDuration;

    // Behind the target whenever it's further away than the target
    behind = (t >= sprite->sPassTime);
    if (behind != ((sprite->sFlags & ECHO_RING_BEHIND) != 0))
    {
        sprite->sFlags ^= ECHO_RING_BEHIND;
        sprite->oam.priority = GetBattlerSpriteBGPriority(gBattleAnimTarget);
        sprite->subpriority = gSprites[gBattlerSpriteIds[gBattleAnimTarget]].subpriority + (behind ? 1 : -1);
    }

    if (sprite->sTimer >= sprite->sDuration && (sprite->sFlags & ECHO_RING_COMES_BACK) && !returning)
    {
        sprite->sTimer = 0;
        sprite->sFlags |= ECHO_RING_RETURNING;
        return;
    }
    // Flicker out over the last few frames of its trip
    if (!(sprite->sFlags & ECHO_RING_COMES_BACK) || returning)
    {
        if (sprite->sDuration - sprite->sTimer < 8)
            sprite->invisible = (sprite->sTimer & 1);
        if (sprite->sTimer >= sprite->sDuration)
            DestroyAnimSprite(sprite);
    }
}

const struct SpriteTemplate gEchoPassingRingSpriteTemplate =
{
    .tileTag = ANIM_TAG_GOLD_RING,
    .paletteTag = ANIM_TAG_GOLD_RING,
    .oam = &gOamData_AffineDouble_ObjNormal_16x32,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gGrowingRingAffineAnimTable,
    .callback = AnimEchoPassingRing,
};

#undef sTimer
#undef sDuration
#undef sStartX
#undef sStartY
#undef sEndX
#undef sEndY
#undef sPassTime
#undef sFlags

#define tCenterX    data[0]
#define tCenterY    data[1]
#define tRadius     data[2]
#define tThickness  data[3]
#define tSpeed      data[4]
#define tMaxRadius  data[5]

#define ECHO_WAVE_BOTTOM 112 // keep clear of the text box

static void AnimTask_EchoReturnWave_Step(u8);

static u16 EchoWave_Sqrt(u32 n)
{
    u32 root = 0, bit = 1 << 30;

    while (bit > n)
        bit >>= 2;
    while (bit != 0)
    {
        if (n >= root + bit)
        {
            n -= root + bit;
            root = (root >> 1) + bit;
        }
        else
        {
            root >>= 1;
        }
        bit >>= 2;
    }
    return root;
}

static void EchoWave_Clamp(s32 *lo, s32 *hi)
{
    if (*lo < 0)
        *lo = 0;
    if (*hi > DISPLAY_WIDTH)
        *hi = DISPLAY_WIDTH;
}

// Each scanline crosses the ring at most twice, once on its left side (WIN0) and once on its right (WIN1). Where a
// scanline only skims the top or bottom of the ring, it's one span, in WIN0.
static void EchoWave_Draw(struct Task *task)
{
    s32 outer2 = task->tRadius * task->tRadius;
    s32 inner = task->tRadius - task->tThickness;
    s32 inner2 = (inner > 0) ? inner * inner : 0;
    s32 y, dy2, wo, wi, lo, hi;
    u32 value;

    for (y = 0; y < ECHO_WAVE_BOTTOM; y++)
    {
        value = 0;
        dy2 = (y - task->tCenterY) * (y - task->tCenterY);
        if (dy2 < outer2)
        {
            wo = EchoWave_Sqrt(outer2 - dy2);
            if (inner > 0 && dy2 < inner2)
            {
                wi = EchoWave_Sqrt(inner2 - dy2);
                lo = task->tCenterX - wo;
                hi = task->tCenterX - wi;
                EchoWave_Clamp(&lo, &hi);
                if (lo < hi)
                    value |= WIN_RANGE(lo, hi);
                lo = task->tCenterX + wi;
                hi = task->tCenterX + wo;
                EchoWave_Clamp(&lo, &hi);
                if (lo < hi)
                    value |= (u32)WIN_RANGE(lo, hi) << 16;
            }
            else
            {
                lo = task->tCenterX - wo;
                hi = task->tCenterX + wo;
                EchoWave_Clamp(&lo, &hi);
                if (lo < hi)
                    value |= WIN_RANGE(lo, hi);
            }
        }
        ((u32 *)gScanlineEffectRegBuffers[0])[y] = value;
        ((u32 *)gScanlineEffectRegBuffers[1])[y] = value;
    }
}

// Echo's sound wave bouncing back: a see-through ring expands from a point behind the target until it has swept
// across the whole screen and gone. Used by MOVE_ECHO's delayed hit (B_ANIM_ECHO_RETURN), which plays on the target.
// arg 0: how far behind the target the ring starts, in pixels; behind is away from the other side of the field
// arg 1: ring thickness in pixels
// arg 2: pixels the ring grows per frame
// arg 3: brightness of the ring, 0-16 (16 = solid white, lower = more see-through)
void AnimTask_EchoReturnWave(u8 taskId)
{
    struct Task *task = &gTasks[taskId];
    struct ScanlineEffectParams params;
    s16 tx = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2);
    s16 ty = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET);
    s32 dx, dy, far;
    u16 i;

    // The foe's side is up and to the right, the player's down and to the left; behind is further that way
    if (GetBattlerSide(gBattleAnimTarget) != B_SIDE_PLAYER)
    {
        task->tCenterX = tx + gBattleAnimArgs[0];
        task->tCenterY = ty - gBattleAnimArgs[0] * 2 / 5;
    }
    else
    {
        task->tCenterX = tx - gBattleAnimArgs[0];
        task->tCenterY = ty + gBattleAnimArgs[0] * 2 / 5;
    }
    task->tThickness = gBattleAnimArgs[1];
    task->tSpeed = gBattleAnimArgs[2];
    task->tRadius = 0;

    // It's gone once even its inner edge is past the screen corner furthest from where it started
    dx = max(task->tCenterX, DISPLAY_WIDTH - task->tCenterX);
    dy = max(task->tCenterY, ECHO_WAVE_BOTTOM - task->tCenterY);
    far = EchoWave_Sqrt(dx * dx + dy * dy);
    task->tMaxRadius = far + task->tThickness;

    for (i = 0; i < DISPLAY_HEIGHT; i++)
    {
        ((u32 *)gScanlineEffectRegBuffers[0])[i] = 0;
        ((u32 *)gScanlineEffectRegBuffers[1])[i] = 0;
    }
    gBattle_WIN0H = 0;
    gBattle_WIN1H = 0;
    gBattle_WIN0V = WIN_RANGE(0, ECHO_WAVE_BOTTOM);
    gBattle_WIN1V = WIN_RANGE(0, ECHO_WAVE_BOTTOM);
    params.dmaDest = &REG_WIN0H; // writes WIN0H and WIN1H together
    params.dmaControl = SCANLINE_EFFECT_DMACNT_32BIT;
    params.initState = 1;
    params.unused9 = 0;
    ScanlineEffect_SetParams(params);
    SetGpuRegBits(REG_OFFSET_DISPCNT, DISPCNT_WIN1_ON); // battles leave WIN1 off

    SetGpuReg(REG_OFFSET_WININ, WININ_WIN0_BG_ALL | WININ_WIN0_OBJ | WININ_WIN0_CLR | WININ_WIN1_BG_ALL | WININ_WIN1_OBJ | WININ_WIN1_CLR);
    SetGpuReg(REG_OFFSET_WINOUT, WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ | WINOUT_WINOBJ_BG_ALL | WINOUT_WINOBJ_OBJ | WINOUT_WINOBJ_CLR);
    SetGpuReg(REG_OFFSET_BLDCNT, BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN);
    SetGpuReg(REG_OFFSET_BLDY, gBattleAnimArgs[3]);
    task->func = AnimTask_EchoReturnWave_Step;
}

static void AnimTask_EchoReturnWave_Step(u8 taskId)
{
    struct Task *task = &gTasks[taskId];

    task->tRadius += task->tSpeed;
    if (task->tRadius >= task->tMaxRadius)
    {
        gScanlineEffect.state = 3;
        gBattle_WIN0H = 0;
        gBattle_WIN0V = 0;
        gBattle_WIN1H = 0;
        gBattle_WIN1V = 0;
        if (!IsContest())
            ClearGpuRegBits(REG_OFFSET_DISPCNT, DISPCNT_WIN1_ON);
        SetGpuReg(REG_OFFSET_WININ, WININ_WIN0_BG_ALL | WININ_WIN0_OBJ | WININ_WIN0_CLR | WININ_WIN1_BG_ALL | WININ_WIN1_OBJ | WININ_WIN1_CLR);
        SetGpuReg(REG_OFFSET_WINOUT, WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ | WINOUT_WIN01_CLR | WINOUT_WINOBJ_BG_ALL | WINOUT_WINOBJ_OBJ | WINOUT_WINOBJ_CLR);
        SetGpuReg(REG_OFFSET_BLDCNT, 0);
        SetGpuReg(REG_OFFSET_BLDY, 0);
        DestroyAnimVisualTask(taskId);
        return;
    }
    EchoWave_Draw(task);
}

#undef tCenterX
#undef tCenterY
#undef tRadius
#undef tThickness
#undef tSpeed
#undef tMaxRadius

#define sTimer     data[0]
#define sTravel    data[1]
#define sHold      data[2]
#define sStartX    data[3]
#define sEndX      data[4]
#define sState     data[5]

static void AnimDissNoise_Step(struct Sprite *);

// A harsh noise burst that comes in from one side of the target, presses against it and buzzes there, then
// flickers away. Used by MOVE_DISS.
// arg 0: side it comes from: -1 = left, 1 = right
// arg 1: how far out from the target's middle it starts, in pixels
// arg 2: how far from the target's middle it stops, touching the target, in pixels
// arg 3: y offset from the target's middle
// arg 4: frames to reach the target
// arg 5: frames to stay pressed against it
static void AnimDissNoise(struct Sprite *sprite)
{
    s16 x = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2);

    sprite->sStartX = x + gBattleAnimArgs[0] * gBattleAnimArgs[1];
    sprite->sEndX = x + gBattleAnimArgs[0] * gBattleAnimArgs[2];
    sprite->x = sprite->sStartX;
    sprite->y = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET) + gBattleAnimArgs[3];
    sprite->sTravel = gBattleAnimArgs[4];
    sprite->sHold = gBattleAnimArgs[5];
    sprite->sTimer = 0;
    sprite->sState = 0;
    // Point the jagged edge in at the target from either side
    sprite->hFlip = (gBattleAnimArgs[0] > 0);
    sprite->callback = AnimDissNoise_Step;
}

static void AnimDissNoise_Step(struct Sprite *sprite)
{
    sprite->sTimer++;
    switch (sprite->sState)
    {
    case 0: // closing in
        sprite->x = sprite->sStartX + (sprite->sEndX - sprite->sStartX) * sprite->sTimer / sprite->sTravel;
        if (sprite->sTimer >= sprite->sTravel)
        {
            sprite->sTimer = 0;
            sprite->sState++;
        }
        break;
    case 1: // pressed against the target, buzzing
        sprite->x2 = (sprite->sTimer & 2) ? 1 : -1;
        if (sprite->sTimer >= sprite->sHold)
        {
            sprite->sTimer = 0;
            sprite->sState++;
        }
        break;
    case 2: // flickering away
        sprite->x2 = (sprite->sTimer & 2) ? 1 : -1;
        sprite->invisible = (sprite->sTimer & 1);
        if (sprite->sTimer >= 10)
            DestroyAnimSprite(sprite);
        break;
    }
}

const struct SpriteTemplate gDissNoiseSpriteTemplate =
{
    .tileTag = ANIM_TAG_SNORE_Z,
    .paletteTag = ANIM_TAG_SNORE_Z,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimDissNoise,
};

#undef sTimer
#undef sTravel
#undef sHold
#undef sStartX
#undef sEndX
#undef sState

#define tTimer      data[0]
#define tState      data[1]
#define tSinkTime   data[2]
#define tHoldTime   data[3]
#define tRiseTime   data[4]
#define tSpriteId   data[5]

static void AnimTask_AbyssDunk_Step(u8);

// Squashes the mon down to the ground line (keeping its feet in place) so it looks pulled under the water. If the
// hit is going to knock it out, it stays under and out of sight (the faint follows); if it'll hang on (Endure,
// Focus Band), it rises back up. Used by MOVE_ABYSS.
// arg 0: battler
// arg 1: frames to go under
// arg 2: frames to stay under before coming back up, if it does
// arg 3: frames to come back up
void AnimTask_AbyssDunk(u8 taskId)
{
    struct Task *task = &gTasks[taskId];

    task->tSpriteId = GetAnimBattlerSpriteId(gBattleAnimArgs[0]);
    task->tSinkTime = gBattleAnimArgs[1];
    task->tHoldTime = gBattleAnimArgs[2];
    task->tRiseTime = gBattleAnimArgs[3];
    task->tTimer = 0;
    task->tState = 0;
    PrepareBattlerSpriteForRotScale(task->tSpriteId, ST_OAM_OBJ_NORMAL);
    task->func = AnimTask_AbyssDunk_Step;
}

// Sets how much of the mon shows above the water, 0-256
static void AbyssDunk_SetShown(struct Task *task, s16 shown)
{
    if (shown < 8)
    {
        gSprites[task->tSpriteId].invisible = TRUE;
        shown = 8;
    }
    else
    {
        gSprites[task->tSpriteId].invisible = FALSE;
    }
    // A bigger scale value draws smaller; widen it a little as it goes under, like it's being pulled down
    SetSpriteRotScale(task->tSpriteId, 256 - (256 - shown) / 8, (256 * 256) / shown, 0);
    SetBattlerSpriteYOffsetFromYScale(task->tSpriteId);
}

static void AnimTask_AbyssDunk_Step(u8 taskId)
{
    struct Task *task = &gTasks[taskId];

    task->tTimer++;
    switch (task->tState)
    {
    case 0: // going under
        AbyssDunk_SetShown(task, 256 - 256 * task->tTimer / task->tSinkTime);
        if (task->tTimer >= task->tSinkTime)
        {
            task->tTimer = 0;
            task->tState++;
        }
        break;
    case 1: // under
        if (!IsContest() && gAnimMoveDmg >= gBattleMons[gBattleAnimTarget].hp)
        {
            // Gone for good: it faints, and an invisible mon skips the hit flicker
            ResetSpriteRotScale(task->tSpriteId);
            gSprites[task->tSpriteId].y2 = 0;
            gSprites[task->tSpriteId].invisible = TRUE;
            DestroyAnimVisualTask(taskId);
            return;
        }
        if (task->tTimer >= task->tHoldTime)
        {
            task->tTimer = 0;
            task->tState++;
        }
        break;
    case 2: // coming back up
        AbyssDunk_SetShown(task, 256 * task->tTimer / task->tRiseTime);
        if (task->tTimer >= task->tRiseTime)
        {
            gSprites[task->tSpriteId].invisible = FALSE;
            ResetSpriteRotScale(task->tSpriteId);
            gSprites[task->tSpriteId].y2 = 0;
            DestroyAnimVisualTask(taskId);
        }
        break;
    }
}

#undef tTimer
#undef tState
#undef tSinkTime
#undef tHoldTime
#undef tRiseTime
#undef tSpriteId

#define BLACK_HOLE_SMALL_SCALE  0x400 // a quarter of its size, when it reaches the target
#define BLACK_HOLE_BIG_SCALE    0x80  // twice its size, spread out behind the target
#define BLACK_HOLE_IMPACT_TIME  12    // frames between touching the target and spreading out behind it
#define BLACK_HOLE_EXPAND_TIME  6
#define BLACK_HOLE_SHRINK_TIME  14

#define sState      data[0]
#define sTimer      data[1]
#define sTravelTime data[2]
#define sStart      data[3] // where it's thrown from: x (low byte), y (high byte)
#define sEndX       data[4]
#define sEndY       data[5]
#define sHoldTime   data[6]
#define sSpin       data[7]

enum {
    BLACK_HOLE_TRAVEL,
    BLACK_HOLE_IMPACT,
    BLACK_HOLE_EXPAND,
    BLACK_HOLE_HOLD,
    BLACK_HOLE_SHRINK,
};

static void AnimBlackHoleBall_Step(struct Sprite *);

// A spinning Shadow Ball for Black Hole. Thrown from just in front of the attacker, it drifts toward the target,
// shrinking as it goes, vanishes as it touches, then spreads out large behind the target and shrinks away.
// Or it can start straight from spreading out behind the target (the between-turns drain). Used by MOVE_BLACK_HOLE.
// arg 0: FALSE to be thrown, TRUE to start already behind the target
// arg 1: frames to reach the target, when thrown
// arg 2: frames to stay spread out
static void AnimBlackHoleBall(struct Sprite *sprite)
{
    s16 x = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X_2);
    s16 y = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y_PIC_OFFSET);

    // Start a little in front of the attacker, toward its foe
    x += (GetBattlerSide(gBattleAnimAttacker) == B_SIDE_PLAYER) ? 20 : -20;
    sprite->sStart = (x & 0xFF) | ((y & 0xFF) << 8);
    sprite->sEndX = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2);
    sprite->sEndY = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET);
    sprite->sTravelTime = gBattleAnimArgs[1];
    sprite->sHoldTime = gBattleAnimArgs[2];
    sprite->sTimer = 0;
    sprite->sSpin = 0;
    if (gBattleAnimArgs[0])
    {
        sprite->sState = BLACK_HOLE_EXPAND;
        sprite->x = sprite->sEndX;
        sprite->y = sprite->sEndY;
        sprite->oam.priority = GetBattlerSpriteBGPriority(gBattleAnimTarget);
        sprite->subpriority = gSprites[gBattlerSpriteIds[gBattleAnimTarget]].subpriority + 1;
    }
    else
    {
        sprite->sState = BLACK_HOLE_TRAVEL;
        sprite->x = x;
        sprite->y = y;
    }
    sprite->callback = AnimBlackHoleBall_Step;
    sprite->callback(sprite);
}

static void AnimBlackHoleBall_Step(struct Sprite *sprite)
{
    s16 startX = sprite->sStart & 0xFF;
    s16 startY = (u16)sprite->sStart >> 8;
    s16 scale = BLACK_HOLE_SMALL_SCALE;

    sprite->sTimer++;
    sprite->sSpin += 0x900;
    switch (sprite->sState)
    {
    case BLACK_HOLE_TRAVEL: // drifting over, getting smaller and smaller
        sprite->x = startX + (sprite->sEndX - startX) * sprite->sTimer / sprite->sTravelTime;
        sprite->y = startY + (sprite->sEndY - startY) * sprite->sTimer / sprite->sTravelTime;
        scale = 0x100 + (BLACK_HOLE_SMALL_SCALE - 0x100) * sprite->sTimer / sprite->sTravelTime;
        if (sprite->sTimer >= sprite->sTravelTime)
        {
            sprite->invisible = TRUE;
            sprite->sTimer = 0;
            sprite->sState++;
        }
        break;
    case BLACK_HOLE_IMPACT: // gone into the target while it shakes
        if (sprite->sTimer >= BLACK_HOLE_IMPACT_TIME)
        {
            sprite->invisible = FALSE;
            sprite->oam.priority = GetBattlerSpriteBGPriority(gBattleAnimTarget);
            sprite->subpriority = gSprites[gBattlerSpriteIds[gBattleAnimTarget]].subpriority + 1;
            sprite->sTimer = 0;
            sprite->sState++;
        }
        break;
    case BLACK_HOLE_EXPAND: // bursting out large behind the target
        scale = BLACK_HOLE_SMALL_SCALE + (BLACK_HOLE_BIG_SCALE - BLACK_HOLE_SMALL_SCALE) * sprite->sTimer / BLACK_HOLE_EXPAND_TIME;
        if (sprite->sTimer >= BLACK_HOLE_EXPAND_TIME)
        {
            sprite->sTimer = 0;
            sprite->sState++;
        }
        break;
    case BLACK_HOLE_HOLD: // spinning there
        scale = BLACK_HOLE_BIG_SCALE;
        if (sprite->sTimer >= sprite->sHoldTime)
        {
            sprite->sTimer = 0;
            sprite->sState++;
        }
        break;
    case BLACK_HOLE_SHRINK: // collapsing back down
        scale = BLACK_HOLE_BIG_SCALE + (BLACK_HOLE_SMALL_SCALE - BLACK_HOLE_BIG_SCALE) * sprite->sTimer / BLACK_HOLE_SHRINK_TIME;
        if (sprite->sTimer >= BLACK_HOLE_SHRINK_TIME)
        {
            DestroyAnimSprite(sprite);
            return;
        }
        break;
    }
    TrySetSpriteRotScale(sprite, FALSE, scale, scale, sprite->sSpin);
}

const struct SpriteTemplate gBlackHoleBallSpriteTemplate =
{
    .tileTag = ANIM_TAG_SHADOW_BALL,
    .paletteTag = ANIM_TAG_SHADOW_BALL,
    .oam = &gOamData_AffineDouble_ObjNormal_32x32,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = AnimBlackHoleBall,
};

#undef sState
#undef sTimer
#undef sTravelTime
#undef sStart
#undef sEndX
#undef sEndY
#undef sHoldTime
#undef sSpin

#define tState      data[0]
#define tTimer      data[1]
#define tCenterX    data[2]
#define tCenterY    data[3]
#define tMaxRadius  data[4]
#define tGrowTime   data[5]
#define tHoldTime   data[6]
#define tShrinkTime data[7]

#define BLACK_HOLE_DISC_BOTTOM 112 // keep clear of the text box

static void AnimTask_BlackHoleDisc_Step(u8);

static void BlackHoleDisc_Draw(struct Task *task, s32 radius)
{
    s32 y, dy2, w, lo, hi;
    u16 value;

    for (y = 0; y < BLACK_HOLE_DISC_BOTTOM; y++)
    {
        value = 0;
        dy2 = (y - task->tCenterY) * (y - task->tCenterY);
        if (radius > 0 && dy2 < radius * radius)
        {
            w = EchoWave_Sqrt(radius * radius - dy2);
            lo = task->tCenterX - w;
            hi = task->tCenterX + w;
            if (lo < 0)
                lo = 0;
            if (hi > DISPLAY_WIDTH)
                hi = DISPLAY_WIDTH;
            if (lo < hi)
                value = WIN_RANGE(lo, hi);
        }
        gScanlineEffectRegBuffers[0][y] = value;
        gScanlineEffectRegBuffers[1][y] = value;
    }
}

// A dark disc that swells out behind the target, larger than it, and shrinks away. Only the background darkens,
// so the Pokémon (and the Black Hole ball) stay in front of it. Used by MOVE_BLACK_HOLE.
// arg 0: widest radius in pixels
// arg 1: frames to swell
// arg 2: frames to stay
// arg 3: frames to shrink
// arg 4: darkness, 0-16
void AnimTask_BlackHoleDisc(u8 taskId)
{
    struct Task *task = &gTasks[taskId];
    struct ScanlineEffectParams params;
    u16 i;

    task->tCenterX = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2);
    task->tCenterY = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET);
    task->tMaxRadius = gBattleAnimArgs[0];
    task->tGrowTime = gBattleAnimArgs[1];
    task->tHoldTime = gBattleAnimArgs[2];
    task->tShrinkTime = gBattleAnimArgs[3];
    task->tState = 0;
    task->tTimer = 0;

    for (i = 0; i < DISPLAY_HEIGHT; i++)
    {
        gScanlineEffectRegBuffers[0][i] = 0;
        gScanlineEffectRegBuffers[1][i] = 0;
    }
    gBattle_WIN0H = 0;
    gBattle_WIN0V = WIN_RANGE(0, BLACK_HOLE_DISC_BOTTOM);
    params.dmaDest = &REG_WIN0H;
    params.dmaControl = SCANLINE_EFFECT_DMACNT_16BIT;
    params.initState = 1;
    params.unused9 = 0;
    ScanlineEffect_SetParams(params);

    SetGpuReg(REG_OFFSET_WININ, WININ_WIN0_BG_ALL | WININ_WIN0_OBJ | WININ_WIN0_CLR | WININ_WIN1_BG_ALL | WININ_WIN1_OBJ | WININ_WIN1_CLR);
    SetGpuReg(REG_OFFSET_WINOUT, WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ | WINOUT_WINOBJ_BG_ALL | WINOUT_WINOBJ_OBJ | WINOUT_WINOBJ_CLR);
    SetGpuReg(REG_OFFSET_BLDCNT, BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BD | BLDCNT_EFFECT_DARKEN);
    SetGpuReg(REG_OFFSET_BLDY, gBattleAnimArgs[4]);
    task->func = AnimTask_BlackHoleDisc_Step;
}

static void AnimTask_BlackHoleDisc_Step(u8 taskId)
{
    struct Task *task = &gTasks[taskId];
    s32 radius = 0;

    task->tTimer++;
    switch (task->tState)
    {
    case 0:
        radius = task->tMaxRadius * task->tTimer / task->tGrowTime;
        if (task->tTimer >= task->tGrowTime)
        {
            task->tTimer = 0;
            task->tState++;
        }
        break;
    case 1:
        radius = task->tMaxRadius;
        if (task->tTimer >= task->tHoldTime)
        {
            task->tTimer = 0;
            task->tState++;
        }
        break;
    case 2:
        radius = task->tMaxRadius - task->tMaxRadius * task->tTimer / task->tShrinkTime;
        if (task->tTimer >= task->tShrinkTime)
        {
            gScanlineEffect.state = 3;
            gBattle_WIN0H = 0;
            gBattle_WIN0V = 0;
            SetGpuReg(REG_OFFSET_WININ, WININ_WIN0_BG_ALL | WININ_WIN0_OBJ | WININ_WIN0_CLR | WININ_WIN1_BG_ALL | WININ_WIN1_OBJ | WININ_WIN1_CLR);
            SetGpuReg(REG_OFFSET_WINOUT, WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ | WINOUT_WIN01_CLR | WINOUT_WINOBJ_BG_ALL | WINOUT_WINOBJ_OBJ | WINOUT_WINOBJ_CLR);
            SetGpuReg(REG_OFFSET_BLDCNT, 0);
            SetGpuReg(REG_OFFSET_BLDY, 0);
            DestroyAnimVisualTask(taskId);
            return;
        }
        break;
    }
    BlackHoleDisc_Draw(task, radius);
}

#undef tState
#undef tTimer
#undef tCenterX
#undef tCenterY
#undef tMaxRadius
#undef tGrowTime
#undef tHoldTime
#undef tShrinkTime

static void UNUSED UnusedFlickerAnim(struct Sprite *sprite)
{
    if (sprite->data[2] > 1)
    {
        if (sprite->data[3] & 1)
        {
            sprite->invisible = FALSE;
            gSprites[sprite->data[0]].invisible = FALSE;
            gSprites[sprite->data[1]].invisible = FALSE;
        }
        else
        {
            sprite->invisible = TRUE;
            gSprites[sprite->data[0]].invisible = TRUE;
            gSprites[sprite->data[1]].invisible = TRUE;
        }

        sprite->data[2] = 0;
        sprite->data[3]++;
    }
    else
    {
        sprite->data[2]++;
    }

    if (sprite->data[3] == 10)
    {
        DestroySprite(&gSprites[sprite->data[0]]);
        DestroySprite(&gSprites[sprite->data[1]]);
        DestroyAnimSprite(sprite);
    }
}

static void AnimCirclingMusicNote(struct Sprite *sprite)
{
    sprite->data[0] = gBattleAnimArgs[2];
    if (GetBattlerSide(gBattleAnimAttacker) != B_SIDE_PLAYER)
        sprite->x -= gBattleAnimArgs[0];
    else
        sprite->x += gBattleAnimArgs[0];

    StartSpriteAnim(sprite, gBattleAnimArgs[5]);
    sprite->data[1] = -gBattleAnimArgs[3];
    sprite->y += gBattleAnimArgs[1];
    sprite->data[3] = gBattleAnimArgs[4];
    sprite->callback = AnimCirclingMusicNote_Step;
    sprite->callback(sprite);
}

static void AnimCirclingMusicNote_Step(struct Sprite *sprite)
{
    sprite->x2 = Cos(sprite->data[0], 100);
    sprite->y2 = Sin(sprite->data[0], 20);
    if (sprite->data[0] < 128)
        sprite->subpriority = 0;
    else
        sprite->subpriority = 14;

    sprite->data[0] = (sprite->data[0] + sprite->data[1]) & 0xFF;
    sprite->data[5] += 130;
    sprite->y2 += sprite->data[5] >> 8;
    sprite->data[2]++;
    if (sprite->data[2] == sprite->data[3])
        DestroyAnimSprite(sprite);
}

static void AnimProtect(struct Sprite *sprite)
{
    if (IsContest())
        gBattleAnimArgs[1] += 8;

    sprite->x = GetBattlerSpriteCoord2(gBattleAnimAttacker, BATTLER_COORD_X) + gBattleAnimArgs[0];
    sprite->y = GetBattlerSpriteCoord2(gBattleAnimAttacker, BATTLER_COORD_Y) + gBattleAnimArgs[1];
    if (GetBattlerSide(gBattleAnimAttacker) == B_SIDE_PLAYER || IsContest())
        sprite->oam.priority = GetBattlerSpriteBGPriority(gBattleAnimAttacker) + 1;
    else
        sprite->oam.priority = GetBattlerSpriteBGPriority(gBattleAnimAttacker);

    sprite->data[0] = gBattleAnimArgs[2];
    sprite->data[2] = OBJ_PLTT_ID(IndexOfSpritePaletteTag(ANIM_TAG_PROTECT));
    sprite->data[7] = 16;
    SetGpuReg(REG_OFFSET_BLDCNT, BLDCNT_TGT2_ALL | BLDCNT_EFFECT_BLEND);
    SetGpuReg(REG_OFFSET_BLDALPHA, BLDALPHA_BLEND(16 - sprite->data[7], sprite->data[7]));
    sprite->callback = AnimProtect_Step;
}

static void AnimProtect_Step(struct Sprite *sprite)
{
    int i, id, savedPal;
    sprite->data[5] += 96;
    sprite->x2 = -(sprite->data[5] >> 8);
    if (++sprite->data[1] > 1)
    {
        sprite->data[1] = 0;
        savedPal = gPlttBufferFaded[sprite->data[2] + 1];
        i = 0;
        while (i < 6)
        {
            id = sprite->data[2] + ++i;
            gPlttBufferFaded[id] = gPlttBufferFaded[id + 1];
        }

        gPlttBufferFaded[sprite->data[2] + 7] = savedPal;
    }

    if (sprite->data[7] > 6 && sprite->data[0] >0 && ++sprite->data[6] > 1)
    {
        sprite->data[6] = 0;
        sprite->data[7] -= 1;
        SetGpuReg(REG_OFFSET_BLDALPHA, BLDALPHA_BLEND(16 - sprite->data[7], sprite->data[7]));
    }

    if (sprite->data[0] > 0)
    {
        sprite->data[0] -= 1;
    }
    else if (++sprite->data[6] > 1)
    {
        sprite->data[6] = 0;
        sprite->data[7]++;
        SetGpuReg(REG_OFFSET_BLDALPHA, BLDALPHA_BLEND(16 - sprite->data[7], sprite->data[7]));
        if (sprite->data[7] == 16)
        {
            sprite->invisible = TRUE;
            sprite->callback = DestroyAnimSpriteAndDisableBlend;
        }
    }
}

static void AnimMilkBottle(struct Sprite *sprite)
{
    sprite->x = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2);
    sprite->y = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET) + 0xFFE8;
    sprite->data[0] = 0;
    sprite->data[1] = 0;
    sprite->data[2] = 0;
    sprite->data[3] = 0;
    sprite->data[4] = 0;
    sprite->data[6] = 0;
    sprite->data[7] = 16;
    SetGpuReg(REG_OFFSET_BLDCNT, BLDCNT_TGT2_ALL | BLDCNT_EFFECT_BLEND);
    SetGpuReg(REG_OFFSET_BLDALPHA, BLDALPHA_BLEND(sprite->data[6], sprite->data[7]));
    sprite->callback = AnimMilkBottle_Step1;
}

static void AnimMilkBottle_Step1(struct Sprite *sprite)
{
    switch (sprite->data[0])
    {
    case 0:
        if (++sprite->data[2] > 0)
        {
            sprite->data[2] = 0;
            if (((++sprite->data[1]) & 1) != 0)
            {
                if (sprite->data[6] <= 15)
                    sprite->data[6]++;
            }
            else if (sprite->data[7] > 0)
            {
                sprite->data[7]--;
            }

            SetGpuReg(REG_OFFSET_BLDALPHA, BLDALPHA_BLEND(sprite->data[6], sprite->data[7]));
            if (sprite->data[6] == 16 && sprite->data[7] == 0)
            {
                sprite->data[1] = 0;
                sprite->data[0]++;
            }
        }
        break;
    case 1:
        if (++sprite->data[1] > 8)
        {
            sprite->data[1] = 0;
            StartSpriteAffineAnim(sprite, 1);
            sprite->data[0]++;
        }
        break;
    case 2:
        AnimMilkBottle_Step2(sprite, 16, 4);
        if (++sprite->data[1] > 2)
        {
            sprite->data[1] = 0;
            sprite->y++;
        }

        if (++sprite->data[2] <= 29)
            break;

        if (sprite->data[2] & 1)
        {
            if (sprite->data[6] > 0)
                sprite->data[6]--;
        }
        else if (sprite->data[7] <= 15)
        {
            sprite->data[7]++;
        }

        SetGpuReg(REG_OFFSET_BLDALPHA, BLDALPHA_BLEND(sprite->data[6], sprite->data[7]));
        if (sprite->data[6] == 0 && sprite->data[7] == 16)
        {
            sprite->data[1] = 0;
            sprite->data[2] = 0;
            sprite->data[0]++;
        }
        break;
    case 3:
        sprite->invisible = TRUE;
        sprite->data[0]++;
        break;
    case 4:
        SetGpuReg(REG_OFFSET_BLDCNT, 0);
        SetGpuReg(REG_OFFSET_BLDALPHA, BLDALPHA_BLEND(0, 0));
        DestroyAnimSprite(sprite);
        break;
    }
}

static void AnimMilkBottle_Step2(struct Sprite *sprite, int unk1, int unk2)
{
    if (sprite->data[3] <= 11)
        sprite->data[4] += 2;

    if ((u16)(sprite->data[3] - 0x12) <= 0x17)
        sprite->data[4] -= 2;

    if ((sprite->data[3]) > 0x2F)
        sprite->data[4] += 2;

    sprite->x2 = sprite->data[4] / 9;
    sprite->y2 = sprite->data[4] / 14;
    if (sprite->y2 < 0)
        sprite->y2 *= -1;

    sprite->data[3]++;
    if (sprite->data[3] > 0x3B)
        sprite->data[3] = 0;
}

static void AnimGrantingStars(struct Sprite *sprite)
{
    if (!gBattleAnimArgs[2])
        SetSpriteCoordsToAnimAttackerCoords(sprite);

    SetAnimSpriteInitialXOffset(sprite, gBattleAnimArgs[0]);
    sprite->y += gBattleAnimArgs[1];
    sprite->data[0] = gBattleAnimArgs[5];
    sprite->data[1] = gBattleAnimArgs[3];
    sprite->data[2] = gBattleAnimArgs[4];
    StoreSpriteCallbackInData6(sprite, DestroyAnimSprite);
    sprite->callback = TranslateSpriteLinearFixedPoint;
}

static void AnimSparklingStars(struct Sprite *sprite)
{
    u8 battler;
    if (!gBattleAnimArgs[2])
        battler = gBattleAnimAttacker;
    else
        battler = gBattleAnimTarget;

    if (IsDoubleBattle() && IsBattlerSpriteVisible(BATTLE_PARTNER(battler)))
    {
        SetAverageBattlerPositions(battler, gBattleAnimArgs[6], &sprite->x, &sprite->y);
        SetAnimSpriteInitialXOffset(sprite, gBattleAnimArgs[0]);
        sprite->y += gBattleAnimArgs[1];
    }
    else
    {
        if (!gBattleAnimArgs[6])
        {
            sprite->x = GetBattlerSpriteCoord(battler, BATTLER_COORD_X);
            sprite->y = GetBattlerSpriteCoord(battler, BATTLER_COORD_Y) + gBattleAnimArgs[1];
        }
        else
        {
            sprite->x = GetBattlerSpriteCoord(battler, BATTLER_COORD_X_2);
            sprite->y = GetBattlerSpriteCoord(battler, BATTLER_COORD_Y_PIC_OFFSET) + gBattleAnimArgs[1];
        }

        SetAnimSpriteInitialXOffset(sprite, gBattleAnimArgs[0]);
    }

    sprite->data[0] = gBattleAnimArgs[5];
    sprite->data[1] = gBattleAnimArgs[3];
    sprite->data[2] = gBattleAnimArgs[4];
    StoreSpriteCallbackInData6(sprite, DestroyAnimSprite);
    sprite->callback = TranslateSpriteLinearFixedPoint;
}

static void AnimBubbleBurst(struct Sprite *sprite)
{
    SetSpriteCoordsToAnimAttackerCoords(sprite);
    if (GetBattlerSide(gBattleAnimAttacker) == B_SIDE_PLAYER)
    {
        sprite->x += gBattleAnimArgs[0];
        sprite->y += gBattleAnimArgs[1];
    }
    else
    {
        sprite->x -= gBattleAnimArgs[0];
        sprite->y += gBattleAnimArgs[1];
        StartSpriteAnim(sprite, 1);
    }

    sprite->callback = AnimBubbleBurst_Step;
}

static void AnimBubbleBurst_Step(struct Sprite *sprite)
{
    if (++sprite->data[0] > 30)
    {
        sprite->y2 = (30 - sprite->data[0]) / 3;
        sprite->x2 = Sin(sprite->data[1] * 4, 3);
        sprite->data[1]++;
    }

    if (sprite->animEnded)
        DestroyAnimSprite(sprite);
}

static void AnimSleepLetterZ(struct Sprite *sprite)
{
    SetSpriteCoordsToAnimAttackerCoords(sprite);
    if (GetBattlerSide(gBattleAnimAttacker) == B_SIDE_PLAYER)
    {
        sprite->x += gBattleAnimArgs[0];
        sprite->y += gBattleAnimArgs[1];
        sprite->data[3] = 1;
    }
    else
    {
        sprite->x -= gBattleAnimArgs[0];
        sprite->y += gBattleAnimArgs[1];
        sprite->data[3] = 0xFFFF;
        StartSpriteAffineAnim(sprite, 1);
    }

    sprite->callback = AnimSleepLetterZ_Step;
}

static void AnimSleepLetterZ_Step(struct Sprite *sprite)
{
    sprite->y2 = -(sprite->data[0] / 0x28);
    sprite->x2 = sprite->data[4] / 10;
    sprite->data[4] += sprite->data[3] * 2;
    sprite->data[0] += sprite->data[1];
    if (++sprite->data[1] > 60)
        DestroySpriteAndMatrix(sprite);
}

static void AnimLockOnTarget(struct Sprite *sprite)
{
    sprite->x -= 32;
    sprite->y -= 32;
    sprite->data[0] = 20;
    sprite->callback = WaitAnimForDuration;
    StoreSpriteCallbackInData6(sprite, AnimLockOnTarget_Step1);
}

static void AnimLockOnTarget_Step1(struct Sprite *sprite)
{
    switch (sprite->data[5] & 1)
    {
    case 0:
        sprite->data[0] = 1;
        sprite->callback = WaitAnimForDuration;
        StoreSpriteCallbackInData6(sprite, AnimLockOnTarget_Step1);
        break;
    case 1:
        sprite->x += sprite->x2;
        sprite->y += sprite->y2;
        sprite->y2 = 0;
        sprite->x2 = 0;
        sprite->data[0] = 8;
        sprite->data[2] = sprite->x + gInclineMonCoordTable[sprite->data[5] >> 8][0];
        sprite->data[4] = sprite->y + gInclineMonCoordTable[sprite->data[5] >> 8][1];
        sprite->callback = StartAnimLinearTranslation;
        StoreSpriteCallbackInData6(sprite, AnimLockOnTarget_Step2);
        sprite->data[5] += 0x100;
        PlaySE12WithPanning(SE_M_LOCK_ON, BattleAnimAdjustPanning(SOUND_PAN_TARGET));
        break;
    }

    sprite->data[5] ^= 1;
}

static void AnimLockOnTarget_Step2(struct Sprite *sprite)
{
    if ((sprite->data[5] >> 8) == 4)
    {
        sprite->data[0] = 10;
        sprite->callback = WaitAnimForDuration;
        StoreSpriteCallbackInData6(sprite, AnimLockOnTarget_Step3);
    }
    else
    {
        sprite->callback = AnimLockOnTarget_Step1;
    }
}

static void AnimLockOnTarget_Step3(struct Sprite *sprite)
{
    s16 a;
    s16 b;
    if (sprite->oam.affineParam == 0)
    {
        sprite->data[0] = 3;
        sprite->data[1] = 0;
        sprite->data[2] = 0;
        sprite->callback = WaitAnimForDuration;
        StoreSpriteCallbackInData6(sprite, AnimLockOnTarget_Step4);
    }
    else
    {
        switch (sprite->oam.affineParam)
        {
        case 1:
            a = -8;
            b = -8;
            break;
        case 2:
            a = -8;
            b = 8;
            break;
        case 3:
            a = 8;
            b = -8;
            break;
        default:
            a = 8;
            b = 8;
            break;
        }

        sprite->x += sprite->x2;
        sprite->y += sprite->y2;
        sprite->y2 = 0;
        sprite->x2 = 0;
        sprite->data[0] = 6;
        sprite->data[2] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2) + a;
        sprite->data[4] = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET) + b;
        sprite->callback = StartAnimLinearTranslation;
        StoreSpriteCallbackInData6(sprite, AnimLockOnTarget_Step5);
    }
}

static void AnimLockOnTarget_Step4(struct Sprite *sprite)
{
    if (sprite->data[2] == 0)
    {
        if ((sprite->data[1] += 3) > 16)
            sprite->data[1] = 16;
    }
    else if ((sprite->data[1] -= 3) < 0)
    {
        sprite->data[1] = 0;
    }

    BlendPalettes(GetBattlePalettesMask(TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE), sprite->data[1], RGB_WHITE);
    if (sprite->data[1] == 16)
    {
        int pal;
        sprite->data[2]++;
        pal = sprite->oam.paletteNum;
        LoadPalette(&gPlttBufferUnfaded[OBJ_PLTT_ID(pal) + 8], OBJ_PLTT_ID(pal) + 1, PLTT_SIZEOF(2));
        PlaySE12WithPanning(SE_M_LEER, BattleAnimAdjustPanning(SOUND_PAN_TARGET));
    }
    else if (sprite->data[1] == 0)
    {
        sprite->callback = AnimLockOnTarget_Step5;
    }
}

static void AnimLockOnTarget_Step5(struct Sprite *sprite)
{
    if ((u16)gBattleAnimArgs[7] == 0xFFFF)
    {
        sprite->data[1] = 0;
        sprite->data[0] = 0;
        sprite->callback = AnimLockOnTarget_Step6;
    }
}

static void AnimLockOnTarget_Step6(struct Sprite *sprite)
{
    if (sprite->data[0] % 3 == 0)
    {
        sprite->data[1]++;
        sprite->invisible ^= 1;
    }

    sprite->data[0]++;
    if (sprite->data[1] == 8)
        DestroyAnimSprite(sprite);
}

static void AnimLockOnMoveTarget(struct Sprite *sprite)
{
    sprite->oam.affineParam = gBattleAnimArgs[0];
    if ((s16)sprite->oam.affineParam == 1)
    {
        sprite->x -= 0x18;
        sprite->y -= 0x18;
    }
    else if ((s16)sprite->oam.affineParam == 2)
    {
        sprite->x -= 0x18;
        sprite->y += 0x18;
        sprite->oam.matrixNum = ST_OAM_VFLIP;
    }
    else if ((s16)sprite->oam.affineParam == 3)
    {
        sprite->x += 0x18;
        sprite->y -= 0x18;
        sprite->oam.matrixNum = ST_OAM_HFLIP;
    }
    else
    {
        sprite->x += 0x18;
        sprite->y += 0x18;
        sprite->oam.matrixNum = ST_OAM_HFLIP | ST_OAM_VFLIP;
    }

    sprite->oam.tileNum = (sprite->oam.tileNum + 16);
    sprite->callback = AnimLockOnTarget;
    sprite->callback(sprite);
}

static void AnimBowMon(struct Sprite *sprite)
{
    sprite->invisible = TRUE;
    sprite->data[0] = 0;
    switch (gBattleAnimArgs[0])
    {
    case 0:
        sprite->callback = AnimBowMon_Step1;
        break;
    case 1:
        sprite->callback = AnimBowMon_Step2;
        break;
    case 2:
        sprite->callback = AnimBowMon_Step3;
        break;
    default:
        sprite->callback = AnimBowMon_Step4;
        break;
    }
}

static void AnimBowMon_Step1(struct Sprite *sprite)
{
    sprite->data[0] = 6;
    sprite->data[1] = (GetBattlerSide(gBattleAnimAttacker)) ? 2 : -2;
    sprite->data[2] = 0;
    sprite->data[3] = gBattlerSpriteIds[gBattleAnimAttacker];
    StoreSpriteCallbackInData6(sprite, AnimBowMon_Step1_Callback);
    sprite->callback = TranslateSpriteLinearById;
}

static void AnimBowMon_Step1_Callback(struct Sprite *sprite)
{
    if (sprite->data[0] == 0)
    {
        sprite->data[3] = gBattlerSpriteIds[gBattleAnimAttacker];
        PrepareBattlerSpriteForRotScale(sprite->data[3], ST_OAM_OBJ_NORMAL);
        sprite->data[4] = (sprite->data[6] = GetBattlerSide(gBattleAnimAttacker)) ? 0x300 : 0xFFFFFD00;
        sprite->data[5] = 0;
    }

    sprite->data[5] += sprite->data[4];
    SetSpriteRotScale(sprite->data[3], 0x100, 0x100, sprite->data[5]);
    SetBattlerSpriteYOffsetFromRotation(sprite->data[3]);
    if (++sprite->data[0] > 3)
    {
        sprite->data[0] = 0;
        sprite->callback = AnimBowMon_Step4;
    }
}

static void AnimBowMon_Step2(struct Sprite *sprite)
{
    sprite->data[0] = 4;
    sprite->data[1] = (GetBattlerSide(gBattleAnimAttacker)) ? -3 : 3;
    sprite->data[2] = 0;
    sprite->data[3] = gBattlerSpriteIds[gBattleAnimAttacker];
    StoreSpriteCallbackInData6(sprite, AnimBowMon_Step4);
    sprite->callback = TranslateSpriteLinearById;
}

static void AnimBowMon_Step3(struct Sprite *sprite)
{
    if (++sprite->data[0] > 8)
    {
        sprite->data[0] = 0;
        sprite->callback = AnimBowMon_Step3_Callback;
    }
}

static void AnimBowMon_Step3_Callback(struct Sprite *sprite)
{
    if (sprite->data[0] == 0)
    {
        sprite->data[3] = gBattlerSpriteIds[gBattleAnimAttacker];
        sprite->data[6] = GetBattlerSide(gBattleAnimAttacker);
        if (GetBattlerSide(gBattleAnimAttacker) != B_SIDE_PLAYER)
        {
            sprite->data[4] = 0xFC00;
            sprite->data[5] = 0xC00;
        }
        else
        {
            sprite->data[4] = 0x400;
            sprite->data[5] = 0xF400;
        }
    }

    sprite->data[5] += sprite->data[4];
    SetSpriteRotScale(sprite->data[3], 0x100, 0x100, sprite->data[5]);
    SetBattlerSpriteYOffsetFromRotation(sprite->data[3]);
    if (++sprite->data[0] > 2)
    {
        ResetSpriteRotScale(sprite->data[3]);
        sprite->callback = AnimBowMon_Step4;
    }
}

static void AnimBowMon_Step4(struct Sprite *sprite)
{
    DestroyAnimSprite(sprite);
}

static void AnimTipMon(struct Sprite *sprite)
{
    sprite->data[0] = 0;
    sprite->callback = AnimTipMon_Step;
}

static void AnimTipMon_Step(struct Sprite *sprite)
{
    switch (sprite->data[0])
    {
    case 0:
        sprite->data[1] = 0;
        sprite->data[2] = gBattlerSpriteIds[gBattleAnimAttacker];
        sprite->data[3] = GetBattlerSide(gBattleAnimAttacker);
        sprite->data[4] = (sprite->data[3] != B_SIDE_PLAYER) ? 0x200 : -0x200;
        sprite->data[5] = 0;
        PrepareBattlerSpriteForRotScale(sprite->data[2], ST_OAM_OBJ_NORMAL);
        sprite->data[0]++;
        // fall through
    case 1:
        sprite->data[5] += sprite->data[4];
        SetSpriteRotScale(sprite->data[2], 0x100, 0x100, sprite->data[5]);
        SetBattlerSpriteYOffsetFromRotation(sprite->data[2]);
        if (++sprite->data[1] > 3)
        {
            sprite->data[1] = 0;
            sprite->data[4] *= -1;
            sprite->data[0]++;
        }
        break;
    case 2:
        sprite->data[5] += sprite->data[4];
        SetSpriteRotScale(sprite->data[2], 0x100, 0x100, sprite->data[5]);
        SetBattlerSpriteYOffsetFromRotation(sprite->data[2]);
        if (++sprite->data[1] > 3)
        {
            ResetSpriteRotScale(sprite->data[2]);
            DestroyAnimSprite(sprite);
        }
        break;
    }
}

void AnimTask_SkullBashPosition(u8 taskId)
{
    u8 side;

    gTasks[taskId].data[0] = gBattlerSpriteIds[gBattleAnimAttacker];
    side = GetBattlerSide(gBattleAnimAttacker);
    gTasks[taskId].data[1] = side;
    gTasks[taskId].data[2] = 0;
    switch (gBattleAnimArgs[0])
    {
    default:
        DestroyAnimVisualTask(taskId);
        break;
    case 0:
        gTasks[taskId].data[2] = 0;
        gTasks[taskId].data[3] = 8;
        gTasks[taskId].data[4] = 0;
        gTasks[taskId].data[5] = 3;
        if (side == B_SIDE_PLAYER)
            gTasks[taskId].data[5] *= -1;

        gTasks[taskId].func = AnimTask_SkullBashPositionSet;
        break;
    case 1:
        gTasks[taskId].data[3] = 8;
        gTasks[taskId].data[4] = 0x600;
        gTasks[taskId].data[5] = 0xC0;
        if (side == B_SIDE_PLAYER)
        {
            gTasks[taskId].data[4] = -gTasks[taskId].data[4];
            gTasks[taskId].data[5] = -gTasks[taskId].data[5];
        }

        gTasks[taskId].func = AnimTask_SkullBashPositionReset;
        break;
    }
}

static void AnimTask_SkullBashPositionSet(u8 taskId)
{
    struct Task *task = &gTasks[taskId];
    switch (task->data[2])
    {
    case 0:
        if (task->data[3])
        {
            task->data[4] += task->data[5];
            gSprites[task->data[0]].x2 = task->data[4];
            task->data[3]--;
        }
        else
        {
            task->data[3] = 8;
            task->data[4] = 0;
            task->data[5] = (task->data[1] == 0) ? -0xC0 : 0xC0;
            PrepareBattlerSpriteForRotScale(task->data[0], ST_OAM_OBJ_NORMAL);
            task->data[2]++;
        }
        break;
    case 1:
        if (task->data[3])
        {
            task->data[4] += task->data[5];
            SetSpriteRotScale(task->data[0], 0x100, 0x100, task->data[4]);
            SetBattlerSpriteYOffsetFromRotation(task->data[0]);
            task->data[3]--;
        }
        else
        {
            task->data[3] = 8;
            task->data[4] = gSprites[task->data[0]].x2;
            task->data[5] = (task->data[1] == 0) ? 0x2 : -0x2;
            task->data[6] = 1;
            task->data[2]++;
        }
        break;
    case 2:
        if (task->data[3])
        {
            if (task->data[6])
            {
                task->data[6]--;
            }
            else
            {
                if (task->data[3] & 1)
                    gSprites[task->data[0]].x2 = task->data[4] + task->data[5];
                else
                    gSprites[task->data[0]].x2 = task->data[4] - task->data[5];

                task->data[6] = 1;
                task->data[3]--;
            }
        }
        else
        {
            gSprites[task->data[0]].x2 = task->data[4];
            task->data[3] = 12;
            task->data[2]++;
        }
        break;
    case 3:
        if (task->data[3])
        {
            task->data[3]--;
        }
        else
        {
            task->data[3] = 3;
            task->data[4] = gSprites[task->data[0]].x2;
            task->data[5] = (task->data[1] == 0) ? 8 : -8;
            task->data[2]++;
        }
        break;
    case 4:
        if (task->data[3])
        {
            task->data[4] += task->data[5];
            gSprites[task->data[0]].x2 = task->data[4];
            task->data[3]--;
        }
        else
        {
            DestroyAnimVisualTask(taskId);
        }
        break;
    }
}

static void AnimTask_SkullBashPositionReset(u8 taskId)
{
    struct Task *task = &gTasks[taskId];
    if (task->data[3])
    {
        task->data[4] -= task->data[5];
        SetSpriteRotScale(task->data[0], 0x100, 0x100, task->data[4]);
        SetBattlerSpriteYOffsetFromRotation(task->data[0]);
        task->data[3]--;
    }
    else
    {
        ResetSpriteRotScale(task->data[0]);
        DestroyAnimVisualTask(taskId);
    }
}

static void AnimSlashSlice(struct Sprite *sprite)
{
    if (gBattleAnimArgs[0] == 0)
    {
        sprite->x = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X_2) + gBattleAnimArgs[1];
        sprite->y = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y_PIC_OFFSET) + gBattleAnimArgs[2];
    }
    else
    {
        sprite->x = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2) + gBattleAnimArgs[1];
        sprite->y = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET) + gBattleAnimArgs[2];
    }

    sprite->data[0] = 0;
    sprite->data[1] = 0;
    StoreSpriteCallbackInData6(sprite, AnimFalseSwipeSlice_Step3);
    sprite->callback = RunStoredCallbackWhenAnimEnds;
}

static void AnimFalseSwipeSlice(struct Sprite *sprite)
{
    sprite->x = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2) + 0xFFD0;
    sprite->y = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET);
    StoreSpriteCallbackInData6(sprite, AnimFalseSwipeSlice_Step1);
    sprite->callback = RunStoredCallbackWhenAnimEnds;
}

static void AnimFalseSwipePositionedSlice(struct Sprite *sprite)
{
    sprite->x = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2) - 48 + gBattleAnimArgs[0];
    sprite->y = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET);
    StartSpriteAnim(sprite, 1);
    sprite->data[0] = 0;
    sprite->data[1] = 0;
    sprite->callback = AnimFalseSwipeSlice_Step3;
}

static void AnimFalseSwipeSlice_Step1(struct Sprite *sprite)
{
    if (++sprite->data[0] > 8)
    {
        sprite->data[0] = 12;
        sprite->data[1] = 8;
        sprite->data[2] = 0;
        StoreSpriteCallbackInData6(sprite, AnimFalseSwipeSlice_Step2);
        sprite->callback = TranslateSpriteLinear;
    }
}

static void AnimFalseSwipeSlice_Step2(struct Sprite *sprite)
{
    sprite->data[0] = 0;
    sprite->data[1] = 0;
    sprite->callback = AnimFalseSwipeSlice_Step3;
}

static void AnimFalseSwipeSlice_Step3(struct Sprite *sprite)
{
    if (++sprite->data[0] > 1)
    {
        sprite->data[0] = 0;
        sprite->invisible = !sprite->invisible;
        if (++sprite->data[1] > 8)
            DestroyAnimSprite(sprite);
    }
}

static void AnimEndureEnergy(struct Sprite *sprite)
{
    if (gBattleAnimArgs[0] == 0)
    {
        sprite->x = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X) + gBattleAnimArgs[1];
        sprite->y = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y) + gBattleAnimArgs[2];
    }
    else
    {
        sprite->x = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X) + gBattleAnimArgs[1];
        sprite->y = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y) + gBattleAnimArgs[2];
    }

    sprite->data[0] = 0;
    sprite->data[1] = gBattleAnimArgs[3];
    sprite->callback = AnimEndureEnergy_Step;
}

static void AnimEndureEnergy_Step(struct Sprite *sprite)
{
    if (++sprite->data[0] > sprite->data[1])
    {
        sprite->data[0] = 0;
        sprite->y--;
    }

    sprite->y -= sprite->data[0];
    if (sprite->animEnded)
        DestroyAnimSprite(sprite);
}

static void AnimSharpenSphere(struct Sprite *sprite)
{
    sprite->x = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X_2);
    sprite->y = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y_PIC_OFFSET) - 12;
    sprite->data[0] = 0;
    sprite->data[1] = 2;
    sprite->data[2] = 0;
    sprite->data[3] = 0;
    sprite->data[4] = 0;
    sprite->data[5] = BattleAnimAdjustPanning(SOUND_PAN_ATTACKER);
    sprite->callback = AnimSharpenSphere_Step;
}

static void AnimSharpenSphere_Step(struct Sprite *sprite)
{
    if (++sprite->data[0] >= sprite->data[1])
    {
        sprite->invisible = !sprite->invisible;
        if (!sprite->invisible)
        {
            sprite->data[4]++;
            if (!(sprite->data[4] & 1))
                PlaySE12WithPanning(SE_M_SWAGGER2, sprite->data[5]);
        }

        sprite->data[0] = 0;
        if (++sprite->data[2] > 1)
        {
            sprite->data[2] = 0;
            sprite->data[1]++;
        }
    }

    if (sprite->animEnded && sprite->data[1] > 16 && sprite->invisible)
        DestroyAnimSprite(sprite);
}

static void AnimConversion(struct Sprite *sprite)
{
    if (sprite->data[0] == 0)
    {
        sprite->x = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X) + gBattleAnimArgs[0];
        sprite->y = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y) + gBattleAnimArgs[1];
        if (IsContest())
            sprite->y += 10;

        sprite->data[0]++;
    }

    if ((u16)gBattleAnimArgs[7] == 0xFFFF)
        DestroyAnimSprite(sprite);
}

void AnimTask_ConversionAlphaBlend(u8 taskId)
{
    if (gTasks[taskId].data[2] == 1)
    {
        gBattleAnimArgs[7] = 0xFFFF;
        gTasks[taskId].data[2]++;
    }
    else if (gTasks[taskId].data[2] == 2)
    {
        DestroyAnimVisualTask(taskId);
    }
    else
    {
        if (++gTasks[taskId].data[0] == 4)
        {
            gTasks[taskId].data[0] = 0;
            gTasks[taskId].data[1]++;
            SetGpuReg(REG_OFFSET_BLDALPHA, BLDALPHA_BLEND(16 - gTasks[taskId].data[1], gTasks[taskId].data[1]));
            if (gTasks[taskId].data[1] == 16)
                gTasks[taskId].data[2]++;
        }
    }
}

static void AnimConversion2(struct Sprite *sprite)
{
    InitSpritePosToAnimTarget(sprite, FALSE);
    sprite->animPaused = 1;
    sprite->data[0] = gBattleAnimArgs[2];
    sprite->callback = AnimConversion2_Step;
}

static void AnimConversion2_Step(struct Sprite *sprite)
{
    if (sprite->data[0])
    {
        sprite->data[0]--;
    }
    else
    {
        sprite->animPaused = 0;
        sprite->data[0] = 30;
        sprite->data[2] = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X_2);
        sprite->data[4] = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y_PIC_OFFSET);
        sprite->callback = StartAnimLinearTranslation;
        StoreSpriteCallbackInData6(sprite, DestroyAnimSprite);
    }
}

void AnimTask_Conversion2AlphaBlend(u8 taskId)
{
    if (++gTasks[taskId].data[0] == 4)
    {
        gTasks[taskId].data[0] = 0;
        gTasks[taskId].data[1]++;
        SetGpuReg(REG_OFFSET_BLDALPHA, BLDALPHA_BLEND(gTasks[taskId].data[1], 16 - gTasks[taskId].data[1]));
        if (gTasks[taskId].data[1] == 16)
            DestroyAnimVisualTask(taskId);
    }
}

static void UNUSED AnimTask_HideBattlersHealthbox(u8 taskId)
{
    u8 i;
    for (i = 0; i < gBattlersCount; i++)
    {
        if (gBattleAnimArgs[0] == TRUE && GetBattlerSide(i) == B_SIDE_PLAYER)
            SetHealthboxSpriteInvisible(gHealthboxSpriteIds[i]);

        if (gBattleAnimArgs[1] == TRUE && GetBattlerSide(i) == B_SIDE_OPPONENT)
            SetHealthboxSpriteInvisible(gHealthboxSpriteIds[i]);
    }

    DestroyAnimVisualTask(taskId);
}

static void UNUSED AnimTask_ShowBattlersHealthbox(u8 taskId)
{
    u8 i;
    for (i = 0; i < gBattlersCount; i++)
        SetHealthboxSpriteVisible(gHealthboxSpriteIds[i]);

    DestroyAnimVisualTask(taskId);
}

static void AnimMoon(struct Sprite *sprite)
{
    if (IsContest())
    {
        sprite->x = 48;
        sprite->y = 40;
    }
    else
    {
        sprite->x = gBattleAnimArgs[0];
        sprite->y = gBattleAnimArgs[1];
    }

    sprite->oam.shape = SPRITE_SHAPE(64x64);
    sprite->oam.size = SPRITE_SIZE(64x64);
    sprite->data[0] = 0;
    sprite->callback = AnimMoon_Step;
}

static void AnimMoon_Step(struct Sprite *sprite)
{
    if (sprite->data[0])
        DestroyAnimSprite(sprite);
}

static void AnimMoonlightSparkle(struct Sprite *sprite)
{
    sprite->x = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X_2) + gBattleAnimArgs[0];
    sprite->y = gBattleAnimArgs[1];
    sprite->data[0] = 0;
    sprite->data[1] = 0;
    sprite->data[2] = 0;
    sprite->data[3] = 0;
    sprite->data[4] = 1;
    sprite->callback = AnimMoonlightSparkle_Step;
}

static void AnimMoonlightSparkle_Step(struct Sprite *sprite)
{
    if (++sprite->data[1] > 1)
    {
        sprite->data[1] = 0;
        if (sprite->data[2] < 120)
        {
            sprite->y++;
            sprite->data[2]++;
        }
    }

    if (sprite->data[0])
        DestroyAnimSprite(sprite);
}

void AnimTask_MoonlightEndFade(u8 taskId)
{
    int a = GetBattlePalettesMask(TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE) & 0xFFFF;
    int b;
    int c;
    int d;

    gTasks[taskId].data[0] = 0;
    gTasks[taskId].data[1] = 0;
    gTasks[taskId].data[2] = 0;
    gTasks[taskId].data[3] = a;
    gTasks[taskId].data[4] = 0;
    gTasks[taskId].data[5] = 0;
    gTasks[taskId].data[6] = 0;
    gTasks[taskId].data[7] = 13;
    gTasks[taskId].data[8] = 14;
    gTasks[taskId].data[9] = 15;
    b = GetBattleMonSpritePalettesMask(1, 1, 1, 1);
    c = a | b;
    StorePointerInVars(&gTasks[taskId].data[14], &gTasks[taskId].data[15], (void *)c);
    b = b | (0x10000 << IndexOfSpritePaletteTag(ANIM_TAG_MOON));
    d = IndexOfSpritePaletteTag(ANIM_TAG_GREEN_SPARKLE);
    BeginNormalPaletteFade((0x10000 << d) | b, 0, 0, 16, RGB(27, 29, 31));
    gTasks[taskId].func = AnimTask_MoonlightEndFade_Step;
    gTasks[taskId].func(taskId);
}

static void AnimTask_MoonlightEndFade_Step(u8 taskId)
{
    struct Task *task = &gTasks[taskId];
    switch (task->data[0])
    {
    case 0:
        if (++task->data[1] > 0)
        {
            u16 color;
            u16 bitmask;
            u16 r3;
            u16 i;
            u16 j;
            task->data[1] = 0;
            if (++task->data[2] <= 15)
            {
                u16 red;
                u16 green;
                u16 blue;
                task->data[4] += task->data[7];
                task->data[5] += task->data[8];
                task->data[6] += task->data[9];
                red = task->data[4] >> 3;
                green = task->data[5] >> 3;
                blue = task->data[6] >> 3;
                color = RGB(red, green, blue);
            }
            else
            {
                color = RGB(27, 29, 31);
                task->data[0]++;
            }

            bitmask = 1;
            r3 = 0;
            for (i = 0; i <= 15; i++)
            {
                if (task->data[3] & bitmask)
                {
                    for (j = 1; j <= 15; j++)
                    {
                        gPlttBufferFaded[r3 + j] = color;
                    }
                }

                bitmask <<= 1;
                r3 += 16;
            }
        }
        break;
    case 1:
        if (!gPaletteFade.active)
        {
            u8 spriteId;
            for (spriteId = 0; spriteId < MAX_SPRITES; spriteId++)
            {
                if (gSprites[spriteId].template == &gMoonSpriteTemplate || gSprites[spriteId].template == &gMoonlightSparkleSpriteTemplate)
                    gSprites[spriteId].data[0] = 1;
            }

            task->data[1] = 0;
            task->data[0]++;
        }
        break;
    case 2:
        if (++task->data[1] > 30)
        {
            BeginNormalPaletteFade((u32)LoadPointerFromVars(task->data[14], task->data[15]), 0, 16, 0, RGB(27, 29, 31));
            task->data[0]++;
        }
        break;
    case 3:
        if (!gPaletteFade.active)
            DestroyAnimVisualTask(taskId);
        break;
    }
}

static void AnimHornHit(struct Sprite *sprite)
{
    if (gBattleAnimArgs[2] < 2)
        gBattleAnimArgs[2] = 2;

    if (gBattleAnimArgs[2] > 0x7F)
        gBattleAnimArgs[2] = 0x7F;

    sprite->data[0] = 0;
    sprite->data[1] = gBattleAnimArgs[2];
    sprite->x = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2) + gBattleAnimArgs[0];
    sprite->y = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET) + gBattleAnimArgs[1];
    sprite->data[6] = sprite->x;
    sprite->data[7] = sprite->y;
    if (IsContest())
    {
        sprite->oam.matrixNum = ST_OAM_HFLIP;
        sprite->x += 40;
        sprite->y += 20;
        sprite->data[2] = sprite->x << 7;
        sprite->data[3] = -0x1400 / sprite->data[1];
        sprite->data[4] = sprite->y << 7;
        sprite->data[5] = -0xA00 / sprite->data[1];
    }
    else if (GetBattlerSide(gBattleAnimAttacker) == B_SIDE_PLAYER)
    {
        sprite->x -= 40;
        sprite->y += 20;
        sprite->data[2] = sprite->x << 7;
        sprite->data[3] = 0x1400 / sprite->data[1];
        sprite->data[4] = sprite->y << 7;
        sprite->data[5] = -0xA00 / sprite->data[1];
    }
    else
    {
        sprite->x += 40;
        sprite->y -= 20;
        sprite->data[2] = sprite->x << 7;
        sprite->data[3] = -0x1400 / sprite->data[1];
        sprite->data[4] = sprite->y << 7;
        sprite->data[5] = 0xA00 / sprite->data[1];
        sprite->oam.matrixNum = (ST_OAM_HFLIP | ST_OAM_VFLIP);
    }

    sprite->callback = AnimHornHit_Step;
}

static void AnimHornHit_Step(struct Sprite *sprite)
{
    sprite->data[2] += sprite->data[3];
    sprite->data[4] += sprite->data[5];
    sprite->x = sprite->data[2] >> 7;
    sprite->y = sprite->data[4] >> 7;
    if (--sprite->data[1] == 1)
    {
        sprite->x = sprite->data[6];
        sprite->y = sprite->data[7];
    }

    if (sprite->data[1] == 0)
        DestroyAnimSprite(sprite);
}

void AnimTask_DoubleTeam(u8 taskId)
{
    u16 i;
    int obj;
    u16 r3;
    u16 r4;
    struct Task *task = &gTasks[taskId];
    task->data[0] = GetAnimBattlerSpriteId(ANIM_ATTACKER);
    task->data[1] = AllocSpritePalette(ANIM_TAG_BENT_SPOON);
    r3 = OBJ_PLTT_ID(task->data[1]);
    r4 = OBJ_PLTT_ID2(gSprites[task->data[0]].oam.paletteNum);
    for (i = 1; i < 16; i++)
        gPlttBufferUnfaded[r3 + i] = gPlttBufferUnfaded[r4 + i];

    BlendPalette(r3, 16, 11, RGB_BLACK);
    task->data[3] = 0;
    i = 0;
    while (i < 2 && (obj = CloneBattlerSpriteWithBlend(0)) >= 0)
    {
        gSprites[obj].oam.paletteNum = task->data[1];
        gSprites[obj].data[0] = 0;
        gSprites[obj].data[1] = i << 7;
        gSprites[obj].data[2] = taskId;
        gSprites[obj].callback = AnimDoubleTeam;
        task->data[3]++;
        i++;
    }

    task->func = AnimTask_DoubleTeam_Step;
    if (GetBattlerSpriteBGPriorityRank(gBattleAnimAttacker) == 1)
        ClearGpuRegBits(REG_OFFSET_DISPCNT, DISPCNT_BG1_ON);
    else
        ClearGpuRegBits(REG_OFFSET_DISPCNT, DISPCNT_BG2_ON);
}

static void AnimTask_DoubleTeam_Step(u8 taskId)
{
    struct Task *task = &gTasks[taskId];
    if (!task->data[3])
    {
        if (GetBattlerSpriteBGPriorityRank(gBattleAnimAttacker) == 1)
            SetGpuRegBits(REG_OFFSET_DISPCNT, DISPCNT_BG1_ON);
        else
            SetGpuRegBits(REG_OFFSET_DISPCNT, DISPCNT_BG2_ON);

        FreeSpritePaletteByTag(ANIM_TAG_BENT_SPOON);
        DestroyAnimVisualTask(taskId);
    }
}

static void AnimDoubleTeam(struct Sprite *sprite)
{
    if (++sprite->data[3] > 1)
    {
        sprite->data[3] = 0;
        sprite->data[0]++;
    }

    if (sprite->data[0] > 64)
    {
        gTasks[sprite->data[2]].data[3]--;
        DestroySpriteWithActiveSheet(sprite);
    }
    else
    {
        sprite->data[4] = gSineTable[sprite->data[0]] / 6;
        sprite->data[5] = gSineTable[sprite->data[0]] / 13;
        sprite->data[1] = (sprite->data[1] + sprite->data[5]) & 0xFF;
        sprite->x2 = Sin(sprite->data[1], sprite->data[4]);
    }
}

static void AnimSuperFang(struct Sprite *sprite)
{
    StoreSpriteCallbackInData6(sprite, DestroyAnimSprite);
    sprite->callback = RunStoredCallbackWhenAnimEnds;
}

void AnimTask_MusicNotesRainbowBlend(u8 taskId)
{
    u16 i;
    u16 j;
    u16 index;

    index = IndexOfSpritePaletteTag(gParticlesColorBlendTable[0][0]);
    if (index != 0xFF)
    {
        index = OBJ_PLTT_ID(index);
        for (i = 1; i < ARRAY_COUNT(gParticlesColorBlendTable[0]); i++)
            gPlttBufferFaded[index + i] = gParticlesColorBlendTable[0][i];
    }

    for (j = 1; j < ARRAY_COUNT(gParticlesColorBlendTable); j++)
    {
        index = AllocSpritePalette(gParticlesColorBlendTable[j][0]);
        if (index != 0xFF)
        {
            index = OBJ_PLTT_ID(index);
            for (i = 1; i < ARRAY_COUNT(gParticlesColorBlendTable[0]); i++)
                gPlttBufferFaded[index + i] = gParticlesColorBlendTable[j][i];
        }
    }
    DestroyAnimVisualTask(taskId);
}

// clears the rainbow effect for musical notes.
void AnimTask_MusicNotesClearRainbowBlend(u8 taskId)
{
    u16 i;
    for (i = 1; i < ARRAY_COUNT(gParticlesColorBlendTable); i++)
        FreeSpritePaletteByTag(gParticlesColorBlendTable[i][0]);

    DestroyAnimVisualTask(taskId);
}

#define sMoveTimer      data[0]
#define sBlendTableIdx  data[1]
#define sBlendTimer     data[2]
#define sBlendCycleTime data[3]
#define sX              data[4]
#define sY              data[5]
#define sVelocX         data[6]
#define sVelocY         data[7]

static void AnimWavyMusicNotes(struct Sprite *sprite)
{
    u8 index;
    u8 x, y;
    SetSpriteCoordsToAnimAttackerCoords(sprite);
    StartSpriteAnim(sprite, gBattleAnimArgs[0]);
    if ((index = IndexOfSpritePaletteTag(gParticlesColorBlendTable[gBattleAnimArgs[1]][0])) != 0xFF)
        sprite->oam.paletteNum = index;

    sprite->sBlendTableIdx = gBattleAnimArgs[1];
    sprite->sBlendTimer = 0;
    sprite->sBlendCycleTime = gBattleAnimArgs[2];
    if (IsContest())
    {
        x = 48;
        y = 40;
    }
    else
    {
        x = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2);
        y = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET);
    }

    sprite->sX = sprite->x << 4;
    sprite->sY = sprite->y << 4;
    AnimWavyMusicNotes_CalcVelocity(x - sprite->x, y - sprite->y, &sprite->sVelocX, &sprite->sVelocY, 40);
    sprite->callback = AnimWavyMusicNotes_Step;
}

static void AnimWavyMusicNotes_CalcVelocity(s16 x, s16 y, s16 *velocX, s16 *velocY, s8 xSpeedFactor)
{
    int x2;
    int time;
    if (x < 0)
        xSpeedFactor = -xSpeedFactor;

    x2 = x * 256;
    time = x2 / xSpeedFactor;
    if (time == 0)
        time = 1;

    *velocX = x2 / time;
    *velocY = (y * 256) / time;
}

static void AnimWavyMusicNotes_Step(struct Sprite *sprite)
{
    s16 y, trigIdx;
    u8 index;

    sprite->sMoveTimer++;
    trigIdx = sprite->sMoveTimer * 5 - ((sprite->sMoveTimer * 5 / 256) << 8);
    sprite->sX += sprite->sVelocX;
    sprite->sY += sprite->sVelocY;
    sprite->x = sprite->sX >> 4;
    sprite->y = sprite->sY >> 4;
    sprite->y2 = Sin(trigIdx, 15);

    y = sprite->y;
    if (sprite->x < -16 || sprite->x > DISPLAY_WIDTH + 16 || y < -16 || y > DISPLAY_HEIGHT - 32)
    {
        DestroySpriteAndMatrix(sprite);
    }
    else
    {
        if (sprite->sBlendCycleTime && ++sprite->sBlendTimer > sprite->sBlendCycleTime)
        {
            sprite->sBlendTimer = 0;
            if (++sprite->sBlendTableIdx > (int)ARRAY_COUNT(gParticlesColorBlendTable) - 1)
                sprite->sBlendTableIdx = 0;

            index = IndexOfSpritePaletteTag(gParticlesColorBlendTable[sprite->sBlendTableIdx][0]);
            if (index != 0xFF)
                sprite->oam.paletteNum = index;
        }
    }
}

// Serenade: the part of its song that's playing, whether the song failed so its notes should drop, whether the
// notes bounce to the beat (the last, triumphant part), and frames since the part started
EWRAM_DATA static u16 sSerenadeSong = 0;
EWRAM_DATA static bool8 sSerenadeNotesDrop = FALSE;
EWRAM_DATA static bool8 sSerenadeNotesBounce = FALSE;
EWRAM_DATA static u8 sSerenadePart = 0;
EWRAM_DATA static u16 sSerenadeFrames = 0;

#define SERENADE_ORBIT_RADIUS_X 30
#define SERENADE_ORBIT_RADIUS_Y 20
#define SERENADE_ORBIT_SPEED    5  // gSineTable steps per frame, 256 per lap
#define SERENADE_BLEND_CYCLE    12 // frames per color in gParticlesColorBlendTable
#define SERENADE_BOUNCE_HEIGHT  8
#define SERENADE_PINK           RGB(31, 21, 21) // Sweet Scent's pink

// Where each part of the song starts in mus_littleroot, in ticks (see sound/songs/se_m_serenade_*.s), so the beat
// lines up with the original. 24 ticks per beat.
static const u16 sSerenadePartStartTicks[] = {0, 132, 204, 300, 396};
#define SERENADE_TICKS_PER_BEAT 24

// Where the song is, in ticks of mus_littleroot. Read from the music player, so it follows the song's tempo changes.
static u32 Serenade_GetSongTick(void)
{
    return sSerenadePartStartTicks[sSerenadePart] + gMPlayTable[gSongTable[sSerenadeSong].ms].info->clock;
}

// How far through the current beat of the song, 0-127 (half a gSineTable lap)
static u8 Serenade_GetBeatPhase(void)
{
    return ((Serenade_GetSongTick() % SERENADE_TICKS_PER_BEAT) * 128) / SERENADE_TICKS_PER_BEAT;
}

// How far through the current pair of beats, 0-255 (a whole gSineTable lap)
static u8 Serenade_GetTwoBeatPhase(void)
{
    return ((Serenade_GetSongTick() % (2 * SERENADE_TICKS_PER_BEAT)) * 256) / (2 * SERENADE_TICKS_PER_BEAT);
}

// Which of Serenade's five parts this turn plays (0-4). Each turn plays the next part, as if it's one song.
static u8 Serenade_GetPart(bool8 failed)
{
    s16 part;

    if (IsContest())
        return 0;
    if (!failed)
        part = gAnimDisableStructPtr->rolloutTimerStartValue - gAnimDisableStructPtr->rolloutTimer - 1;
    else if (gBattleMons[gBattleAnimAttacker].status2 & STATUS2_MULTIPLETURNS)
        part = gAnimDisableStructPtr->rolloutTimerStartValue - gAnimDisableStructPtr->rolloutTimer; // broke off before counting this turn
    else
        part = 0;

    if (part < 0)
        part = 0;
    if (part > 4)
        part = 4;
    return part;
}

#define tMaxPink  data[0]
#define tPink     data[1]
#define tStarted  data[2]
#define tSway     data[3] // 0 to SERENADE_SWAY_EASE, how far into the sway it's eased

#define SERENADE_SWAY_PIXELS 3
#define SERENADE_SWAY_EASE   16 // frames to ease the sway in and out

static void AnimTask_PlaySerenadePart_Step(u8);

// Plays this turn's part of Serenade's song (SE_M_SERENADE_1-5). While it plays, the target sways to it and
// flushes pink and back to flatter it, two beats at a time. Each turn of the song is pinker. The notes keep
// circling until it ends.
// arg 0: TRUE if the song failed this turn
void AnimTask_PlaySerenadePart(u8 taskId)
{
    sSerenadePart = Serenade_GetPart(gBattleAnimArgs[0]);
    sSerenadeSong = SE_M_SERENADE_1 + sSerenadePart;
    sSerenadeNotesDrop = FALSE;
    sSerenadeNotesBounce = (sSerenadePart == 4 && !gBattleAnimArgs[0]);
    sSerenadeFrames = 0;
    gTasks[taskId].tMaxPink = 5 + 2 * sSerenadePart; // up to Sweet Scent's 13 on the last turn
    gTasks[taskId].tPink = 0;
    gTasks[taskId].tStarted = FALSE;
    gTasks[taskId].tSway = 0;
    PlaySE12WithPanning(sSerenadeSong, BattleAnimAdjustPanning(SOUND_PAN_ATTACKER));
    gTasks[taskId].func = AnimTask_PlaySerenadePart_Step;
}

static void AnimTask_PlaySerenadePart_Step(u8 taskId)
{
    struct Task *task = &gTasks[taskId];
    u32 targetPal = GetBattlePalettesMask(FALSE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE);
    struct Sprite *target = &gSprites[gBattlerSpriteIds[gBattleAnimTarget]];
    u8 phase = Serenade_GetTwoBeatPhase();

    sSerenadeFrames++;
    // A song only shows as playing once the sound engine has run it, so wait to see it start (giving up after a
    // few frames in case sound is off) before taking silence to mean it's over
    if (IsSongPlaying(sSerenadeSong))
        task->tStarted = TRUE;
    if (!task->tStarted && sSerenadeFrames < 8 && !sSerenadeNotesDrop)
        return;

    if (IsSongPlaying(sSerenadeSong) && !sSerenadeNotesDrop)
    {
        // One full pink pulse and one sway to each side every two beats. The sway eases in.
        task->tPink = (task->tMaxPink * (256 - Cos(phase, 256))) / 512;
        if (task->tSway < SERENADE_SWAY_EASE)
            task->tSway++;
    }
    else if (task->tPink > 0 || task->tSway > 0)
    {
        // The song's over: ease the pink and the sway away
        if (task->tPink > 0)
            task->tPink--;
        if (task->tSway > 0)
            task->tSway--;
    }
    else
    {
        BlendPalettes(targetPal, 0, SERENADE_PINK);
        target->x2 = 0;
        DestroyAnimVisualTask(taskId);
        return;
    }
    BlendPalettes(targetPal, task->tPink, SERENADE_PINK);
    target->x2 = Sin(phase, SERENADE_SWAY_PIXELS) * task->tSway / SERENADE_SWAY_EASE;
}

#undef tMaxPink
#undef tPink
#undef tStarted
#undef tSway

// Puts the song off key, then cuts it off with Yawn's sound and drops the notes. Start with AnimTask_PlaySerenadePart.
// arg 0: frames into the song before it goes off key
// arg 1: how far off key, in 256ths of a semitone
// arg 2: frames it stays off key before cutting off
void AnimTask_SerenadeSourNote(u8 taskId)
{
    struct Task *task = &gTasks[taskId];

    task->data[0]++;
    if (task->data[0] == gBattleAnimArgs[0])
    {
        m4aMPlayPitchControl(&gMPlayInfo_SE1, TRACKS_ALL, gBattleAnimArgs[1]);
        m4aMPlayPitchControl(&gMPlayInfo_SE2, TRACKS_ALL, gBattleAnimArgs[1]);
    }
    else if (task->data[0] >= gBattleAnimArgs[0] + gBattleAnimArgs[2])
    {
        sSerenadeNotesDrop = TRUE;
        m4aMPlayPitchControl(&gMPlayInfo_SE1, TRACKS_ALL, 0);
        m4aMPlayPitchControl(&gMPlayInfo_SE2, TRACKS_ALL, 0);
        m4aMPlayStop(&gMPlayInfo_SE1);
        m4aMPlayStop(&gMPlayInfo_SE2);
        PlaySE12WithPanning(SE_M_YAWN, BattleAnimAdjustPanning(SOUND_PAN_ATTACKER));
        DestroyAnimVisualTask(taskId);
    }
}

#define sState      data[0]
#define sBlend      data[1] // color index (low byte) and frames on that color (high byte)
#define sTimer      data[2]
#define sAngle      data[3]
#define sTravelTime data[4]
#define sStart      data[5] // where it set off from: x (low byte), y (high byte)
#define sCenterX    data[6] // middle of the ring, worked out once so the notes stay cheap to move
#define sCenterY    data[7]

enum {
    SERENADE_NOTE_TRAVEL,
    SERENADE_NOTE_ORBIT,
    SERENADE_NOTE_FADE,
    SERENADE_NOTE_DROP,
};

static void AnimSerenadeNote_Step(struct Sprite *);

// Its place on the ring around the target, at its current angle
static void SerenadeNote_GetOrbitPos(struct Sprite *sprite, s16 *x, s16 *y)
{
    *x = sprite->sCenterX + Cos(sprite->sAngle & 0xFF, SERENADE_ORBIT_RADIUS_X);
    *y = sprite->sCenterY + Sin(sprite->sAngle & 0xFF, SERENADE_ORBIT_RADIUS_Y);
}

// Moves the note to its place on the ring, in front of or behind the target to match
static void SerenadeNote_SetOrbitPos(struct Sprite *sprite)
{
    s16 x, y;

    SerenadeNote_GetOrbitPos(sprite, &x, &y);
    sprite->x = x;
    sprite->y = y;
    sprite->subpriority = gSprites[gBattlerSpriteIds[gBattleAnimTarget]].subpriority + (y < sprite->sCenterY ? 1 : -1);
    // On the last part, hop on every beat, landing on the beat
    if (sSerenadeNotesBounce)
        sprite->y2 = -Sin(Serenade_GetBeatPhase(), SERENADE_BOUNCE_HEIGHT);
}

// A music note that travels from the attacker to the target, then circles it for as long as Serenade's song plays.
// If the song fails, the notes drop. Used by MOVE_SERENADE.
// arg 0: note shape (gMusicNotesAnimTable index)
// arg 1: starting color (gParticlesColorBlendTable index)
// arg 2: angle where it joins the ring, 0-255
// arg 3: frames to reach the ring
static void AnimSerenadeNote(struct Sprite *sprite)
{
    u8 index;
    s16 startX = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X_2);
    s16 startY = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y_PIC_OFFSET);

    StartSpriteAnim(sprite, gBattleAnimArgs[0]);
    if ((index = IndexOfSpritePaletteTag(gParticlesColorBlendTable[gBattleAnimArgs[1]][0])) != 0xFF)
        sprite->oam.paletteNum = index;
    sprite->oam.priority = GetBattlerSpriteBGPriority(gBattleAnimTarget);
    sprite->sBlend = gBattleAnimArgs[1];
    sprite->sAngle = gBattleAnimArgs[2];
    sprite->sTravelTime = gBattleAnimArgs[3];
    sprite->sTimer = 0;
    sprite->sStart = (startX & 0xFF) | ((startY & 0xFF) << 8);
    sprite->sCenterX = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_X_2);
    sprite->sCenterY = GetBattlerSpriteCoord(gBattleAnimTarget, BATTLER_COORD_Y_PIC_OFFSET);
    sprite->x = startX;
    sprite->y = startY;
    sprite->sState = SERENADE_NOTE_TRAVEL;
    sprite->callback = AnimSerenadeNote_Step;
}

static void AnimSerenadeNote_Step(struct Sprite *sprite)
{
    u8 index, color, colorTimer;
    s16 startX, startY, endX, endY;

    // Cycle through the rainbow colors
    color = sprite->sBlend & 0xFF;
    colorTimer = (u16)sprite->sBlend >> 8;
    if (++colorTimer > SERENADE_BLEND_CYCLE)
    {
        colorTimer = 0;
        if (++color > ARRAY_COUNT(gParticlesColorBlendTable) - 1)
            color = 0;
        index = IndexOfSpritePaletteTag(gParticlesColorBlendTable[color][0]);
        if (index != 0xFF)
            sprite->oam.paletteNum = index;
    }
    sprite->sBlend = color | (colorTimer << 8);

    switch (sprite->sState)
    {
    case SERENADE_NOTE_TRAVEL:
        // Glide toward its spot on the ring, swaying once on the way
        sprite->sTimer++;
        startX = sprite->sStart & 0xFF;
        startY = (u16)sprite->sStart >> 8;
        SerenadeNote_GetOrbitPos(sprite, &endX, &endY);
        sprite->x = startX + (endX - startX) * sprite->sTimer / sprite->sTravelTime;
        sprite->y = startY + (endY - startY) * sprite->sTimer / sprite->sTravelTime;
        sprite->y2 = Sin((sprite->sTimer * 256 / sprite->sTravelTime) & 0xFF, 10);
        if (sprite->sTimer >= sprite->sTravelTime)
        {
            sprite->y2 = 0;
            sprite->sTimer = 0;
            sprite->sState = SERENADE_NOTE_ORBIT;
            SerenadeNote_SetOrbitPos(sprite);
        }
        break;
    case SERENADE_NOTE_ORBIT:
        if (sSerenadeNotesDrop)
        {
            sprite->sTimer = 0;
            sprite->sState = SERENADE_NOTE_DROP;
            break;
        }
        if (!IsSongPlaying(sSerenadeSong))
        {
            sprite->sTimer = 0;
            sprite->sState = SERENADE_NOTE_FADE;
            break;
        }
        sprite->sAngle += SERENADE_ORBIT_SPEED;
        SerenadeNote_SetOrbitPos(sprite);
        break;
    case SERENADE_NOTE_FADE:
        // The song's over: keep circling while flickering out
        sprite->sAngle += SERENADE_ORBIT_SPEED;
        SerenadeNote_SetOrbitPos(sprite);
        sprite->invisible = (++sprite->sTimer & 2) != 0;
        if (sprite->sTimer > 16)
            DestroyAnimSprite(sprite);
        break;
    case SERENADE_NOTE_DROP:
        // A little hop, then it falls
        sprite->sTimer++;
        sprite->y2 = (sprite->sTimer * sprite->sTimer) / 8 - 2 * sprite->sTimer;
        if (sprite->y + sprite->y2 > 112 || sprite->sTimer > 50)
            DestroyAnimSprite(sprite);
        break;
    }
}

const struct SpriteTemplate gSerenadeNoteSpriteTemplate =
{
    .tileTag = ANIM_TAG_MUSIC_NOTES,
    .paletteTag = ANIM_TAG_MUSIC_NOTES,
    .oam = &gOamData_AffineDouble_ObjNormal_16x16,
    .anims = gMusicNotesAnimTable,
    .images = NULL,
    .affineAnims = gMusicNotesAffineAnimTable,
    .callback = AnimSerenadeNote,
};

#undef sState
#undef sBlend
#undef sTimer
#undef sAngle
#undef sTravelTime
#undef sStart
#undef sCenterX
#undef sCenterY

static void AnimFlyingMusicNotes(struct Sprite *sprite)
{
    if (GetBattlerSide(gBattleAnimAttacker) == B_SIDE_OPPONENT)
        gBattleAnimArgs[1] *= -1;

    sprite->x = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X_2) + gBattleAnimArgs[1];
    sprite->y = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y_PIC_OFFSET) + gBattleAnimArgs[2];
    StartSpriteAnim(sprite, gBattleAnimArgs[0]);
    sprite->data[2] = 0;
    sprite->data[3] = 0;
    sprite->data[4] = sprite->x << 4;
    sprite->data[5] = sprite->y << 4;
    sprite->data[6] = (gBattleAnimArgs[1] << 4) / 5;
    sprite->data[7] = (gBattleAnimArgs[2] << 7) / 5;
    sprite->callback = AnimFlyingMusicNotes_Step;
}

static void AnimFlyingMusicNotes_Step(struct Sprite *sprite)
{
    sprite->data[4] += sprite->data[6];
    sprite->data[5] += sprite->data[7];
    sprite->x = sprite->data[4] >> 4;
    sprite->y = sprite->data[5] >> 4;
    if (sprite->data[0] > 5 && sprite->data[3] == 0)
    {
        sprite->data[2] = (sprite->data[2] + 16) & 0xFF;
        sprite->x2 = Cos(sprite->data[2], 18);
        sprite->y2 = Sin(sprite->data[2], 18);
        if (sprite->data[2] == 0)
            sprite->data[3] = 1;
    }

    if (++sprite->data[0] == 48)
        DestroySpriteAndMatrix(sprite);
}

static void AnimBellyDrumHand(struct Sprite *sprite)
{
    s16 a;
    if (gBattleAnimArgs[0] == 1)
    {
        sprite->oam.matrixNum = ST_OAM_HFLIP;
        a = 16;
    }
    else
    {
        a = -16;
    }

    sprite->x = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_X_2) + a;
    sprite->y = GetBattlerSpriteCoord(gBattleAnimAttacker, BATTLER_COORD_Y_PIC_OFFSET) + 8;
    sprite->data[0] = 8;
    sprite->callback = WaitAnimForDuration;
    StoreSpriteCallbackInData6(sprite, DestroyAnimSprite);
}

void AnimSlowFlyingMusicNotes(struct Sprite *sprite)
{
    s16 xDiff;
    u8 index;
    SetSpriteCoordsToAnimAttackerCoords(sprite);
    sprite->y += 8;
    StartSpriteAnim(sprite, gBattleAnimArgs[1]);
    index = IndexOfSpritePaletteTag(gParticlesColorBlendTable[gBattleAnimArgs[2]][0]);
    if (index != 0xFF)
        sprite->oam.paletteNum = index;

    xDiff = (gBattleAnimArgs[0] == 0) ? -32 : 32;
    sprite->data[0] = 40;
    sprite->data[1] = sprite->x;
    sprite->data[2] = xDiff + sprite->data[1];
    sprite->data[3] = sprite->y;
    sprite->data[4] = sprite->data[3] - 40;
    InitAnimLinearTranslation(sprite);
    sprite->data[5] = gBattleAnimArgs[3];
    sprite->callback = AnimSlowFlyingMusicNotes_Step;
}

static void AnimSlowFlyingMusicNotes_Step(struct Sprite *sprite)
{
    if (AnimTranslateLinear(sprite) == 0)
    {
        s16 xDiff;
        xDiff = Sin(sprite->data[5], 8);
        if (sprite->x2 < 0)
            xDiff = -xDiff;

        sprite->x2 += xDiff;
        sprite->y2 += Sin(sprite->data[5], 4);
        sprite->data[5] = (sprite->data[5] + 8) & 0xFF;
    }
    else
    {
        DestroyAnimSprite(sprite);
    }
}

void SetSpriteNextToMonHead(u8 battler, struct Sprite *sprite)
{
    if (GetBattlerSide(battler) == B_SIDE_PLAYER)
        sprite->x = GetBattlerSpriteCoordAttr(battler, BATTLER_COORD_ATTR_RIGHT) + 8;
    else
        sprite->x = GetBattlerSpriteCoordAttr(battler, BATTLER_COORD_ATTR_LEFT) - 8;

    sprite->y = GetBattlerSpriteCoord(battler, BATTLER_COORD_Y_PIC_OFFSET) - (s16)GetBattlerSpriteCoordAttr(battler, BATTLER_COORD_ATTR_HEIGHT) / 4;
}

static void AnimThoughtBubble(struct Sprite *sprite)
{
    u8 animNum;
    u8 battler;
    if (gBattleAnimArgs[0] == 0)
        battler = gBattleAnimAttacker;
    else
        battler = gBattleAnimTarget;

    SetSpriteNextToMonHead(battler, sprite);
    animNum = (GetBattlerSide(battler) == B_SIDE_PLAYER) ? 0 : 1;
    sprite->data[0] = gBattleAnimArgs[1];
    sprite->data[1] = animNum + 2;
    StartSpriteAnim(sprite, animNum);
    StoreSpriteCallbackInData6(sprite, AnimThoughtBubble_Step);
    sprite->callback = RunStoredCallbackWhenAnimEnds;
}

static void AnimThoughtBubble_Step(struct Sprite *sprite)
{
    if (--sprite->data[0] == 0)
    {
        StoreSpriteCallbackInData6(sprite, DestroyAnimSprite);
        StartSpriteAnim(sprite, sprite->data[1]);
        sprite->callback = RunStoredCallbackWhenAnimEnds;
    }
}

static void AnimMetronomeFinger(struct Sprite *sprite)
{
    u8 battler;
    if (gBattleAnimArgs[0] == 0)
        battler = gBattleAnimAttacker;
    else
        battler = gBattleAnimTarget;

    SetSpriteNextToMonHead(battler, sprite);
    sprite->data[0] = 0;
    StoreSpriteCallbackInData6(sprite, AnimMetronomeFinger_Step);
    sprite->callback = RunStoredCallbackWhenAffineAnimEnds;
}

static void AnimMetronomeFinger_Step(struct Sprite *sprite)
{
    if (++sprite->data[0] > 16)
    {
        StartSpriteAffineAnim(sprite, 1);
        StoreSpriteCallbackInData6(sprite, DestroySpriteAndMatrix);
        sprite->callback = RunStoredCallbackWhenAffineAnimEnds;
    }
}

static void AnimFollowMeFinger(struct Sprite *sprite)
{
    u8 battler;
    if (gBattleAnimArgs[0] == 0)
        battler = gBattleAnimAttacker;
    else
        battler = gBattleAnimTarget;

    sprite->x = GetBattlerSpriteCoord(battler, BATTLER_COORD_X);
    sprite->y = GetBattlerSpriteCoordAttr(battler, BATTLER_COORD_ATTR_TOP);
    if (sprite->y <= 9)
        sprite->y = 10;

    sprite->data[0] = 1;
    sprite->data[1] = 0;
    sprite->data[2] = sprite->subpriority;
    sprite->data[3] = sprite->subpriority + 4;
    sprite->data[4] = 0;
    StoreSpriteCallbackInData6(sprite, AnimFollowMeFinger_Step1);
    sprite->callback = RunStoredCallbackWhenAffineAnimEnds;
}

static void AnimFollowMeFinger_Step1(struct Sprite *sprite)
{
    if (++sprite->data[4] > 12)
        sprite->callback = AnimFollowMeFinger_Step2;
}

static void AnimFollowMeFinger_Step2(struct Sprite *sprite)
{
    s16 x1, x2;

    sprite->data[1] += 4;
    if (sprite->data[1] > 254)
    {
        if (--sprite->data[0] == 0)
        {
            sprite->x2 = 0;
            sprite->callback = AnimMetronomeFinger_Step;
            return;
        }
        else
        {
            sprite->data[1] &= 0xFF;
        }
    }

    if (sprite->data[1] > 0x4F)
        sprite->subpriority = sprite->data[3];

    if (sprite->data[1] > 0x9F)
        sprite->subpriority = sprite->data[2];

    x1 = gSineTable[sprite->data[1]];
    x2 = x1 >> 3;
    sprite->x2 = (x1 >> 3) + (x2 >> 1);
}

static void AnimTauntFinger(struct Sprite *sprite)
{
    u8 battler;
    if (gBattleAnimArgs[0] == 0)
        battler = gBattleAnimAttacker;
    else
        battler = gBattleAnimTarget;

    SetSpriteNextToMonHead(battler, sprite);
    if (GetBattlerSide(battler) == B_SIDE_PLAYER)
    {
        StartSpriteAnim(sprite, 0);
        sprite->data[0] = 2;
    }
    else
    {
        StartSpriteAnim(sprite, 1);
        sprite->data[0] = 3;
    }

    sprite->callback = AnimTauntFinger_Step1;
}

static void AnimTauntFinger_Step1(struct Sprite *sprite)
{
    if (++sprite->data[1] > 10)
    {
        sprite->data[1] = 0;
        StartSpriteAnim(sprite, sprite->data[0]);
        StoreSpriteCallbackInData6(sprite, AnimTauntFinger_Step2);
        sprite->callback = RunStoredCallbackWhenAnimEnds;
    }
}

static void AnimTauntFinger_Step2(struct Sprite *sprite)
{
    if (++sprite->data[1] > 5)
        DestroyAnimSprite(sprite);
}
