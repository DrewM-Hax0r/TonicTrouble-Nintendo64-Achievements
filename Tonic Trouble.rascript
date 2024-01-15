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

// $13A9EC: [16-bit] Level ID ????
//          
//          0x1C78 = Opening Cutscene
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
//          
//          0xEDAC = Peashooter Training
//          0x11CC = Bow Tie Flying Training (Part 1)
//          0x5ACC = Bow Tie Flying Training (Part 2)
//          0xDE58 = Bow Tie Flying Training (Part 3)
//          
//          0xEF8C = Doc's Cave (Area 1, Entrance)
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
//          
//          0x0AB4 = Pyramid (Area 1, Cat Statue)
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

// $2AA89A: Collected thermometers in Ski Slope
function CollectedThermometersInSkiSlope() => byte(0x2AA89A)

// $2ABFC0: [8-bit] Ski Slope Timer Flag
//
//          When in the Ski Slope level:
//          0x00 = Timer not active, Ed is ether at the top and has not started yet, is currenty loading into another section in the level, or at the bottom having completed the level
//          0x02 = Timer is active, Ed is in the process of playing through the level
//          0x03 = Timer is not active, Ed set a new PB
//
//          When the game is paused this value remains at 0x02, even though the timer is not counting.
function SkiSlopeTimerFlag() => byte(0x2ABFC0)

// $2E9868: [32-bit] Ski Slope Timer
function SkiSlopeTimer() => dword(0x2E9868)


// ---------------------
// ----- Constants -----
// ---------------------

TIMER_OFF = 0x00
TIMER_OFF_NEW_RECORD = 0x03
TIMER_ON = 0x02

LEVEL_ID_SKI_SLOPE_AREA_4 = 0x7EB0

// ---------------------------
// ----- Logic Functions -----
// ---------------------------

function CurrentLevelIs(levelId) => LevelId() == levelId

function SkiSlopeLevelCleared() => CurrentLevelIs(LEVEL_ID_SKI_SLOPE_AREA_4) && prev(SkiSlopeTimerFlag()) == TIMER_ON && (SkiSlopeTimerFlag() == TIMER_OFF || SkiSlopeTimerFlag() == TIMER_OFF_NEW_RECORD)

function SkiSlopeTimerMilliseconds() => SkiSlopeTimer() / 10


// ------------------------
// ----- Leaderboards -----
// ------------------------

leaderboard(
    title="Ski Slope Time Trial",
    description="Fastest time making it down the Ski Slope",
    start=SkiSlopeLevelCleared(),
    cancel=LevelId() != 0x7EB0,
    submit=SkiSlopeLevelCleared(),
    value=SkiSlopeTimerMilliseconds(),
    format="MILLISECS",
    lower_is_better=true
)