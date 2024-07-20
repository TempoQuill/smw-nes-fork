;Disassembly of Super Mario World (Unl)

;This is still a work in progress and is not recommended for use in hacks.

;Assembles with parasyte's fork of ASM6.
;RGME_PATCH = 1

;----------------------------------------
db "NES", $1A	;NES Header
db 32			;32 x 16k PRG banks
db 32			;32 x 8k CHR banks
db $A1, $50		;Mapper: 90
dsb 8, $00		;Header Tail
;----------------------------------------

;Constants
include constants.asm

;Macros
include macros.asm

;General RAM defines

;game engine
PPUControlMirror = $00
PPUMaskMirror = $01
ScrollXPos = $02
ScrollYPos = $03
FrameCount = $06
SafeSwap = $08
Bank42Backup = $08
Bank41Backup = $09
zInputCurrentState = $030A
zInputBottleNeck = $030B
iBackupInput = $030C
Controller1Input = $063D
Controller2Input = $063E
SecFrameCount = $0313
ScratchRAM = $2E
PlayerAnimPtr = $E5 ;I think this actually points to the animation SET, not the animation itself
NMIJMPOpcode = $063A
CameraXScreen = $51
VerticalScrollFlag = $5B
TileRowCount = $B0
BGAttrRowCount = $B1
MetaspriteRowAlignment = $B2
EntitySetPtr = $DC
GameState = $DE
Event = $DF
EventPart = $E0
PlayerState = $E1

BGPalette = $0310
FadeoutMode = $0311
PalTransition = $0312
TileAttributes = $0400
TileColumnMem = $0485
PalAssignPtrHi = $04C1
PalAssignPtrLo = $04C2
PalAssignData = $04C3
PPUUpdatePtr = $03A1
PPUWriteCount = $03A4
PPUDataBuffer = $03A5

WarpLevelNumber = $060B
WarpNumber = $060C
VertScrollLock = $060D
HorizScrollLock = $060F

GS0SpriteAnimPtr = $AE
GS0SpriteCount = $30
GS0SpriteBankNum = $31
GS0SpriteXPos = $41
GS0SpriteFrame = $B2
GS0SpriteSlot = $033B
GS0SpriteFlags = $034D
GS0SpriteYPos = $0356
TitleDemoAction = $0365
TitleJumpTimer = $0366
TitleWalkTimer = $0367
Current8x8Tilemap = $032F
TileRepeatCount = $3E
TileRepeatBytesLeft = $3E
GameType = $035F
HUDUpdateTiles = $0378
HUDUpdate = $037D
HUDDisplay = $0607
BGBank1 = $03C5
BGBank2 = $03CB
BGBank3 = $03C6
BGBank4 = $03CC	;unused
BGBankAnimation = $03CD
SpriteBank1 = $03C7
SpriteBank2 = $03C8
SpriteBank3 = $03C9
SpriteBank4 = $03CA
DataBank1 = $04F3
DataBank2 = $04F5
WorldNumber = $04F6
DataBank3 = $04F7
LevelNumber = $04F7
LevelScreenOrderPtr = $8C
XScroll = $063F
YScroll = $0640

PlayerXScreen = $0A
PlayerXPos = $0B
PlayerYScreen = $0C
PlayerYPos = $0D
PlayerXScreenDup = $0E
PlayerXPosDup = $0F
PlayerYScreenDup = $10
PlayerYPosDup = $11
PlayerSprXPos = $12
PlayerSprYPos = $13
PlayerXSpeed = $14
ScaledPlayerXSpd = $28
PlayerYSpeed = $15
ScaledPlayerYSpd = $2B

OAMtrack = $3C
PlayerFrameDur = $18
;TEMP DEFINES FOR DEV: these use the stack safe area just for convenience
MetaXTemp = $33 ;$0100
MetaYTemp = $34 ;$0101
PlayerSprXOfs = $0102
PlayerSprYOfs = $0103 ;these may already exist, see PlayerSprXPosOfs
ScratchRAM1 = $0104
PlayerVBob = $0105

PlayerAnimation = $16
PlayerAnimFrame = $17
PlayerMovement = $19
PlayerPrevDirection = $4F
PlayerSpriteAttributes = $1A	;not sure what else to call this
PlayerFramePtr = $1B
PlayerAction = $1D
PlayerPrevAction = $1E
PlayerClimbingState = $49
PlayerSprXPosOfs = $1F
PlayerSprYPosOfs = $21
PlayerSpriteMirror = $23
PlayerMetaspriteHAlign = $28
PlayerMetaspriteVAlign = $2B
PlayerWidth = $3A
PlayerHeight = $3B
PlayerPalMappingLo = $C9
PlayerPalMappingHi = $CA
MemJMPOpcode = $0600
MemJMPPtr = $0601
CapeAction = $062C
PlayerAttributes = $06E0

PlayerBackColl = $96
PlayerScreenID = $99
PlayerColXScreen = $64
PlayerColXPos = $65
PlayerColYScreen = $66
PlayerColYPos = $67

FireballSlot = $062F
FireballSlot2 = $0630
UsedFireballSlots = $0631

Player1Lives = $036A
Player2Lives = $036B
Player1YoshiCoins = $036C
Player2YoshiCoins = $036D
LevelTimerLo = $036E
LevelTimerHi = $036F
P1Score = $0372
P2ScoreLoByte = $0374
P2ScoreHiByte = $0375
Player1Coins = $0376
Player2Coins = $0377
P1YoshiBackup = $0393
P2YoshiBackup = $0394
CurrentPlayer = $0399
HurtFlag = $05FD
ActionFrameCount = $0611
PlayerActionTicks = $0612
SwallowFrameCount = $0613
YoshiSwallowTimer = $0614
FlightTakeoffTimer = $061C
Player1YoshiStatus = $061F
YoshiExitStatus = $0620
YoshiIdleStorage = $0621
YoshiIdleMovement = $0622
YoshiTongueState = $0623
PlayerPowerup = $0624
ItemBox = $0625
P1PowerupBackup = $06DA
P2PowerupBackup = $06DB

SpriteMem = $0200
ScrollSpeed = $0326
LogoFlag = $032D
LogoXOffset = $0330
LogoYOffset = $0331

OverworldMapTimer = $032F
WorldSelectNum = $032F
TitleCursorYPos = $0357
PlayerTitleYPos = $0357
PlayerMapAnim = $0361
PlayerMapFrame = $0378
MapMovementFlag = $0379
MapLevelID = $037F
CastleDestroyFlags = $0380
OverworldMapScreen = $0390
WorldSelectTrigger = $0396
UnlockNextLevel = $0397
LevelID = $039C
P1LevelsUnlocked = $039E
P2LevelsUnlocked = $039F
ColumnFinishFlag = $0480
NextBGColumn = $0481

; Object RAM

;object handler
ObjectPRGBank = $AC
ObjectCount = $A3
LowerObjSlot = $A4
ObjectSlot = $0500
ObjectXPos = $0514
ObjectXScreen = $0528
ObjectYPos = $053C
ObjectYScreen = $0550
ObjectState = $0564
ObjectVariables = $0578
ObjectXDistance = $05A0
ObjXScreenDistance = $05B4
ObjectYDistance = $05C8
ObjYScreenDistance = $05DC
ObjectAttributes = $05F0
ObjectAction = $0669
ObjActionTimer = $0641
EnemyAnimFrame = $0655
ObjFrameCounter = $062B

;special objects
BubbleXPos = $0619
BubbleYPos = $061A
BubbleSpawnPoint = $061B

BooBuddiesFlag = $C3
BooBuddiesXPos = $C4
BooBuddiesXScreen = $C5
BooBuddiesYPos = $C6
BooBuddiesYScreen = $C7

YoshiUnmountedState = $05F1
YoshiXPos = $05F2
YoshiXScreen = $05F3
YoshiYPos = $05F4
YoshiYScreen = $05F5
YoshiAnimation = $05F8
YoshiXDistance = $05F9
YoshiXScreenDist = $05FA
YoshiYDistance = $05FB
YoshiYScreenDist = $05FC

JYEasterEggInput = $05EF
BowserStatus = $05F7
InterruptMode = $0606
YScreenCount = $060E
XScreenCount = $0610
UnderwaterFlag = $061D
LevelTopScreenOffset = $04FA
LevelBottomScreenOffset = $04FB

PlayerPowerupBuffer = $0626
ScreenShake = $0633
PSwitchFrameCount = $0634
PSwitchTimer = $0635
PlayerHoldFlag = $0636
PlayerHoldFlag2 = $0637
InvincibilityTimer = $0638
ReznorsDefeated = $0666
ONOFFBlockFlag = $0668
FreezeFlag = $067D
CheckpointFlag = $06A2
BowserHits = $06E5
EndingFreezeFlag = $06E6
ClownCarFace = $06E8
PauseFlag = $0709

;Sound Driver RAM Defines
MusicRegister = $8E
SFXRegister = $8F
MusicBackup = $90
SoundPointer = $FE
MuteFlag = $0700
SoundQueue = $0701
CurrentTrackID = $070A
CurrentTrackOffset = $070B
CurrentTrackPointerOffset = $070C

Pulse1Transpose = $070D
SongLoopCounter = $0710
SongLoopPointer = $0715
SongReturnPointer = $071F
MusicPointer = $0729
MusicSpeed = $0733
NoteLengths = $0734
RemainingSongTicks = $0739
NumSongTicks = $073A
Pulse1Pitch = $0743
Pulse1FinalPitch = $074D
Pulse1VolumeEnv = $0757
Pulse1VolumeDelay = $075C
Pulse1VolumePointer = $0761
Pulse1Duty = $076B
Pulse1DutyDelay = $076D
Pulse1DutyPointer = $076F
Pulse1PitchSetting = $0773
Pulse1PitchDelay = $0777
Pulse1PitchPointer = $077B

MUS_RAM_AREA = $070D
SFX_RAM_AREA = $0783
SOUND_RAM_LENGTH = SFX_RAM_AREA - MUS_RAM_AREA

SFXTranspose = $070D + SOUND_RAM_LENGTH
SFXLoopCounter = $0710 + SOUND_RAM_LENGTH
SFXLoopPointer = $0715 + SOUND_RAM_LENGTH
SFXReturnPointer = $071F + SOUND_RAM_LENGTH
SFXPointer = $0729 + SOUND_RAM_LENGTH
SFXSpeed = $0733 + SOUND_RAM_LENGTH
SFXNoteLengths = $0734 + SOUND_RAM_LENGTH
RemainingSFXTicks = $0739 + SOUND_RAM_LENGTH
NumSFXTicks = $073A + SOUND_RAM_LENGTH
SFXPitch = $0743 + SOUND_RAM_LENGTH
SFXFinalPitch = $074D + SOUND_RAM_LENGTH
SFXVolumeEnv = $0757 + SOUND_RAM_LENGTH
SFXVolumeDelay = $075C + SOUND_RAM_LENGTH
SFXVolumePointer = $0761 + SOUND_RAM_LENGTH
SFXDuty = $076B + SOUND_RAM_LENGTH
SFXDutyDelay = $076D + SOUND_RAM_LENGTH
SFXDutyPointer = $076F + SOUND_RAM_LENGTH
SFXPitchSetting = $0773 + SOUND_RAM_LENGTH
SFXPitchDelay = $0777 + SOUND_RAM_LENGTH
SFXPitchPointer = $077B + SOUND_RAM_LENGTH

P1Flag = $07FC
P2Flag = $07FD
DPCMFlag = $07FE
DPCMBackupOffset = $07FF

;Hardware registers
PPUCtrl = $2000
PPUMask = $2001
PPUStatus = $2002
PPUOAMAddr = $2003
PPUOAMData = $2004
PPUScroll = $2005
PPUAddr = $2006
PPUData = $2007
Sq1Vol = $4000
Sq1Sweep = $4001
Sq1Lo = $4002
Sq1Hi = $4003
Sq2Vol = $4004
Sq2Sweep = $4005
Sq2Lo = $4006
Sq2Hi = $4007
TriLinear = $4008
TriLo = $400A
TriHi = $400B
NoiseVol = $400C
NoiseLo = $400E
NoiseHi = $400F
DMCFreq = $4010
DMCRaw = $4011
DMCStart = $4012
DMCLength = $4013
OAMDMA = $4014
APUStatus = $4015
Joy1 = $4016
Joy2Frame = $4017

;Mapper-specific registers

;PRG banks
M90_PRG0 = $8000
M90_PRG1 = $8001
M90_PRG2 = $8002
M90_PRG3 = $8003

;CHR banks
M90_BG_CHR0 = $9000
M90_BG_CHR1 = $9001
M90_BG_CHR2 = $9002
M90_BG_CHR3 = $9003
M90_SP_CHR0 = $9004
M90_SP_CHR1 = $9005
M90_SP_CHR2 = $9006
M90_SP_CHR3 = $9007

;Nametable banks
M90_NT0 = $B000
M90_NT1 = $B001
M90_NT2 = $B002
M90_NT3 = $B003

;Multiplier
M90_MULTIPLICAND = $5800
M90_MULTIPLIER = $5801

;IRQ registers
M90_IRQ_MODE = $C001
M90_IRQ_DISABLE = $C002
M90_IRQ_ENABLE = $C003
M90_IRQ_PRESCALER = $C004
M90_IRQ_COUNTER = $C005
M90_IRQ_XOR = $C006

;Misc
M90_BANK_SIZE = $D000
M90_CHR_CTRL2 = $D001
M90_PPU_CFG = $D002
M90_CHR_CTRL1 = $D003

;--------------------------------------
;Level Data

incbin levels/levels.bin
incbin tilesets/ts_levels.bin
;--------------------------------------
;PRG banks

.base $6000
.include prg/prg036.asm
.pad $8000
;48010 - 4a00f
;player mapping data

base $8000
include prg/prg037.asm
pad $A000, $00
;4a010 - 4c00f
;Code for various objects

base $8000
include prg/prg038.asm
pad $A000
;4c010 - 4e00f
;unknown/unused tileset data

.base $6000
.include prg/prg039.asm
.pad $8000
;4e010 - 5000f
;Collision code and tile behavior

include prg/prg040.asm
;50010 - 5200f
;DMC bank

.base $A000
.include prg/prg041.asm
.pad $C000
;52010 - 5400f
;Various Game Mode 0 stuff (Title, map, etc)

base $8000
include prg/prg042.asm
pad $A000
;54010 - 5600f
;8x8 Tilemaps and Overworld Data

base $8000
include prg/prg043.asm
pad $A000
;56010 - 5800f
;Bonus level tileset

base $8000
include prg/prg044.asm
pad $A000
;58010 - 5a00f
;Title Screen/Map Tilesets

base $8000
include prg/prg045.asm
pad $A000
;5a010 - 5c00f
;title screen level data
;	also contains a chunk of DMC sample data

base $8000
include prg/prg046.asm
pad $A000
;5c010 - 5e00f
;Overworld Map Tile Data

.base $6000
.include prg/prg047.asm
.pad $8000
;5e010 - 6000f
;Sprite palette mappings

base $8000
include prg/prg048.asm
pad $A000
;60010 - 6200f
;more object code

base $8000
include prg/prg049.asm
pad $A000
;62010 - 6400f
;Code for platforms and other objects

base $8000
include prg/prg050.asm
pad $A000
;64010 - 6600f
;Various objects

.base $6000
.include prg/prg051.asm
;66010 - 6800f
;Movement data for various objects

base $A000
include prg/prg052.asm
pad $C000
;68010 - 6a00f
;sprite manager?
;	also contains a chunk of DMC sample data

base $8000
include prg/prg053.asm
pad $A000
;6a010 - 6c00f
;Various objects

base $A000
include prg/prg054.asm
pad $C000
;6c010 - 6e00f
;Object handler

base $8000
include prg/prg055.asm
pad $A000
;6e010 - 7000f
;More code for objects

base $8000
include prg/prg056.asm
pad $A000
;70010 - 7200f
;Even more object code

base $A000
include prg/prg057.asm
pad $C000
;72010 - 7400f
;Player control code

base $8000
include prg/prg058_59.asm
pad $C000
;74010 - 7800f
;Music data and sound driver

base $8000
include prg/prg060.asm
;78010 - 7a00f
;DMC bank

base $A000
include prg/prg061.asm
pad $C000
;7a010 - 7c00f
;Level handling

base $C000
include prg/prg062.asm
pad $E000
;7c010 - 7e00f
;DMC bank

base $E000
include prg/prg063.asm
pad $FFFA
;7e010 - 8000f
;IRQ, game engine, etc.

;--------------------------------------
;Interrupt vectors
.dw NMIJMPOpcode
.dw Reset
.dw IRQ

;--------------------------------------
;CHR file
incbin SMW.chr

;--------------------------------------