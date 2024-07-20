Underwater_P1:
	db SongSpeed, 1
	db Transpose, $00
	db DutySet, $7B
	db PitchSet, $0F
	db VolSet, $09
	db NLen+38
	db D5
	db NLen+4
	db NRest
	db NLen+24
	db A#4
	db NLen+4
	db NRest
	db NLen+10
	db F4
	db NLen+4
	db NRest
	db NLen+23
	db E4
	db NLen+3
	db E4
	db NLen+2
	db NRest
	db NLen+3
	db F4
	db NLen+2
	db NRest
	db NLen+3
	db F#4
	db NLen+2
	db NRest
	db NLen+42
	db G4
	db NLen+4
	db NRest
Underwater_P1Loop:
	db SongLoop,2
	db NLen+42
	db NRest
	db SegCall
	dw Underwater_PSub1
	db NLen+42
	db NRest
	db Transpose, 1
	db SegCall
	dw Underwater_P1Sub1
	db SongLoopEnd
	db SongLoop,2
	db SegCall
	dw Underwater_PSub1
	db SegCall
	dw Underwater_PSub1
	db SegCall
	dw Underwater_PSub2
	db Transpose, 2
	db SegCall
	dw Underwater_P1Sub1
	db SegCall
	dw Underwater_P1Sub2
	db Transpose, 3
	db SegCall
	dw Underwater_P1Sub1
	db SegCall
	dw Underwater_PSub2
	db Transpose, 2
	db SegCall
	dw Underwater_P1Sub2
	db SegCall
	dw Underwater_PSub1
	db SegCall
	dw Underwater_PSub1
	db SegCall
	dw Underwater_PSub2
	db Transpose, 2
	db SegCall
	dw Underwater_P1Sub1
	db SegCall
	dw Underwater_PSub2
	db SegCall
	dw Underwater_P1Sub3
	db SegCall
	dw Underwater_PSub1
	db NLen+42
	db NRest
	db SongLoopEnd
	db SongLoop,2
	db Transpose, 5
	db SegCall
	dw Underwater_P1Sub1
	db SegCall
	dw Underwater_P1Sub1
	db Transpose, 0
	db SegCall
	dw Underwater_P1Sub4
	db SegCall
	dw Underwater_P1Sub4
	db SegCall
	dw Underwater_P1Sub5
	db SegCall
	dw Underwater_P1Sub5
	db SegCall
	dw Underwater_P1Sub6
	db Transpose, 2
	db NLen+14
	db NRest
	db SegCall
	dw Underwater_P1Sub2T
	db NLen+14
	db NRest
	db SongLoopEnd
	db SegCall
	dw Underwater_PSub1
	db SegCall
	dw Underwater_PSub1
	db SegCall
	dw Underwater_PSub2
	db Transpose, 2
	db SegCall
	dw Underwater_P1Sub1
	db SegCall
	dw Underwater_PSub2
	db SegCall
	dw Underwater_P1Sub3
	db SegCall
	dw Underwater_PSub1
	db NLen+42
	db NRest
	db $F4
	dw Underwater_P1Loop
	db $FF
Underwater_P1Sub1:
	db NLen+14
	db NRest
	db NLen+2
	db A2
	db C3
	db NLen+10
	db NRest
	db NLen+2
	db A2
	db C3
	db NLen+10
	db NRest
	db SegEnd
Underwater_P1Sub2:
	db NLen+14
	db NRest
	db NLen+2
	db A#2
	db D3
	db NLen+10
	db NRest
Underwater_P1Sub2T:
	db NLen+2
	db A#2
	db D3
	db NLen+10
	db NRest
	db SegEnd
Underwater_P1Sub3:
	db NLen+14
	db NRest
	db NLen+2
	db A#2
	db C3
	db NLen+10
	db NRest
	db NLen+2
	db A#2
	db C3
	db NLen+10
	db NRest
	db SegEnd
Underwater_P1Sub4:
	db NLen+14
	db NRest
	db NLen+2
	db C3
	db F3
	db NLen+10
	db NRest
	db NLen+2
	db C3
	db F3
	db NLen+10
	db NRest
	db SegEnd
Underwater_P1Sub5:
	db NLen+14
	db NRest
	db NLen+2
	db B2
	db F3
	db NLen+10
	db NRest
	db NLen+2
	db B2
	db F3
	db NLen+10
	db NRest
	db SegEnd
Underwater_P1Sub6:
	db NLen+14
	db NRest
	db NLen+2
	db A#2
	db F3
	db NLen+10
	db NRest
	db NLen+2
	db A#2
	db F3
	db NLen+10
	db NRest
	db SegEnd
Underwater_P2:
	db Transpose, $00
	db DutySet, $7B
	db PitchSet, $0F
	db VolSet, $09
	db NLen+38
	db F4
	db NLen+4
	db NRest
	db NLen+24
	db D4
	db NLen+4
	db NRest
	db NLen+10
	db A#3
	db NLen+4
	db NRest
	db NLen+23
	db G3
	db NLen+3
	db G3
	db NLen+2
	db NRest
	db NLen+3
	db G#3
	db NLen+2
	db NRest
	db NLen+3
	db A3
	db NLen+2
	db NRest
	db NLen+42
	db A#3
	db NLen+4
	db NRest
Underwater_P2Loop:
	db SegCall
	dw Underwater_PSub1
	db SegCall
	dw Underwater_P2Sub4
	db SegCall
	dw Underwater_PSub2
	db SegCall
	dw Underwater_P2Sub5
	db NLen+28
	db D6
	db SegCall
	dw Underwater_PSub1
	db SegCall
	dw Underwater_P2Sub4
	db SegCall
	dw Underwater_PSub2
	db SegCall
	dw Underwater_P2Sub5
	db NLen+28
	db E6
	db SegCall
	dw Underwater_P2Sub1
	db SegCall
	dw Underwater_P2Sub1
	db SegCall
	dw Underwater_P2Sub3
	db NLen+14
	db D#3
	db NLen+70
	db D3
	db Transpose, 0
	db DutySet, $7B
	db VolSet, $19
	db NLen+2
	db C3
	db E3
	db NLen+10
	db NRest
	db SegCall
	dw Underwater_P2Sub3
	db NLen+14
	db G2
	db NLen+70
	db G3
	db Transpose, 0
	db DutySet, $7B
	db VolSet, $19
	db NLen+2
	db C3
	db E3
	db NLen+10
	db NRest
	db Transpose, $11
	db PitchSet, $0B
	db VolSet, $0A
	db SegCall
	dw Underwater_P2Sub2
	db $F4
	dw Underwater_P2Loop
	db $FF
Underwater_P2Sub1:
	db Transpose, $11
	db DutySet, $7B
	db PitchSet, $0B
	db VolSet, $0A
	db NLen+42
	db E3
	db NLen+28
	db C3
	db NLen+14
	db G2
	db NLen+28
	db A2
	db NLen+14
	db C3
	db NLen+42
	db C3
	db NLen+28
	db G2
	db NLen+14
	db C3
	db NLen+28
	db C3
	db NLen+14
	db G3
	db NLen+42
	db E3
	db D3
Underwater_P2Sub2:
	db NLen+42
	db E3
	db NLen+28
	db C3
	db NLen+14
	db G2
	db NLen+28
	db A2
	db NLen+14
	db C3
	db NLen+42
	db C3
	db NLen+28
	db G2
	db NLen+14
	db C3
	db F3
	db E3
	db D3
	db NLen+42
	db C3
	db SongJump
	dw Underwater_PSub1
Underwater_P2Sub3:
	db Transpose, $11
	db PitchSet, $0D
	db VolSet, $0C
	db NLen+42
	db E3
	db NLen+28
	db C3
	db NLen+14
	db G2
	db NLen+42
	db E3
	db C3
	db D#3
	db NLen+28
	db C3
	db SegEnd
Underwater_P2Sub4:
	db PitchSet, $0F
	db DutySet, $07
	db VolSet, $10
	db NLen+3
	db C5
	db NLen+4
	db D5
	db NLen+3
	db F5
	db NLen+4
	db A5
	db NLen+28
	db C6
	db SegEnd
Underwater_P2Sub5:
	db PitchSet, $0F
	db DutySet, $07
	db VolSet, $10
	db NLen+3
	db D5
	db NLen+4
	db E5
	db NLen+3
	db G5
	db NLen+4
	db A#5
	db SegEnd
Underwater_PSub1:
	db NLen+14
	db NRest
	db Transpose, 0
	db DutySet, $7B
	db VolSet, $19
	db NLen+2
	db A2
	db C3
	db NLen+10
	db NRest
	db NLen+2
	db A2
	db C3
	db NLen+10
	db NRest
	db SegEnd
Underwater_PSub2:
	db NLen+14
	db NRest
	db Transpose, 0
	db DutySet, $7B
	db VolSet, $19
	db NLen+2
	db A#2
	db D3
	db NLen+10
	db NRest
	db NLen+2
	db A#2
	db D3
	db NLen+10
	db NRest
	db SegEnd
Underwater_Tri:
	db Transpose, $00
	db DutySet, $7B
	db PitchSet, $0F
	db VolSet, $09
	db NLen+38
	db G3
	db NLen+4
	db NRest
	db NLen+24
	db G3
	db NLen+4
	db NRest
	db NLen+10
	db G3
	db NLen+4
	db NRest
	db NLen+23
	db C2
	db NLen+3
	db C2
	db NLen+2
	db NRest
	db NLen+3
	db D2
	db NLen+2
	db NRest
	db NLen+3
	db D#2
	db NLen+2
	db NRest
	db NLen+42
	db E2
	db NLen+4
	db NRest
Underwater_TriLoop:
	db SegCall
	dw Underwater_TriSub1
	db NLen+24
	db C2
	db NLen+18
	db NRest
	db SegCall
	dw Underwater_TriSub1
	db NLen+7
	db C2
	db NRest
	db D2
	db NRest
	db E2
	db NRest
	db SegCall
	dw Underwater_TriSub2
	db SegCall
	dw Underwater_TriSub2
	db SegCall
	dw Underwater_TriSub4
	db SegCall
	dw Underwater_TriSub4
	db SegCall
	dw Underwater_TriSub3
	db $F4
	dw Underwater_TriLoop
	db $FF
Underwater_TriSub1:
	db NLen+24
	db F2
	db NLen+18
	db NRest
	db NLen+24
	db D2
	db NLen+18
	db NRest
	db NLen+24
	db G2
	db NLen+18
	db NRest
	db SegEnd
Underwater_TriSub2:
	db NLen+24
	db F2
	db NLen+18
	db NRest
	db NLen+24
	db A2
	db NLen+18
	db NRest
	db NLen+24
	db A#2
	db NLen+18
	db NRest
	db NLen+24
	db B2
	db NLen+18
	db NRest
	db NLen+24
	db A2
	db NLen+18
	db NRest
	db NLen+24
	db G#2
	db NLen+18
	db NRest
	db NLen+24
	db G2
	db NLen+18
	db NRest
	db NLen+7
	db C2
	db NRest
	db D2
	db NRest
	db E2
	db NRest
Underwater_TriSub3:
	db NLen+24
	db F2
	db NLen+18
	db NRest
	db NLen+24
	db A2
	db NLen+18
	db NRest
	db NLen+24
	db A#2
	db NLen+18
	db NRest
	db NLen+24
	db B2
	db NLen+18
	db NRest
	db NLen+24
	db G2
	db NLen+18
	db NRest
	db NLen+24
	db C3
	db NLen+18
	db NRest
	db NLen+7
	db F2
	db NRest
	db C3
	db NRest
	db A2
	db NRest
	db NLen+24
	db F2
	db NLen+18
	db NRest
	db SegEnd
Underwater_TriSub4:
	db NLen+24
	db A#2
	db NLen+18
	db NRest
	db NLen+24
	db A#2
	db NLen+18
	db NRest
	db NLen+24
	db A2
	db NLen+18
	db NRest
	db NLen+24
	db A2
	db NLen+18
	db NRest
	db NLen+24
	db G#2
	db NLen+18
	db NRest
	db NLen+24
	db G#2
	db NLen+18
	db NRest
	db NLen+24
	db G2
	db NLen+18
	db NRest
	db NLen+7
	db C2
	db NRest
	db D2
	db NRest
	db E2
	db NRest
	db SegEnd
Underwater_Noise:
	db PitchSet, 0
	db VolSet, 0
	db NLen+84
	db NRest
	db NRest
Underwater_NoiseLoop:
	db SongLoop,11
	db SegCall
	dw Underwater_NoiseSub1
	db SongLoopEnd
	db SegCall
	dw Underwater_NoiseSub2
	db SongLoop,7
	db SegCall
	dw Underwater_NoiseSub1
	db SongLoopEnd
	db SegCall
	dw Underwater_NoiseSub2
	db SongLoop,4
	db NLen+14
	db NRest
	db $39
	db $39
	db NRest
	db $39
	db $3B
	db NRest
	db $39
	db $39
	db NRest
	db $3B
	db $39
	db SongLoopEnd
	db SongLoop,3
	db SegCall
	dw Underwater_NoiseSub1
	db SongLoopEnd
	db SegCall
	dw Underwater_NoiseSub2
	db $F4
	dw Underwater_NoiseLoop
	db $FF
Underwater_NoiseSub1:
	db NLen+7
	db NRest
	db NRest
	db $3A
	db $3A
	db NLen+14
	db $3A
	db NRest
	db $3B
	db $39
	db SegEnd
Underwater_NoiseSub2:
	db NLen+14
	db $3B
	db $3A
	db $3A
	db NLen+42
	db $3B
	db SegEnd
Underwater_End:
	db $FF
Underwater_Footer:
	db NRest
	dw Underwater_P1
	db $01
	dw Underwater_P2
	db $02
	dw Underwater_Tri
	db $03
	dw Underwater_Noise
	db $04
	dw Underwater_End
	db $FF