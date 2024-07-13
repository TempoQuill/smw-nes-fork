; 0x048010-0x04A00F
;Planning to further trim these tables as progress is made but for now they are working and there are less of them

;----------------------
;ANIMATION FORMAT
;ExampleAnimName:
;	db $03 ;frame duration, negative duration indicates this is a loop point, incrementing the 1's column will add 1 to the return frame
;	dw ExampleFrameName ;mapping/frame name
;	db $01 ;upper nybble indicates forced mirroring if negative, lower nybble is the vertical offset of the frame
;----------------------


;**********************************************
;Player character selection tbl
;Mario, Yoshi, hard code if possible to remove this
;**********************************************
lda_36_C000: ;really no idea if we need any of these duplicates but most likely they will all be removed
	dw YoshiAnimTablesTbl_1  ;00 No Yoshi 
	dw YoshiAnimTablesTbl_1 ;01 if Yoshi present (all entries on this table point to the same thing)
	dw YoshiAnimTablesTbl_2 ;02 
	dw YoshiAnimTablesTbl_2 ;03 Because Yoshi Status is doubled for use as an index this table is long
	dw YoshiAnimTablesTbl_2 ;04  
	dw YoshiAnimTablesTbl_2 ;05
	dw YoshiAnimTablesTbl_3 ;06 used when Mario has a powerup (?)
	dw YoshiAnimTablesTbl_3 ;07
	dw YoshiAnimTablesTbl_3 ;08
	dw YoshiAnimTablesTbl_3 ;09 as far as I can tell these are all identical unique copies, but this hasn't been fully investigated
	
PlayerAnimSetTblLo:
	db <YoshiAnimTablesTbl_1 ;placeholder
	db <BigMarioAnimTblLo
	db <SmallMarioAnimTblLo
PlayerAnimSetTblHi:	
	db >YoshiAnimTablesTbl_1 ;placeholder
	db >BigMarioAnimTblLo
	db >SmallMarioAnimTblLo
	
;**********************************************
;Small Mario standard animations
;When I untangle the animation system from the players action system, I should be able to shorten these tables quite a bit further
;for now though they are made to remain compatible with the exisiting routines
;**********************************************
SmallMarioAnimTblLo: ;norm, hold, norm, hold
	db <MsmallStand		;nothing 	00
	db <MsmallHold
	db <MsmallWalk		;walking 	01
	db <MsmallHoldWalk
	db <MsmallRun		;running 	02
	db <MsmallHoldRun
	db <MsmallWalk		;unused  	03
	db <MsmallHoldWalk
	db <MsmallJump		;jumping 	04
	db <MsmallHoldJump
	db <MsmallSpin		;spin    	05
	db <MsmallSpin
	db <MsmallTurn		;skid    	06
	db <MsmallTurn
	db <MsmallDuck		;duck    	07
	db <MsmallHoldDuck
	db <MsmallUp		;look up 	08
	db <MsmallHoldLookUp
	db <MsmallLeap		;run jump   09
	db <MsmallHoldJump
	db <MsmallFall		;Falling 	0A note that this is specifically for falling from a ledge, not a jump
	db <MsmallHoldFall
	db <MsmallSink		;sink    	0B
	db <MsmallHoldSink
	db <MsmallSwim		;swim    	0C
	db <MsmallHoldSwim
	db <MsmallClimbIdle	;climb   	0D
	db <MsmallClimbIdle
	db <MsmallClimb		;climb move	0E
	db <MsmallClimb
	db <MsmallLeap		;flying		0F
	db <MsmallHoldJump
	db <MsmallWin		;victory	10
	db <MsmallWin
	db <MsmallDie		;dead		11
	db <MsmallDie
SmallMarioAnimTblHi:
	db >MsmallStand		;nothing 	00
	db >MsmallHold
	db >MsmallWalk		;walking 	01
	db >MsmallHoldWalk
	db >MsmallRun		;running 	02
	db >MsmallHoldRun
	db >MsmallWalk		;unused  	03
	db >MsmallHoldWalk
	db >MsmallJump		;jumping 	04
	db >MsmallHoldJump
	db >MsmallSpin		;spin    	05
	db >MsmallSpin
	db >MsmallTurn		;skid    	06
	db >MsmallTurn
	db >MsmallDuck		;duck    	07
	db >MsmallHoldDuck
	db >MsmallUp		;look up 	08
	db >MsmallHoldLookUp
	db >MsmallLeap		;run jump   09
	db >MsmallHoldJump
	db >MsmallFall		;Falling 	0A note that this is specifically for falling from a ledge, not a jump
	db >MsmallHoldFall
	db >MsmallSink		;sink    	0B
	db >MsmallHoldSink
	db >MsmallSwim		;swim    	0C
	db >MsmallHoldSwim
	db >MsmallClimbIdle	;climb   	0D
	db >MsmallClimbIdle
	db >MsmallClimb		;climb move	0E
	db >MsmallClimb
	db >MsmallLeap		;flying		0F
	db >MsmallHoldJump
	db >MsmallWin		;victory	10
	db >MsmallWin
	db >MsmallDie		;dead		11
	db >MsmallDie
;**********************************************
;Small Mario Animation data 
;**********************************************
MsmallStand: ;TEST VERSION, random animation to check frame loading working until data is completed
	db $7E ;F1
	dw PlayerSmall_Stand 
	db $00 
	db $80 ;Loop F1
MsmallWalk:
	db $04 ;F1
	dw PlayerSmall_Walk1
	db $01 
	db $04 ;F2
	dw PlayerSmall_Stand 
	db $00 
	db $80 ;Loop F1
MsmallRun:
	db $02 ;F1
	dw PlayerSmall_Run1
	db $0 
	db $02 ;F2
	dw PlayerSmall_Run2
	db $01 
	db $80 ;Loop F1
MsmallJump:
	db $23 ;F1
	dw PlayerSmall_Jump
	db $00 
	db $03 ;F2
	dw PlayerSmall_Fall ;remove this frame later, anim controller should make this work properly 
	db $00
	db $81 ;Loop F2
MsmallLeap:
	db $03 ;F
	dw PlayerSmall_RunJump
	db $00
	db $80 ;Loop F1
MsmallSpin:
	db $01 ;F1
	dw PlayerSmall_Stand 
	db $00 
	db $01 ;F2
	dw PlayerSmall_Back
	db $00 
	db $01 ;F3
	dw PlayerSmall_Stand ;mirrored
	db $F0 
	db $01 ;F4
	dw PlayerSmall_Front
	db $00 
	db $80 ;Loop F1
MsmallTurn:
	db $7E ;F1
	dw PlayerSmall_Turn
	db $00 
	db $80 ;Loop F1
MsmallDuck:
	db $7E ;F1
	dw PlayerSmall_Duck
	db $00 
	db $80 ;Loop F1
MsmallUp:
	db $7E ;F1
	dw PlayerSmall_LookUp
	db $00 
	db $80 ;Loop F1	
MsmallFall:
	db $7E ;F1
	dw PlayerSmall_Fall
	db $00 
	db $80 ;Loop F1
MsmallSink:
	db $7E ;F1
	dw PlayerSmall_Swim1
	db $00 
	db $80 ;Loop F1
MsmallSwim:
	db $03 ;F1
	dw PlayerSmall_Swim2
	db $00 
	db $03 ;F2
	dw PlayerSmall_Swim1
	db $00
	db $03 ;F3
	dw PlayerSmall_RunJump
	db $00
	db $80 ;Loop F1
MsmallClimbIdle:
	db $7E ;F1
	dw PlayerSmall_Climb1
	db $00
	db $80 ;Loop F1
MsmallClimb:
	db $06 ;F1
	dw PlayerSmall_Climb1
	db $00
	db $06 ;F2
	dw PlayerSmall_Climb1 ;Mirrored
	db $F0
	db $80 ;Loop F1
MsmallWin:
	db $0A ;F1
	dw PlayerSmall_Victory
	db $00
	db $80 ;Loop F1
MsmallDie:
	db $28 ;F1
	dw PlayerSmall_Death1
	db $00
	db $08 ;F2
	dw PlayerSmall_Death1
	db $00
	db $08 ;F3
	dw PlayerSmall_Death1 ;mirrored
	db $F0
	db $81 ;loop F1
	
MsmallHold:
	db $7E ;F1
	dw PlayerSmall_Hold
	db $00
	db $80
MsmallHoldWalk:
	db $03 ;F1
	dw PlayerSmall_Hold
	db $00
	db $03 ;F2
	dw PlayerSmall_HoldWalk
	db $01
	db $80
MsmallHoldRun:
	db $02 ;F1
	dw PlayerSmall_Hold
	db $00
	db $02 ;F2
	dw PlayerSmall_HoldWalk
	db $01
	db $80	
MsmallHoldJump:
	db $7E ;F1
	dw PlayerSmall_HoldWalk
	db $00
	db $80	
MsmallHoldDuck:
	db $7E ;F1
	dw PlayerSmall_DuckHold
	db $00
	db $80
MsmallHoldFall:
	db $7E ;F1
	dw PlayerSmall_HoldWalk
	db $00
	db $80
MsmallHoldLookUp: ;new!
	db $7E ;F1
	dw PlayerSmall_LookUpHold
	db $00
	db $80
	
MsmallHoldSink: ;unused
	dw pnt3_C2D8
	db $01
	db $00
	dw pnt3_C2D8
	db $80
	db $00	
MsmallHoldSwim: ;unused 
	dw pnt3_C2D8
	db $03
	db $00
	dw pnt3_C2D8
	db $03
	db $00
	dw pnt3_C2D8
	db $80
	db $00
	

;**********************************************
;Small Mario mapping data
;**********************************************
PlayerSmall_Stand: ;M
	.db $02 ;width
	.db	$03 ;height
	.db $81 ;bank 
	.db $00,$02,$04 ;tile IDs in columns left to right 
	.db $01,$03,$05
PlayerSmall_Walk1: ;M
	.db $02
	.db	$03
	.db $81
	.db $00,$06,$07
	.db $01,$03,$08
PlayerSmall_Run1: ;M
	.db $02
	.db	$03 
	.db $81
	.db $00,$09,$0A 
	.db $01,$03,$05
PlayerSmall_Run2: ;M
	.db $02
	.db	$03 
	.db $81 
	.db $00,$09,$0B 
	.db $01,$03,$08
PlayerSmall_RunJump: ;M
	.db $02
	.db	$03 
	.db $85
	.db $00,$0B,$0C
	.db $01,$03,$0D
PlayerSmall_Jump: ;M
	db $02
	db $03
	db $83
	db $00,$13,$15
	db $12,$14,$16
PlayerSmall_Fall: ;M
	db $02
	db $03
	db $83
	db $00,$17,$19
	db $01,$18,$1A
PlayerSmall_Back: ;M
	.db $02
	.db	$03 
	.db $85
	.db $18,$1A,$3A
	.db $19,$39,$3B
PlayerSmall_Flipped: ;redundant
	db $42
	db $03
	db $99
	db $08
	db $65, $64
	db $7F, $66
	db $61, $60
PlayerSmall_Front: ;M
	.db $02
	.db	$03 
	.db $85
	.db $12,$14,$16 
	.db $13,$15,$17
PlayerSmall_Turn: ;UN (unused,define animation and state)
	db $02
	db $03
	db $83
	db $06,$08,$0A
	db $07,$09,$0B
PlayerSmall_Duck: ;M
	db $02
	db $02
	db $87
	db $02, $04
	db $03, $05
PlayerSmall_LookUp: ;M
	db $02
	db $03
	db $81
	db $0C, $0E, $04
	db $0D, $0F, $05
PlayerSmall_LookUpHold: ;M
	db $02
	db $03
	db $81
	db $0C, $18, $12
	db $0D, $19, $13	
PlayerSmall_Swim1: ;M
	.db $02
	.db	$03 
	.db $85
	.db $00,$04,$09
	.db $01,$08,$0A
PlayerSmall_Swim2: ;new! ;M
	.db $02
	.db	$03 
	.db $85
	.db $00,$04,$06
	.db $01,$05,$07
PlayerSmall_Climb1: ;M
	db $02
	db $03
	db $87
	db $12,$14,$16
	db $13,$15,$17
PlayerSmall_Climb2: ;redundant
	db $02
	db $03
	db $87
	db $12,$14,$16
	db $13,$15,$17
PlayerSmall_Victory: ;M
	db $02
	db $03
	db $8D
	db $00,$15,$17
	db $01,$16,$18
PlayerSmall_Death1: ;M
	db $02
	db $03
	db $8B
	db $17,$19,$1B
	db $18,$1A,$1C
PlayerSmall_Death2: ;redundant
	db $02
	db $03
	db $8B
	db $17,$19,$1B
	db $18,$1A,$1C
PlayerSmall_Hold: ;M
	db $02
	db $03
	db $81
	db $00, $10, $12
	db $01, $11, $13
PlayerSmall_HoldWalk: ;M
	db $02
	db $03
	db $81
	db $00, $14, $16
	db $01, $15, $17
PlayerSmall_DuckHold: ;M
	db $02
	db $02
	db $87
	db $06, $08
	db $07, $09
pnt3_C2D8: ;????????
	db $02
	db $03
	db $99
	db $08
	db $64, $65
	db $66, $7F
	db $62, $63
PlayerPowerDown: ;new! no animation!
	db $02
	db $03
	db $85
	db $33,$35,$37
	db $34,$36,$38
;**********************************************
;Super Mario standard animations
;**********************************************
BigMarioAnimTblLo:
	db <MbigStand 			;nothing 	00
	db <MbigHold
	db <MbigWalk			;walking 	01
	db <MbigHoldWalk
	db <MbigRun				;running 	02
	db <MbigHoldRun
	db <MbigWalk			;unused  	03
	db <MbigHoldWalk
	db <MbigJump			;jumping 	04
	db <MbigHoldJump
	db <MbigSpin 			;spin    	05
	db <MbigSpin
	db <MbigTurn			;skid    	06 (Unused)
	db <MbigTurn
	db <MbigDuck			;duck    	07
	db <MbigHoldDuck
	db <MbigLookUp			;look up 	08
	db <MbigHoldLookUp
	db <MbigLeap			;run jump   09
	db <MbigSink
	db <MbigFall			;Falling 	0A note that this is specifically for falling from a ledge, not a jump
	db <MbigHoldFall
	db <MbigSink			;sink    	0B
	db <MbigSink
	db <MbigSwim			;swim    	0C
	db <MbigHoldSwim
	db <MbigClimb			;climb   	0D
	db <MbigClimb
	db <MbigClimbMove		;climb move	0E
	db <MbigClimbMove
	db <MbigLeap			;flying		0F
	db <MbigSink
	db <MbigWin				;victory	10	
	db <MbigWin
	db <MfireShootAir		;jump fire  11 ;ADD THESE IN!!!
	db <MfireShootAir
	db <MfireShootSwim		;swim fire  12
	db <MfireShootSwim	
	db <MfireShoot			;throw fire 13
	db <MfireShoot
BigMarioAnimTblHi:
	db >MbigStand 			;nothing 	00
	db >MbigHold
	db >MbigWalk			;walking 	01
	db >MbigHoldWalk
	db >MbigRun				;running 	02
	db >MbigHoldRun
	db >MbigWalk			;unused  	03
	db >MbigHoldWalk
	db >MbigJump			;jumping 	04
	db >MbigHoldJump
	db >MbigSpin 			;spin    	05
	db >MbigSpin
	db >MbigTurn			;skid    	06 (Unused)
	db >MbigTurn
	db >MbigDuck			;duck    	07
	db >MbigHoldDuck
	db >MbigLookUp			;look up 	08
	db >MbigHoldLookUp
	db >MbigLeap			;run jump   09
	db >MbigSink
	db >MbigFall			;Falling 	0A note that this is specifically for falling from a ledge, not a jump
	db >MbigHoldFall
	db >MbigSink			;sink    	0B
	db >MbigSink
	db >MbigSwim			;swim    	0C
	db >MbigHoldSwim
	db >MbigClimb			;climb   	0D
	db >MbigClimb
	db >MbigClimbMove		;climb move	0E
	db >MbigClimbMove
	db >MbigLeap			;flying		0F
	db >MbigSink
	db >MbigWin				;victory	10	
	db >MbigWin
	db >MfireShootAir		;jump fire  11 ;ADD THESE IN!!!
	db >MfireShootAir
	db >MfireShootSwim		;swim fire  12
	db >MfireShootSwim	
	db >MfireShoot			;throw fire 13
	db >MfireShoot
	
;**********************************************
;Super Mario holding animations
;**********************************************
PlayerBigHold_AnimTbl:

;**********************************************
;Super Mario animation data 
;**********************************************
MfireShootAir: ;placeholder data 
	db $03 ;F1
	dw PlayerBig_Stand 
	db $00 
	db $80 ;Loop F1
MfireShootSwim:
	db $03 ;F1
	dw PlayerBig_Stand 
	db $00 
	db $80 ;Loop F1
MfireShoot:
	db $03 ;F1
	dw PlayerBig_Stand 
	db $00 
	db $80 ;Loop F1

MbigStand:
	db $03 ;F1
	dw PlayerBig_Stand 
	db $00 
	db $80 ;Loop F1
MbigWalk:
	db $04 ;f1
	dw PlayerBig_Walk1
	db $01
	db $04 ;f2
	dw PlayerBig_Walk2
	db $00
	db $04
	dw PlayerBig_Stand
	db $00
	db $80
MbigRun:
	db $02 ;f3
	dw PlayerBig_Run3
	db $01
	db $02;f1
	dw PlayerBig_Run1
	db $00
	db $02 ;f2
	dw PlayerBig_Run2
	db $00
	db $80
MbigJump:
	db $23
	dw PlayerBig_Jump
	db $00
	db $02
	dw PlayerBig_Fall
	db $00
	db $81
MbigLeap:
	db $23
	dw PlayerBig_RunJump
	db $00
	db $80	
MbigSpin:
	db $01
	dw PlayerBig_Front
	db $00
	db $01
	dw PlayerBig_Stand
	db $00
	db $01
	dw PlayerBig_Back
	db $00
	db $01
	dw PlayerBig_Stand  ;mirrored
	db $F0 
	db $80
MbigTurn:
	db $7E
	dw PlayerBig_Turn 
	db $00 
	db $80
MbigDuck:
	db $7E
	dw PlayerBig_Duck
	db $00 
	db $80
MbigLookUp:
	db $7E
	dw PlayerBig_LookUp 
	db $00 
	db $80
MbigFall:
	db $7E
	dw PlayerBig_Fall
	db $00 
	db $80
MbigSink:
	db $7E
	dw PlayerBig_Swim1
	db $00 
	db $80
	
MbigSwim:
	db $03
	dw PlayerBig_RunJump 
	db $00 
	db $03
	dw PlayerBig_Swim2
	db $00 
	db $03
	dw PlayerBig_Swim1
	db $00
	db $80
MbigClimb:
	db $7E
	dw PlayerBig_Climb1
	db $00 
	db $80
MbigClimbMove:
	db $08
	dw PlayerBig_Climb1
	db $00 
	db $08
	dw PlayerBig_Climb1 ;mirrored
	db $F0
	db $80
MbigWin:
	db $0A
	dw PlayerBig_Victory
	db $00 
	db $80
MbigHold:
	db $7E
	dw PlayerBig_Hold 
	db $00 
	db $80
	
MbigHoldWalk:
	db $04
	dw PlayerBig_Hold
	db $00 
	db $04
	dw PlayerBig_HoldWalk1
	db $00 
	db $04
	dw PlayerBig_HoldWalk2
	db $01
	db $80
MbigHoldRun:
	db $02
	dw PlayerBig_Hold
	db $00 
	db $02
	dw PlayerBig_HoldWalk1
	db $00 
	db $02
	dw PlayerBig_HoldWalk2
	db $01
	db $80
MbigHoldJump:
	db $7E
	dw PlayerBig_HoldWalk1
	db $00 
	db $80
MbigHoldDuck:
	dw PlayerBig_DuckHold
	db $08
	db $00
	dw PlayerBig_DuckHold
	db $80
	db $00
MbigHoldFall:
	db $7E
	dw PlayerBig_HoldWalk2
	db $00
	db $80
MbigHoldSwim: ;unused
	dw PlayerBig_Swim1
	db $03
	db $00
	dw PlayerBig_Swim1
	db $03
	db $00
	dw PlayerBig_Swim1
	db $03
	db $00
	dw PlayerBig_Swim1
	db $03
	db $00
	dw PlayerBig_Swim1
	db $80
	db $00
MbigHoldLookUp: ;new!
	db $7E
	dw PlayerBig_LookUpHold
	db $00
	db $80
;**********************************************
;Super Mario mapping data
;**********************************************
PlayerBig_Stand: ;M
	.db $02 ;width
	.db	$04 ;height
	.db $80 ;bank 
	.db $1B,$1D,$1F,$21 ;tile IDs in columns left to right 
	.db $1C,$1E,$20,$22
PlayerBig_Walk1: ;M
	.db $02 
	.db	$04 
	.db $80 
	.db $1B,$1D,$27,$29
	.db $1C,$1E,$28,$2A
PlayerBig_Walk2: ;M
	.db $02 
	.db	$04 
	.db $80 
	.db $1B,$1D,$23,$25
	.db $1C,$1E,$24,$26
PlayerBig_Run1: ;M
	.db $03
	.db	$04 
	.db $80
	.db $FF,$FF,$2B,$FF
	.db $1B,$1D,$2C,$2E
	.db $1C,$1E,$2D,$2F
PlayerBig_Run2: ;M
	.db $03
	.db	$04 
	.db $80
	.db $FF,$FF,$2B,$FF
	.db $1B,$1D,$2C,$33
	.db $1C,$1E,$32,$34
PlayerBig_Run3: ;M
	.db $03
	.db	$04 
	.db $80
	.db $FF,$FF,$2B,$FF
	.db $1B,$1D,$2C,$30
	.db $1C,$1E,$2D,$31
PlayerBig_RunJump: ;M
	.db $03 
	.db	$04 
	.db $82
	.db $FF,$FF,$2C,$2F
	.db $1B,$1D,$2D,$30
	.db $2B,$39,$2E,$31
PlayerBig_Jump: ;M
	.db $02 
	.db	$04 
	.db $82
	.db $1B,$1D,$1F,$21
	.db $1C,$1E,$20,$22
PlayerBig_Fall: ;M
	.db $02 
	.db	$04 
	.db $82
	.db $23,$25,$27,$29
	.db $24,$26,$28,$2A
PlayerBig_Front: ;M
	.db $02 
	.db	$04 
	.db $8A
	.db $1F,$21,$23,$25
	.db $20,$22,$24,$26
PlayerBig_Back: ;M
	.db $02 
	.db	$04 
	.db $8A
	.db $27,$29,$2B,$2D
	.db $28,$2A,$2C,$2E
PlayerBig_Turn: ;UN (no animation, define state)
	.db $02
	.db	$04 
	.db $82
	.db $32,$34,$36,$38
	.db $33,$35,$37,$31
PlayerBig_Duck:
	db $02
	db $03
	db $84
	db $39, $3A
	db $3B, $3D
	db $3C, $2B
PlayerBig_LookUp: ;M
	.db $02
	.db	$04 
	.db $80
	.db $35,$37,$1F,$21
	.db $36,$38,$20,$22
PlayerBig_Swim1:
	db $03
	db $04
	db $85
	db $7F, $61, $FF
	db $62, $63, $FF
	db $7C, $7D, $FF
	db $73, $7B, $75
PlayerBig_Swim2:
	db $03
	db $04
	db $85
	db $7F, $61, $FF
	db $62, $63, $FF
	db $77, $78, $FF
	db $73, $7A, $76
PlayerBig_Climb1:
	db $02
	db $04
	db $88
	db $29, $2A
	db $2B, $2C
	db $2D, $2E
	db $2F, $30
PlayerBig_Victory: ;U
	.db $02 
	.db	$04 
	.db $8A
	.db $2F,$31,$33,$35
	.db $30,$32,$34,$36
PlayerBig_Hold: ;M
	db $02
	db $04
	db $80
	db $1B,$1D,$39,$2E
	db $1C,$1E,$3A,$2F
PlayerBig_HoldWalk1: ;M
	db $02
	db $04
	db $80
	db $1B,$1D,$39,$33
	db $1C,$1E,$3B,$34
PlayerBig_HoldWalk2: ;M
	db $02
	db $04
	db $80
	db $1B,$1D,$39,$30
	db $1C,$1E,$3A,$31
PlayerBig_DuckHold:
	db $02
	db $03
	db $86
	db $08
	db $B4, $B5
	db $B6, $B7
	db $B8, $B9
PlayerBig_LookUpHold: ;M
	.db $02
	.db	$04 
	.db $80
	.db $35,$37,$39,$2E
	.db $36,$38,$3A,$2F
;**********************************************
;Yoshi Animation tbls, work on these later
;**********************************************
YoshiAnimTablesTbl_1:
	dw Yoshi_AnimTbl
	dw Yoshi_AnimTbl
	dw Yoshi_AnimTbl
	dw Yoshi_AnimTbl
	dw Yoshi_AnimTbl
Yoshi_AnimTbl:
	dw Anim_YoshiStand ;Standing
	dw Anim_YoshiWalk ;Walking
	dw Anim_YoshiRun ;Running
	dw Anim_YoshiWalk ;The forbidden action
	dw Anim_YoshiJump ;Jumping
	dw Anim_YoshiJump ;Spinning. Unseen for obvious reasons
	dw Anim_YoshiTongueDuck ;Tongue out (Ducking)
	dw Anim_YoshiDucking ;Ducking
	dw Anim_YoshiStand ;Looking up
	dw Anim_YoshiJump ;Running jump
	dw Anim_YoshiFall ;Falling
	dw Anim_YoshiFall ;Sinking
	dw Anim_YoshiSwim ;Swimming
	dw Anim_YoshiTongue ;Tongue out (Idle)
	dw Anim_YoshiTongueWalk ;Tongue out (While moving)
	dw Anim_YoshiJump ;Flying. Technically used, although rarely seen due to a control bug
	dw Anim_YoshiStand ;Victory pose.
Anim_YoshiStand:
	dw Yoshi_Stand
	db $0A
	db $00
	dw Yoshi_Stand
	db $80
	db $00
Anim_YoshiWalk:
	dw Yoshi_Walk1
	db $04
	db $00
	dw Yoshi_Stand
	db $04
	db $00
	dw Yoshi_Walk1
	db $04
	db $00
	dw Yoshi_Stand
	db $80
	db $00
Anim_YoshiRun:
	dw Yoshi_Walk1
	db $01
	db $00
	dw Yoshi_Stand
	db $01
	db $00
	dw Yoshi_Walk1
	db $01
	db $00
	dw Yoshi_Walk1
	db $01
	db $00
	dw Yoshi_Stand
	db $01
	db $00
	dw Yoshi_Walk1
	db $01
	db $00
	dw Yoshi_Walk1
	db $01
	db $00
	dw Yoshi_Stand
	db $01
	db $00
	dw Yoshi_Walk1
	db $01
	db $00
	dw Yoshi_Walk1
	db $01
	db $00
	dw Yoshi_Stand
	db $01
	db $00
	dw Yoshi_Walk1
	db $01
	db $00
	dw Yoshi_Walk1
	db $01
	db $00
	dw Yoshi_Stand
	db $01
	db $00
	dw Yoshi_Walk1
	db $01
	db $00
	dw Yoshi_Walk1
	db $01
	db $00
	dw Yoshi_Stand
	db $01
	db $00
	dw Yoshi_Walk1
	db $01
	db $00
	dw Yoshi_Stand
	db $80
	db $00
Anim_YoshiJump:
	dw Yoshi_Jump
	db $23
	db $00
	dw Yoshi_Walk1
	db $02
	db $00
	dw Yoshi_Jump
	db $81
	db $00
Anim_YoshiSwim:
	dw Yoshi_Jump
	db $01
	db $00
	dw Yoshi_Jump
	db $80
	db $00
Anim_YoshiDucking:
	dw Yoshi_Duck
	db $01
	db $00
	dw Yoshi_Duck
	db $80
	db $00
Anim_YoshiFall:
	dw Yoshi_Walk1
	db $01
	db $00
	dw Yoshi_Walk1
	db $80
	db $00
	dw Yoshi_Stand
	db $0A
	db $00
	dw Yoshi_Stand
	db $80
	db $00
Anim_YoshiTongue:
	dw Yoshi_Flinch1
	db $01
	db $00
	dw Yoshi_Flinch1
	db $01
	db $00
	dw Yoshi_Flinch1
	db $01
	db $00
	dw Yoshi_Flinch1
	db $01
	db $00
	dw Yoshi_Flinch1
	db $01
	db $00
	dw Yoshi_Flinch1
	db $01
	db $00
	dw Yoshi_Tongue1
	db $02
	db $00
	dw Yoshi_Tongue2
	db $02
	db $00
	dw Yoshi_Tongue3
	db $02
	db $00
	dw Yoshi_Tongue4
	db $04
	db $00
	dw Yoshi_Tongue3
	db $02
	db $00
	dw Yoshi_Tongue2
	db $02
	db $00
	dw Yoshi_Tongue1
	db $02
	db $00
	dw Yoshi_Tongue1
	db $02
	db $00
	dw Yoshi_Flinch1
	db $80
	db $00
Anim_YoshiTongueDuck:
	dw Yoshi_Duck
	db $01
	db $00
	dw Yoshi_Duck
	db $01
	db $00
	dw Yoshi_Duck
	db $01
	db $00
	dw Yoshi_Duck
	db $01
	db $00
	dw Yoshi_Duck
	db $01
	db $00
	dw Yoshi_Duck
	db $01
	db $00
	dw Yoshi_Tongue1
	db $02
	db $00
	dw Yoshi_Tongue2
	db $02
	db $00
	dw Yoshi_Tongue3
	db $02
	db $00
	dw Yoshi_Tongue4
	db $04
	db $00
	dw Yoshi_Tongue3
	db $02
	db $00
	dw Yoshi_Tongue2
	db $02
	db $00
	dw Yoshi_Tongue1
	db $02
	db $00
	dw Yoshi_Tongue1
	db $02
	db $00
	dw Yoshi_Flinch1
	db $80
	db $00
Anim_YoshiTongueWalk:
	dw Yoshi_Flinch1
	db $01
	db $00
	dw Yoshi_Flinch1
	db $01
	db $00
	dw Yoshi_Flinch1
	db $01
	db $00
	dw Yoshi_Flinch2
	db $01
	db $00
	dw Yoshi_Flinch2
	db $01
	db $00
	dw Yoshi_Flinch2
	db $01
	db $00
	dw Yoshi_Tongue1
	db $02
	db $00
	dw Yoshi_Tongue2
	db $02
	db $00
	dw Yoshi_Tongue3
	db $02
	db $00
	dw Yoshi_Tongue4
	db $04
	db $00
	dw Yoshi_Tongue3
	db $02
	db $00
	dw Yoshi_Tongue2
	db $02
	db $00
	dw Yoshi_Tongue1
	db $02
	db $00
	dw Yoshi_Tongue1
	db $02
	db $00
	dw Yoshi_Flinch1
	db $80
	db $00
Yoshi_Stand:
	db $04
	db $04
	db $91
	db $18
	db $FF, $76, $77, $FF
	db $78, $79, $7A, $FF
	db $FF, $FF, $6D, $6E
	db $FF, $FF, $6F, $70
Yoshi_Walk1:
	db $04
	db $04
	db $93
	db $18
	db $FF, $F8, $F9, $FF
	db $FA, $FB, $EB, $FF
	db $FF, $EC, $ED, $EE
	db $FF, $FF, $EF, $F0
Yoshi_Jump:
	db $04
	db $04
	db $91
	db $18
	db $71, $72, $73, $FF
	db $FF, $74, $75, $FF
	db $FF, $FF, $6D, $6E
	db $FF, $FF, $7B, $7C
Yoshi_Flinch1:
	db $04
	db $04
	db $91
	db $18
	db $71, $72, $73, $FF
	db $FF, $74, $75, $FF
	db $FF, $FF, $6D, $6E
	db $FF, $FF, $6F, $70
Yoshi_Tongue1:
	db $04
	db $03
	db $9A
	db $18
	db $AB, $AC, $FF, $FF
	db $B8, $AF, $AE, $AD
	db $B6, $B5, $B4, $B3
Yoshi_Tongue2:
	db $05
	db $03
	db $9A
	db $20
	db $FF, $AB, $AC, $FF, $FF
	db $B2, $B0, $AF, $AE, $AD
	db $FF, $B6, $B5, $B4, $B3
Yoshi_Tongue3:
	db $06
	db $03
	db $9A
	db $28
	db $FF, $FF, $AB, $AC, $FF, $FF
	db $B2, $B1, $B0, $AF, $AE, $AD
	db $FF, $FF, $B6, $B5, $B4, $B3
Yoshi_Tongue4:
	db $07
	db $03
	db $9A
	db $30
	db $FF, $FF, $FF, $AB, $AC, $FF, $FF
	db $B2, $B1, $B1, $B0, $AF, $AE, $AD
	db $FF, $FF, $FF, $B6, $B5, $B4, $B3
Yoshi_Flinch2:
	db $04
	db $04
	db $93
	db $18
	db $F1, $F2, $F3, $FF
	db $F4, $F5, $F6, $FF
	db $FF, $FF, $F7, $EE
	db $FF, $FF, $EF, $F0
Yoshi_Duck:
	db $04
	db $04
	db $92
	db $18
	db $FF, $B8, $B9, $FF
	db $BA, $BB, $AB, $FF
	db $FF, $AC, $AD, $AE
	db $FF, $FF, $AF, $B0
YoshiAnimTablesTbl_2:
	dw pnt3_CD36
	dw pnt3_CD36
	dw pnt3_CD36
	dw pnt3_CD36
	dw pnt3_CD36
pnt3_CD36:
	dw pnt3_CD58
	dw pnt3_CD60
	dw pnt3_CD6C
	dw pnt3_CD60
	dw pnt3_CD78
	dw pnt3_CD78
	dw pnt3_CDA4
	dw pnt3_CD8C
	dw pnt3_CD58
	dw pnt3_CD78
	dw pnt3_CD94
	dw pnt3_CD94
	dw pnt3_CD84
	dw pnt3_CDB0
	dw pnt3_CDC4
	dw pnt3_CD78
	dw pnt3_CD58
pnt3_CD58:
	dw YoshiEat_Stand
	db $0A
	db $00
	dw YoshiEat_Stand
	db $80
	db $00
pnt3_CD60:
	dw YoshiEat_Walk2
	db $04
	db $00
	dw YoshiEat_Stand
	db $04
	db $00
	dw YoshiEat_Stand
	db $80
	db $00
pnt3_CD6C:
	dw YoshiEat_Stand
	db $01
	db $00
	dw YoshiEat_Walk2
	db $01
	db $00
	dw YoshiEat_Stand
	db $80
	db $00
pnt3_CD78:
	dw YoshiEat_Jump
	db $23
	db $00
	dw YoshiEat_Walk2
	db $02
	db $00
	dw YoshiEat_Jump
	db $81
	db $00
pnt3_CD84:
	dw YoshiEat_Jump
	db $01
	db $00
	dw YoshiEat_Jump
	db $80
	db $00
pnt3_CD8C:
	dw YoshiEat_Duck
	db $01
	db $00
	dw YoshiEat_Duck
	db $80
	db $00
pnt3_CD94:
	dw YoshiEat_Walk2
	db $01
	db $00
	dw YoshiEat_Walk2
	db $80
	db $00
	dw YoshiEat_Stand
	db $0A
	db $00
	dw YoshiEat_Stand
	db $80
	db $00
pnt3_CDA4:
	dw YoshiSpit_Duck
	db $04
	db $00
	dw YoshiSpit_Duck
	db $04
	db $00
	dw YoshiSpit_Duck
	db $80
	db $00
pnt3_CDB0:
	dw YoshiSpit_Stand
	db $02
	db $00
	dw YoshiSpit_Stand
	db $02
	db $00
	dw YoshiSpit_Stand
	db $02
	db $00
	dw YoshiSpit_Stand
	db $02
	db $00
	dw YoshiSpit_Stand
	db $80
	db $00
pnt3_CDC4:
	dw YoshiSpit_Stand
	db $02
	db $00
	dw YoshiSpit_Stand
	db $02
	db $00
	dw YoshiSpit_Stand
	db $02
	db $00
	dw YoshiSpit_Stand
	db $02
	db $00
	dw YoshiSpit_Stand
	db $02
	db $00
	dw YoshiSpit_Stand
	db $80
	db $00
YoshiEat_Stand:
	db $04
	db $05
	db $9B
	db $18
	db $FF, $FF, $F6, $FF
	db $F7, $F8, $F9, $FF
	db $FA, $FB, $FC, $FF
	db $FF, $FF, $FD, $F2
	db $FF, $FF, $EB, $F5
YoshiEat_Walk2:
	db $03
	db $04
	db $A3
	db $10
	db $FA, $F9, $FF
	db $FB, $FC, $FF
	db $FD, $F0, $EB
	db $FF, $F4, $F3
YoshiEat_Jump:
	db $04
	db $04
	db $9B
	db $18
	db $F7, $EC, $ED, $FF
	db $EE, $EF, $F0, $FF
	db $FF, $FF, $F1, $F2
	db $FF, $FF, $F3, $F4
YoshiEat_Duck:
	db $04
	db $04
	db $A0
	db $18
	db $FF, $36, $37, $FF
	db $38, $39, $3A, $FF
	db $FF, $3B, $3C, $3D
	db $FF, $FF, $3F, $35
YoshiSpit_Stand:
	db $04
	db $04
	db $91
	db $18
	db $FF, $7D, $7F, $FF
	db $FF, $6B, $6C, $FF
	db $FF, $FF, $6D, $6E
	db $FF, $FF, $6F, $70
YoshiSpit_Duck:
	db $04
	db $04
	db $A0
	db $18
	db $FF, $2B, $2C, $FF
	db $2D, $2E, $2F, $FF
	db $FF, $30, $31, $32
	db $FF, $FF, $33, $34
YoshiAnimTablesTbl_3:
	dw pnt3_CE5E
	dw pnt3_CE5E
	dw pnt3_CE5E
	dw pnt3_CE5E
	dw pnt3_CE5E
pnt3_CE5E:
	dw pnt3_CE80
	dw pnt3_CE8C
	dw pnt3_CE98
	dw pnt3_CE8C
	dw pnt3_CE98
	dw pnt3_CE98
	dw pnt3_CEA0
	dw pnt3_CE98
	dw pnt3_CE80
	dw pnt3_CE98
	dw pnt3_CE98
	dw pnt3_CE98
	dw pnt3_CE98
	dw pnt3_CEA0
	dw pnt3_CEB4
	dw pnt3_CE98
	dw pnt3_CE80
pnt3_CE80:
	dw YoshiEat_Stand
	db $04
	db $00
	dw Yoshi_Stand
	db $04
	db $00
	dw YoshiEat_Stand
	db $80
	db $00
pnt3_CE8C:
	dw YoshiEat_Walk2
	db $04
	db $00
	dw Yoshi_Stand
	db $04
	db $00
	dw YoshiEat_Stand
	db $80
	db $00
pnt3_CE98:
	dw YoshiEat_Stand
	db $0A
	db $00
	dw YoshiEat_Stand
	db $80
	db $00
pnt3_CEA0:
	dw pnt3_CED8
	db $04
	db $00
	dw pnt3_CED8
	db $04
	db $00
	dw pnt3_CEF0
	db $04
	db $00
	dw pnt3_CEF0
	db $04
	db $00
	dw pnt3_CED8
	db $80
	db $00
pnt3_CEB4:
	dw pnt3_CED8
	db $02
	db $00
	dw pnt3_CED8
	db $02
	db $00
	dw pnt3_CF04
	db $02
	db $00
	dw pnt3_CF04
	db $02
	db $00
	dw pnt3_CEF0
	db $02
	db $00
	dw pnt3_CEF0
	db $02
	db $00
	dw pnt3_CF14
	db $02
	db $00
	dw pnt3_CF14
	db $02
	db $00
	dw pnt3_CED8
	db $80
	db $00
pnt3_CED8:
	db $04
	db $05
	db $A1
	db $18
	db $FF
	db $75
	db $76
	db $FF
	db $77
	db $78
	db $79
	db $FF
	db $7A
	db $7B
	db $7C
	db $FF
	db $FF
	db $7F
	db $7D
	db $72
	db $FF
	db $FF
	db $73
	db $74
pnt3_CEF0:
	db $04
	db $04
	db $A1
	db $18
	db $FF
	db $6B
	db $6C
	db $FF
	db $6D
	db $6E
	db $6F
	db $FF
	db $FF
	db $70
	db $71
	db $72
	db $FF
	db $FF
	db $73
	db $74
pnt3_CF04:
	db $03
	db $04
	db $A2
	db $10
	db $AB
	db $AC
	db $FF
	db $AD
	db $AE
	db $FF
	db $AF
	db $B0
	db $B1
	db $FF
	db $B2
	db $B3
pnt3_CF14:
	db $04
	db $04
	db $A2
	db $18
	db $FF
	db $B4
	db $B5
	db $FF
	db $B6
	db $B7
	db $B8
	db $FF
	db $FF
	db $B9
	db $BA
	db $B1
	db $FF
	db $FF
	db $B2
	db $B3
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
;SPECIAL WARP DATA
;This is used for special warps such as the bonus room and cannon pipes.
SpecialWarpSettings:
	dw pnt3_D07C
	dw pnt3_D080
	dw pnt3_D084
	dw pnt3_D088
	dw pnt3_D08C
	dw pnt3_D090
	dw pnt3_D094
	dw pnt3_D098
	dw pnt3_D09C
	dw pnt3_D0A0
	dw pnt3_D0A4
	dw pnt3_D0A8
	dw pnt3_D0AC
	dw pnt3_D0B0
	dw pnt3_D0B4
	dw pnt3_D0B8
	dw pnt3_D0BC
	dw pnt3_D0C0
	dw pnt3_D0C4
	dw pnt3_D0C8
	dw pnt3_D0CC
	dw pnt3_D0D0
	dw pnt3_D0D4
	dw pnt3_D0D8
	dw pnt3_D0DC
	dw pnt3_D0E0
	dw pnt3_D0E4
	dw pnt3_D0E8
	dw SPWarp_BonusRoomSettings
	dw SPWarp_6_3_CannonSettings
	dw pnt3_D1D0
SpecialWarpCoords:
	dw pnt3_D0EC
	dw pnt3_D0F4
	dw pnt3_D0FC
	dw pnt3_D104
	dw pnt3_D10C
	dw pnt3_D114
	dw pnt3_D11C
	dw pnt3_D124
	dw pnt3_D12C
	dw pnt3_D134
	dw pnt3_D13C
	dw pnt3_D144
	dw pnt3_D14C
	dw pnt3_D154
	dw pnt3_D15C
	dw pnt3_D164
	dw pnt3_D16C
	dw pnt3_D174
	dw pnt3_D17C
	dw pnt3_D184
	dw pnt3_D18C
	dw pnt3_D194
	dw pnt3_D19C
	dw pnt3_D1A4
	dw pnt3_D1AC
	dw pnt3_D1B4
	dw pnt3_D1BC
	dw pnt3_D1C4
	dw SPWarp_BonusRoomPos
	dw SPWarp_6_3_CannonPos
	dw pnt3_D1DC
;Warp Level Settings Format
;Byte 1: Level flags and ID(?)
; Format: UUPLLLLL
; >UU: Underwater bits. Which one is set is irrelevant.
; >P: BG Priority bit. Player priority seems to be overriden by the level being warped to.
; >LLLLL: Destination level ID
;Byte 2: Tileset
;Byte 3: Second PRG Bank
;Byte 4: Palette ID
pnt3_D07C:
	db $00
	db $00
	db $1C
	db $00
pnt3_D080:
	db $01
	db $01
	db $1C
	db $01
pnt3_D084:
	db $02
	db $02
	db $1C
	db $02
pnt3_D088:
	db $03
	db $23
	db $23
	db $1D
pnt3_D08C:
	db $04
	db $04
	db $1D
	db $04
pnt3_D090:
	db $05
	db $05
	db $1D
	db $05
pnt3_D094:
	db $03
	db $27
	db $23
	db $1C
pnt3_D098:
	db $03
	db $23
	db $23
	db $1D
pnt3_D09C:
	db $08
	db $08
	db $1E
	db $08
pnt3_D0A0:
	db $49
	db $09
	db $1E
	db $09
pnt3_D0A4:
	db $03
	db $27
	db $23
	db $1C
pnt3_D0A8:
	db $03
	db $23
	db $23
	db $1D
pnt3_D0AC:
	db $0C
	db $0C
	db $1F
	db $0C
pnt3_D0B0:
	db $0D
	db $0D
	db $1F
	db $0D
pnt3_D0B4:
	db $0E
	db $0E
	db $1F
	db $0E
pnt3_D0B8:
	db $03
	db $23
	db $23
	db $1D
pnt3_D0BC:
	db $10
	db $10
	db $20
	db $10
pnt3_D0C0:
	db $03
	db $27
	db $23
	db $1C
pnt3_D0C4:
	db $52
	db $12
	db $20
	db $12
pnt3_D0C8:
	db $03
	db $23
	db $23
	db $1D
pnt3_D0CC:
	db $14
	db $14
	db $21
	db $14
pnt3_D0D0:
	db $03
	db $27
	db $23
	db $1C
pnt3_D0D4:
	db $16
	db $15
	db $21
	db $16
pnt3_D0D8:
	db $03
	db $23
	db $23
	db $1D
pnt3_D0DC:
	db $18
	db $18
	db $22
	db $18
pnt3_D0E0:
	db $19
	db $19
	db $22
	db $19
pnt3_D0E4:
	db $03
	db $27
	db $23
	db $1C
pnt3_D0E8:
	db $03
	db $23
	db $23
	db $1D
pnt3_D0EC:
	db $00
	db $01
	db $40
	db $B0
	db $FF
	db $11
	db $FF
	db $01
pnt3_D0F4:
	db $00
	db $01
	db $40
	db $B0
	db $FF
	db $11
	db $FF
	db $01
pnt3_D0FC:
	db $00
	db $01
	db $40
	db $B0
	db $FF
	db $11
	db $FF
	db $01
pnt3_D104:
	db $00
	db $00
	db $40
	db $C0
	db $FF
	db $00
	db $FF
	db $00
pnt3_D10C:
	db $0A
	db $01
	db $80
	db $A8
	db $FF
	db $11
	db $FF
	db $01
pnt3_D114:
	db $00
	db $01
	db $40
	db $B0
	db $FF
	db $11
	db $FF
	db $01
pnt3_D11C:
	db $00
	db $00
	db $40
	db $C0
	db $FF
	db $00
	db $FF
	db $00
pnt3_D124:
	db $00
	db $00
	db $40
	db $C0
	db $FF
	db $00
	db $FF
	db $00
pnt3_D12C:
	db $06
	db $00
	db $90
	db $58
	db $FF
	db $11
	db $FF
	db $00
pnt3_D134:
	db $03
	db $00
	db $70
	db $48
	db $FF
	db $0C
	db $FF
	db $00
pnt3_D13C:
	db $00
	db $00
	db $40
	db $C0
	db $FF
	db $00
	db $FF
	db $00
pnt3_D144:
	db $00
	db $00
	db $40
	db $C0
	db $FF
	db $00
	db $FF
	db $00
pnt3_D14C:
	db $0B
	db $01
	db $80
	db $C8
	db $FF
	db $11
	db $FF
	db $01
pnt3_D154:
	db $0B
	db $01
	db $70
	db $A8
	db $FF
	db $11
	db $00
	db $01
pnt3_D15C:
	db $06
	db $01
	db $70
	db $38
	db $FF
	db $11
	db $FF
	db $01
pnt3_D164:
	db $00
	db $00
	db $40
	db $C0
	db $FF
	db $00
	db $FF
	db $00
pnt3_D16C:
	db $0B
	db $01
	db $80
	db $98
	db $FF
	db $11
	db $00
	db $01
pnt3_D174:
	db $00
	db $00
	db $40
	db $C0
	db $FF
	db $00
	db $FF
	db $00
pnt3_D17C:
	db $00
	db $01
	db $40
	db $B0
	db $FF
	db $0E
	db $FF
	db $01
pnt3_D184:
	db $00
	db $00
	db $40
	db $C0
	db $FF
	db $00
	db $FF
	db $00
pnt3_D18C:
	db $00
	db $01
	db $80
	db $B0
	db $FF
	db $11
	db $00
	db $01
pnt3_D194:
	db $00
	db $01
	db $40
	db $C0
	db $FF
	db $00
	db $00
	db $01
pnt3_D19C:
	db $0F
	db $01
	db $80
	db $98
	db $FF
	db $11
	db $00
	db $01
pnt3_D1A4:
	db $00
	db $00
	db $40
	db $C0
	db $FF
	db $00
	db $FF
	db $00
pnt3_D1AC:
	db $00
	db $01
	db $80
	db $B0
	db $FF
	db $11
	db $00
	db $01
pnt3_D1B4:
	db $08
	db $01
	db $60
	db $18
	db $FF
	db $11
	db $00
	db $01
pnt3_D1BC:
	db $00
	db $00
	db $40
	db $C0
	db $FF
	db $00
	db $FF
	db $00
pnt3_D1C4:
	db $00
	db $00
	db $40
	db $C0
	db $FF
	db $00
	db $FF
	db $00
SPWarp_6_3_CannonSettings:
	db $16
	db $15
	db $21
	db $16
pnt3_D1D0:
	db $16
	db $15
	db $21
	db $16
SPWarp_6_3_CannonPos:
	db $06
	db $01
	db $90
	db $5C
	db $FF
	db $11
	db $00
	db $01
pnt3_D1DC:
	db $10
	db $01
	db $80
	db $5C
	db $FF
	db $11
	db $00
	db $01
SPWarp_BonusRoomSettings:
	db $23
	db $22
	db $2B
	db $25
SPWarp_BonusRoomPos:
	db $00
	db $01
	db $10
	db $B0
	db $FF
	db $00
	db $FF
	db $01
;End of special warp data
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $C0
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $80 ;Why the hell is this here? Seriously, why? All this does is prevent me from padding the rest of this bank.
