VanillaDome_P1Tri:
	.byte $F5
	.byte $01
	.byte Transpose
	.byte $05
	.byte DutySet
	.byte $12
	.byte PitchSet
	.byte NRest
	.byte VolSet
	.byte $11
	.byte $94
	.byte $15
	.byte NRest
	.byte $9E
	.byte NRest
	.byte $8A
	.byte $15
	.byte $94
	.byte $15
	.byte NRest
	.byte NRest
	.byte NRest
	.byte C2
	.byte NRest
	.byte $9E
	.byte NRest
	.byte $8A
	.byte C2
	.byte $94
	.byte C2
	.byte NRest
	.byte NRest
	.byte NRest
VanillaDome_P1TriLoop:
	.byte $94
	.byte $15
	.byte NRest
	.byte $9E
	.byte NRest
	.byte $8A
	.byte $15
	.byte $94
	.byte $15
	.byte NRest
	.byte NRest
	.byte NRest
	.byte C2
	.byte NRest
	.byte $9E
	.byte NRest
	.byte $8A
	.byte C2
	.byte $94
	.byte C2
	.byte NRest
	.byte NRest
	.byte NRest
	.byte $15
	.byte NRest
	.byte $9E
	.byte NRest
	.byte $8A
	.byte $15
	.byte $94
	.byte $15
	.byte NRest
	.byte NRest
	.byte NRest
	.byte C2
	.byte NRest
	.byte $9E
	.byte NRest
	.byte $8A
	.byte C2
	.byte $94
	.byte C2
	.byte NRest
	.byte NRest
	.byte NRest
	.byte $1B
	.byte NRest
	.byte $9E
	.byte NRest
	.byte $8A
	.byte $1B
	.byte $94
	.byte $1B
	.byte NRest
	.byte NRest
	.byte NRest
	.byte $14
	.byte NRest
	.byte $9E
	.byte NRest
	.byte $8A
	.byte $14
	.byte $94
	.byte $14
	.byte NRest
	.byte NRest
	.byte NRest
	.byte $F4
	.word VanillaDome_P1TriLoop
	.byte $FF
VanillaDome_P2:
	.byte Transpose
	.byte $1D
	.byte DutySet
	.byte $5B
	.byte PitchSet
	.byte $39
	.byte VolSet
	.byte $11
	.byte $94
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
VanillaDome_P2Loop:
	.byte $85
	.byte F4
	.byte D4
	.byte A3
	.byte $A8
	.byte F4
	.byte $85
	.byte NRest
	.byte $D0
	.byte D4
	.byte $94
	.byte NRest
	.byte $85
	.byte G4
	.byte E4
	.byte C4
	.byte $A8
	.byte G4
	.byte $85
	.byte NRest
	.byte $D0
	.byte E4
	.byte $94
	.byte NRest
	.byte $85
	.byte F4
	.byte D4
	.byte A3
	.byte $A8
	.byte F4
	.byte $85
	.byte NRest
	.byte $D0
	.byte D4
	.byte $94
	.byte NRest
	.byte $85
	.byte G4
	.byte E4
	.byte C4
	.byte $A8
	.byte G4
	.byte $85
	.byte NRest
	.byte $D0
	.byte E4
	.byte $94
	.byte NRest
	.byte $85
	.byte $33
	.byte C4
	.byte G#3
	.byte $BC
	.byte $33
	.byte $85
	.byte NRest
	.byte $94
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte $85
	.byte D4
	.byte B3
	.byte $2B
	.byte $BC
	.byte D4
	.byte $85
	.byte NRest
	.byte $94
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte $F4
	.word VanillaDome_P2Loop
	.byte $FF
VanillaDome_Noise:
	.byte Transpose
	.byte NRest
	.byte DutySet
	.byte NRest
	.byte PitchSet
	.byte NRest
	.byte VolSet
	.byte $53
	.byte $94
	.byte B3
	.byte $8A
	.byte C3
	.byte C3
	.byte $9E
	.byte F3
	.byte $8A
	.byte C3
	.byte B3
	.byte F3
	.byte C3
	.byte C3
	.byte $A8
	.byte B3
	.byte $94
	.byte B3
	.byte $8A
	.byte C3
	.byte C3
	.byte $9E
	.byte F3
	.byte $8A
	.byte C3
	.byte B3
	.byte F3
	.byte B3
	.byte B3
	.byte $A8
	.byte F3
VanillaDome_NoiseLoop:
	.byte $94
	.byte B3
	.byte $8A
	.byte C3
	.byte C3
	.byte $9E
	.byte F3
	.byte $8A
	.byte C3
	.byte B3
	.byte F3
	.byte C3
	.byte C3
	.byte $A8
	.byte B3
	.byte $94
	.byte B3
	.byte $8A
	.byte C3
	.byte C3
	.byte $9E
	.byte F3
	.byte $8A
	.byte C3
	.byte B3
	.byte F3
	.byte B3
	.byte B3
	.byte $A8
	.byte F3
	.byte $94
	.byte B3
	.byte $8A
	.byte C3
	.byte C3
	.byte $9E
	.byte F3
	.byte $8A
	.byte C3
	.byte B3
	.byte F3
	.byte C3
	.byte C3
	.byte $A8
	.byte B3
	.byte $94
	.byte B3
	.byte $8A
	.byte C3
	.byte C3
	.byte $9E
	.byte F3
	.byte $8A
	.byte C3
	.byte B3
	.byte F3
	.byte B3
	.byte B3
	.byte $A8
	.byte F3
	.byte $94
	.byte B3
	.byte $8A
	.byte C3
	.byte C3
	.byte $9E
	.byte F3
	.byte $8A
	.byte C3
	.byte B3
	.byte F3
	.byte C3
	.byte C3
	.byte $94
	.byte B3
	.byte $8A
	.byte C3
	.byte C3
	.byte $94
	.byte B3
	.byte $8A
	.byte C3
	.byte C3
	.byte $9E
	.byte F3
	.byte $8A
	.byte C3
	.byte $85
	.byte F3
	.byte F3
	.byte $8A
	.byte B3
	.byte B3
	.byte $85
	.byte F3
	.byte F3
	.byte $8A
	.byte B3
	.byte F3
	.byte $94
	.byte F3
	.byte $F4
	.word VanillaDome_NoiseLoop
	.byte $FF
VanillaDome_End:
	.byte $FF
VanillaDome_Footer:
	.byte NRest
	.word VanillaDome_P1Tri
	.byte $01
	.word VanillaDome_P2
	.byte $02
	.word VanillaDome_P1Tri
	.byte $03
	.word VanillaDome_Noise
	.byte $04
	.word VanillaDome_End
	.byte $FF