// Tonic Trouble
// #ID = 10308

// $113504: [16-bit] Game State Identifier
//          0x0E70 = At title screen menus
//          0x5588 = In a game
function GameStateIdentifier() => word(0x113504)

// $113685: [8-bit] Inital Load Black Screen Flag
//          Set to 0x01 when loading into most areas, when 0x01 the screen will be black and fade in to the game after which the flag resets to 0
function InitalLoadBlackScreenFlag() => byte(0x113685)

// $1136E5: [8-bit] Demo Mode Flag
//          0xFF = Not in Demo Mode
//          0x01 = In Demo Mode
function DemoModeFlag() => byte(0x1136E5)

// $1257A3: [8-bit] Player Input Buttons Held (A, B, Z, D-Pad, Start)
//          Bits are set to 1 when a button on the controller is currently pressed down
//          bit0 = D-Pad Right
//          bit1 = D-Pad Left
//          bit2 = D-Pad Down
//          bit3 = D-Pad Up
//          bit4 = Start Button
//          bit5 = Z Button
//          bit6 = B Button
//          bit7 = A Button
function PlayerInputAButtonDown() => bit7(0x1257a3)

// $13A9EC: [16-bit] Current Level ID
//          A unique value for each loaded area of the game
//
//          0x0000 = Game Boot / Title Screen
//          0x1C78 = Opening Cutscene
//          0xA504 = Ending Cutscene / Credits
//          0x54C8 = Game Over
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

// $1E31B9: [8-bit] Corn Boss Dialogue Flag
//          This flag determines what dialogue the corn boss will give when entering the boss room.
//          Increments by 0x01 when the boss room is left after the boss was defeated.
//          When the value is 0x04, the next time it increments it will instead reset back to 0x01 to repeat the dialogue cycle.
function CornBossDialogueFlag() => byte(0x1E31B9)

// $29A89B: [8-bit] Current Health
//          Ed may still be alive if value is 0x00, as a life is not lost until another hit is taken after this value is 0x00
function CurrentHealth() => byte(0x29A89B)

// $2A54F5:[8-bit] Jump Flag
//         The value is set to 0x00 when Ed begins jumping and resets to 0xFF at the height of Ed's jump.
//         This value is tied to actual player jumps, pressing A when Ed is not able to start a jump will not affect the value.
//         0x00 = Jump Initiated
//         0xFF = Default state, not jumping
function JumpFlag() => byte(0x2A54F5)

// $2A56F4: [8-bit] Toaster Room Moving Platform Flag
//          Used to track when the red platorm in the toaster room of Doc's Cave is active/moving.
//          0x01 = Inactive/not moving
//          0x02 = Active/moving
function DocsCaveToasterRoomPlatformFlag() => byte(0x2a56f4)

// $2A58BC: [32-bit] Ed's X Position
function EdXPosition() => dword(0x2A58BC)

// $2A58C0: [32-bit] Ed's Y Position
function EdYPosition() => dword(0x2A58C0)

// $2A58C4: [32-bit] Ed's Z Position
function EdZPosition() => dword(0x2A58C4)

// $2AA888: [8-bit] Collected Dominos, max of 0x06 (6)
function CollectedDominos() => byte(0x2AA888)

// $2AA88C: [8-bit] Collected Jumping Stones, max of 0x06 (6)
function CollectedJumpingStones() => byte(0x2AA88C)

// $2AA88E: [8-bit] Collected Propellers, max of 0x06 (6)
function CollectedPropellers() => byte(0x2AA88E)

// $2AA890: [8-bit] Collected Feathers, max of 0x06 (6)
function CollectedFeathers() => byte(0x2AA890)

// $2AA892: [8-bit] Collected Piggy Banks, max of 0x06 (6)
function CollectedPiggyBanks() => byte(0x2AA892)

// $2AA894: [8-bit] Collected antidotes in Ski Slope, max of 0x14 (20)
function SkiSlopeAntidotes() => byte(0x2AA894)

// $2AA896: [8-bit] Collected Springs, max of 0x06 (6)
function CollectedSprings() => byte(0x2AA896)

// $2AA898: [8-bit] Collected antidotes in South Plain, max of 0x14 (20)
function SouthPlainAntidotes() => byte(0x2AA898)

// $2AA89A: [8-bit] Collected thermometers in Ski Slope, max of 0x0a (10)
function SkiSlopeThermometers() => byte(0x2AA89A)

// $2AA89C: [8-bit] Collected antidotes in Doc's Cave, max of 0x14 (20)
function DocsCaveAntidotes() => byte(0x2AA89C)

// $2AA89E: [8-bit] Collected thermometers in South Plain, max of 0x0a (10)
function SouthPlainThermometers() => byte(0x2AA89E)

// $2AA8A0: [8-bit] Collected antidotes in Vegetable HQ, max of 0x14 (20)
function VegetableHQAntidotes() => byte(0x2AA8A0)

// $2AA8A2: [8-bit] Collected thermometers in Doc's Cave, max of 0x0a (10)
function DocsCaveThermometers() => byte(0x2AA8A2)

// $2AA8A4: [8-bit] Collected antidotes in North Plain, max of 0x14 (20)
function NorthPlainAntidotes() => byte(0x2AA8A4)

// $2AA8A6: [8-bit] Collected thermometers in Vegetable HQ, max of 0x0a (10)
function VegetableHQThermometers() => byte(0x2AA8A6)

// $2AA8A8: [8-bit] Collected antidotes in Canyon, max of 0x14 (20)
function CanyonAntidotes() => byte(0x2AA8A8)

// $2AA8AA: [8-bit] Collected thermometers in North Plain, max of 0x0a (10)
function NorthPlainThermometers() => byte(0x2AA8AA)

// $2AA8AC: [8-bit] Collected antidotes in Glacier Cocktail, max of 0x14 (20)
function GlacierCocktailAntidotes() => byte(0x2AA8AC)

// $2AA8AE: [8-bit] Collected thermometers in Canyon, max of 0x0a (10)
function CanyonThermometers() => byte(0x2AA8AE)

// $2AA8B0: [8-bit] Collected antidotes in Pyramid, max of 0x14 (20)
function PyramidAntidotes() => byte(0x2AA8B0)

// $2AA8B2: [8-bit] Collected thermometers in Glacier Cocktail, max of 0x0a (10)
function GlacierCocktailThermometers() => byte(0x2AA8B2)

// $2AA8B4: [8-bit] Collected antidotes in Pressure Cooker, max of 0x14 (20)
function PressureCookerAntidotes() => byte(0x2AA8B4)

// $2AA8B6: [8-bit] Collected thermometers in Pyramid, max of 0x0a (10)
function PyramidThermometers() => byte(0x2AA8B6)

// $2AA8BA: [8-bit] Collected thermometers in Pressure Cooker, max of 0x0a (10)
function PressureCookerThermometers() => byte(0x2AA8BA)

// $2AA8BE: [8-bit] Collected thermometers in Grögh's Lair max of 0x0a (10)
function GroghsLairThermometers() => byte(0x2AA8BE)

// $2AA8C2: [8-bit] Collected thermometers in Magic Mushroom Hideout, max of 0x0a (10)
function MagicMushroomThermometers() => byte(0x2AA8C2)

// $2ABFC0: [8-bit] Ski Slope Timer Status Flag
//          0x00 = The timer has not started counting yet. Ed may be at the top of the Ski Slope having not yet started a run, or at the bottom of the Ski Slope after having completed a run that did not result in a PB record (see notes for value 0x03).
//          0x02 = Ed is currently in the middle of a run on the Ski Slope. This value does not necessarily mean the timer is currently increaseing in value, as the timer stops if the game is paused or a life is lost, during which this value still remains as 0x02.
//          0x03 = Ed finished a run on the Ski Slope, and it was a new PB record.
function SkiSlopeTimerFlag() => byte(0x2ABFC0)

// $2B8E3E: [8-bit] Doc Freed Flag
//          Changes value the first frame the door the doc is locked behind starts to open.
//          0x00 = Doc not yet freed
//          0x27 = Doc is freed
function DocFreedFlag() => byte(0x2b8e3e)

// $2E983C: [32-bit] Canyon Timer
function CanyonTimer() => dword(0x2E983C)

// $2E9868: [32-bit] Ski Slope Timer
function SkiSlopeTimer() => dword(0x2E9868)

// $3A2DE3: [8-bit] Corn Boss Health
//          Starts at 0x06 and drops by 0x02 each time the boss is hit.
//          Boss is defeated when value reaches 0x00.
function CornBossHealth() => byte(0x3A2DE3)


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

function AtTitleScreens() => GameStateIdentifier() == 0x0E70

function NotInDemoMode() => DemoModeFlag() != 0x01

function CurrentLoadedZoneIs(levelId) => LevelId() == levelId

function InArea(areaId) {
    if (areaId == AREA_ID_SKI_SLOPE) {
        return CurrentLoadedZoneIs(LEVEL_ID_SKI_SLOPE_AREA_1) || CurrentLoadedZoneIs(LEVEL_ID_SKI_SLOPE_AREA_2) || CurrentLoadedZoneIs(LEVEL_ID_SKI_SLOPE_AREA_3) || CurrentLoadedZoneIs(LEVEL_ID_SKI_SLOPE_AREA_4)
    }
    return false
}

function EdJumpedOnThisFrame() => prev(JumpFlag()) == 0xFF && JumpFlag() == 0x00

function TotalAntidotesCollected() => SkiSlopeAntidotes() + SouthPlainAntidotes() + DocsCaveAntidotes() + VegetableHQAntidotes() + NorthPlainAntidotes() +
                                      CanyonAntidotes() + GlacierCocktailAntidotes() + PyramidAntidotes() + PressureCookerAntidotes()
                                      
function TotalThermometersCollected() => SkiSlopeThermometers() + SouthPlainThermometers() + DocsCaveThermometers() + VegetableHQThermometers() + NorthPlainThermometers() + CanyonThermometers() +
                                         GlacierCocktailThermometers() + PyramidThermometers() + PressureCookerThermometers() + MagicMushroomThermometers() + GroghsLairThermometers()

function SkiSlopeLevelCleared() => CurrentLoadedZoneIs(LEVEL_ID_SKI_SLOPE_AREA_4) && prev(SkiSlopeTimerFlag()) == TIMER_ON && (SkiSlopeTimerFlag() == TIMER_OFF || SkiSlopeTimerFlag() == TIMER_OFF_NEW_RECORD)

function CollectedAllAntidotesInArea(areaId, antidoteCount) => NotInDemoMode() && InArea(areaId) && prev(antidoteCount) == 0x13 && antidoteCount == 0x14

function CollectedAllThermomitersInArea(areaId, thermomiterCount) => NotInDemoMode() && InArea(areaId) && prev(thermomiterCount) == 0x09 && thermomiterCount == 0x0A


// ------------------------
// ----- Achievements -----
// ------------------------

achievement(
    title = "Welcome to Earth Ed", points = 1,
    description = "Make it down the Ski Slope and enter South Plain",
    id = 404131, badge = "457552",
    trigger = NotInDemoMode() && prev(LevelId()) == 0x7EB0 && LevelId() == 0xC24C
)

achievement(
    title = "Great Nuts and Bolts", points = 2,
    description = "Defeat Robo-Suitcase and free the Doc",
    id = 404124, badge = "457538",
    trigger = NotInDemoMode() && LevelId() == 0x7EFC &&
              trigger_when(prev(DocFreedFlag()) == 0x00 && DocFreedFlag() == 0x27)
)

achievement(
    title = "Speedy Sledding", points = 5,
    description = "Make it down the Ski Slope with a time of 1 minute and 30 seconds or less",
    id = 403627, badge = "456657",
    trigger = NotInDemoMode() && SkiSlopeTimer() <= 90000 && SkiSlopeLevelCleared()
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

achievement(
    title = "You've Got Cornstarch On Your Hands", points = 3,
    description = "Defeat the 5th member of the corn people's revolutionary army",
    id = 404049, badge = "457428",
    trigger = NotInDemoMode() && LevelId() == 0x9524 && CornBossDialogueFlag() == 0x04 &&
              trigger_when(prev(CornBossHealth()) == 0x02 && CornBossHealth() == 0x00)
)

achievement(
    title = "No Toast for Ed", points = 5,
    description = "Reach the end of the toaster room in Doc's Cave using the red platform without taking damage or jumping after the platform begins moving",
    id = 404094, badge = "457527",
    trigger = NotInDemoMode() && LevelId() == 0x1A30 && never(DocsCaveToasterRoomPlatformFlag() < 0x02) &&
              once(prev(DocsCaveToasterRoomPlatformFlag()) == 0x01 && DocsCaveToasterRoomPlatformFlag() == 0x02) &&
              never(EdJumpedOnThisFrame()) && never(prev(CurrentHealth()) > CurrentHealth()) &&
              trigger_when(prev(EdYPosition()) < 0xC3B55715 && EdYPosition() >= 0xC3B55715)
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

LevelLookup = {
    0xEDAC: "training with the peashooter",
    0x11CC: "training with the bow tie glider",
    0x5ACC: "training with the bow tie glider",
    0xDE58: "training with the bow tie glider",
    0xDC94: "training with the pogo stick",
    0xF0EC: "at the South Plain",
    0xC24C: "at the South Plain",
    0x1E20: "at the South Plain",
    0x4F54: "at the South Plain",
    0x53BC: "at the South Plain",
    0x4BC0: "at the South Plain",
    0x70BC: "on the Ski Slope",
    0x0780: "on the Ski Slope",
    0x368C: "on the Ski Slope",
    0x7EB0: "on the Ski Slope",
    0xEF8C: "in Doc's Cave",
    0xC040: "in Doc's Cave",
    0xD4E4: "in Doc's Cave",
    0x9524: "in Doc's Cave",
    0xB51C: "in Doc's Cave",
    0x1A30: "in Doc's Cave",
    0x7EFC: "in Doc's Cave",
    0x57A8: "infiltrating the magic mushroom's hideout",
    0x7FB8: "infiltrating the magic mushroom's hideout",
    0x3448: "infiltrating the magic mushroom's hideout",
    0x045C: "fighting the magic mushroom",
    0x9FB8: "infiltrating Grögh's Lair",
    0x5084: "infiltrating Grögh's Lair",
    0x3BBC: "infiltrating Grögh's Lair",
    0x2D00: "infiltrating Grögh's Lair",
    0x251C: "infiltrating Grögh's Lair",
    0x42E8: "infiltrating Grögh's Lair",
    0x630C: "fighting Grögh the Hellish",
    0x5F38: "fighting Grögh the Hellish",
    0xFFF8: "fighting Grögh the Hellish"
}

rich_presence_conditional_display(AtTitleScreens() || DemoModeFlag() == 0x01, "Starting the game")
rich_presence_conditional_display(LevelId() == 0x54C8, "Game Over")
rich_presence_conditional_display(LevelId() == 0x1C78, "Ed is beginning a new adventure")
rich_presence_conditional_display(LevelId() == 0xA504, "Ed has taken back the can of tonic and saved Earth")
rich_presence_conditional_display(LevelId() == 0xE56C || LevelId() == 0xCFF8 || LevelId() == 0x29A8 || LevelId() == 0x18F8 || LevelId() == 0x7FA0 || LevelId() == 0x7BD8, "Ed is in the Vegetables' HQ • {0}/6 Springs • {1}/180 Antidotes • {2}/110 Thermometers",
    rich_presence_value("Number", CollectedSprings()),
    rich_presence_value("Number", TotalAntidotesCollected()),
    rich_presence_value("Number", TotalThermometersCollected())
)
rich_presence_conditional_display(LevelId() == 0xE4C8 || LevelId() == 0xB1D8 || LevelId() == 0x8D8C || LevelId() == 0x3610 || LevelId() == 0xE4C0, "Ed is at North Plain • {0}/6 Propellers • {1}/180 Antidotes • {2}/110 Thermometers",
    rich_presence_value("Number", CollectedPropellers()),
    rich_presence_value("Number", TotalAntidotesCollected()),
    rich_presence_value("Number", TotalThermometersCollected())
)
rich_presence_conditional_display(LevelId() == 0xF394 || LevelId() == 0xEFE4 || LevelId() == 0xF6BC || LevelId() == 0xAC6C || LevelId() == 0xFC6C || LevelId() == 0xAA8C, "Ed is at the Canyon • {0}/6 Jumping Stones • {1}/180 Antidotes • {2}/110 Thermometers",
    rich_presence_value("Number", CollectedJumpingStones()),
    rich_presence_value("Number", TotalAntidotesCollected()),
    rich_presence_value("Number", TotalThermometersCollected())
)
rich_presence_conditional_display(LevelId() == 0xE700 || LevelId() == 0xCE5C || LevelId() == 0xF7E4 || LevelId() == 0x0A98, "Ed is at the Glacier Cocktail • {0}/6 Feathers • {1}/180 Antidotes • {2}/110 Thermometers",
    rich_presence_value("Number", CollectedFeathers()),
    rich_presence_value("Number", TotalAntidotesCollected()),
    rich_presence_value("Number", TotalThermometersCollected())
)
rich_presence_conditional_display(LevelId() == 0xFD38 || LevelId() == 0x0AB4 || LevelId() == 0x50E0 || LevelId() == 0x3A20 || LevelId() == 0xEDEC || LevelId() == 0x9448 || LevelId() == 0x0C38 || LevelId() == 0x90F8, "Ed is in the Pyramid • {0}/6 Dominos • {1}/180 Antidotes • {2}/110 Thermometers",
    rich_presence_value("Number", CollectedDominos()),
    rich_presence_value("Number", TotalAntidotesCollected()),
    rich_presence_value("Number", TotalThermometersCollected())
)
rich_presence_conditional_display(LevelId() == 0xC3C8 || LevelId() == 0xEE90 || LevelId() == 0xA6B0 || LevelId() == 0x275C || LevelId() == 0x1960, "Ed is at the Pressure Cooker • {0}/6 Piggy Banks • {1}/180 Antidotes • {2}/110 Thermometers",
    rich_presence_value("Number", CollectedPiggyBanks()),
    rich_presence_value("Number", TotalAntidotesCollected()),
    rich_presence_value("Number", TotalThermometersCollected())
)
rich_presence_display("Ed is {0} • {1}/180 Antidotes • {2}/110 Thermometers",
    rich_presence_lookup("Level", LevelId(), LevelLookup, fallback="lost in spacetime"),
    rich_presence_value("Number", TotalAntidotesCollected()),
    rich_presence_value("Number", TotalThermometersCollected())
)
