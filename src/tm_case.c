#include "global.h"
#include "malloc.h"
#include "bg.h"
#include "decompress.h"
#include "gpu_regs.h"
#include "graphics.h"
#include "task.h"
#include "text_window.h"
#include "menu.h"
#include "menu_helpers.h"
#include "list_menu.h"
#include "money.h"
#include "item.h"
#include "item_menu.h"
#include "link.h"
#include "palette.h"
#include "party_menu.h"
#include "pokemon.h"
#include "data.h"
#include "scanline_effect.h"
#include "sound.h"
#include "sprite.h"
#include "string_util.h"
#include "strings.h"
#include "text.h"
#include "tm_case.h"
#include "window.h"
#include "constants/items.h"
#include "constants/songs.h"
#include "constants/rgb.h"

// Ported from pokefirered's TM Case

#define TAG_TM_DISC 400

// HMs come first in the case, followed by the TMs
#define NUM_TM_CASE_DISCS (ITEM_HM08 - ITEM_TM01 + 1)

enum {
    WIN_LIST,
    WIN_DESCRIPTION,
    WIN_SELECTED_MSG,
    WIN_TITLE,
    WIN_MOVE_INFO_LABELS,
    WIN_MOVE_INFO,
    WIN_MESSAGE,
    WIN_SELL_QUANTITY,
    WIN_MONEY,
    WIN_COUNT
};

enum {
    COLORID_LIST,
    COLORID_LIST_SELECTED,
    COLORID_CURSOR_SELECTED,
    COLORID_MOVE_INFO,
    COLORID_SELECTED_MSG,
};

#define tListTaskId   data[0]
#define tListPosition data[1]
#define tQuantity     data[2]
#define tItemCount    data[8]

// Kept between openings, so the case reopens where it was left
struct TMCaseStaticResources
{
    MainCallback exitCallback;
    u8 mode;
    bool8 closeWithSelect;
    u16 selectedRow;
    u16 scrollOffset;
};

// Allocated while the case is open
struct TMCaseDynamicResources
{
    MainCallback nextScreenCallback;
    u8 discSpriteId;
    u8 maxTMsShown;
    u8 numTMs;
    u8 contextMenuWindowId;
    u8 scrollIndicatorArrowPairId;
    u16 sellQuantityArrowPos; // Fixed position, so both quantity arrows always show
    const u8 *menuActionIndices;
    u8 numMenuActions;
    s16 seqId;
};

static EWRAM_DATA struct TMCaseStaticResources sTMCaseStaticResources = {0};
static EWRAM_DATA struct TMCaseDynamicResources *sTMCaseDynamicResources = NULL;
static EWRAM_DATA void *sTilemapBuffer = NULL;
static EWRAM_DATA struct ListMenuItem *sListMenuItemsBuffer = NULL;
static EWRAM_DATA u8 (*sListMenuStringsBuffer)[29] = NULL;
static EWRAM_DATA u16 *sDiscPaletteBuffer = NULL;

static void CB2_SetUpTMCaseUI_Blocking(void);
static bool8 DoSetUpTMCaseUI(void);
static void ResetBufferPointers_NoFree(void);
static void LoadBGTemplates(void);
static bool8 HandleLoadTMCaseGraphicsAndPalettes(void);
static void CreateTMCaseListMenuBuffers(void);
static void InitTMCaseListMenuItems(void);
static void GetTMNumberAndMoveString(u8 *dest, u16 itemId);
static void TMCase_MoveCursorFunc(s32 itemIndex, bool8 onInit, struct ListMenu *list);
static void TMCase_ItemPrintFunc(u8 windowId, u32 itemIndex, u8 y);
static void TMCase_MoveCursor_UpdatePrintedDescription(s32 itemIndex);
static void PrintListMenuCursorAt_WithColorIdx(u8 y, u8 colorIdx);
static void CreateTMCaseScrollIndicatorArrowPair(void);
static void TMCaseSetup_GetTMCount(void);
static void TMCaseSetup_InitListMenuPositions(void);
static void TMCaseSetup_UpdateVisualMenuOffset(void);
static void Task_FadeOutAndCloseTMCase(u8 taskId);
static void Task_TMCaseMain(u8 taskId);
static void Task_SelectTMAction(u8 taskId);
static void Task_SelectTMAction_FromSellMenu(u8 taskId);
static void Task_AskConfirmSaleWithAmount(u8 taskId);
static void Task_PlaceYesNoBox(u8 taskId);
static void Task_SaleOfTMsCanceled(u8 taskId);
static void Task_InitQuantitySelectUI(u8 taskId);
static void SellTM_PrintQuantityAndSalePrice(s16 quantity, s32 amount);
static void Task_QuantitySelect_HandleInput(u8 taskId);
static void Task_PrintSaleConfirmedText(u8 taskId);
static void Task_DoSaleOfTMs(u8 taskId);
static void Task_AfterSale_ReturnToList(u8 taskId);
static void HandlePrintMoneyOnHand(void);
static void Task_TMContextMenu_HandleInput(u8 taskId);
static void TMHMContextMenuAction_Use(u8 taskId);
static void TMHMContextMenuAction_Exit(u8 taskId);
static void PrintError_ThereIsNoPokemon(u8 taskId);
static void Task_WaitButtonAfterErrorPrint(u8 taskId);
static void Subtask_CloseContextMenuAndReturnToMain(u8 taskId);
static void InitWindowTemplatesAndPals(void);
static void AddTextPrinterParameterized_ColorByIndex(u8 windowId, u8 fontId, const u8 *str, u8 x, u8 y, u8 letterSpacing, u8 lineSpacing, s8 speed, u8 colorIdx);
static void TMCase_DrawWindowBorder(u8 windowId);
static void TMCase_PrintMessageWithFollowupTask(u8 taskId, u8 fontId, const u8 *str, TaskFunc func);
static void PrintTitle(void);
static void DrawMoveInfoUIMarkers(void);
static void TMCase_MoveCursor_UpdatePrintedTMInfo(u16 itemId);
static void PlaceHMTileInWindow(u8 windowId, u8 x, u8 y);
static u8 AddTMContextMenu(u8 *windowId);
static void RemoveTMContextMenu(u8 *windowId);
static u8 CreateDiscSprite(u16 itemId);
static void SetDiscSpriteAnim(struct Sprite *sprite, u16 itemId);
static void TintDiscSpriteByType(u8 type);
static void UpdateDiscSpritePosition(struct Sprite *sprite, u16 itemId);
static void InitSelectedDiscSpriteData(u8 spriteId, u16 itemId);
static void SpriteCB_SwapDiscInCase(struct Sprite *sprite);
static void LoadDiscTypePalettes(void);

static const u32 sTMCase_Tiles[]               = INCBIN_U32("graphics/tm_case/tiles.4bpp.lz");
static const u32 sTMCase_CaseTilemap[]         = INCBIN_U32("graphics/tm_case/case_tilemap.bin.lz");
static const u32 sTMCase_MenuTilemap[]         = INCBIN_U32("graphics/tm_case/menu_tilemap.bin.lz");
static const u32 sTMCase_BgMale_Pal[]          = INCBIN_U32("graphics/tm_case/bg_male.gbapal.lz");
static const u32 sTMCase_BgFemale_Pal[]        = INCBIN_U32("graphics/tm_case/bg_female.gbapal.lz");
static const u32 sTMCase_Disc_Gfx[]            = INCBIN_U32("graphics/tm_case/disc.4bpp.lz");
static const u32 sTMCase_DiscTypes_Pal[]       = INCBIN_U32("graphics/tm_case/disc_types.gbapal.lz");
static const u32 sTMCase_DiscTypeDragon_Pal[]  = INCBIN_U32("graphics/tm_case/disc_type_dragon.gbapal.lz");
static const u8 sTMCase_HMIcon_Gfx[]           = INCBIN_U8("graphics/tm_case/hm_icon.4bpp");
static const u16 sTMCase_TextWindow_Pal[]      = INCBIN_U16("graphics/tm_case/text_window.gbapal");

static const u8 sText_TMCase[] = _("TM CASE");
static const u8 sText_Close[] = _("CLOSE");
static const u8 sText_TMCaseWillBePutAway[] = _("The TM CASE will be\nput away.");
static const u8 sText_FontSmall[] = _("{FONT_SMALL}");
static const u8 sText_FontNormal[] = _("{FONT_NORMAL}");
static const u8 sText_ClearTo18[] = _("{CLEAR_TO 18}");
static const u8 sText_SingleSpace[] = _(" ");

static const struct BgTemplate sBGTemplates[] = {
    {
        .bg = 0,
        .charBaseIndex = 0,
        .mapBaseIndex = 31,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 1,
        .baseTile = 0x000
    }, {
        .bg = 1,
        .charBaseIndex = 0,
        .mapBaseIndex = 30,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 0,
        .baseTile = 0x000
    }, {
        .bg = 2,
        .charBaseIndex = 0,
        .mapBaseIndex = 29,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 2,
        .baseTile = 0x000
    }
};

static const struct MenuAction sMenuActions_UseExit[] = {
    {gMenuText_Use, {TMHMContextMenuAction_Use}},
    {gText_Cancel,  {TMHMContextMenuAction_Exit}},
};

static const u8 sMenuActionIndices_Field[] = {0, 1};

static ALIGNED(4) const u16 sPal3Override[] = {RGB(8, 8, 8), RGB(30, 16, 6)};

static const u8 sTMCaseTextColors[][3] = {
    [COLORID_LIST]            = {0, 1, 2},
    [COLORID_LIST_SELECTED]   = {0, 2, 3},
    [COLORID_CURSOR_SELECTED] = {0, 3, 6},
    [COLORID_MOVE_INFO]       = {0, 14, 10},
    [COLORID_SELECTED_MSG]    = {TEXT_COLOR_TRANSPARENT, TEXT_COLOR_DARK_GRAY, TEXT_COLOR_LIGHT_GRAY},
};

static const struct WindowTemplate sWindowTemplates[] = {
    [WIN_LIST]             = {0x00, 0x0a, 0x01, 0x13, 0x0a, 0x0f, 0x0081},
    [WIN_DESCRIPTION]      = {0x00, 0x0c, 0x0c, 0x12, 0x08, 0x0a, 0x013f},
    [WIN_SELECTED_MSG]     = {0x01, 0x05, 0x0f, 0x0f, 0x04, 0x0f, 0x01f9},
    [WIN_TITLE]            = {0x00, 0x00, 0x01, 0x0a, 0x02, 0x0f, 0x0235},
    [WIN_MOVE_INFO_LABELS] = {0x00, 0x01, 0x0d, 0x05, 0x06, 0x0c, 0x0249},
    [WIN_MOVE_INFO]        = {0x00, 0x07, 0x0d, 0x05, 0x06, 0x0c, 0x0267},
    [WIN_MESSAGE]          = {0x01, 0x02, 0x0f, 0x1a, 0x04, 0x0b, 0x0285},
    [WIN_SELL_QUANTITY]    = {0x01, 0x11, 0x09, 0x0c, 0x04, 0x0f, 0x02ed},
    [WIN_MONEY]            = {0x01, 0x01, 0x01, 0x08, 0x03, 0x0d, 0x031d},
    [WIN_COUNT]            = DUMMY_WIN_TEMPLATE
};

static const struct WindowTemplate sYesNoWindowTemplate = {0x01, 0x15, 0x09, 0x06, 0x04, 0x0f, 0x0335};

static const struct WindowTemplate sTMContextWindowTemplate = {0x01, 0x16, 0x0f, 0x07, 0x04, 0x0f, 0x01cf};

static const struct OamData sDiscOamData = {
    .size = 2,
    .priority = 2
};

static const union AnimCmd sDiscAnim_TM[] = {
    ANIMCMD_FRAME(0, 0),
    ANIMCMD_END
};

static const union AnimCmd sDiscAnim_HM[] = {
    ANIMCMD_FRAME(16, 0),
    ANIMCMD_END
};

static const union AnimCmd *const sDiscAnims[] = {
    sDiscAnim_TM,
    sDiscAnim_HM
};

static const struct CompressedSpriteSheet sDiscSpriteSheet = {
    sTMCase_Disc_Gfx,
    0x400,
    TAG_TM_DISC
};

static const struct SpriteTemplate sDiscSpriteTemplate = {
    TAG_TM_DISC,
    TAG_TM_DISC,
    &sDiscOamData,
    sDiscAnims,
    NULL,
    gDummySpriteAffineAnimTable,
    SpriteCallbackDummy
};

// Offsets into sDiscPaletteBuffer. Types without a disc palette use Normal's.
static const u16 sDiscPaletteOffsetByType[NUMBER_OF_MON_TYPES] = {
    [TYPE_NORMAL]   = 0x000,
    [TYPE_FIRE]     = 0x010,
    [TYPE_WATER]    = 0x020,
    [TYPE_GRASS]    = 0x030,
    [TYPE_ELECTRIC] = 0x040,
    [TYPE_ROCK]     = 0x050,
    [TYPE_GROUND]   = 0x060,
    [TYPE_ICE]      = 0x070,
    [TYPE_FLYING]   = 0x080,
    [TYPE_FIGHTING] = 0x090,
    [TYPE_GHOST]    = 0x0a0,
    [TYPE_BUG]      = 0x0b0,
    [TYPE_POISON]   = 0x0c0,
    [TYPE_PSYCHIC]  = 0x0d0,
    [TYPE_STEEL]    = 0x0e0,
    [TYPE_DARK]     = 0x0f0,
    [TYPE_DRAGON]   = 0x100
};

void OpenTMCase(u8 mode, MainCallback exitCallback, bool8 closeWithSelect)
{
    sTMCaseStaticResources.mode = mode;
    sTMCaseStaticResources.exitCallback = exitCallback;
    sTMCaseStaticResources.closeWithSelect = closeWithSelect;
    CB2_ReturnToTMCase();
}

void CB2_ReturnToTMCase(void)
{
    ResetBufferPointers_NoFree();
    sTMCaseDynamicResources = Alloc(sizeof(struct TMCaseDynamicResources));
    sTMCaseDynamicResources->nextScreenCallback = NULL;
    sTMCaseDynamicResources->scrollIndicatorArrowPairId = TASK_NONE;
    sTMCaseDynamicResources->contextMenuWindowId = WINDOW_NONE;
    gTextFlags.autoScroll = FALSE;
    SetMainCallback2(CB2_SetUpTMCaseUI_Blocking);
}

static void CB2_Idle(void)
{
    RunTasks();
    AnimateSprites();
    BuildOamBuffer();
    DoScheduledBgTilemapCopiesToVram();
    UpdatePaletteFade();
}

static void VBlankCB_Idle(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static void CB2_SetUpTMCaseUI_Blocking(void)
{
    while (1)
    {
        if (MenuHelpers_ShouldWaitForLinkRecv() == TRUE)
            break;
        if (DoSetUpTMCaseUI() == TRUE)
            break;
        if (MenuHelpers_IsLinkActive() == TRUE)
            break;
    }
}

static bool8 DoSetUpTMCaseUI(void)
{
    u8 taskId;

    switch (gMain.state)
    {
    case 0:
        SetVBlankHBlankCallbacksToNull();
        ClearScheduledBgCopiesToVram();
        gMain.state++;
        break;
    case 1:
        ScanlineEffect_Stop();
        gMain.state++;
        break;
    case 2:
        FreeAllSpritePalettes();
        gMain.state++;
        break;
    case 3:
        ResetPaletteFade();
        gMain.state++;
        break;
    case 4:
        ResetSpriteData();
        gMain.state++;
        break;
    case 5:
        ResetTasks();
        gMain.state++;
        break;
    case 6:
        LoadBGTemplates();
        sTMCaseDynamicResources->seqId = 0;
        gMain.state++;
        break;
    case 7:
        InitWindowTemplatesAndPals();
        gMain.state++;
        break;
    case 8:
        if (HandleLoadTMCaseGraphicsAndPalettes())
            gMain.state++;
        break;
    case 9:
        CompactItemsInBagPocket(&gBagPockets[TMHM_POCKET]);
        SortBerriesOrTMHMs(&gBagPockets[TMHM_POCKET]);
        gMain.state++;
        break;
    case 10:
        TMCaseSetup_GetTMCount();
        TMCaseSetup_InitListMenuPositions();
        TMCaseSetup_UpdateVisualMenuOffset();
        gMain.state++;
        break;
    case 11:
        DrawMoveInfoUIMarkers();
        gMain.state++;
        break;
    case 12:
        CreateTMCaseListMenuBuffers();
        InitTMCaseListMenuItems();
        gMain.state++;
        break;
    case 13:
        PrintTitle();
        gMain.state++;
        break;
    case 14:
        taskId = CreateTask(Task_TMCaseMain, 0);
        gTasks[taskId].tListTaskId = ListMenuInit(&gMultiuseListMenuTemplate, sTMCaseStaticResources.scrollOffset, sTMCaseStaticResources.selectedRow);
        gMain.state++;
        break;
    case 15:
        CreateTMCaseScrollIndicatorArrowPair();
        gMain.state++;
        break;
    case 16:
        sTMCaseDynamicResources->discSpriteId = CreateDiscSprite(BagGetItemIdByPocketPosition(POCKET_TM_HM, sTMCaseStaticResources.scrollOffset + sTMCaseStaticResources.selectedRow));
        gMain.state++;
        break;
    case 17:
        BlendPalettes(PALETTES_ALL, 16, 0);
        gMain.state++;
        break;
    case 18:
        BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);
        gMain.state++;
        break;
    default:
        SetVBlankCallback(VBlankCB_Idle);
        SetMainCallback2(CB2_Idle);
        return TRUE;
    }

    return FALSE;
}

static void ResetBufferPointers_NoFree(void)
{
    sTMCaseDynamicResources = NULL;
    sTilemapBuffer = NULL;
    sListMenuItemsBuffer = NULL;
    sListMenuStringsBuffer = NULL;
    sDiscPaletteBuffer = NULL;
}

static void LoadBGTemplates(void)
{
    ResetVramOamAndBgCntRegs();
    ResetAllBgsCoordinates();
    sTilemapBuffer = AllocZeroed(BG_SCREEN_SIZE);
    ResetBgsAndClearDma3BusyFlags(0);
    InitBgsFromTemplates(0, sBGTemplates, ARRAY_COUNT(sBGTemplates));
    SetBgTilemapBuffer(2, sTilemapBuffer);
    ScheduleBgCopyTilemapToVram(1);
    ScheduleBgCopyTilemapToVram(2);
    SetGpuReg(REG_OFFSET_DISPCNT, DISPCNT_OBJ_1D_MAP | DISPCNT_OBJ_ON);
    SetGpuReg(REG_OFFSET_BLDCNT, 0);
    ShowBg(0);
    ShowBg(1);
    ShowBg(2);
}

static bool8 HandleLoadTMCaseGraphicsAndPalettes(void)
{
    switch (sTMCaseDynamicResources->seqId)
    {
    case 0:
        ResetTempTileDataBuffers();
        DecompressAndCopyTileDataToVram(1, sTMCase_Tiles, 0, 0, 0);
        sTMCaseDynamicResources->seqId++;
        break;
    case 1:
        if (FreeTempTileDataBuffersIfPossible() != TRUE)
        {
            LZDecompressWram(sTMCase_CaseTilemap, sTilemapBuffer);
            sTMCaseDynamicResources->seqId++;
        }
        break;
    case 2:
        LZDecompressWram(sTMCase_MenuTilemap, GetBgTilemapBuffer(1));
        sTMCaseDynamicResources->seqId++;
        break;
    case 3:
        if (gSaveBlock2Ptr->playerGender == MALE)
            LoadCompressedPalette(sTMCase_BgMale_Pal, BG_PLTT_ID(0), 4 * PLTT_SIZE_4BPP);
        else
            LoadCompressedPalette(sTMCase_BgFemale_Pal, BG_PLTT_ID(0), 4 * PLTT_SIZE_4BPP);
        sTMCaseDynamicResources->seqId++;
        break;
    case 4:
        LoadCompressedSpriteSheet(&sDiscSpriteSheet);
        sTMCaseDynamicResources->seqId++;
        break;
    default:
        LoadDiscTypePalettes();
        sTMCaseDynamicResources->seqId = 0;
        return TRUE;
    }

    return FALSE;
}

static void CreateTMCaseListMenuBuffers(void)
{
    struct BagPocket *pocket = &gBagPockets[POCKET_TM_HM - 1];
    sListMenuItemsBuffer = Alloc((pocket->capacity + 1) * sizeof(struct ListMenuItem));
    sListMenuStringsBuffer = Alloc(sTMCaseDynamicResources->numTMs * 29);
}

static void InitTMCaseListMenuItems(void)
{
    struct BagPocket *pocket = &gBagPockets[POCKET_TM_HM - 1];
    u16 i;

    for (i = 0; i < sTMCaseDynamicResources->numTMs; i++)
    {
        GetTMNumberAndMoveString(sListMenuStringsBuffer[i], pocket->itemSlots[i].itemId);
        sListMenuItemsBuffer[i].name = sListMenuStringsBuffer[i];
        sListMenuItemsBuffer[i].id = i;
    }
    sListMenuItemsBuffer[i].name = sText_Close;
    sListMenuItemsBuffer[i].id = LIST_CANCEL;
    gMultiuseListMenuTemplate.items = sListMenuItemsBuffer;
    gMultiuseListMenuTemplate.totalItems = sTMCaseDynamicResources->numTMs + 1;
    gMultiuseListMenuTemplate.windowId = WIN_LIST;
    gMultiuseListMenuTemplate.header_X = 0;
    gMultiuseListMenuTemplate.item_X = 8;
    gMultiuseListMenuTemplate.cursor_X = 0;
    gMultiuseListMenuTemplate.lettersSpacing = 0;
    gMultiuseListMenuTemplate.itemVerticalPadding = 2;
    gMultiuseListMenuTemplate.upText_Y = 2;
    gMultiuseListMenuTemplate.maxShowed = sTMCaseDynamicResources->maxTMsShown;
    gMultiuseListMenuTemplate.fontId = FONT_NORMAL;
    gMultiuseListMenuTemplate.cursorPal = 2;
    gMultiuseListMenuTemplate.fillValue = 0;
    gMultiuseListMenuTemplate.cursorShadowPal = 3;
    gMultiuseListMenuTemplate.moveCursorFunc = TMCase_MoveCursorFunc;
    gMultiuseListMenuTemplate.itemPrintFunc = TMCase_ItemPrintFunc;
    gMultiuseListMenuTemplate.cursorKind = 0;
    gMultiuseListMenuTemplate.scrollMultiple = 0;
}

// e.g. "No01 Focus Punch", with the number in the small font
static void GetTMNumberAndMoveString(u8 *dest, u16 itemId)
{
    StringCopy(gStringVar4, sText_FontSmall);
    if (itemId >= ITEM_HM01)
    {
        StringAppend(gStringVar4, sText_ClearTo18);
        StringAppend(gStringVar4, gText_NumberClear01);
        ConvertIntToDecimalStringN(gStringVar1, itemId - ITEM_HM01 + 1, STR_CONV_MODE_LEADING_ZEROS, 1);
        StringAppend(gStringVar4, gStringVar1);
    }
    else
    {
        StringAppend(gStringVar4, gText_NumberClear01);
        ConvertIntToDecimalStringN(gStringVar1, itemId - ITEM_TM01 + 1, STR_CONV_MODE_LEADING_ZEROS, 2);
        StringAppend(gStringVar4, gStringVar1);
    }
    StringAppend(gStringVar4, sText_SingleSpace);
    StringAppend(gStringVar4, sText_FontNormal);
    StringAppend(gStringVar4, gMoveNames[ItemIdToBattleMoveId(itemId)]);
    StringCopy(dest, gStringVar4);
}

static void TMCase_MoveCursorFunc(s32 itemIndex, bool8 onInit, struct ListMenu *list)
{
    u16 itemId;

    if (itemIndex == LIST_CANCEL)
        itemId = ITEM_NONE;
    else
        itemId = BagGetItemIdByPocketPosition(POCKET_TM_HM, itemIndex);

    if (onInit != TRUE)
    {
        PlaySE(SE_SELECT);
        InitSelectedDiscSpriteData(sTMCaseDynamicResources->discSpriteId, itemId);
    }
    TMCase_MoveCursor_UpdatePrintedDescription(itemIndex);
    TMCase_MoveCursor_UpdatePrintedTMInfo(itemId);
}

static void TMCase_ItemPrintFunc(u8 windowId, u32 itemIndex, u8 y)
{
    if (itemIndex != LIST_CANCEL)
    {
        if (!GetItemImportance(BagGetItemIdByPocketPosition(POCKET_TM_HM, itemIndex)))
        {
            ConvertIntToDecimalStringN(gStringVar1, BagGetQuantityByPocketPosition(POCKET_TM_HM, itemIndex), STR_CONV_MODE_RIGHT_ALIGN, 3);
            StringExpandPlaceholders(gStringVar4, gText_xVar1);
            AddTextPrinterParameterized_ColorByIndex(windowId, FONT_SMALL, gStringVar4, 0x7E, y, 0, 0, TEXT_SKIP_DRAW, COLORID_LIST_SELECTED);
        }
        else
        {
            PlaceHMTileInWindow(windowId, 8, y);
        }
    }
}

static void TMCase_MoveCursor_UpdatePrintedDescription(s32 itemIndex)
{
    const u8 *str;
    if (itemIndex != LIST_CANCEL)
        str = GetItemDescription(BagGetItemIdByPocketPosition(POCKET_TM_HM, itemIndex));
    else
        str = sText_TMCaseWillBePutAway;
    FillWindowPixelBuffer(WIN_DESCRIPTION, 0);
    AddTextPrinterParameterized_ColorByIndex(WIN_DESCRIPTION, FONT_NORMAL, str, 2, 3, 1, 0, 0, COLORID_LIST);
}

// Dims the lower half of the case while the context menu is open
static void SetLowerCasePalette(bool8 contextMenuOpen)
{
    SetBgTilemapPalette(2, 0, 12, 30, 8, 2 * contextMenuOpen + 1);
    ScheduleBgCopyTilemapToVram(2);
}

static void PrintListMenuCursorByID_WithColorIdx(u8 listTaskId, u8 colorIdx)
{
    PrintListMenuCursorAt_WithColorIdx(ListMenuGetYCoordForPrintingArrowCursor(listTaskId), colorIdx);
}

static void PrintListMenuCursorAt_WithColorIdx(u8 y, u8 colorIdx)
{
    if (colorIdx == 0xFF)
    {
        FillWindowPixelRect(WIN_LIST, 0, 0, y, GetFontAttribute(FONT_NORMAL, FONTATTR_MAX_LETTER_WIDTH), GetFontAttribute(FONT_NORMAL, FONTATTR_MAX_LETTER_HEIGHT));
        CopyWindowToVram(WIN_LIST, COPYWIN_GFX);
    }
    else
    {
        AddTextPrinterParameterized_ColorByIndex(WIN_LIST, FONT_NORMAL, gText_SelectorArrow2, 0, y, 0, 0, 0, colorIdx);
    }
}

static void CreateTMCaseScrollIndicatorArrowPair(void)
{
    sTMCaseDynamicResources->scrollIndicatorArrowPairId = AddScrollIndicatorArrowPairParameterized(2, 0xA0, 0x08, 0x58, sTMCaseDynamicResources->numTMs - sTMCaseDynamicResources->maxTMsShown + 1, 0x6E, 0x6E, &sTMCaseStaticResources.scrollOffset);
}

static void RemoveTMCaseScrollIndicatorArrowPair(void)
{
    if (sTMCaseDynamicResources->scrollIndicatorArrowPairId != TASK_NONE)
    {
        RemoveScrollIndicatorArrowPair(sTMCaseDynamicResources->scrollIndicatorArrowPairId);
        sTMCaseDynamicResources->scrollIndicatorArrowPairId = TASK_NONE;
    }
}

static void TMCaseSetup_GetTMCount(void)
{
    struct BagPocket *pocket = &gBagPockets[POCKET_TM_HM - 1];
    u16 i;

    sTMCaseDynamicResources->numTMs = 0;
    for (i = 0; i < pocket->capacity; i++)
    {
        if (pocket->itemSlots[i].itemId == ITEM_NONE)
            break;
        sTMCaseDynamicResources->numTMs++;
    }
    sTMCaseDynamicResources->maxTMsShown = min(sTMCaseDynamicResources->numTMs + 1, 5);
}

static void TMCaseSetup_InitListMenuPositions(void)
{
    if (sTMCaseStaticResources.scrollOffset != 0)
    {
        if (sTMCaseStaticResources.scrollOffset + sTMCaseDynamicResources->maxTMsShown > sTMCaseDynamicResources->numTMs + 1)
            sTMCaseStaticResources.scrollOffset = sTMCaseDynamicResources->numTMs + 1 - sTMCaseDynamicResources->maxTMsShown;
    }
    if (sTMCaseStaticResources.scrollOffset + sTMCaseStaticResources.selectedRow >= sTMCaseDynamicResources->numTMs + 1)
    {
        if (sTMCaseDynamicResources->numTMs + 1 < 2)
            sTMCaseStaticResources.selectedRow = 0;
        else
            sTMCaseStaticResources.selectedRow = sTMCaseDynamicResources->numTMs;
    }
}

static void TMCaseSetup_UpdateVisualMenuOffset(void)
{
    u8 i;
    if (sTMCaseStaticResources.selectedRow > 3)
    {
        for (i = 0; i <= sTMCaseStaticResources.selectedRow - 3 && sTMCaseStaticResources.scrollOffset + sTMCaseDynamicResources->maxTMsShown != sTMCaseDynamicResources->numTMs + 1; i++)
        {
            sTMCaseStaticResources.selectedRow--;
            sTMCaseStaticResources.scrollOffset++;
        }
    }
}

static void DestroyTMCaseBuffers(void)
{
    if (sTMCaseDynamicResources != NULL)
        Free(sTMCaseDynamicResources);
    if (sTilemapBuffer != NULL)
        Free(sTilemapBuffer);
    if (sListMenuItemsBuffer != NULL)
        Free(sListMenuItemsBuffer);
    if (sListMenuStringsBuffer != NULL)
        Free(sListMenuStringsBuffer);
    if (sDiscPaletteBuffer != NULL)
        Free(sDiscPaletteBuffer);
    ResetBufferPointers_NoFree();
    FreeAllWindowBuffers();
}

static void Task_BeginFadeOutFromTMCase(u8 taskId)
{
    BeginNormalPaletteFade(PALETTES_ALL, -2, 0, 16, RGB_BLACK);
    gTasks[taskId].func = Task_FadeOutAndCloseTMCase;
}

static void Task_FadeOutAndCloseTMCase(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    if (!gPaletteFade.active)
    {
        DestroyListMenuTask(tListTaskId, &sTMCaseStaticResources.scrollOffset, &sTMCaseStaticResources.selectedRow);
        if (sTMCaseDynamicResources->nextScreenCallback != NULL)
            SetMainCallback2(sTMCaseDynamicResources->nextScreenCallback);
        else
            SetMainCallback2(sTMCaseStaticResources.exitCallback);
        RemoveTMCaseScrollIndicatorArrowPair();
        DestroyTMCaseBuffers();
        DestroyTask(taskId);
    }
}

static void Task_TMCaseMain(u8 taskId)
{
    s16 *data = gTasks[taskId].data;
    s32 input;

    if (!gPaletteFade.active && MenuHelpers_ShouldWaitForLinkRecv() != TRUE)
    {
        input = ListMenu_ProcessInput(tListTaskId);
        ListMenuGetScrollAndRow(tListTaskId, &sTMCaseStaticResources.scrollOffset, &sTMCaseStaticResources.selectedRow);
        if (JOY_NEW(SELECT_BUTTON) && sTMCaseStaticResources.closeWithSelect)
        {
            PlaySE(SE_SELECT);
            gSpecialVar_ItemId = ITEM_NONE;
            Task_BeginFadeOutFromTMCase(taskId);
            return;
        }
        switch (input)
        {
        case LIST_NOTHING_CHOSEN:
            break;
        case LIST_CANCEL:
            PlaySE(SE_SELECT);
            gSpecialVar_ItemId = ITEM_NONE;
            Task_BeginFadeOutFromTMCase(taskId);
            break;
        default:
            PlaySE(SE_SELECT);
            SetLowerCasePalette(TRUE);
            RemoveTMCaseScrollIndicatorArrowPair();
            PrintListMenuCursorByID_WithColorIdx(tListTaskId, COLORID_CURSOR_SELECTED);
            tListPosition = input;
            tQuantity = BagGetQuantityByPocketPosition(POCKET_TM_HM, input);
            gSpecialVar_ItemId = BagGetItemIdByPocketPosition(POCKET_TM_HM, input);
            if (sTMCaseStaticResources.mode == TMCASE_SELL)
                gTasks[taskId].func = Task_SelectTMAction_FromSellMenu;
            else
                gTasks[taskId].func = Task_SelectTMAction;
            break;
        }
    }
}

static void Subtask_ReturnToTMCaseMain(u8 taskId)
{
    SetLowerCasePalette(FALSE);
    CreateTMCaseScrollIndicatorArrowPair();
    gTasks[taskId].func = Task_TMCaseMain;
}

static void Task_SelectTMAction(u8 taskId)
{
    u8 *strbuf;

    // Context menu
    AddTMContextMenu(&sTMCaseDynamicResources->contextMenuWindowId);
    sTMCaseDynamicResources->menuActionIndices = sMenuActionIndices_Field;
    sTMCaseDynamicResources->numMenuActions = ARRAY_COUNT(sMenuActionIndices_Field);
    PrintMenuActionTexts(sTMCaseDynamicResources->contextMenuWindowId, FONT_NORMAL, GetMenuCursorDimensionByFont(FONT_NORMAL, 0), 2, 0, GetFontAttribute(FONT_NORMAL, FONTATTR_MAX_LETTER_HEIGHT) + 2, sTMCaseDynamicResources->numMenuActions, sMenuActions_UseExit, sTMCaseDynamicResources->menuActionIndices);
    InitMenuInUpperLeftCornerNormal(sTMCaseDynamicResources->contextMenuWindowId, sTMCaseDynamicResources->numMenuActions, 0);

    // "No01 Move is selected." message
    TMCase_DrawWindowBorder(WIN_SELECTED_MSG);
    strbuf = Alloc(256);
    GetTMNumberAndMoveString(strbuf, gSpecialVar_ItemId);
    StringAppend(strbuf, gText_Var1IsSelected + 2); // +2 skips over the {STR_VAR_1}
    AddTextPrinterParameterized_ColorByIndex(WIN_SELECTED_MSG, FONT_NORMAL, strbuf, 0, 2, 1, 0, 0, COLORID_SELECTED_MSG);
    Free(strbuf);

    if (GetItemImportance(gSpecialVar_ItemId))
    {
        PlaceHMTileInWindow(WIN_SELECTED_MSG, 0, 2);
        CopyWindowToVram(WIN_SELECTED_MSG, COPYWIN_GFX);
    }

    ScheduleBgCopyTilemapToVram(0);
    ScheduleBgCopyTilemapToVram(1);
    gTasks[taskId].func = Task_TMContextMenu_HandleInput;
}

static void Task_TMContextMenu_HandleInput(u8 taskId)
{
    s8 input;

    if (MenuHelpers_ShouldWaitForLinkRecv() != TRUE)
    {
        input = Menu_ProcessInputNoWrap();
        switch (input)
        {
        case MENU_B_PRESSED:
            PlaySE(SE_SELECT);
            sMenuActions_UseExit[sTMCaseDynamicResources->menuActionIndices[sTMCaseDynamicResources->numMenuActions - 1]].func.void_u8(taskId);
            break;
        case MENU_NOTHING_CHOSEN:
            break;
        default:
            sMenuActions_UseExit[sTMCaseDynamicResources->menuActionIndices[input]].func.void_u8(taskId);
            break;
        }
    }
}

static void TMHMContextMenuAction_Use(u8 taskId)
{
    RemoveTMContextMenu(&sTMCaseDynamicResources->contextMenuWindowId);
    ClearStdWindowAndFrameToTransparent(WIN_SELECTED_MSG, FALSE);
    ClearWindowTilemap(WIN_SELECTED_MSG);
    PutWindowTilemap(WIN_LIST);
    ScheduleBgCopyTilemapToVram(0);
    ScheduleBgCopyTilemapToVram(1);
    if (CalculatePlayerPartyCount() == 0)
    {
        PrintError_ThereIsNoPokemon(taskId);
    }
    else
    {
        gItemUseCB = ItemUseCB_TMHM;
        sTMCaseDynamicResources->nextScreenCallback = CB2_ShowPartyMenuForItemUseFromTMCase;
        Task_BeginFadeOutFromTMCase(taskId);
    }
}

static void PrintError_ThereIsNoPokemon(u8 taskId)
{
    TMCase_PrintMessageWithFollowupTask(taskId, FONT_NORMAL, gText_NoPokemon, Task_WaitButtonAfterErrorPrint);
}

static void Task_WaitButtonAfterErrorPrint(u8 taskId)
{
    if (JOY_NEW(A_BUTTON))
    {
        PlaySE(SE_SELECT);
        Subtask_CloseContextMenuAndReturnToMain(taskId);
    }
}

static void Subtask_CloseContextMenuAndReturnToMain(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    DestroyListMenuTask(tListTaskId, &sTMCaseStaticResources.scrollOffset, &sTMCaseStaticResources.selectedRow);
    tListTaskId = ListMenuInit(&gMultiuseListMenuTemplate, sTMCaseStaticResources.scrollOffset, sTMCaseStaticResources.selectedRow);
    PrintListMenuCursorByID_WithColorIdx(tListTaskId, COLORID_LIST_SELECTED);
    ClearDialogWindowAndFrameToTransparent(WIN_MESSAGE, FALSE);
    ClearWindowTilemap(WIN_MESSAGE);
    PutWindowTilemap(WIN_DESCRIPTION);
    PutWindowTilemap(WIN_MOVE_INFO_LABELS);
    PutWindowTilemap(WIN_MOVE_INFO);
    ScheduleBgCopyTilemapToVram(0);
    ScheduleBgCopyTilemapToVram(1);
    Subtask_ReturnToTMCaseMain(taskId);
}

static void TMHMContextMenuAction_Exit(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    RemoveTMContextMenu(&sTMCaseDynamicResources->contextMenuWindowId);
    ClearStdWindowAndFrameToTransparent(WIN_SELECTED_MSG, FALSE);
    ClearWindowTilemap(WIN_SELECTED_MSG);
    PutWindowTilemap(WIN_LIST);
    PrintListMenuCursorByID_WithColorIdx(tListTaskId, COLORID_LIST_SELECTED);
    PutWindowTilemap(WIN_DESCRIPTION);
    PutWindowTilemap(WIN_MOVE_INFO_LABELS);
    PutWindowTilemap(WIN_MOVE_INFO);
    ScheduleBgCopyTilemapToVram(0);
    ScheduleBgCopyTilemapToVram(1);
    Subtask_ReturnToTMCaseMain(taskId);
}

// Selling, when opened from a Mart's sell menu. Same rules and prices as selling from the bag.

static const struct YesNoFuncTable sYesNoFuncTable_Sell = {Task_PrintSaleConfirmedText, Task_SaleOfTMsCanceled};

static s32 GetTMSalePrice(u16 itemId, s16 quantity)
{
    return (GetItemPrice(itemId) / 2) * quantity;
}

static void Task_SelectTMAction_FromSellMenu(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    if (GetItemPrice(gSpecialVar_ItemId) == 0)
    {
        CopyItemName(gSpecialVar_ItemId, gStringVar2);
        StringExpandPlaceholders(gStringVar4, gText_CantBuyKeyItem);
        TMCase_PrintMessageWithFollowupTask(taskId, FONT_NORMAL, gStringVar4, Subtask_CloseContextMenuAndReturnToMain);
    }
    else
    {
        tItemCount = 1;
        if (tQuantity == 1)
        {
            HandlePrintMoneyOnHand();
            Task_AskConfirmSaleWithAmount(taskId);
        }
        else
        {
            if (tQuantity > 99)
                tQuantity = 99;
            CopyItemName(gSpecialVar_ItemId, gStringVar2);
            StringExpandPlaceholders(gStringVar4, gText_HowManyToSell);
            TMCase_PrintMessageWithFollowupTask(taskId, FONT_NORMAL, gStringVar4, Task_InitQuantitySelectUI);
        }
    }
}

static void Task_AskConfirmSaleWithAmount(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    ConvertIntToDecimalStringN(gStringVar1, GetTMSalePrice(gSpecialVar_ItemId, tItemCount), STR_CONV_MODE_LEFT_ALIGN, 6);
    StringExpandPlaceholders(gStringVar4, gText_ICanPayVar1);
    TMCase_PrintMessageWithFollowupTask(taskId, FONT_NORMAL, gStringVar4, Task_PlaceYesNoBox);
}

static void Task_PlaceYesNoBox(u8 taskId)
{
    CreateYesNoMenuWithCallbacks(taskId, &sYesNoWindowTemplate, FONT_NORMAL, 0, 2, 0x78, 13, &sYesNoFuncTable_Sell);
}

// Restores the windows the sale messages were drawn over
static void PutMainWindowTilemaps(void)
{
    PutWindowTilemap(WIN_LIST);
    PutWindowTilemap(WIN_DESCRIPTION);
    PutWindowTilemap(WIN_TITLE);
    PutWindowTilemap(WIN_MOVE_INFO_LABELS);
    PutWindowTilemap(WIN_MOVE_INFO);
    ScheduleBgCopyTilemapToVram(0);
    ScheduleBgCopyTilemapToVram(1);
}

static void Task_SaleOfTMsCanceled(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    ClearStdWindowAndFrameToTransparent(WIN_MONEY, FALSE);
    ClearDialogWindowAndFrameToTransparent(WIN_MESSAGE, FALSE);
    PutMainWindowTilemaps();
    PrintListMenuCursorByID_WithColorIdx(tListTaskId, COLORID_LIST_SELECTED);
    Subtask_ReturnToTMCaseMain(taskId);
}

static void Task_InitQuantitySelectUI(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    TMCase_DrawWindowBorder(WIN_SELL_QUANTITY);
    SellTM_PrintQuantityAndSalePrice(1, GetTMSalePrice(gSpecialVar_ItemId, 1));
    HandlePrintMoneyOnHand();
    sTMCaseDynamicResources->sellQuantityArrowPos = 1;
    sTMCaseDynamicResources->scrollIndicatorArrowPairId = AddScrollIndicatorArrowPairParameterized(2, 0x98, 0x48, 0x68, 2, 0x6E, 0x6E, &sTMCaseDynamicResources->sellQuantityArrowPos);
    ScheduleBgCopyTilemapToVram(0);
    ScheduleBgCopyTilemapToVram(1);
    gTasks[taskId].func = Task_QuantitySelect_HandleInput;
}

static void SellTM_PrintQuantityAndSalePrice(s16 quantity, s32 amount)
{
    FillWindowPixelBuffer(WIN_SELL_QUANTITY, PIXEL_FILL(1));
    ConvertIntToDecimalStringN(gStringVar1, quantity, STR_CONV_MODE_LEADING_ZEROS, 2);
    StringExpandPlaceholders(gStringVar4, gText_xVar1);
    AddTextPrinterParameterized_ColorByIndex(WIN_SELL_QUANTITY, FONT_SMALL, gStringVar4, 4, 10, 1, 0, 0, COLORID_LIST_SELECTED);
    PrintMoneyAmount(WIN_SELL_QUANTITY, 0x38, 0x0A, amount, 0);
}

static void Task_QuantitySelect_HandleInput(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    if (AdjustQuantityAccordingToDPadInput(&tItemCount, tQuantity) == TRUE)
    {
        SellTM_PrintQuantityAndSalePrice(tItemCount, GetTMSalePrice(gSpecialVar_ItemId, tItemCount));
    }
    else if (JOY_NEW(A_BUTTON))
    {
        PlaySE(SE_SELECT);
        ClearStdWindowAndFrameToTransparent(WIN_SELL_QUANTITY, FALSE);
        ScheduleBgCopyTilemapToVram(0);
        ScheduleBgCopyTilemapToVram(1);
        RemoveTMCaseScrollIndicatorArrowPair();
        Task_AskConfirmSaleWithAmount(taskId);
    }
    else if (JOY_NEW(B_BUTTON))
    {
        PlaySE(SE_SELECT);
        ClearStdWindowAndFrameToTransparent(WIN_SELL_QUANTITY, FALSE);
        ClearStdWindowAndFrameToTransparent(WIN_MONEY, FALSE);
        ClearDialogWindowAndFrameToTransparent(WIN_MESSAGE, FALSE);
        PutMainWindowTilemaps();
        RemoveTMCaseScrollIndicatorArrowPair();
        PrintListMenuCursorByID_WithColorIdx(tListTaskId, COLORID_LIST_SELECTED);
        Subtask_ReturnToTMCaseMain(taskId);
    }
}

static void Task_PrintSaleConfirmedText(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    PutWindowTilemap(WIN_LIST);
    ScheduleBgCopyTilemapToVram(0);
    CopyItemName(gSpecialVar_ItemId, gStringVar2);
    ConvertIntToDecimalStringN(gStringVar1, GetTMSalePrice(gSpecialVar_ItemId, tItemCount), STR_CONV_MODE_LEFT_ALIGN, 6);
    StringExpandPlaceholders(gStringVar4, gText_TurnedOverVar1ForVar2);
    TMCase_PrintMessageWithFollowupTask(taskId, FONT_NORMAL, gStringVar4, Task_DoSaleOfTMs);
}

static void Task_DoSaleOfTMs(u8 taskId)
{
    s16 *data = gTasks[taskId].data;
    u16 itemId;

    PlaySE(SE_SHOP);
    RemoveBagItem(gSpecialVar_ItemId, tItemCount);
    AddMoney(&gSaveBlock1Ptr->money, GetTMSalePrice(gSpecialVar_ItemId, tItemCount));

    // Rebuild the list, as selling the last of a TM removes it from the case
    DestroyListMenuTask(tListTaskId, &sTMCaseStaticResources.scrollOffset, &sTMCaseStaticResources.selectedRow);
    CompactItemsInBagPocket(&gBagPockets[TMHM_POCKET]);
    SortBerriesOrTMHMs(&gBagPockets[TMHM_POCKET]);
    TMCaseSetup_GetTMCount();
    TMCaseSetup_InitListMenuPositions();
    InitTMCaseListMenuItems();
    tListTaskId = ListMenuInit(&gMultiuseListMenuTemplate, sTMCaseStaticResources.scrollOffset, sTMCaseStaticResources.selectedRow);
    PrintListMenuCursorByID_WithColorIdx(tListTaskId, COLORID_CURSOR_SELECTED);
    if (sTMCaseStaticResources.scrollOffset + sTMCaseStaticResources.selectedRow < sTMCaseDynamicResources->numTMs)
        itemId = BagGetItemIdByPocketPosition(POCKET_TM_HM, sTMCaseStaticResources.scrollOffset + sTMCaseStaticResources.selectedRow);
    else
        itemId = ITEM_NONE;
    InitSelectedDiscSpriteData(sTMCaseDynamicResources->discSpriteId, itemId);

    PrintMoneyAmountInMoneyBox(WIN_MONEY, GetMoney(&gSaveBlock1Ptr->money), 0);
    gTasks[taskId].func = Task_AfterSale_ReturnToList;
}

static void Task_AfterSale_ReturnToList(u8 taskId)
{
    if (JOY_NEW(A_BUTTON | B_BUTTON))
    {
        PlaySE(SE_SELECT);
        ClearStdWindowAndFrameToTransparent(WIN_MONEY, FALSE);
        PutWindowTilemap(WIN_TITLE);
        Subtask_CloseContextMenuAndReturnToMain(taskId);
    }
}

static void HandlePrintMoneyOnHand(void)
{
    PrintMoneyAmountInMoneyBoxWithBorder(WIN_MONEY, 0x78, 13, GetMoney(&gSaveBlock1Ptr->money));
}

static void InitWindowTemplatesAndPals(void)
{
    u8 i;

    InitWindows(sWindowTemplates);
    DeactivateAllTextPrinters();
    LoadMessageBoxGfx(0, 0x64, BG_PLTT_ID(11));
    LoadUserWindowBorderGfx(0, 0x78, BG_PLTT_ID(13));
    LoadPalette(sTMCase_TextWindow_Pal, BG_PLTT_ID(15), PLTT_SIZE_4BPP);
    LoadPalette(sTMCase_TextWindow_Pal, BG_PLTT_ID(10), PLTT_SIZE_4BPP);
    LoadPalette(sPal3Override, BG_PLTT_ID(15) + 6, sizeof(sPal3Override));
    LoadPalette(sPal3Override, BG_PLTT_ID(13) + 6, sizeof(sPal3Override));
    ListMenuLoadStdPalAt(BG_PLTT_ID(12), 1);
    for (i = 0; i < WIN_COUNT; i++)
        FillWindowPixelBuffer(i, 0);
    PutWindowTilemap(WIN_LIST);
    PutWindowTilemap(WIN_DESCRIPTION);
    PutWindowTilemap(WIN_TITLE);
    PutWindowTilemap(WIN_MOVE_INFO_LABELS);
    PutWindowTilemap(WIN_MOVE_INFO);
    ScheduleBgCopyTilemapToVram(0);
}

static void AddTextPrinterParameterized_ColorByIndex(u8 windowId, u8 fontId, const u8 *str, u8 x, u8 y, u8 letterSpacing, u8 lineSpacing, s8 speed, u8 colorIdx)
{
    AddTextPrinterParameterized4(windowId, fontId, x, y, letterSpacing, lineSpacing, sTMCaseTextColors[colorIdx], speed, str);
}

static void TMCase_DrawWindowBorder(u8 windowId)
{
    DrawStdFrameWithCustomTileAndPalette(windowId, FALSE, 0x78, 13);
}

static void TMCase_PrintMessageWithFollowupTask(u8 taskId, u8 fontId, const u8 *str, TaskFunc func)
{
    DisplayMessageAndContinueTask(taskId, WIN_MESSAGE, 0x64, 11, fontId, GetPlayerTextSpeedDelay(), str, func);
    ScheduleBgCopyTilemapToVram(1);
}

static void PrintTitle(void)
{
    u32 distance = 72 - GetStringWidth(FONT_NORMAL, sText_TMCase, 0);
    AddTextPrinterParameterized3(WIN_TITLE, FONT_NORMAL, distance / 2, 1, sTMCaseTextColors[COLORID_LIST], 0, sText_TMCase);
}

static void DrawMoveInfoUIMarkers(void)
{
    BlitMenuInfoIcon(WIN_MOVE_INFO_LABELS, MENU_INFO_ICON_TYPE, 0, 0);
    BlitMenuInfoIcon(WIN_MOVE_INFO_LABELS, MENU_INFO_ICON_POWER, 0, 12);
    BlitMenuInfoIcon(WIN_MOVE_INFO_LABELS, MENU_INFO_ICON_ACCURACY, 0, 24);
    BlitMenuInfoIcon(WIN_MOVE_INFO_LABELS, MENU_INFO_ICON_PP, 0, 36);
    CopyWindowToVram(WIN_MOVE_INFO_LABELS, COPYWIN_GFX);
}

static void TMCase_MoveCursor_UpdatePrintedTMInfo(u16 itemId)
{
    u8 i;
    u16 move;
    const u8 *str;

    FillWindowPixelRect(WIN_MOVE_INFO, 0, 0, 0, 40, 48);
    if (itemId == ITEM_NONE)
    {
        for (i = 0; i < 4; i++)
            AddTextPrinterParameterized_ColorByIndex(WIN_MOVE_INFO, FONT_NORMAL, gText_ThreeDashes, 7, 12 * i, 0, 0, TEXT_SKIP_DRAW, COLORID_MOVE_INFO);
        CopyWindowToVram(WIN_MOVE_INFO, COPYWIN_GFX);
    }
    else
    {
        move = ItemIdToBattleMoveId(itemId);
        BlitMenuInfoIcon(WIN_MOVE_INFO, gBattleMoves[move].type + 1, 0, 0);
        if (gBattleMoves[move].power < 2)
        {
            str = gText_ThreeDashes;
        }
        else
        {
            ConvertIntToDecimalStringN(gStringVar1, gBattleMoves[move].power, STR_CONV_MODE_RIGHT_ALIGN, 3);
            str = gStringVar1;
        }
        AddTextPrinterParameterized_ColorByIndex(WIN_MOVE_INFO, FONT_NORMAL, str, 7, 12, 0, 0, TEXT_SKIP_DRAW, COLORID_MOVE_INFO);
        if (gBattleMoves[move].accuracy == 0)
        {
            str = gText_ThreeDashes;
        }
        else
        {
            ConvertIntToDecimalStringN(gStringVar1, gBattleMoves[move].accuracy, STR_CONV_MODE_RIGHT_ALIGN, 3);
            str = gStringVar1;
        }
        AddTextPrinterParameterized_ColorByIndex(WIN_MOVE_INFO, FONT_NORMAL, str, 7, 24, 0, 0, TEXT_SKIP_DRAW, COLORID_MOVE_INFO);
        ConvertIntToDecimalStringN(gStringVar1, gBattleMoves[move].pp, STR_CONV_MODE_RIGHT_ALIGN, 3);
        AddTextPrinterParameterized_ColorByIndex(WIN_MOVE_INFO, FONT_NORMAL, gStringVar1, 7, 36, 0, 0, TEXT_SKIP_DRAW, COLORID_MOVE_INFO);
        CopyWindowToVram(WIN_MOVE_INFO, COPYWIN_GFX);
    }
}

static void PlaceHMTileInWindow(u8 windowId, u8 x, u8 y)
{
    BlitBitmapToWindow(windowId, sTMCase_HMIcon_Gfx, x, y, 16, 12);
}

static u8 AddTMContextMenu(u8 *windowId)
{
    if (*windowId == WINDOW_NONE)
    {
        *windowId = AddWindow(&sTMContextWindowTemplate);
        TMCase_DrawWindowBorder(*windowId);
        ScheduleBgCopyTilemapToVram(0);
    }
    return *windowId;
}

static void RemoveTMContextMenu(u8 *windowId)
{
    ClearStdWindowAndFrameToTransparent(*windowId, FALSE);
    ClearWindowTilemap(*windowId);
    RemoveWindow(*windowId);
    ScheduleBgCopyTilemapToVram(0);
    *windowId = WINDOW_NONE;
}

// HMs sit at the front of the case, then TMs in order
static u8 GetDiscIndex(u16 itemId)
{
    if (itemId >= ITEM_HM01)
        return itemId - ITEM_HM01;
    else
        return itemId - ITEM_TM01 + NUM_HIDDEN_MACHINES;
}

static u8 CreateDiscSprite(u16 itemId)
{
    u8 spriteId = CreateSprite(&sDiscSpriteTemplate, 0x29, 0x2E, 0);

    if (itemId == ITEM_NONE)
    {
        UpdateDiscSpritePosition(&gSprites[spriteId], ITEM_NONE);
        return spriteId;
    }
    SetDiscSpriteAnim(&gSprites[spriteId], itemId);
    TintDiscSpriteByType(gBattleMoves[ItemIdToBattleMoveId(itemId)].type);
    UpdateDiscSpritePosition(&gSprites[spriteId], itemId);
    return spriteId;
}

static void SetDiscSpriteAnim(struct Sprite *sprite, u16 itemId)
{
    if (itemId >= ITEM_HM01)
        StartSpriteAnim(sprite, 1);
    else
        StartSpriteAnim(sprite, 0);
}

static void TintDiscSpriteByType(u8 type)
{
    u8 palIndex = IndexOfSpritePaletteTag(TAG_TM_DISC);
    u16 offset = (type < NUMBER_OF_MON_TYPES) ? sDiscPaletteOffsetByType[type] : 0;
    LoadPalette(sDiscPaletteBuffer + offset, OBJ_PLTT_ID(palIndex), PLTT_SIZE_4BPP);
}

// Slides the disc along the case according to its number
static void UpdateDiscSpritePosition(struct Sprite *sprite, u16 itemId)
{
    s32 x, y;
    u8 index;

    if (itemId == ITEM_NONE)
    {
        x = 0x1B;
        y = 0x36;
        sprite->y2 = 0x14;
    }
    else
    {
        index = GetDiscIndex(itemId);
        x = 0x29 - (((0xE00 * index) / NUM_TM_CASE_DISCS) >> 8);
        y = 0x2E + (((0x800 * index) / NUM_TM_CASE_DISCS) >> 8);
    }
    sprite->x = x;
    sprite->y = y;
}

#define sItemId data[0]
#define sState  data[1]

static void InitSelectedDiscSpriteData(u8 spriteId, u16 itemId)
{
    gSprites[spriteId].sItemId = itemId;
    gSprites[spriteId].sState = 0;
    gSprites[spriteId].callback = SpriteCB_SwapDiscInCase;
}

// Lowers the current disc out of view, then raises the newly selected one
static void SpriteCB_SwapDiscInCase(struct Sprite *sprite)
{
    switch (sprite->sState)
    {
    case 0:
        if (sprite->y2 >= 20)
        {
            if (sprite->sItemId != ITEM_NONE)
            {
                sprite->sState++;
                TintDiscSpriteByType(gBattleMoves[ItemIdToBattleMoveId(sprite->sItemId)].type);
                SetDiscSpriteAnim(sprite, sprite->sItemId);
                UpdateDiscSpritePosition(sprite, sprite->sItemId);
            }
            else
            {
                sprite->callback = SpriteCallbackDummy;
            }
        }
        else
        {
            sprite->y2 += 10;
        }
        break;
    case 1:
        if (sprite->y2 <= 0)
            sprite->callback = SpriteCallbackDummy;
        else
            sprite->y2 -= 10;
        break;
    }
}

#undef sItemId
#undef sState

static void LoadDiscTypePalettes(void)
{
    struct SpritePalette spritePalette;

    // 16 type palettes, followed by Dragon's
    sDiscPaletteBuffer = Alloc(0x110 * sizeof(u16));
    LZDecompressWram(sTMCase_DiscTypes_Pal, sDiscPaletteBuffer);
    LZDecompressWram(sTMCase_DiscTypeDragon_Pal, sDiscPaletteBuffer + 0x100);
    spritePalette.data = sDiscPaletteBuffer;
    spritePalette.tag = TAG_TM_DISC;
    LoadSpritePalette(&spritePalette);
}
