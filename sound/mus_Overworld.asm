Overworld_P1:
	.byte SongSpeed, 1
	.byte Transpose, $11
	.byte DutySet, $3C
	.byte PitchSet, $00
	.byte VolSet, $3B
	.byte NLen+27
	.byte A3
	.byte NLen+21
	.byte F3
	.byte NLen+6
	.byte C3
	.byte B2
	.byte NLen+7
	.byte NRest
	.byte C3
	.byte NLen+34
	.byte D3
Overworld_P1Loop:
	.byte NLen+108
	.byte NRest
	.byte NRest
	.byte Transpose, $00
	.byte DutySet, $3D
	.byte PitchSet, $00
	.byte VolSet, $3B
	.byte SongLoop,2
	.byte SegCall
	.word Overworld_P1Sub2
	.byte NLen+11
	.byte A1
	.byte NLen+16
	.byte NRest
	.byte NLen+11
	.byte G#1
	.byte NLen+16
	.byte NRest
	.byte NLen+11
	.byte G1
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte C1
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte D1
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte E1
	.byte NLen+3
	.byte NRest
	.byte SegCall
	.word Overworld_P1Sub2
	.byte NLen+11
	.byte C2
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte C1
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte E1
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte G1
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte F1
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte C1
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte F1
	.byte NLen+16
	.byte NRest
	.byte SongLoopEnd
	.byte NLen+108
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte SegCall
	.word Overworld_P1Sub3
	.byte Transpose, $18
	.byte DutySet, $38
	.byte PitchSet, $00
	.byte VolSet, $11
	.byte NLen+5
	.byte SegCall
	.word Overworld_P1Sub4
	.byte NLen+5
	.byte A2
	.byte NLen+1
	.byte NRest
	.byte NLen+6
	.byte G#2
	.byte NLen+1
	.byte NRest
	.byte NLen+6
	.byte G2
	.byte NLen+1
	.byte NRest
	.byte NLen+26
	.byte F#2
	.byte NLen+8
	.byte NRest
	.byte SegCall
	.word Overworld_P1Sub4
	.byte NLen+39
	.byte A2
	.byte NLen+15
	.byte NRest
	.byte Transpose, $0C
	.byte DutySet, $3C
	.byte PitchSet, $00
	.byte VolSet, $3E
	.byte SegCall
	.word Overworld_P1Sub4
	.byte NLen+5
	.byte A2
	.byte NLen+1
	.byte NRest
	.byte NLen+6
	.byte A#2
	.byte NLen+1
	.byte NRest
	.byte NLen+6
	.byte C3
	.byte NLen+1
	.byte NRest
	.byte NLen+26
	.byte D3
	.byte NLen+8
	.byte NRest
	.byte SegCall
	.word Overworld_P1Sub4
	.byte NLen+39
	.byte F2
	.byte NLen+15
	.byte NRest
	.byte SongJump
	.word Overworld_P1Loop
	.byte $FF
Overworld_P1Sub1:
	.byte NLen+11
	.byte F1
	.byte NLen+16
	.byte NRest
	.byte NLen+11
	.byte D1
	.byte NLen+16
	.byte NRest
	.byte SegEnd
Overworld_P1Sub2:
	.byte NLen+11
	.byte F1
	.byte NLen+16
	.byte NRest
	.byte NLen+11
	.byte A1
	.byte NLen+16
	.byte NRest
	.byte NLen+11
	.byte A#1
	.byte NLen+16
	.byte NRest
	.byte NLen+11
	.byte B1
	.byte NLen+16
	.byte NRest
	.byte SegEnd
Overworld_P1Sub3:
	.byte NLen+11
	.byte F1
	.byte NLen+16
	.byte NRest
	.byte NLen+11
	.byte F1
	.byte NLen+16
	.byte NRest
	.byte NLen+11
	.byte D#1
	.byte NLen+16
	.byte NRest
	.byte NLen+11
	.byte D#1
	.byte NLen+16
	.byte NRest
	.byte NLen+11
	.byte D1
	.byte NLen+16
	.byte NRest
	.byte NLen+11
	.byte D1
	.byte NLen+16
	.byte NRest
	.byte NLen+11
	.byte C#1
	.byte NLen+16
	.byte NRest
	.byte NLen+11
	.byte C#1
	.byte NLen+16
	.byte NRest
	.byte NLen+11
	.byte C1
	.byte NLen+70
	.byte NRest
	.byte NLen+11
	.byte D1
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte E1
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte F1
	.byte NLen+16
	.byte NRest
	.byte NLen+11
	.byte C1
	.byte NLen+16
	.byte NRest
	.byte NLen+11
	.byte F1
	.byte NLen+16
	.byte NRest
	.byte NLen+11
	.byte F1
	.byte NLen+16
	.byte NRest
	.byte SegEnd
Overworld_P1Sub4:
	.byte NLen+5
	.byte F2
	.byte NLen+1
	.byte NRest
	.byte NLen+13
	.byte D2
	.byte NLen+1
	.byte NRest
	.byte NLen+19
	.byte F2
	.byte NLen+1
	.byte NRest
	.byte NLen+12
	.byte G2
	.byte NLen+2
	.byte NRest
	.byte SegEnd
Overworld_P2:
	.byte Transpose, $0C
	.byte DutySet, $3C
	.byte PitchSet, $00
	.byte VolSet, $3B
	.byte NLen+27
	.byte F3
	.byte NLen+21
	.byte D3
	.byte NLen+6
	.byte A#2
	.byte G2
	.byte NLen+7
	.byte NRest
	.byte A2
	.byte NLen+34
	.byte A#2
Overworld_P2Loop:
	.byte Transpose, $00
	.byte DutySet, $3D
	.byte PitchSet, $00
	.byte VolSet, $3B
	.byte SegCall
	.word Overworld_P1Sub1
	.byte NLen+11
	.byte G1
	.byte NLen+16
	.byte NRest
	.byte NLen+11
	.byte C1
	.byte NLen+16
	.byte NRest
	.byte SegCall
	.word Overworld_P1Sub1
	.byte NLen+11
	.byte G1
	.byte NLen+2
	.byte NRest
	.byte NLen+41
	.byte F#1
	.byte Transpose, $0C
	.byte DutySet, $2D
	.byte PitchSet, $00
	.byte VolSet, $2C
	.byte SongLoop, 2
	.byte SegCall
	.word Overworld_P2Sub1
	.byte NLen+13
	.byte F2
	.byte NLen+14
	.byte C3
	.byte NLen+20
	.byte A2
	.byte NLen+27
	.byte G2
	.byte NLen+7
	.byte C2
	.byte SegCall
	.word Overworld_P2Sub1
	.byte NLen+6
	.byte A#2
	.byte NLen+7
	.byte A2
	.byte G2
	.byte NLen+61
	.byte F2
	.byte SongLoopEnd
	.byte SegCall
	.word Overworld_P2Sub2
	.byte NLen+20
	.byte G#2
	.byte NLen+61
	.byte G2
	.byte SegCall
	.word Overworld_P2Sub2
	.byte NLen+81
	.byte C3
	.byte NLen+27
	.byte A2
	.byte NLen+20
	.byte F2
	.byte NLen+7
	.byte C2
	.byte NLen+6
	.byte D2
	.byte NLen+14
	.byte F2
	.byte NLen+27
	.byte F2
	.byte NLen+6
	.byte G2
	.byte NLen+7
	.byte A2
	.byte F2
	.byte NLen+14
	.byte C2
	.byte NLen+20
	.byte D2
	.byte NLen+54
	.byte F2
	.byte NLen+7
	.byte D2
	.byte SongLoop, 2
	.byte NLen+13
	.byte C3
	.byte NLen+14
	.byte D3
	.byte SongLoopEnd
	.byte NLen+20
	.byte C3
	.byte NLen+6
	.byte C2
	.byte NLen+7
	.byte A#2
	.byte A2
	.byte NLen+14
	.byte G2
	.byte NLen+108
	.byte F2
	.byte Transpose, $18
	.byte DutySet, $38
	.byte PitchSet, $00
	.byte VolSet, $11
	.byte NLen+5
	.byte SegCall
	.word Overworld_P2Sub3
	.byte NLen+5
	.byte F2
	.byte NLen+1
	.byte NRest
	.byte NLen+6
	.byte F2
	.byte NLen+1
	.byte NRest
	.byte NLen+6
	.byte E2
	.byte NLen+1
	.byte NRest
	.byte NLen+26
	.byte D#2
	.byte NLen+8
	.byte NRest
	.byte SegCall
	.word Overworld_P2Sub4
	.byte NLen+39
	.byte F2
	.byte NLen+15
	.byte NRest
	.byte Transpose, $0C
	.byte DutySet, $3C
	.byte PitchSet, $00
	.byte VolSet, $3E
	.byte SegCall
	.word Overworld_P2Sub3
	.byte NLen+5
	.byte F2
	.byte NLen+1
	.byte NRest
	.byte NLen+6
	.byte G2
	.byte NLen+1
	.byte NRest
	.byte NLen+6
	.byte A2
	.byte NLen+1
	.byte NRest
	.byte NLen+26
	.byte A#2
	.byte NLen+8
	.byte NRest
	.byte SegCall
	.word Overworld_P2Sub4
	.byte NLen+39
	.byte C2
	.byte NLen+15
	.byte NRest
	.byte SongJump
	.word Overworld_P2Loop
	.byte $FF
Overworld_P2Sub1:
	.byte NLen+27
	.byte A2
	.byte NLen+20
	.byte F2
	.byte NLen+7
	.byte C2
	.byte NLen+6
	.byte D2
	.byte NLen+14
	.byte F2
	.byte NLen+27
	.byte F2
	.byte NLen+7
	.byte D2
	.byte NLen+13
	.byte C2
	.byte NLen+14
	.byte F2
	.byte SegEnd
Overworld_P2Sub2:
	.byte NLen+20
	.byte A2
	.byte NLen+20
	.byte F2
	.byte NLen+14
	.byte C2
	.byte NLen+20
	.byte A2
	.byte NLen+34
	.byte F2
	.byte NLen+7
	.byte G#2
	.byte NLen+6
	.byte F2
	.byte NLen+14
	.byte C2
	.byte SegEnd
Overworld_P2Sub3:
	.byte NLen+5
	.byte D2
	.byte NLen+1
	.byte NRest
	.byte NLen+13
	.byte A#1
	.byte NLen+1
	.byte NRest
	.byte NLen+19
	.byte D2
	.byte NLen+1
	.byte NRest
	.byte NLen+12
	.byte D2
	.byte NLen+2
	.byte NRest
	.byte SegEnd
Overworld_P2Sub4:
	.byte NLen+5
	.byte D2
	.byte NLen+1
	.byte NRest
	.byte NLen+13
	.byte A#1
	.byte NLen+1
	.byte NRest
	.byte NLen+19
	.byte D2
	.byte NLen+1
	.byte NRest
	.byte NLen+12
	.byte E2
	.byte NLen+2
	.byte NRest
	.byte SegEnd
Overworld_Tri:
	.byte Transpose, $00
	.byte DutySet, $3C
	.byte PitchSet, $00
	.byte VolSet, $3B
	.byte NLen+25
	.byte A#3
	.byte NLen+2
	.byte NRest
	.byte NLen+20
	.byte F3
	.byte NLen+1
	.byte NRest
	.byte NLen+4
	.byte D3
	.byte NLen+2
	.byte NRest
	.byte NLen+6
	.byte C3
	.byte NLen+7
	.byte NRest
	.byte NLen+5
	.byte D3
	.byte NLen+2
	.byte NRest
	.byte NLen+34
	.byte E3
Overworld_TriLoop:
	.byte SongLoop,10
	.byte NLen+108
	.byte NRest
	.byte SongLoopEnd
	.byte NLen+11
	.byte A2
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte A#2
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte C3
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte D3
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte C3
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte A2
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte F2
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte G2
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte G#2
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte B2
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte D3
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte F3
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte G3
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte F3
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte E3
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte C3
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte A#2
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte A2
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte A#2
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte D3
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte F3
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte E3
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte C3
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte A2
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte B2
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte D3
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte F3
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte B2
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte A#2
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte D3
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte C3
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte E3
	.byte NLen+3
	.byte NRest
	.byte NLen+108
	.byte NRest
	.byte NRest
	.byte NRest
	.byte NRest
	.byte SegCall
	.word Overworld_TriSub
	.byte NLen+11
	.byte F2
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte D2
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte C2
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte F2
	.byte NLen+3
	.byte NRest
	.byte SegCall
	.word Overworld_TriSub
	.byte NLen+11
	.byte F2
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte C2
	.byte NLen+3
	.byte NRest
	.byte NLen+24
	.byte F2
	.byte NLen+3
	.byte NRest
	.byte SongJump
	.word Overworld_TriLoop
	.byte $FF
Overworld_TriSub:
	.byte NLen+11
	.byte A#2
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte A2
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte A#2
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte B2
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte C3
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte C#3
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte D3
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte A2
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte G2
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte A#2
	.byte NLen+3
	.byte NRest
	.byte NLen+11
	.byte A2
	.byte NLen+2
	.byte NRest
	.byte NLen+11
	.byte G2
	.byte NLen+3
	.byte NRest
	.byte SegEnd
Overworld_Noise:
	.byte PitchSet, 0
	.byte VolSet, 0
	.byte NLen+108
	.byte NRest
Overworld_NoiseLoop:
	.byte SongLoop,5
	.byte SegCall
	.word Overworld_NoiseSub1
	.byte SegCall
	.word Overworld_NoiseSub2
	.byte SegCall
	.word Overworld_NoiseSub2
	.byte SegCall
	.word Overworld_NoiseSub1
	.byte SegCall
	.word Overworld_NoiseSub2
	.byte NLen+27
	.byte $3B
	.byte SongLoopEnd
	.byte SongLoop,4
	.byte SegCall
	.word Overworld_NoiseSub1
	.byte SegCall
	.word Overworld_NoiseSub3
	.byte SongLoopEnd
	.byte SegCall
	.word Overworld_NoiseSub1
	.byte SegCall
	.word Overworld_NoiseSub2
	.byte SegCall
	.word Overworld_NoiseSub2
	.byte SegCall
	.word Overworld_NoiseSub1
	.byte SegCall
	.word Overworld_NoiseSub2
	.byte NLen+27
	.byte $3B
	.byte SegCall
	.word Overworld_NoiseSub1
	.byte SegCall
	.word Overworld_NoiseSub2
	.byte SegCall
	.word Overworld_NoiseSub2
	.byte SegCall
	.word Overworld_NoiseSub1
	.byte SegCall
	.word Overworld_NoiseSub2
	.byte NLen+6
	.byte $3B
	.byte NLen+7
	.byte NRest
	.byte $3B
	.byte $3B
	.byte SongLoop,4
	.byte NLen+3
	.byte $38
	.byte $38
	.byte NLen+7
	.byte $38
	.byte $38
	.byte $38
	.byte NLen+6
	.byte $38
	.byte NLen+7
	.byte $38
	.byte $3B
	.byte NRest
	.byte SegCall
	.word Overworld_NoiseSub3
	.byte SongLoopEnd
	.byte SongJump
	.word Overworld_NoiseLoop
	.byte $FF
Overworld_NoiseSub1:
	.byte NLen+6
	.byte $39
	.byte NLen+7
	.byte $38
	.byte $39
	.byte $3B
	.byte NLen+13
	.byte $3A
	.byte NLen+14
	.byte $3B
	.byte SegEnd
Overworld_NoiseSub2:
	.byte NLen+6
	.byte $3B
	.byte NLen+7
	.byte $3A
	.byte $39
	.byte NRest
	.byte SegEnd
Overworld_NoiseSub3:
	.byte NLen+6
	.byte $39
	.byte NLen+7
	.byte $3A
	.byte NRest
	.byte $39
	.byte NLen+27
	.byte $3A
	.byte SegEnd
Overworld_DPCM:
	.byte NLen+108
	.byte NRest
Overworld_DPCMLoop:
	.byte SegCall
	.word Overworld_DPCMFMajor
	.byte SegCall
	.word Overworld_DPCMFMajor
	.byte SegCall
	.word Overworld_DPCMBbMajor
	.byte SegCall
	.word Overworld_DPCMBbDiminished
	.byte SegCall
	.word Overworld_DPCMFMajor
	.byte SegCall
	.word Overworld_DPCMFMajor
	.byte NLen+11
	.byte BbMajorDown
	.byte NLen+2
	.byte NRest
	.byte NLen+41
	.byte BbDiminishedDown
	.byte SongLoop,2
	.byte SegCall
	.word Overworld_DPCMFMajor
	.byte SegCall
	.word Overworld_DPCMFMajor
	.byte SegCall
	.word Overworld_DPCMBbMajor
	.byte SegCall
	.word Overworld_DPCMBDiminished
	.byte SegCall
	.word Overworld_DPCMMajorSub1
	.byte SegCall
	.word Overworld_DPCMC7
	.byte SegCall
	.word Overworld_DPCMFMajor
	.byte SegCall
	.word Overworld_DPCMFMajor
	.byte SegCall
	.word Overworld_DPCMBbMajor
	.byte SegCall
	.word Overworld_DPCMBDiminished
	.byte SegCall
	.word Overworld_DPCMGMinorSecond
	.byte SegCall
	.word Overworld_DPCMC7
	.byte SegCall
	.word Overworld_DPCMFMajor
	.byte SegCall
	.word Overworld_DPCMFMajor
	.byte SongLoopEnd
	.byte SegCall
	.word Overworld_DPCMBbMajor
	.byte SegCall
	.word Overworld_DPCMBbMajor
	.byte SegCall
	.word Overworld_DPCMFMajor
	.byte SegCall
	.word Overworld_DPCMFMajor
	.byte SegCall
	.word Overworld_DPCMAbDiminished
	.byte SegCall
	.word Overworld_DPCMAbDiminished
	.byte SegCall
	.word Overworld_DPCMGMinorFirst
	.byte NLen+9
	.byte CMajorDown
	.byte NLen+4
	.byte CMajorUp
	.byte NLen+9
	.byte CMajorDown
	.byte NLen+5
	.byte CMajorUp
	.byte SegCall
	.word Overworld_DPCMBbMajor
	.byte SegCall
	.word Overworld_DPCMBbMajor
	.byte SegCall
	.word Overworld_DPCMFMajor
	.byte SegCall
	.word Overworld_DPCMFMajor
	.byte SegCall
	.word Overworld_DPCMAbDiminished
	.byte SegCall
	.word Overworld_DPCMAbDiminished
	.byte SegCall
	.word Overworld_DPCMGMinorFirst
	.byte NLen+9
	.byte CMajorDown
	.byte SongLoop,2
	.byte NLen+4
	.byte CMajorDown
	.byte NLen+5
	.byte CMajorUp
	.byte SongLoopEnd
	.byte SongLoop,8
	.byte SegCall
	.word Overworld_DPCMFMajor
	.byte SongLoopEnd
	.byte NLen+108
	.byte C5Minor7LongDown
	.byte SongLoop,4
	.byte SegCall
	.word Overworld_DPCMFMajor
	.byte SongLoopEnd
	.byte SongLoop,2
	.byte NLen+11
	.byte D5
	.byte NLen+2
	.byte NRest
	.byte NLen+12
	.byte F5
	.byte NLen+2
	.byte NRest
	.byte NLen+3
	.byte D5
	.byte NLen+6
	.byte NRest
	.byte NLen+3
	.byte F5
	.byte NLen+1
	.byte NRest
	.byte NLen+7
	.byte G5
	.byte NLen+2
	.byte NRest
	.byte NLen+3
	.byte G#5
	.byte NLen+2
	.byte NRest
	.byte NLen+3
	.byte A5
	.byte NLen+6
	.byte NRest
	.byte NLen+3
	.byte G#5
	.byte NLen+1
	.byte NRest
	.byte NLen+7
	.byte G5
	.byte NLen+2
	.byte NRest
	.byte NLen+3
	.byte F#5
	.byte NLen+2
	.byte NRest
	.byte NLen+3
	.byte A5
	.byte NLen+6
	.byte NRest
	.byte NLen+3
	.byte D5
	.byte NLen+1
	.byte NRest
	.byte NLen+7
	.byte D#5
	.byte NLen+2
	.byte NRest
	.byte NLen+3
	.byte E5
	.byte NLen+2
	.byte NRest
	.byte NLen+3
	.byte F5
	.byte NLen+10
	.byte NRest
	.byte NLen+12
	.byte D5
	.byte NLen+2
	.byte NRest
	.byte NLen+3
	.byte F5
	.byte NLen+6
	.byte NRest
	.byte NLen+3
	.byte G5
	.byte NLen+1
	.byte NRest
	.byte NLen+7
	.byte G#5
	.byte NLen+2
	.byte NRest
	.byte NLen+3
	.byte A5
	.byte NLen+2
	.byte NRest
	.byte NLen+3
	.byte G#5
	.byte NLen+6
	.byte NRest
	.byte NLen+3
	.byte A5
	.byte NLen+1
	.byte NRest
	.byte NLen+7
	.byte F5
	.byte NLen+2
	.byte NRest
	.byte NLen+3
	.byte D5
	.byte NLen+2
	.byte NRest
	.byte NLen+3
	.byte C5
	.byte NLen+6
	.byte NRest
	.byte NLen+3
	.byte F5
	.byte NLen+1
	.byte NRest
	.byte NLen+7
	.byte G#4
	.byte NLen+2
	.byte NRest
	.byte NLen+3
	.byte A4
	.byte NLen+2
	.byte NRest
	.byte SongLoopEnd
	.byte SongJump
	.word Overworld_DPCMLoop
	.byte $FF
Overworld_DPCMFMajor:
	.byte NLen+11
	.byte FMajorDown
	.byte NLen+2
	.byte NRest
	.byte NLen+3
	.byte FMajorDown
	.byte NLen+6
	.byte NRest
	.byte NLen+5
	.byte FMajorUp
	.byte SegEnd
Overworld_DPCMBbMajor:
	.byte NLen+11
	.byte BbMajorDown
	.byte NLen+2
	.byte NRest
	.byte NLen+3
	.byte BbMajorDown
	.byte NLen+6
	.byte NRest
	.byte NLen+5
	.byte BbMajorUp
	.byte SegEnd
Overworld_DPCMBbDiminished:
	.byte NLen+11
	.byte BbDiminishedDown
	.byte NLen+2
	.byte NRest
	.byte NLen+3
	.byte BbDiminishedDown
	.byte NLen+6
	.byte NRest
	.byte NLen+5
	.byte BbDiminishedUp
	.byte SegEnd
Overworld_DPCMBDiminished:
	.byte NLen+11
	.byte BDiminishedDown
	.byte NLen+2
	.byte NRest
	.byte NLen+3
	.byte BDiminishedDown
	.byte NLen+6
	.byte NRest
	.byte NLen+5
	.byte BDiminishedUp
	.byte SegEnd
Overworld_DPCMMajorSub1:
	.byte NLen+11
	.byte AMinorDown
	.byte NLen+2
	.byte NRest
	.byte NLen+3
	.byte AMinorDown
	.byte NLen+6
	.byte NRest
	.byte NLen+5
	.byte AMinorUp
	.byte NLen+11
	.byte AbMajorDown
	.byte NLen+2
	.byte NRest
	.byte NLen+3
	.byte AbMajorDown
	.byte NLen+6
	.byte NRest
	.byte NLen+5
	.byte AbMajorUp
	.byte NLen+11
	.byte GSuspendedDown
	.byte NLen+2
	.byte NRest
	.byte NLen+3
	.byte GSuspendedDown
	.byte NLen+6
	.byte NRest
	.byte NLen+5
	.byte GSuspendedUp
	.byte SegEnd
Overworld_DPCMC7:
	.byte NLen+11
	.byte C7Down
	.byte NLen+2
	.byte NRest
	.byte NLen+3
	.byte C7Down
	.byte NLen+6
	.byte NRest
	.byte NLen+5
	.byte C7Up
	.byte SegEnd
Overworld_DPCMGMinorSecond:
	.byte NLen+11
	.byte GMinorDownSecondInverted
	.byte NLen+2
	.byte NRest
	.byte NLen+3
	.byte GMinorDownSecondInverted
	.byte NLen+6
	.byte NRest
	.byte NLen+5
	.byte GMinorUpSecondInverted
	.byte SegEnd
Overworld_DPCMGMinorFirst:
	.byte NLen+11
	.byte GMinorDownFirstInverted
	.byte NLen+2
	.byte NRest
	.byte NLen+3
	.byte GMinorDownFirstInverted
	.byte NLen+6
	.byte NRest
	.byte NLen+5
	.byte GMinorUpFirstInverted
	.byte SegEnd
Overworld_DPCMAbDiminished:
	.byte NLen+11
	.byte AbDiminishedDown
	.byte NLen+2
	.byte NRest
	.byte NLen+3
	.byte AbDiminishedDown
	.byte NLen+6
	.byte NRest
	.byte NLen+5
	.byte AbDiminishedUp
	.byte SegEnd
Overworld_End:
	db $FF
Overworld_Footer:
	db NRest
	.word Overworld_P1
	db $01
	.word Overworld_P2
	db $02
	.word Overworld_Tri
	db $03
	.word Overworld_Noise
	db $04
	.word Overworld_DPCM
	db $FF