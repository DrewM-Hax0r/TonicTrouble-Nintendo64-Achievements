// Tonic Trouble
// #ID = 10308

// $113685: [8-bit] Inital Load Black Screen Flag
//          Set to 0x01 when loading into most areas, when 0x01 the screen will be black and fade in to the game after which the flag resets to 0
function InitalLoadBlackScreenFlag() => byte(0x113685)

// $1136E5: Demo mode
//          ff if inactive, 01 if active
function DemoMode() => byte(0x1136E5)

// $139831: Demo flag
function DemoFlag() => byte(0x139831)

// $13A9EC: [16-bit] Current Level ID
//          A unique value for each loaded area of the game
//
//          0x0000 = Game Boot / Title Screen
//          0x1C78 = Opening Cutscene
//          0xA504 = Ending Cutscene / Credits
//
//          0x70BC = Ski Slope (Area 1, Top)
//          0x0780 = Ski Slope (Area 2)
//          0x368C = Ski Slope (Area 3)
//          0x7EB0 = Ski Slope (Area 4, Bottom)
//
//          0xF0EC = South Plain (Doc's Workshop Area)
//          0xC24C = South Plain (Doc's Cave Area)
//          0x1E20 = South Plain (Canyon Leading to Veg HQ)
//          0x4F54 = South Plain (Drawbridge and Moving Platforms Leading to North Plain)
//          0x53BC = South Plain (Glacier Cocktail Area)
//          0x4BC0 = South Plain (Pyramid Area)
//
//          0xEDAC = Peashooter Training
//          0x11CC = Bow Tie Flying Training (Part 1)
//          0x5ACC = Bow Tie Flying Training (Part 2)
//          0xDE58 = Bow Tie Flying Training (Part 3)
//          0xDC94 = Pogo Stick Training
//
//          0xEF8C = Doc's Cave (Area 1, Entrance)
//          0xC040 = Doc's Cave (Area 2, Boulders)
//          0xD4E4 = Doc's Cave (Area 3, Popcorn Maker)
//          0x9524 = Doc's Cave (Area 4, Corn Miniboss)
//          0xB51C = Doc's Cave (Area 5)
//          0x1A30 = Doc's Cave (Area 6, Toasters)
//          0x7EFC = Doc's Cave (Area 7, Robosuitcase, Exit)
//
//          0xE56C = Vegetable HQ (Opening Cutscene)
//          0xCFF8 = Vegetable HQ (Area 1, Entrance)
//          0x29A8 = Vegetable HQ (Area 2, Optional Area, gliding)
//          0x18F8 = Vegetable HQ (Area 3, Chili Pepper)
//          0x7FA0 = Vegetable HQ (Area 4, Crossroads, Carrot Torch)
//          0x7BD8 = Vegetable HQ (Area 5, Exit)
//
//          0xE4C8 = North Plain (Opening Cutscene)
//          0xB1D8 = North Plain (Area 1, Entrance)
//          0x8D8C = North Plain (Area 2, Super Ed Lift)
//          0x3610 = North Plain (Area 3, Black Targets Moving Lift)
//          0xE4C0 = North Plain (Area 4, Exit)
//
//          0xF394 = Canyon (Opening Cutscene)
//          0xEFE4 = Canyon (Area 1, Entrance)
//          0xF6BC = Canyon (Area 2)
//          0xAC6C = Canyon (Area 3, Grogh Statue)
//          0xFC6C = Canyon (Area 4, Target Doors)
//          0xAA8C = Canyon (Area 5, Exit)
//
//          0xE700 = Glacier Cocktail (Opening Cutscene)
//          0xCE5C = Glacier Cocktail (Area 1, Entrance)
//          0xF7E4 = Glacier Cocktail (Area 2, Gear Area, Exit)
//          0x0A98 = Glacier Cocktail (Area 3, Ice Melting Area)
//
//          0xFD38 = Pyramid (Opening Cutscene)
//          0x0AB4 = Pyramid (Area 1, Entrance, Cat Statue)
//          0x50E0 = Pyramid (Area 2, Falling Ceiling Puzzle)
//          0x3A20 = Pyramid (Area 3, Pillar Tower, Exit 1)
//          0xEDEC = Pyramid (Area 4, Poison Water)
//          0x9448 = Pyramid (Area 5, Rolling Boulders, Mummy Fight)
//          0x0C38 = Pyramid (Area 6, Pool)
//          0x90F8 = Pyramid (Area 7, Rotating Wall Puzzle, Bathtub, Exit 2)
//
//          0xC3C8 = Pressure Cooker (Opening Cutscene)
//          0xEE90 = Pressure Cooker (Area 1, Entrance)
//          0xA6B0 = Pressure Cooker (Area 2, Magnet)
//          0x275C = Pressure Cooker (Area 3, Sliding Picture Puzzle)
//          0x1960 = Pressure Cooker (Area 4, Rising Poison Water, Exit)
//
//          0x57A8 = Magic Mushroom's Hideout (Area 1, Entrance)
//          0x7FB8 = Magic Mushroom's Hideout (Area 2)
//          0x3448 = Magic Mushroom's Hideout (Area 3, Slide Exit)
//          0x045C = Magic Mushroom's Hideout (Area 4, Boss Fight)
//
//          0x9FB8 = Grogh's Lair (Area 1, Entrance)
//          0x5084 = Grogh's Lair (Area 2)
//          0x3BBC = Grogh's Lair (Area 3)
//          0x2D00 = Grogh's Lair (Area 4, Scattered Platforms)
//          0x251C = Grogh's Lair (Area 5)
//          0x42E8 = Grogh's Lair (Area 6, Point of No Return)
//
//          0x630C = Grogh Boss Fight (Part 1, Chase)
//          0x5F38 = Grogh Boss Fight (Part 2, Boulder Launch)
//          0xFFF8 = Grogh Boss Fight (Part 3, Final Fight)
function LevelId() => word(0x13A9EC)

// $13A9F0: Lives
function Lives() => byte(0x13A9F0)

// $13A9F1: Collected thermometers in current level
function CollectedThermometersInCurrentLevel() => byte(0x13A9F1)

// $13A9F2: [16-bit] Current health
function CurrentHealth() => word(0x13A9F2)

// $2A58BC: [32-bit] Ed's X Position
function EdSXPosition() => dword(0x2A58BC)

// $2A58C0: [32-bit] Ed's Y Position
function EdSYPosition() => dword(0x2A58C0)

// $2A58C4: [32-bit] Ed's Z Position
function EdSZPosition() => dword(0x2A58C4)

// $2AA894: [8-bit] Collected antidotes in Ski Slope, max of 0x14 (20)
function SkiSlopeAntidotes() => byte(0x2AA894)

// $2AA89A: [8-bit] Collected thermometers in Ski Slope, max of 0x0a (10)
function SkiSlopeThermometers() => byte(0x2AA89A)

// $2ABFC0: [8-bit] Ski Slope Timer Status Flag
//          0x00 = The timer has not started counting yet. Ed may be at the top of the Ski Slope having not yet started a run, or at the bottom of the Ski Slope after having completed a run that did not result in a PB record (see notes for value 0x03).
//          0x02 = Ed is currently in the middle of a run on the Ski Slope. This value does not necessarily mean the timer is currently increaseing in value, as the timer stops if the game is paused or a life is lost, during which this value still remains as 0x02.
//          0x03 = Ed finished a run on the Ski Slope, and it was a new PB record.
function SkiSlopeTimerFlag() => byte(0x2ABFC0)

// $2E983C: [32-bit] Canyon Timer
function CanyonTimer() => dword(0x2E983C)

// $2E9868: [32-bit] Ski Slope Timer
function SkiSlopeTimer() => dword(0x2E9868)


// ---------------------
// ----- Constants -----
// ---------------------

TIMER_OFF = 0x00
TIMER_OFF_NEW_RECORD = 0x03
TIMER_ON = 0x02

LEVEL_ID_SKI_SLOPE_AREA_1 = 0x70BC
LEVEL_ID_SKI_SLOPE_AREA_2 = 0x0780
LEVEL_ID_SKI_SLOPE_AREA_3 = 0x368C
LEVEL_ID_SKI_SLOPE_AREA_4 = 0x7EB0

AREA_ID_SKI_SLOPE = 1

// ---------------------------
// ----- Logic Functions -----
// ---------------------------

function CurrentLoadedZoneIs(levelId) => LevelId() == levelId

function InArea(areaId) {
    if (areaId == AREA_ID_SKI_SLOPE) {
        return CurrentLoadedZoneIs(LEVEL_ID_SKI_SLOPE_AREA_1) || CurrentLoadedZoneIs(LEVEL_ID_SKI_SLOPE_AREA_2) || CurrentLoadedZoneIs(LEVEL_ID_SKI_SLOPE_AREA_3) || CurrentLoadedZoneIs(LEVEL_ID_SKI_SLOPE_AREA_4)
    }
    return false
}

function SkiSlopeLevelCleared() => CurrentLoadedZoneIs(LEVEL_ID_SKI_SLOPE_AREA_4) && prev(SkiSlopeTimerFlag()) == TIMER_ON && (SkiSlopeTimerFlag() == TIMER_OFF || SkiSlopeTimerFlag() == TIMER_OFF_NEW_RECORD)

function CollectedAllAntidotesInArea(areaId, antidoteCount) => InArea(areaId) && prev(antidoteCount) == 0x13 && antidoteCount == 0x14

function CollectedAllThermomitersInArea(areaId, thermomiterCount) => InArea(areaId) && prev(thermomiterCount) == 0x09 && thermomiterCount == 0x0A


// ------------------------
// ----- Achievements -----
// ------------------------

achievement(
    title = "Speedy Sledding", points = 5,
    description = "Make it down the Ski Slope with a time of 1 minute and 30 seconds or less",
    id = 403627, badge = "456657",
    trigger = SkiSlopeTimer() <= 90000 && SkiSlopeLevelCleared()
)

achievement(
    title = "Ski Slope Antidote Hunter", points = 5,
    description = "Collect all 20 antidotes on the Ski Slope",
    id = 403658, badge = "456678",
    trigger = CollectedAllAntidotesInArea(AREA_ID_SKI_SLOPE, SkiSlopeAntidotes())
)

achievement(
    title = "Ski Slope Thermometer Hunter", points = 5,
    description = "Collect all 10 thermometers on the Ski Slope",
    id = 403659, badge = "456679",
    trigger = CollectedAllThermomitersInArea(AREA_ID_SKI_SLOPE, SkiSlopeThermometers())
)


// ------------------------
// ----- Leaderboards -----
// ------------------------

function SkiSlopeTimerLeadboardValue() => SkiSlopeTimer() / 10

leaderboard(
    title="Ski Slope Time Trial",
    description="Fastest time making it down the Ski Slope",
    start=SkiSlopeLevelCleared(),
    cancel=LevelId() != 0x7EB0,
    submit=SkiSlopeLevelCleared(),
    value=SkiSlopeTimerLeadboardValue(),
    format="MILLISECS",
    lower_is_better=true
)


// -------------------------
// ----- Rich Presence -----
// -------------------------

rich_presence_conditional_display(DemoFlag() == 0x01 || LevelId() == 0x0000, "At the Title Screen")

rich_presence_display("Unknown")