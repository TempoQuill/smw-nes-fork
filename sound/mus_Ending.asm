Ending_P1:
Ending_P1Loop:
	.byte SongSpeed, 2
	.byte Transpose, $0C
	.byte DutySet, $07
	.byte PitchSet, $00
	.byte VolSet, $11
	.byte $A4
	.byte C3
	.byte NLen+12
	.byte C3
	.byte NLen+6
	.byte E3
	.byte NLen+12
	.byte E3
	.byte NLen+6
	.byte D3
	.byte NLen+12
	.byte C3
	.byte B2
	.byte A2
	.byte NLen+24
	.byte A2
	.byte NLen+6
	.byte A2
	.byte B2
	.byte $A4
	.byte G2
	.byte NLen+6
	.byte A2
	.byte B2
	.byte $A4
	.byte C3
	.byte NLen+12
	.byte C3
	.byte NLen+6
	.byte E3
	.byte NLen+12
	.byte E3
	.byte NLen+6
	.byte D3
	.byte NLen+12
	.byte C3
	.byte B2
	.byte A2
	.byte NLen+24
	.byte A2
	.byte NLen+6
	.byte A2
	.byte B2
	.byte NLen+48
	.byte G2
	.byte NLen+24
	.byte E3
	.byte E3
	.byte NLen+6
	.byte $2B
	.byte NLen+12
	.byte $2B
	.byte NLen+6
	.byte F3
	.byte NLen+12
	.byte E3
	.byte D3
	.byte NLen+48
	.byte C3
	.byte F3
	.byte $A4
	.byte C3
	.byte NLen+12
	.byte C3
	.byte NLen+6
	.byte E3
	.byte NLen+12
	.byte E3
	.byte NLen+6
	.byte D3
	.byte NLen+12
	.byte C3
	.byte B2
	.byte A2
	.byte NLen+24
	.byte A2
	.byte NLen+6
	.byte A2
	.byte B2
	.byte $A4
	.byte G2
	.byte NLen+6
	.byte A2
	.byte B2
	.byte $A4
	.byte C3
	.byte NLen+12
	.byte C3
	.byte NLen+6
	.byte E3
	.byte NLen+12
	.byte E3
	.byte NLen+6
	.byte D3
	.byte NLen+12
	.byte C3
	.byte B2
	.byte A2
	.byte NLen+24
	.byte A2
	.byte NLen+6
	.byte A2
	.byte B2
	.byte NLen+48
	.byte G2
	.byte NLen+24
	.byte E3
	.byte E3
	.byte NLen+6
	.byte $2B
	.byte NLen+12
	.byte $2B
	.byte NLen+6
	.byte F3
	.byte NLen+12
	.byte E3
	.byte D3
	.byte NLen+48
	.byte C3
	.byte $A4
	.byte B2
	.byte NLen+6
	.byte B2
	.byte B2
	.byte NLen+48
	.byte C3
	.byte NLen+12
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
	.byte $F4
	.word Ending_P1Loop
	db $FF
Ending_P2:
Ending_P2Loop:
	.byte Transpose
	.byte NRest
	.byte DutySet, $17
	.byte PitchSet, $16
	.byte VolSet, $14
	.byte NLen+12
	.byte NRest
	.byte NLen+6
	.byte C3
	.byte NRest
	.byte A2
	.byte NLen+12
	.byte G2
	.byte NLen+6
	.byte NRest
	.byte NLen+9
	.byte $20
	.byte NLen+3
	.byte A2
	.byte NLen+6
	.byte $22
	.byte NLen+24
	.byte B2
	.byte NLen+6
	.byte NRest
	.byte NLen+12
	.byte NRest
	.byte NLen+6
	.byte D3
	.byte NRest
	.byte E3
	.byte NLen+12
	.byte F3
	.byte NLen+6
	.byte NRest
	.byte B2
	.byte C3
	.byte D3
	.byte NLen+12
	.byte F3
	.byte NLen+6
	.byte $25
	.byte NLen+12
	.byte D3
	.byte $F4
	.word Ending_P2Loop
	db $FF
Ending_Tri:
Ending_TriLoop:
	.byte Transpose, $0C
	.byte DutySet, $38
	.byte PitchSet, $00
	.byte VolSet, $41
	.byte NLen+12
	.byte C2
	.byte C2
	.byte G2
	.byte $1C
	.byte $1C
	.byte B2
	.byte G2
	.byte $1C
	.byte F2
	.byte C3
	.byte F3
	.byte D3
	.byte $2B
	.byte G2
	.byte D3
	.byte B2
	.byte $F4
	.word Ending_TriLoop
	db $FF
Ending_Noise:
Ending_NoiseLoop:
	.byte Transpose, $01
	.byte DutySet, $00
	.byte PitchSet, 0
	.byte VolSet, $53
	.byte NLen+12
	.byte B3
	.byte NLen+6
	.byte C3
	.byte C3
	.byte NLen+12
	.byte B3
	.byte NLen+6
	.byte C3
	.byte C3
	.byte NLen+12
	.byte B3
	.byte NLen+6
	.byte C3
	.byte C3
	.byte NLen+12
	.byte B3
	.byte NLen+6
	.byte C3
	.byte C3
	.byte NLen+12
	.byte B3
	.byte NLen+6
	.byte C3
	.byte C3
	.byte NLen+12
	.byte B3
	.byte NLen+6
	.byte C3
	.byte C3
	.byte NLen+3
	.byte B3
	.byte C3
	.byte NLen+6
	.byte B3
	.byte B3
	.byte NLen+3
	.byte C3
	.byte C3
	.byte NLen+6
	.byte B3
	.byte C3
	.byte NLen+12
	.byte C3
	.byte $F4
	.word Ending_NoiseLoop
	db $FF
Ending_End:
	db $FF
Ending_Footer:
	db NRest
	.word Ending_P1
	db $01
	.word Ending_P2
	db $02
	.word Ending_Tri
	db $03
	.word Ending_Noise
	db $04
	.word Ending_End
	db $FF