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

// $113B03: [8-bit] In Game Flag
//          Can be used to check if in normal gameplay.
//          This flag will not be set in situations like the game being paused, or the game is loading into a new area.
//          It will be set when the player is in game and able to control Ed.
//          0x00 = Not In Game
//          0x01 = In Game
function InGameFlag() => byte(0x113B03)

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

// $1316A0: [8-bit] Level Restart Flag
//          This flag is used to know when Restart has been selected from the pause menu. The Restart option is only available in certain levels.
//          0x00 = Restart has been selected from the pause menu and the area is currently reloading
//          0x01 = Default State
function RestartLevelFlag() => byte(0x1316A0)

// $139833: [8-bit] Game Paused Flag
//          Can be used to determine if the game is at the pause screen.
//          This value changes to 0x01 as soon as the start button is pressed and will not return to 0x00 until the full unpaused animation sequence has finished playing and the game world starts moving.
//          0x00 = Not Paused
//          0x01 = Paused
function GamePausedFlag() => byte(0x139833)

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
//          0xD868 = Pyramid (Area 7, Secret Puzzle Room)
//          0x90F8 = Pyramid (Area 8, Rotating Wall Puzzle, Bathtub, Exit 2)
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

// $29A898: [8-bit] Chameleon Powder Transformation Flag
//          Can be used to determine if Ed has activated any chameleon powder transformation.
//          0x00 = Transformed
//          0x10 = Not Transformed
function ChameleonPowderTransformationFlag() => byte(0x29A898)

// $29A89A: [8-bit] Max Health, max of 0x0F (15)
//          Increases by 0x01 each time 10 thermometers are collected.
function MaxHealth() => byte(0x29A89A)

// $29A89B: [8-bit] Current Health
//          Ed may still be alive if value is 0x00, as a life is not lost until another hit is taken after this value is 0x00
function CurrentHealth() => byte(0x29A89B)

// $2A54F5: [8-bit] Jump Flag
//         The value is set to 0x00 when Ed begins jumping and resets to 0xFF at the height of Ed's jump.
//         This value is tied to actual player jumps, pressing A when Ed is not able to start a jump will not affect the value.
//         0x00 = Jump Initiated
//         0xFF = Default state, not jumping
function JumpFlag() => byte(0x2A54F5)

// $2A56C2: [16-bit] Ed Current State
//          This value can be checked to see if Ed is doing certain actions
//          0x3F80 = Climbing up from hanging off a ledge
//          0x4220 = Parachuting with bow Tie
//          0x4290 = Exiting a portal
//          0x42A0 = Gliding with Bow Tie
//          0x42F0 = Default
//          0x42C8 = Entering a portal, or swiming across the top of some water
//          0x43B4 = Super Ed
//          0x4461 = In water, starting a dive
//          0x446D = In water, floating at top, not moving
//          0x4477 = In water, diving
function EdCurrentState() => word(0x2A56C2)

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

// $2A8958: [16-bit] Chameleon Powder Transformation
//          This value changes when using the chameleon powder to transform into different characters/objects.
//          Note that when no tranformation is in place, the value that identifies Ed's not-transformed state matches the current level ID.
//
//          0x30B4 = Tomato (South Plain: 0xC24C)
//          0x66F8 = Mummy (South Plain: 0x4BC0) 
//          0xAAD0 = Dino-Cow (South Plain: 0x53BC)
//          0x2FD4 = Bowling Bomb (Doc's Cave: 0xEF8C)
//          0x65C4 = Support Column (Pyramid: 0x3A20)
//          0xFCE8 = Scarab (Pyramid: 0xD868)
//          0x9524 = Grögh (Pressure Cooker: 0x275C)
//          0x2EE0 = Box (Pressure Cooker: 0x1960)
//          0x5068 = Boulder (Grögh's Lair: 0x2D00)
function ChameleonPowderTransformation() => word(0x2A8958)

// $2AA886: [16-bit] Obtained Upgrades
//          0x0000 = No upgrades
//          Individual bits can be checked to see if an upgrade is currently obtained.
//          The progression of upgrades is 0x0000 -> 0x0007 -> 0x000F -> 0x008F -> 0x018F -> 0x038F -> 0x03FF
//
//          bit0, bit1, bit2 = Basic Stick (all 3 bits must be set)
//          bit3 = Peashooter
//          bit4, bit5, bit6 = Pogo Stick (all 3 bits must be set)
//          bit7 = Bow Tie Glider
//          bit8 = Pressurized Goldfish Bowl
//          bit9 = Chameleon Powder
function ObtainedUpgrades() => word(0x2AA886)

// $2AA88A: [8-bit] Current Peashooter Ammo
//          The regular max value is 0xFA (250).
//          If the value is 0xFF, Ed will have unlimited ammo.
//          Unlimited ammo is granted any time Ed is in a traning mission, or permanently after Ed brings 5 of the 6 piggybanks to the Doc.
function CurrentPeashooterAmmo() => byte(0x2AA88A)

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

// $2A56E0: [8-bit] Ed Movement Flag
//          Can be used to check if Ed is in certain movement states.
//          0x00 = Idle
//          0x01 = Moving on the ground
//          0x02 = Moving on the ground and changing direction or holding the peashooter
//          0x08 = In the air, falling, may also be moving while on the pogo stick and in the air from a hop
//          0x09 = In the air, gliding
function EdMovementFlag() => byte(0x2A56E0)

// $2B8E3E: [8-bit] Doc Freed Flag
//          Changes value the first frame the door the doc is locked behind starts to open.
//          0x00 = Doc not yet freed
//          0x27 = Doc is freed
function DocFreedFlag() => byte(0x2b8e3e)

// $2E9860: [32-bit] Canyon Timer (Segment 5)
//          Increases in value when the timer is active in the Canyon's fifth area (level ID = 0xAA8C).
//          This value is initialized to the total time of all previous areas when the area is loaded.
//          This value is in milliseconds. It will be the total time of the current Canyon run when the timer flag is set to 0x03.
function CanyonTimer() => dword(0x2E9860)

// $2E9868: [32-bit] Ski Slope Timer
//          Increases in value when the timer is active on the Ski Slope.
//          This value is the number of milliseconds on the current runnning timer.
//          Note that the exact value shown in game may not always match this value 1-1, as the game does not show accurate decimal seconds on the timer - its just a fixed repeating sprite animation to make it appear like an accurate timer. However once the timer stops after reaching the end of the level, the time displayed on the timer in game will match this value 1-1.
function SkiSlopeTimer() => dword(0x2E9868)

// $2E9868: [32-bit] Ski Slope Timer Checkpoint
//          When loading into a new area of the Ski Slope, this value will store the current value of the Ski Slope Timer.
//          If the player pauses the game and choses to restart, the area will be reloaded and this value will be restored to the Ski Slope Timer address (0x2E9868).
function SkiSlopeTimerCheckpoint() => dword(0x2E986C)

// $2E9878: [8-bit] Canyon Timer Flag
//          0x00 = Timer not active, Ed is ether at the beginning and has not started yet, or is currenty loading into another section in the level
//          0x02 = Timer is active, Ed is in the process of playing through the level
//          0x03 = Timer is not active, Ed is at the end of the level
//
//          When the game is paused this value remains at 0x02, even though the timer is not counting.
function CanyonTimerFlag() => byte(0x2E9878)

// $3509BE: [8-bit] Main Quest Progression Flag
//          Note that this value can only be relied on when loaded into the Doc's workshop area (level id 0xF0EC).
//          Increments in value when taking to the Doc during key moments of the main quest.
//
//          0x02 = Ed gives 6 springs to the Doc and recieves the Peashooter upgrade
//          0x03 = Ed gives 6 propellers to the Doc and recieves the Bow Tie glider upgrade
//          0x04 = Ed gives 6 Jumping Stones to the Doc and recieves the Pressurized Goldfish Bowl upgrade
//          0x05 = Ed gives 6 feathers to the Doc and recieves the Chameleon Powder upgrade
//          0x06 = Ed gives 6 Dominoes to the Doc and recieves the Pogo Stick upgrade
//          0x07 = Ed gives the 6th piggybank to the Doc and the catapult is now operational
function MainQuestProgressionFlag() => byte(0x3509BE)

// $351484: [8-bit] Pyramid Target Puzzle Flag
//          When in pyramid level id 0xD868, tracks progress solving the target puzzle.
//          This value starts at 0x00 when no progress has been made, and increments by 0x01 each time a target is hit in the correct order.
//          If at any time a target is hit in the incorrect order, the value resets to 0x00 and the puzzle must be solved again from the beginning.
//          When the value reaches 0x05, all targets have been hit in the correct order and the puzzle is solved.
function PyramidTargetPuzzleFlag() => byte(0x351484)

// $3A0D60: [32-bit] Ed's Y Position (Magic Mushroom's Hideout Slide)
function EdYPositionMagicMushroomHideout() => dword(0x3A0D60)

// $3A0D64: [32-bit] Ed's Z Position (Magic Mushroom's Hideout Slide)
function EdZPositionMagicMushroomHideout() => dword(0x3A0D64)

// $3A2DE3: [8-bit] Corn Boss Health
//          Starts at 0x06 and drops by 0x02 each time the boss is hit.
//          Boss is defeated when value reaches 0x00.
function CornBossHealth() => byte(0x3A2DE3)

// $3A3453: [8-bit] Chili Pepper HP (Vegetable HQ level id 0x18F8)
//          0x03 = Starting value, max health
//          Reduced by 0x01 each time the Chili Pepper is hit with an attack from Super Ed.
//          Chili Pepper is defeated when value reaches 0x00.
function ChiliPepperHealth() => byte(0x3A3453)

// $3A4067: [8-bit] Robosuitcase Boss Health
//          During robosuitcase boss fight, level id = 0x7EFC
//          Max value of 0x04.
//          Decreases by 0x01 each time the boss is hit.
//          Boss is defeated when the value reaches 0x00.
function RobosuitcaseBossHealth() => byte(0x3A4067)

// $3AE313: [8-bit] Grögh Boss Health
//          During Grögh boss fight (final phase), level id = 0xFFF8
//          Max value of 0x03.
//          Decreases by 0x01 each time the boss is hit.
//          Boss is defeated when the value reaches 0x00.
function GroghBossHealth() => byte(0x3AE313)

// $3C7713: [8-bit] Magic Mushroom Boss Health
//          During Magic Mushroom boss fight, level id = 0x045C
//          Max value of 0x08.
//          Decreases by 0x01 each time the boss is hit.
//          Boss is defeated when the value reaches 0x00.
function MagicMushroomBossHealth() => byte(0x3C7713)

// $3C97C6: [8-bit] North Plain Trap Door Flag
//          Identifies if the breakable trap door in the North Plain has been broken in level id 0x8D8C.
//          This value can only be relied on when currenty loaded into the level.
//          0x00 = Not Broken
//          0x01 = Broken
function NorthPlainTrapDoorFlag() => byte(0x3C97C6)


// ---------------------
// ----- Constants -----
// ---------------------

LEVEL_ID_SKI_SLOPE_AREA_1 = 0x70BC
LEVEL_ID_SKI_SLOPE_AREA_2 = 0x0780
LEVEL_ID_SKI_SLOPE_AREA_3 = 0x368C
LEVEL_ID_SKI_SLOPE_AREA_4 = 0x7EB0

LEVEL_ID_DOCS_CAVE_AREA_7 = 0x7EFC

LEVEL_ID_VEGHQ_START = 0xE56C
LEVEL_ID_VEGHQ_AREA_1 = 0xCFF8
LEVEL_ID_VEGHQ_AREA_2 = 0x29A8
LEVEL_ID_VEGHQ_AREA_3 = 0x18F8
LEVEL_ID_VEGHQ_AREA_4 = 0x7FA0
LEVEL_ID_VEGHQ_AREA_5 = 0x7BD8

LEVEL_ID_CANYON_AREA_1 = 0xEFE4
LEVEL_ID_CANYON_AREA_2 = 0xF6BC
LEVEL_ID_CANYON_AREA_3 = 0xAC6C
LEVEL_ID_CANYON_AREA_4 = 0xFC6C
LEVEL_ID_CANYON_AREA_5 = 0xAA8C

LEVEL_ID_MUSHROOM_HIDEOUT_AREA_1 = 0x57A8
LEVEL_ID_MUSHROOM_HIDEOUT_AREA_2 = 0x7FB8
LEVEL_ID_MUSHROOM_HIDEOUT_AREA_3 = 0x3448
LEVEL_ID_MUSHROOM_HIDEOUT_AREA_4 = 0x045C

AREA_ID_SKI_SLOPE = 1
AREA_ID_VEG_HQ = 3
AREA_ID_CANYON = 5
AREA_ID_MUSHROOM_SLIDE = 9

ED_STATE_PARACHUTING = 0x4220

ED_MOVEMENT_FALLING = 0x08
ED_MOVEMENT_GLIDING = 0x09

TRANSFORMATION_ID_TOMATO = 0x00
TRANSFORMATION_ID_MUMMY = 0x01
TRANSFORMATION_ID_DINO_COW = 0x02
TRANSFORMATION_ID_BOWLING_BOMB = 0x03
TRANSFORMATION_ID_SUPPORT_COLUMN = 0x04
TRANSFORMATION_ID_SCARAB = 0x05
TRANSFORMATION_ID_BOX = 0x06
TRANSFORMATION_ID_GROGH = 0x07
TRANSFORMATION_ID_BOULDER = 0x08

MINION_DEFEATED = 0x01
MINION_NOT_DEFEATED = 0x10

NORTH_PLAIN_PLATFORM_TARGET_ON = 0x02
NORTH_PLAIN_PLATFORM_TARGET_OFF = 0x01
NORTH_PLAIN_PLATFORM_TARGETS = [0x347608, 0x347650, 0x347698, 0x3476E0, 0x347728, 0x347770, 0x3477B8, 0x347800, 0x347848, 0x347890, 0x3478d8, 0x347920]

MUSHROOM_SLIDE_START_POSITION = 0xC4E33935
MUSHROOM_SLIDE_END_POSITION = 0xC456B8C2

ROBOSUITCASE_BOSS_MAX_HEALTH = 0x04
MUSHROOM_BOSS_MAX_HEALTH = 0x08
GROGH_BOSS_MAX_HEALTH = 0x03


// ---------------------
// ------ Lookups ------
// ---------------------

// Key is level ID, value is array of enemy defeated flag addresses
CanyonEnemyDefeatedLookup = {
    LEVEL_ID_CANYON_AREA_1: [0x3A40A0, 0x39EF8C],
    LEVEL_ID_CANYON_AREA_2: [0x39E930, 0x3A3A44, 0x3A4250, 0x3A4A5C, 0x3A5268],
    LEVEL_ID_CANYON_AREA_3: [0x39E700, 0x3A3814],
    LEVEL_ID_CANYON_AREA_5: [0x39EA9C, 0x3A3BB0, 0x3A43BC, 0x3A4BC8, 0x3A53D4]
}

// Key is level ID, value is array of enemy defeated flag addresses
VegHQEnemyDefeatedLookup = {
    LEVEL_ID_VEGHQ_AREA_2: [0x3A022C, 0x3A1408, 0x3A1C1C, 0x3A2634],
    LEVEL_ID_VEGHQ_AREA_3: [0x3A43C0, 0x3A0920, 0x3A1AF4],
    LEVEL_ID_VEGHQ_AREA_4: [0x3A045C],
    LEVEL_ID_VEGHQ_AREA_5: [0x3A01A8, 0x3A1E98]
}


// ---------------------------
// ----- Logic Functions -----
// ---------------------------

function DictonaryArrayLength(dict) {
    count = 0
    for key in dict {
        count = count + length(dict[key])
    }
    return count
}

function AtTitleScreens() => GameStateIdentifier() == 0x0E70

function NotInDemoMode() => DemoModeFlag() != 0x01

function CurrentLoadedZoneIs(levelId) => LevelId() == levelId

function InArea(areaId) {
    if (areaId == AREA_ID_SKI_SLOPE) {
        return CurrentLoadedZoneIs(LEVEL_ID_SKI_SLOPE_AREA_1) || CurrentLoadedZoneIs(LEVEL_ID_SKI_SLOPE_AREA_2) || CurrentLoadedZoneIs(LEVEL_ID_SKI_SLOPE_AREA_3) || CurrentLoadedZoneIs(LEVEL_ID_SKI_SLOPE_AREA_4)
    }
    if (areaId == AREA_ID_VEG_HQ) {
        return CurrentLoadedZoneIs(LEVEL_ID_VEGHQ_AREA_1) || CurrentLoadedZoneIs(LEVEL_ID_VEGHQ_AREA_2) || CurrentLoadedZoneIs(LEVEL_ID_VEGHQ_AREA_3) || CurrentLoadedZoneIs(LEVEL_ID_VEGHQ_AREA_4) || CurrentLoadedZoneIs(LEVEL_ID_VEGHQ_AREA_5)
    }
    if (areaId == AREA_ID_CANYON) {
        return CurrentLoadedZoneIs(LEVEL_ID_CANYON_AREA_1) || CurrentLoadedZoneIs(LEVEL_ID_CANYON_AREA_2) || CurrentLoadedZoneIs(LEVEL_ID_CANYON_AREA_3) || CurrentLoadedZoneIs(LEVEL_ID_CANYON_AREA_4) || CurrentLoadedZoneIs(LEVEL_ID_CANYON_AREA_5)
    }
    if (areaId == AREA_ID_MUSHROOM_SLIDE) {
        return CurrentLoadedZoneIs(LEVEL_ID_MUSHROOM_HIDEOUT_AREA_1) || CurrentLoadedZoneIs(LEVEL_ID_MUSHROOM_HIDEOUT_AREA_2) || CurrentLoadedZoneIs(LEVEL_ID_MUSHROOM_HIDEOUT_AREA_3)
    }
    return false
}

function LevelRestartedOnThisFrame() => prev(RestartLevelFlag()) == 0x01 && RestartLevelFlag() == 0x00

function LostALife() => prev(Lives()) > Lives()

function EdJumpedOnThisFrame() => prev(JumpFlag()) == 0xFF && JumpFlag() == 0x00

function EdStartedGlidingOnThisFrame() => prev(EdMovementFlag()) != ED_MOVEMENT_GLIDING && EdMovementFlag() == ED_MOVEMENT_GLIDING

function EdIsGliding() => EdMovementFlag() == ED_MOVEMENT_GLIDING

function BecomeSuperEdOnThisFrame() => prev(EdCurrentState()) != 0x43B4 && EdCurrentState() == 0x43B4

function EdTransformedOnThisFrame(transformationId) {
    if (transformationId == TRANSFORMATION_ID_TOMATO) {
        return LevelId() == 0xC24C && prev(ChameleonPowderTransformation()) == 0xC24C && ChameleonPowderTransformation() == 0x30B4
    }
    if (transformationId == TRANSFORMATION_ID_MUMMY) {
        return LevelId() == 0x4BC0 && prev(ChameleonPowderTransformation()) == 0x4BC0 && ChameleonPowderTransformation() == 0x66F8
    }
    if (transformationId == TRANSFORMATION_ID_DINO_COW) {
        return LevelId() == 0x53BC && prev(ChameleonPowderTransformation()) == 0x53BC && ChameleonPowderTransformation() == 0xAAD0
    }
    if (transformationId == TRANSFORMATION_ID_BOWLING_BOMB) {
        return LevelId() == 0xEF8C && prev(ChameleonPowderTransformation()) == 0xEF8C && ChameleonPowderTransformation() == 0x2FD4
    }
    if (transformationId == TRANSFORMATION_ID_SUPPORT_COLUMN) {
        return LevelId() == 0x3A20 && prev(ChameleonPowderTransformation()) == 0x3A20 && ChameleonPowderTransformation() == 0x65C4
    }
    if (transformationId == TRANSFORMATION_ID_SCARAB) {
        return LevelId() == 0xD868 && prev(ChameleonPowderTransformation()) == 0xD868 && ChameleonPowderTransformation() == 0xFCE8
    }
    if (transformationId == TRANSFORMATION_ID_GROGH) {
        return LevelId() == 0x275C && prev(ChameleonPowderTransformation()) == 0x275C && ChameleonPowderTransformation() == 0x9524
    }
    if (transformationId == TRANSFORMATION_ID_BOX) {
        return LevelId() == 0x1960 && prev(ChameleonPowderTransformation()) == 0x1960 && ChameleonPowderTransformation() == 0x2EE0
    }
    if (transformationId == TRANSFORMATION_ID_BOULDER) {
        return LevelId() == 0x2D00 && prev(ChameleonPowderTransformation()) == 0x2D00 && ChameleonPowderTransformation() == 0x5068
    }
    return false
}

function PreviousFrameTotalAntidotesCollected() => prev(SkiSlopeAntidotes()) + prev(SouthPlainAntidotes()) + prev(DocsCaveAntidotes()) + prev(VegetableHQAntidotes()) + prev(NorthPlainAntidotes()) +
                                      prev(CanyonAntidotes()) + prev(GlacierCocktailAntidotes()) + prev(PyramidAntidotes()) + prev(PressureCookerAntidotes())

function TotalAntidotesCollected() => SkiSlopeAntidotes() + SouthPlainAntidotes() + DocsCaveAntidotes() + VegetableHQAntidotes() + NorthPlainAntidotes() +
                                      CanyonAntidotes() + GlacierCocktailAntidotes() + PyramidAntidotes() + PressureCookerAntidotes()

function PreviousFrameTotalThermometersCollected() => prev(SkiSlopeThermometers()) + prev(SouthPlainThermometers()) + prev(DocsCaveThermometers()) + prev(VegetableHQThermometers()) + prev(NorthPlainThermometers()) + prev(CanyonThermometers()) +
                                                      prev(GlacierCocktailThermometers()) + prev(PyramidThermometers()) + prev(PressureCookerThermometers()) + prev(MagicMushroomThermometers()) + prev(GroghsLairThermometers())
                                      
function TotalThermometersCollected() => SkiSlopeThermometers() + SouthPlainThermometers() + DocsCaveThermometers() + VegetableHQThermometers() + NorthPlainThermometers() + CanyonThermometers() +
                                         GlacierCocktailThermometers() + PyramidThermometers() + PressureCookerThermometers() + MagicMushroomThermometers() + GroghsLairThermometers()

function SkiSlopeLevelCleared() => CurrentLoadedZoneIs(LEVEL_ID_SKI_SLOPE_AREA_4) && SkiSlopeTimerCheckpoint() != SkiSlopeTimer() && prev(SkiSlopeTimerFlag()) == 0x02 && (SkiSlopeTimerFlag() == 0x00 || SkiSlopeTimerFlag() == 0x03)

function CanyonLevelCleared() => CurrentLoadedZoneIs(LEVEL_ID_CANYON_AREA_5) && prev(CanyonTimerFlag()) != 0x03 && CanyonTimerFlag() == 0x03
function CanyonLevelTimeTrialCleared() => CurrentLoadedZoneIs(LEVEL_ID_CANYON_AREA_5) && prev(CanyonTimerFlag()) == 0x02 && CanyonTimerFlag() == 0x03

function CollectedAllAntidotesInArea(antidoteCount) => prev(antidoteCount) == 0x13 && measured(antidoteCount == 0x14, when=NotInDemoMode(), format="raw")

function CollectedAllThermometersInArea(thermomiterCount) => prev(thermomiterCount) == 0x09 && measured(thermomiterCount == 0x0A, when=NotInDemoMode(), format="raw")

function MinionDefeatedOnThisFrame(address) => prev(byte(address)) == MINION_NOT_DEFEATED && byte(address) == MINION_DEFEATED

function AllCanyonEnemyDefeatedConditions() {
    enemiesDefeated = []
    for key in CanyonEnemyDefeatedLookup {
        for address in CanyonEnemyDefeatedLookup[key]
            array_push(enemiesDefeated, LevelId() ==  key && MinionDefeatedOnThisFrame(address))
    }
    return enemiesDefeated
}

function AllEnemyDefeatedConditions(enemyDefeatedLookup) {
    enemiesDefeated = []
    for key in enemyDefeatedLookup {
        for address in enemyDefeatedLookup[key]
            array_push(enemiesDefeated, once(LevelId() ==  key && MinionDefeatedOnThisFrame(address)))
    }
    return enemiesDefeated
}

function NorthPlainPlatformTargetsActivatedConditions() {
    activated = []
    for address in NORTH_PLAIN_PLATFORM_TARGETS
        array_push(activated, once(LevelId() == 0x3610 && prev(byte(address)) == NORTH_PLAIN_PLATFORM_TARGET_OFF && byte(address) == NORTH_PLAIN_PLATFORM_TARGET_ON))
     return activated
}

function EdStartedMagicMushroomSlideOnThisFrame() => LevelId() == 0x57A8 && prev(EdYPositionMagicMushroomHideout()) > MUSHROOM_SLIDE_START_POSITION && EdYPositionMagicMushroomHideout() <= MUSHROOM_SLIDE_START_POSITION

function EdFinishedMagicMushroomSlideOnThisFrame() => LevelId() == 0x3448 && prev(EdZPositionMagicMushroomHideout()) < MUSHROOM_SLIDE_END_POSITION && EdZPositionMagicMushroomHideout() >= MUSHROOM_SLIDE_END_POSITION

function MushroomSlideTimeTrialFrames() => (LevelId() == 0x57A8 && EdYPositionMagicMushroomHideout() <= MUSHROOM_SLIDE_START_POSITION) || LevelId() == 0x7FB8 || LevelId() == 0x3448


// ------------------------
// ----- Achievements -----
// ------------------------

achievement(
    title = "Welcome to Earth Ed", points = 1,
    description = "Make it down the Ski Slope and enter South Plain",
    id = 404131, badge = "457552",
    trigger = NotInDemoMode() && prev(LevelId()) == 0x7EB0 && LevelId() == 0xC24C,
    type = "progression"
)

achievement(
    title = "Great Nuts and Bolts", points = 2,
    description = "Defeat robosuitcase and free the Doc",
    id = 404124, badge = "457538",
    trigger = NotInDemoMode() && LevelId() == 0x7EFC &&
              trigger_when(prev(DocFreedFlag()) == 0x00 && DocFreedFlag() == 0x27),
    type = "progression"
)

achievement(
    title = "Six Springs Ready and Jumping", points = 3,
    description = "Give 6 springs to the Doc and obtain the peashooter",
    id = 405830, badge = "465289",
    trigger = NotInDemoMode() && LevelId() == 0xF0EC && prev(ObtainedUpgrades()) == 0x0007 && ObtainedUpgrades() == 0x000F,
    type = "progression"
)

achievement(
    title = "Looking Pretty Fly For a Guy With a Bow Tie", points = 3,
    description = "Give 6 propellers to the Doc and obtain the bow tie glider",
    id = 405831, badge = "465290",
    trigger = NotInDemoMode() && LevelId() == 0xF0EC && prev(ObtainedUpgrades()) == 0x000F && ObtainedUpgrades() == 0x008F,
    type = "progression"
)

achievement(
    title = "Like a Graceful Purple Dolphin", points = 3,
    description = "Give 6 jumping stones to the Doc and obtain the pressurized goldfish bowl",
    id = 406714, badge = "465291",
    trigger = NotInDemoMode() && LevelId() == 0xF0EC && prev(ObtainedUpgrades()) == 0x008F && ObtainedUpgrades() == 0x018F,
    type = "progression"
)

achievement(
    title = "More Than Just a Party Trick", points = 3,
    description = "Give 6 feathers to the Doc and obtain the chameleon powder",
    id = 406721, badge = "465293",
    trigger = NotInDemoMode() && LevelId() == 0xF0EC && prev(ObtainedUpgrades()) == 0x018F && ObtainedUpgrades() == 0x038F,
    type = "progression"
)

achievement(
    title = "Just What the Doctor Ordered", points = 3,
    description = "Give 6 dominos to the Doc and obtain the pogo stick",
    id = 407123, badge = "465295",
    trigger = NotInDemoMode() && LevelId() == 0xF0EC && prev(ObtainedUpgrades()) == 0x038F && ObtainedUpgrades() == 0x03FF,
    type = "progression"
)

achievement(
    title = "Piggynapped", points = 3,
    description = "Give 5 wild piggybanks to the Doc and obtain unlimited ammo for the peashooter",
    id = 407168, badge = "465297",
    trigger = NotInDemoMode() && LevelId() == 0xF0EC && ObtainedUpgrades() == 0x03FF && CollectedPiggyBanks() == 0x05 && prev(CurrentPeashooterAmmo()) < 0xFF && CurrentPeashooterAmmo() == 0xFF,
    type = "progression"
)

achievement(
    title = "Fully Immune", points = 5,
    description = "Collect 160 antidotes and become immune to the effects of the tonic",
    id = 407467, badge = "461334",
    trigger = NotInDemoMode() && PreviousFrameTotalAntidotesCollected() == 159 && TotalAntidotesCollected() == 160,
    type = "progression"
)

achievement(
    title = "When Pigs Fly", points = 5,
    description = "Give the 6th wild piggybank to the Doc and complete the catapult",
    id = 409967, badge = "465298",
    trigger = NotInDemoMode() && LevelId() == 0xF0EC && prev(MainQuestProgressionFlag()) == 0x06 && MainQuestProgressionFlag() == 0x07,
    type = "progression"
)

achievement(
    title = "Point Of No Return", points = 5,
    description = "Make it though Grögh's Lair and find the groga machine (back up your save now)",
    id = 410834, badge = "465299",
    trigger = NotInDemoMode() && prev(LevelId()) == 0x2D00 && LevelId() == 0x42E8,
    type = "progression"
)

achievement(
    title = "Tonic Tranquility", points = 25,
    description = "Take the can of tonic back from Grögh and save planet Earth",
    id = 409969, badge = "464378",
    trigger = NotInDemoMode() && prev(LevelId()) == 0xFFF8 && LevelId() == 0xA504,
    type = "win_condition"
)

achievement(
    title = "Super Buff", points = 10,
    description = "Collect enough thermometers to max out Ed's health bar",
    id = 409730, badge = "464281",
    trigger = NotInDemoMode() && prev(MaxHealth()) == 0x0E && MaxHealth() == 0x0F
)

achievement(
    title = "Golden Head Ed", points = 5,
    description = "Have a total of 25 lives",
    id = 410701, badge = "465193",
    trigger = NotInDemoMode() && prev(Lives()) == 24 && Lives() == 25
)

achievement(
    title = "Antidote Hunter I", points = 5,
    description = "Collect all 20 antidotes on the Ski Slope",
    id = 403658, badge = "456678",
    trigger = CollectedAllAntidotesInArea(SkiSlopeAntidotes())
)

achievement(
    title = "Thermometer Hunter I", points = 5,
    description = "Collect all 10 thermometers on the Ski Slope",
    id = 403659, badge = "456679",
    trigger = CollectedAllThermometersInArea(SkiSlopeThermometers())
)

achievement(
    title = "Antidote Hunter II", points = 5,
    description = "Collect all 20 antidotes in Doc's Cave",
    id = 404196, badge = "457624",
    trigger = CollectedAllAntidotesInArea(DocsCaveAntidotes())
)

achievement(
    title = "Thermometer Hunter II", points = 5,
    description = "Collect all 10 thermometers in in Doc's Cave",
    id = 404197, badge = "457625",
    trigger = CollectedAllThermometersInArea(DocsCaveThermometers())
)

achievement(
    title = "Antidote Hunter III", points = 5,
    description = "Collect all 20 antidotes in the Vegetables' HQ",
    id = 404198, badge = "457626",
    trigger = CollectedAllAntidotesInArea(VegetableHQAntidotes())
)

achievement(
    title = "Thermometer Hunter III", points = 5,
    description = "Collect all 10 thermometers in the Vegetables' HQ",
    id = 404199, badge = "457627",
    trigger = CollectedAllThermometersInArea(VegetableHQThermometers())
)

achievement(
    title = "Antidote Hunter IV", points = 5,
    description = "Collect all 20 antidotes at the North Plain",
    id = 404200, badge = "457628",
    trigger = CollectedAllAntidotesInArea(NorthPlainAntidotes())
)

achievement(
    title = "Thermometer Hunter IV", points = 5,
    description = "Collect all 10 thermometers at the North Plain",
    id = 404201, badge = "457629",
    trigger = CollectedAllThermometersInArea(NorthPlainThermometers())
)

achievement(
    title = "Antidote Hunter V", points = 5,
    description = "Collect all 20 antidotes at the Canyon",
    id = 404202, badge = "457630",
    trigger = CollectedAllAntidotesInArea(CanyonAntidotes())
)

achievement(
    title = "Thermometer Hunter V", points = 5,
    description = "Collect all 10 thermometers at the Canyon",
    id = 404203, badge = "457631",
    trigger = CollectedAllThermometersInArea(CanyonThermometers())
)

achievement(
    title = "Antidote Hunter VI", points = 5,
    description = "Collect all 20 antidotes at the Glacier Cocktail",
    id = 404204, badge = "457632",
    trigger = CollectedAllAntidotesInArea(GlacierCocktailAntidotes())
)

achievement(
    title = "Thermometer Hunter VI", points = 5,
    description = "Collect all 10 thermometers at the Glacier Cocktail",
    id = 404205, badge = "457633",
    trigger = CollectedAllThermometersInArea(GlacierCocktailThermometers())
)

achievement(
    title = "Antidote Hunter VII", points = 5,
    description = "Collect all 20 antidotes in the Pyramid",
    id = 404206, badge = "457634",
    trigger = CollectedAllAntidotesInArea(PyramidAntidotes())
)

achievement(
    title = "Thermometer Hunter VII", points = 5,
    description = "Collect all 10 thermometers in the Pyramid",
    id = 404207, badge = "457635",
    trigger = CollectedAllThermometersInArea(PyramidThermometers())
)

achievement(
    title = "Antidote Hunter VIII", points = 5,
    description = "Collect all 20 antidotes at the Pressure Cooker",
    id = 404208, badge = "457636",
    trigger = CollectedAllAntidotesInArea(PressureCookerAntidotes())
)

achievement(
    title = "Thermometer Hunter VIII", points = 5,
    description = "Collect all 10 thermometers at the Pressure Cooker",
    id = 404209, badge = "457637",
    trigger = CollectedAllThermometersInArea(PressureCookerThermometers())
)

achievement(
    title = "Antidote Hunter IX", points = 5,
    description = "Collect all 20 antidotes at the South Plain",
    id = 404210, badge = "457638",
    trigger = CollectedAllAntidotesInArea(SouthPlainAntidotes())
)

achievement(
    title = "Thermometer Hunter IX", points = 5,
    description = "Collect all 10 thermometers at the South Plain",
    id = 404211, badge = "457639",
    trigger = CollectedAllThermometersInArea(SouthPlainThermometers())
)

achievement(
    title = "Thermometer Hunter X", points = 5,
    description = "Collect all 10 thermometers at the magic mushroom's hideout",
    id = 404212, badge = "457640",
    trigger = CollectedAllThermometersInArea(MagicMushroomThermometers())
)

achievement(
    title = "Thermometer Hunter XI", points = 5,
    description = "Collect all 10 thermometers at Grögh's Lair",
    id = 404213, badge = "457641",
    trigger = CollectedAllThermometersInArea(GroghsLairThermometers())
)

achievement(
    title = "Antidote Aficionado", points = 25,
    description = "Collect all 180 antidotes",
    id = 409728, badge = "464279",
    trigger = NotInDemoMode() && PreviousFrameTotalAntidotesCollected() == 179 && TotalAntidotesCollected() == 180
)

achievement(
    title = "A Few Extra Won't Hurt", points = 25,
    description = "Collect all 110 thermometers",
    id = 409732, badge = "464283",
    trigger = NotInDemoMode() && PreviousFrameTotalThermometersCollected() == 109 && TotalThermometersCollected() == 110
)

achievement(
    title = "Mummy Masquerade", points = 2,
    description = "Transform into the mummy in South Plain",
    id = 408223, badge = "462576",
    trigger = NotInDemoMode() && EdTransformedOnThisFrame(TRANSFORMATION_ID_MUMMY)
)

achievement(
    title = "Seeing Red", points = 2,
    description = "Transform into a tomato in South Plain",
    id = 408224, badge = "462577",
    trigger = NotInDemoMode() && EdTransformedOnThisFrame(TRANSFORMATION_ID_TOMATO)
)

achievement(
    title = "Prehistoric Party", points = 2,
    description = "Transform into a dino-cow in South Plain",
    id = 408225, badge = "462579",
    trigger = NotInDemoMode() && EdTransformedOnThisFrame(TRANSFORMATION_ID_DINO_COW)
)

achievement(
    title = "Just Don't Touch Anything", points = 2,
    description = "Transform into a bowling bomb in Doc's Cave",
    id = 408222, badge = "462575",
    trigger = NotInDemoMode() && EdTransformedOnThisFrame(TRANSFORMATION_ID_BOWLING_BOMB)
)

achievement(
    title = "Breaking and Entering", points = 2,
    description = "Transform into a support column in the Pyramid",
    id = 410726, badge = "465194",
    trigger = NotInDemoMode() && EdTransformedOnThisFrame(TRANSFORMATION_ID_SUPPORT_COLUMN)
)

achievement(
    title = "Scarab-in Around", points = 2,
    description = "Transform into a scarab in the Pyramid",
    id = 408230, badge = "462585",
    trigger = NotInDemoMode() && EdTransformedOnThisFrame(TRANSFORMATION_ID_SCARAB)
)

achievement(
    title = "He'll Never See It Coming", points = 2,
    description = "Transform into a piston crusher at the Pressure Cooker",
    id = 410750, badge = "465210",
    trigger = NotInDemoMode() && LevelId() == 0xEE90 && prev(ChameleonPowderTransformationFlag()) == 0x10 && ChameleonPowderTransformationFlag() == 0x00
)

achievement(
    title = "To Defeat Your Enemy You Must Become Your Enemy", points = 2,
    description = "Transform into Grögh at the Pressure Cooker",
    id = 408755, badge = "463436",
    trigger = NotInDemoMode() && EdTransformedOnThisFrame(TRANSFORMATION_ID_GROGH)
)

achievement(
    title = "Metal Tonic", points = 2,
    description = "Transform into a box at the Pressure Cooker",
    id = 410791, badge = "465252",
    trigger = NotInDemoMode() && EdTransformedOnThisFrame(TRANSFORMATION_ID_BOX)
)

achievement(
    title = "Not Just a Boulder", points = 2,
    description = "Transform into a boulder at Grögh's Lair",
    id = 409968, badge = "464377",
    trigger = NotInDemoMode() && EdTransformedOnThisFrame(TRANSFORMATION_ID_BOULDER)
)

achievement(
    title = "Speedy Sledding", points = 5,
    description = "Make it down the Ski Slope with a time of 1 minute and 30 seconds or less",
    id = 403627, badge = "460215",
    trigger = NotInDemoMode() && SkiSlopeTimer() <= 90000 && SkiSlopeLevelCleared()
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

achievement(
    title = "That Tin Can is No Match For Me", points = 3,
    description = "Defeat the robosuitcase boss using only a single Super Ed transformation",
    id = 410793, badge = "465274",
    trigger = NotInDemoMode() && never(LevelId() != LEVEL_ID_DOCS_CAVE_AREA_7) && never(LostALife()) &&
              once(RobosuitcaseBossHealth() == ROBOSUITCASE_BOSS_MAX_HEALTH) &&
              disable_when(
                 repeated(2, BecomeSuperEdOnThisFrame()),
                 until=LostALife() || LevelId() != LEVEL_ID_DOCS_CAVE_AREA_7) &&
              trigger_when(prev(RobosuitcaseBossHealth())  == 0x01 && RobosuitcaseBossHealth() == 0x00),
    type = "missable"
)

achievement(
    title = "Clearing the Patch", points = 10,
    description = "Return to the Vegetables' HQ after having collected the 6 springs and defeat every unique enemy without ever taking damage or losing a life",
    id = 407471, badge = "461369",
    trigger = NotInDemoMode() && never(CollectedSprings() < 0x06) && never(prev(CurrentHealth()) > CurrentHealth()) && never(!InArea(AREA_ID_VEG_HQ)) &&
              disable_when(
                 once(prev(CurrentHealth()) > CurrentHealth()),
                 until=LevelId() == LEVEL_ID_VEGHQ_START) &&
              measured(tally(DictonaryArrayLength(VegHQEnemyDefeatedLookup), AllEnemyDefeatedConditions(VegHQEnemyDefeatedLookup)))
)

achievement(
    title = "Traversing With Care", points = 5,
    description = "Hit every target for the moving Grögh platform in the North Plain without ever taking damage or losing a life",
    id = 408215, badge = "462566",
    trigger = NotInDemoMode() && never(LevelId() != 0x3610) && never(prev(CurrentHealth()) > CurrentHealth()) &&
              measured(tally(length(NORTH_PLAIN_PLATFORM_TARGETS), NorthPlainPlatformTargetsActivatedConditions()))
)

achievement(
    title = "The Floor is Lava", points = 5,
    description = "In the first area of the North Plain, start gliding before reaching the castle and enter the next loading zone without ever touching the ground",
    id = 408019, badge = "462297",
    trigger = NotInDemoMode() && never(!(EdMovementFlag() == ED_MOVEMENT_FALLING || EdMovementFlag() == ED_MOVEMENT_GLIDING)) &&
              once(LevelId() == 0xB1D8 && EdIsGliding() && EdXPosition() < 0x43DC0000 && EdXPosition() > 0x43D90000 && EdYPosition() > 0xC2600000) &&
              trigger_when(EdYPosition() >= 0x42F60000 && EdYPosition() <= 0x43020000 && EdXPosition() <= 0x43A50000)
    
)

achievement(
    title = "Open Seasame", points = 2,
    description = "Break the hidden trapdoor in the North Plain using the pogo stick",
    id = 408185, badge = "462537",
    trigger = NotInDemoMode() && LevelId() == 0x8D8C && InGameFlag() == 0x01 && prev(NorthPlainTrapDoorFlag()) == 0x00 && NorthPlainTrapDoorFlag() == 0x01
)

achievement(
    title = "Speedy Gliding", points = 10,
    description = "Complete a timed run of the Canyon with a time of 3 minutes or less",
    id = 406467, badge = "459322",
    trigger = NotInDemoMode() && CanyonTimer() <= 180000 && CanyonLevelTimeTrialCleared()
)

achievement(
    title = "Holy Tusks", points = 10,
    id = 406468, badge = "459323",
    description = "Make it all the way through the Canyon without using the bow tie glider's parachute, losing a life, or restarting from the pause menu",
    trigger = NotInDemoMode() && once(LevelId() == 0xEFE4 && EdZPosition() > 0x43E2C000) &&
              never(!InArea(AREA_ID_CANYON)) && never(EdCurrentState() == ED_STATE_PARACHUTING) &&
              never(LostALife()) && never(LevelRestartedOnThisFrame()) &&
              trigger_when(CanyonLevelCleared())
)

// Note that the achievement generated from this script will not match the finalized achievement logic 1-1 as the code does not seem to support complex conditions with ResetNextIf lines
achievement(
    title = "Cloak Dart and Stick", points = 10,
    description = "Start from the first area of the Canyon and defeat every enemy in the Canyon without ever taking damage, losing a life, or restarting from the pause menu",
    id = 406712, badge = "460213",
    trigger = NotInDemoMode() && never(!InArea(AREA_ID_CANYON)) && never(LevelId() == 0xEFE4 && EdZPosition() > 0x43E2C000) &&
              disable_when(
                 once(prev(CurrentHealth()) > CurrentHealth()),
                 until=LevelId() == 0xEFE4 && EdZPosition() > 0x43E2C000) &&
              disable_when(
                 once(LevelRestartedOnThisFrame()),
                 until=LevelId() == 0xEFE4 && EdZPosition() > 0x43E2C000) &&
              measured(tally(DictonaryArrayLength(CanyonEnemyDefeatedLookup), AllCanyonEnemyDefeatedConditions()))
)

achievement(
    title = "Tonic Raider", points = 5,
    description = "Solve the target puzzle in the Pyramid's secret room",
    id = 408229, badge = "462584",
    trigger = NotInDemoMode() && LevelId() == 0xD868 && prev(PyramidTargetPuzzleFlag()) == 0x04 && PyramidTargetPuzzleFlag() == 0x05
)

achievement(
    title = "Eyes On the Piggy Prize", points = 10,
    description = "Make it down the slide at the magic mushroom's hideout in 1 minute or less",
    id = 409731, badge = "464371",
    trigger = NotInDemoMode() && unless(GamePausedFlag() == 0x01) && never(!InArea(AREA_ID_MUSHROOM_SLIDE)) &&
              once(EdStartedMagicMushroomSlideOnThisFrame()) &&
              never(repeated(3601, MushroomSlideTimeTrialFrames())) &&
              trigger_when(EdFinishedMagicMushroomSlideOnThisFrame())
)

achievement(
    title = "Fungle Infection Protection", points = 10,
    description = "Defeat the magic mushroom boss without ever taking damage during the fight",
    id = 409961, badge = "464370",
    trigger = NotInDemoMode() && never(LevelId() != LEVEL_ID_MUSHROOM_HIDEOUT_AREA_4) && never(LostALife()) &&
              once(MagicMushroomBossHealth() == MUSHROOM_BOSS_MAX_HEALTH) &&
              disable_when(
                 once(prev(CurrentHealth()) > CurrentHealth()),
                 until=LostALife() || LevelId() != LEVEL_ID_MUSHROOM_HIDEOUT_AREA_4) &&
              trigger_when(prev(MagicMushroomBossHealth())  == 0x01 && MagicMushroomBossHealth() == 0x00),
    type = "missable"
)

achievement(
    title = "Unstoppable Alien Force", points = 10,
    description = "Complete the final phase of the Grögh boss fight without ever taking damage during the fight",
    id = 409970, badge = "464379",
    trigger = NotInDemoMode() && never(LevelId() != 0xFFF8) && never(LostALife()) &&
              once(GroghBossHealth() == GROGH_BOSS_MAX_HEALTH) &&
              disable_when(
                 once(prev(CurrentHealth()) > CurrentHealth()),
                 until=LostALife() || LevelId() != 0xFFF8) &&
              trigger_when(prev(GroghBossHealth())  == 0x01 && GroghBossHealth() == 0x00)
)

// The max health value is 5 and not 4 because the game lets you take 1 more hit after the health bar reaches the bottom, thus a max health of 4 is actually 5 hits
achievement(
    title = "Thermomephobia", points = 25,
    description = "Complete the entire game with a max health of 4 and having collected less than 10 thermometers total",
    id = 410794, badge = "465278",
    trigger = NotInDemoMode() && MaxHealth() == 5 && TotalThermometersCollected() < 10 && LevelId() == 0xFFF8 && prev(GroghBossHealth())  == 0x01 && GroghBossHealth() == 0x00,
    type = "missable"
)


// ------------------------
// ----- Leaderboards -----
// ------------------------

function SkiSlopeTimerLeaderboardValue() => SkiSlopeTimer() / 10

function CanyonTimerLeaderboardValue() => CanyonTimer() / 10

function MushroomSlideTimeTrialLeaderboardValue() => measured(tally(0, GamePausedFlag() != 0x01 && MushroomSlideTimeTrialFrames()))

leaderboard(
    id=86730,
    title="Ski Slope Time Trial",
    description="Fastest time making it down the Ski Slope",
    start=SkiSlopeLevelCleared(),
    cancel=LevelId() != 0x7EB0,
    submit=SkiSlopeLevelCleared(),
    value=SkiSlopeTimerLeaderboardValue(),
    format="MILLISECS",
    lower_is_better=true
)

leaderboard(
    id=91778,
    title="Canyon Time Trial",
    description="Fastest time making it through the Canyon with the timer active",
    start=CanyonLevelTimeTrialCleared(),
    cancel=LevelId() != 0xAA8C,
    submit=CanyonLevelTimeTrialCleared(),
    value=CanyonTimerLeaderboardValue(),
    format="MILLISECS",
    lower_is_better=true
)

leaderboard(
    id=92173,
    title="Magic Mushroom's Hideout Slide Time Trial",
    description="Fastest time making it down the slide at the Magic Mushroom's Hideout",
    start=EdStartedMagicMushroomSlideOnThisFrame(),
    cancel=!InArea(AREA_ID_MUSHROOM_SLIDE),
    submit=EdFinishedMagicMushroomSlideOnThisFrame(),
    value=MushroomSlideTimeTrialLeaderboardValue(),
    format="FRAMES",
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

rich_presence_conditional_display(LevelId() != 0xA504 && (AtTitleScreens() || DemoModeFlag() == 0x01), "Starting the game")
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
rich_presence_conditional_display(LevelId() == 0xFD38 || LevelId() == 0x0AB4 || LevelId() == 0x50E0 || LevelId() == 0x3A20 || LevelId() == 0xEDEC || LevelId() == 0x9448 || LevelId() == 0x0C38 || LevelId() == 0xD868 || LevelId() == 0x90F8, "Ed is in the Pyramid • {0}/6 Dominos • {1}/180 Antidotes • {2}/110 Thermometers",
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
