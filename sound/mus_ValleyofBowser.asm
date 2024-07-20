ValleyofBowser_P1:
	.byte SongSpeed, 1
	.byte Transpose, $02
	.byte DutySet, $3B
	.byte PitchSet, $05
	.byte VolSet, $02
	.byte NLen+60
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NLen+45
	.byte NRest
	.byte NLen+15
	.byte G#2
ValleyofBowser_P1Loop:
	.byte NLen+90
	.byte G2
	.byte NRest
	.byte NLen+45
	.byte NRest
	.byte NLen+15
	.byte G2
	.byte NLen+90
	.byte G#2
	.byte NRest
	.byte NLen+45
	.byte NRest
	.byte NLen+15
	.byte G#2
	.byte $F4
	.word ValleyofBowser_P1Loop
	db $FF
ValleyofBowser_P2:
ValleyofBowser_P2Loop:
	.byte Transpose, $00
	.byte DutySet, $34
	.byte VolSet, $41
	.byte SegCall
	.word ValleyofBowser_P2Sub
	.byte E2
	.byte SegCall
	.word ValleyofBowser_P2Sub
	.byte B1
	.byte $F4
	.word ValleyofBowser_P2Loop
	db $FF
ValleyofBowser_P2Sub:
	.byte PitchSet, $39
	.byte NLen+7
	.byte NRest
	.byte NLen+8
	.byte E1
	.byte NLen+7
	.byte E1
	.byte NLen+8
	.byte E1
	.byte NLen+15
	.byte E1
	.byte NLen+7
	.byte E1
	.byte NLen+15
	.byte E1
	.byte NLen+8
	.byte E1
	.byte NLen+15
	.byte E1
	.byte E1
	.byte PitchSet, $3A
	.byte SegEnd
ValleyofBowser_Tri:
	.byte Transpose, $18
	.byte DutySet, $07
	.byte PitchSet, $05
	.byte VolSet, $02
	.byte NLen+60
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NLen+45
	.byte NRest
	.byte NLen+15
	.byte G#2
ValleyofBowser_TriLoop:
	.byte NLen+90
	.byte G2
	.byte NRest
	.byte NLen+45
	.byte NRest
	.byte NLen+15
	.byte G2
	.byte NLen+90
	.byte G#2
	.byte NRest
	.byte NLen+45
	.byte NRest
	.byte NLen+15
	.byte G#2
	.byte $F4
	.word ValleyofBowser_TriLoop
	db $FF
ValleyofBowser_Noise:
ValleyofBowser_NoiseLoop:
	.byte Transpose, $01
	.byte DutySet, $00
	.byte PitchSet, 0
	.byte VolSet, $53
	.byte NLen+7
	.byte $20
	.byte NLen+8
	.byte $20
	.byte $F4
	.word ValleyofBowser_NoiseLoop
	.byte $FF
ValleyofBowser_DPCM:
	.byte Transpose, $00
ValleyofBowser_DPCMLoop:
	.byte NLen+30
	.byte KickDrum
	.byte NLen+45
	.byte PowerSnare
	.byte NLen+15
	.byte KickDrum
	.byte NLen+30
	.byte PowerSnare
	.byte SongJump
	.word ValleyofBowser_DPCMLoop
	.byte $FF
ValleyofBowser_Footer:
	db NRest
	.word ValleyofBowser_P1
	db $01
	.word ValleyofBowser_P2
	db $02
	.word ValleyofBowser_Tri
	db $03
	.word ValleyofBowser_Noise
	db $04
	.word ValleyofBowser_DPCM
	db $FF