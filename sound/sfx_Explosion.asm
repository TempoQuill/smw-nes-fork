Explosion_Noise:
	.byte SongSpeed, 1
	.byte Transpose, $00
	.byte DutySet, $34
	.byte PitchSet, $2F
	.byte VolSet, $2E
	.byte NLen+27
	.byte $20
	.byte $FF
Explosion_Footer:
	.byte NLen+3
	.word Explosion_Noise
	.byte $FF