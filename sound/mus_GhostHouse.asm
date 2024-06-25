GhostHouse_P1:
GhostHouse_P1Loop:
	.byte SongSpeed, 1
	.byte Transpose, $1A
	.byte DutySet, $00
	.byte PitchSet, $00
	.byte VolSet, $33
	.byte $F0
	.word GhostHouse_P1Seq
	db $F0
	.word GhostHouse_P1Seq
	db $F0
	.word GhostHouse_P1Seq
	db $F0
	.word GhostHouse_P1Seq
	db $F0
	.word GhostHouse_P1Seq
	db $F0
	.word GhostHouse_P1Seq
	db $F0
	.word GhostHouse_P1Seq
	db $F0
	.word GhostHouse_P1Seq
	db $F0
	.word GhostHouse_P1Seq2
	db $F0
	.word GhostHouse_P1Seq2
	db $F0
	.word GhostHouse_P1Seq2
	db $F0
	.word GhostHouse_P1Seq2
	db $F0
	.word GhostHouse_P1Seq2
	db $F0
	.word GhostHouse_P1Seq2
	db $F0
	.word GhostHouse_P1Seq2
	db $F0
	.word GhostHouse_P1Seq2
	db Transpose
	db C2
	db $F0
	.word GhostHouse_P1Seq
	db $F0
	.word GhostHouse_P1Seq
	db $F0
	.word GhostHouse_P1Seq
	db $F0
	.word GhostHouse_P1Seq
	db $F0
	.word GhostHouse_P1Seq
	db $F0
	.word GhostHouse_P1Seq
	db $F0
	.word GhostHouse_P1Seq
	db $F0
	.word GhostHouse_P1Seq
	db $F0
	.word GhostHouse_P1Seq2
	db $F0
	.word GhostHouse_P1Seq2
	db $F0
	.word GhostHouse_P1Seq2
	db $F0
	.word GhostHouse_P1Seq2
	db $F0
	.word GhostHouse_P1Seq2
	db $F0
	.word GhostHouse_P1Seq2
	db $F0
	.word GhostHouse_P1Seq2
	db $F0
	.word GhostHouse_P1Seq2
	.byte Transpose, $16
	.byte $F0
	.word GhostHouse_P1Seq
	db $F0
	.word GhostHouse_P1Seq
	db $F0
	.word GhostHouse_P1Seq
	db $F0
	.word GhostHouse_P1Seq
	db $F0
	.word GhostHouse_P1Seq
	db $F0
	.word GhostHouse_P1Seq
	db $F0
	.word GhostHouse_P1Seq
	db $F0
	.word GhostHouse_P1Seq
	db $F0
	.word GhostHouse_P1Seq2
	db $F0
	.word GhostHouse_P1Seq2
	db $F0
	.word GhostHouse_P1Seq2
	db $F0
	.word GhostHouse_P1Seq2
	db $F0
	.word GhostHouse_P1Seq2
	db $F0
	.word GhostHouse_P1Seq2
	db $F0
	.word GhostHouse_P1Seq2
	db $F0
	.word GhostHouse_P1Seq2
	db $F4
	.word GhostHouse_P1Loop
	db $FF
GhostHouse_P1Seq:
	db $8A
	db A3
	db B3
	db $2B
	db A3
	db A3
	db B3
	db $2B
	db A3
	db $F1
	db $FF
GhostHouse_P1Seq2:
	db $8A
	db A3
	db B3
	db $2B
	db B3
	db A3
	db B3
	db $2B
	db B3
	db $F1
	db $FF
GhostHouse_P2Tri:
GhostHouse_P2TriLoop:
	.byte Transpose, $0E
	.byte $F0
	.word GhostHouse_P2Seq
	db $F0
	.word GhostHouse_P2Seq2
	.byte Transpose, $0C
	.byte $F0
	.word GhostHouse_P2Seq
	db $F0
	.word GhostHouse_P2Seq2
	.byte Transpose, $0A
	.byte $F0
	.word GhostHouse_P2Seq
	db $F0
	.word GhostHouse_P2Seq2
	db $F4
	.word GhostHouse_P2TriLoop
	db $FF
GhostHouse_P2Seq:
	.byte DutySet, $00
	.byte PitchSet, $62
	.byte VolSet, $02
	.byte NLen+20
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte $F1
	.byte $FF
GhostHouse_P2Seq2:
	.byte DutySet, $12
	.byte PitchSet, $00
	.byte VolSet, $11
	.byte $D0
	.byte C2
	.byte $A8
	.byte $15
	.byte $10
	.byte $11
	.byte $D0
	.byte $15
	.byte NLen+20
	.byte NRest
	.byte NRest
	.byte $A8
	.byte $10
	.byte $15
	.byte $1C
	.byte $D0
	.byte C2
	.byte $17
	.byte NLen+20
	.byte NRest
	.byte NRest
	.byte $F1
	.byte $FF
GhostHouse_End:
	db $FF
GhostHouse_Footer:
	db NRest
	.word GhostHouse_P1
	db $01
	.word GhostHouse_P2Tri
	db $02
	.word GhostHouse_P2Tri
	db $03
	.word GhostHouse_End
	db $04
	.word GhostHouse_End
	db $FF