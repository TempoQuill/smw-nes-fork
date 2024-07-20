;disassembled by BZK 6502 Disassembler
	incbin levels/overworld_map.bin ;include tilemap data for the overworld map
	
	db $2D
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $2E
	db $2F
	db $30
	db $31
	db $32
	db $00
	db $33
	db $34
	db $00
	db $35
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $36
	db $37
	db $38
	db $39
	db $3A
	db $00
	db $3B
	db $3C
	db $00
	db $3D
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $35
	db $3E
	db $3F
	db $40
	db $41
	db $00
	db $00
	db $42
	db $43
	db $44
	db $45
	db $46
	db $47
	db $00
	db $48
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $49
	db $4A
	db $4B
	db $4C
	db $4D
	db $00
	db $00
	db $4E
	db $4F
	db $0C
	db $50
	db $51
	db $52
	db $00
	db $53
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	LDA FrameCount ;More useless padding code?
	AND #$07
	BNE bra13_999F
	INC $032F
	LDA $032F
	CMP #$03
	BCC bra13_999F
	LDA #$00
	STA $032F
bra13_999F:
	LDX #$00
	LDA $032F
	AND #$03
bra13_99A6:
	STA SpriteMem+2,X
	INX
	INX
	INX
	INX
	CPX #$40
	BCC bra13_99A6
	RTS
	LDA FrameCount
	AND #$07
	BNE bra13_99BB
	INC $032F
bra13_99BB:
	LDA $032F
	AND #$01
	BNE bra13_99CC
	LDA #$00
	STA $034E
	LDA #$90
	STA $42
	RTS
bra13_99CC:
	LDA #$01
	STA $034E
	LDA #$40
	STA $42
	RTS
	LDA MapLevelID
	ASL
	ASL
	TAX
	LDA tbl13_9A8D,X
	STA CameraXScreen
	STA PlayerColXScreen
	STA PlayerXScreen
	LDA tbl13_9A8E,X
	STA $52
	STA $65
	STA $02
	CLC
	ADC PlayerXPos
	STA PlayerXPos
	LDA PlayerXScreen
	ADC #$00
	STA PlayerXScreen
	RTS
	ASL
	TAX
	LDA tbl13_9A2E,X
	STA $25
	LDA tbl13_9A2E+1,X
	STA $26
	LDY #$00
	LDA ($25),Y
	STA PPUUpdatePtr
	INY
	LDA ($25),Y
	STA PPUUpdatePtr+1
	INY
	LDA ($25),Y
	STA $03A3
	INY
	LDA ($25),Y
	STA PPUWriteCount
	INY
	LDX #$00
bra13_9A22:
	LDA ($25),Y
	STA PPUDataBuffer,X
	INY
	INX
	CPX #$20
	BCC bra13_9A22
	RTS
tbl13_9A2E:
	dw ofs_9A30
ofs_9A30:
	db $3F
	db $10
	db $01
	db $10
	db $11
	db $0E
	db $26
	db $30
	db $11
	db $0E
	db $26
	db $30
	db $11
	db $0E
	db $26
	db $30
	db $11
	db $0E
	db $26
	db $30
	db $0A
	db $A8
	LDA tbl13_9A5D,Y
	STA $32
	LDA tbl13_9A5D+1,Y
	STA $33
	LDY #$00
bra13_9A52:
	LDA ($32),Y
	STA $03C5,Y
	INY
	CPY #$06
	BCC bra13_9A52
	RTS
tbl13_9A5D:
	db $69
	db $9A
	db $6F
	db $9A
	db $75
	db $9A
	db $7B
	db $9A
	db $81
	db $9A
	db $87
	db $9A
	db $FC
	db $FE
	db $80
	db $81
	db $94
	db $95
	db $F8
	db $FA
	db $F8
	db $F9
	db $FA
	db $FB
	db $F4
	db $F6
	db $80
	db $81
	db $82
	db $83
	db $F8
	db $FA
	db $80
	db $81
	db $82
	db $83
	db $E8
	db $EA
	db $80
	db $81
	db $82
	db $83
	db $F2
	db $EC
	db $00
	db $00
	db $00
	db $00
tbl13_9A8D:
	db $05
tbl13_9A8E:
	db $00
	db $EF
	db $00
	db $05
	db $00
	db $EF
	db $00
	db $05
	db $00
	db $EF
	db $00
	db $05
	db $00
	db $EF
	db $00
	db $05
	db $00
	db $BF
	db $00
	db $05
	db $00
	db $4F
	db $00
	db $05
	db $00
	db $4F
	db $00
	db $05
	db $00
	db $4F
	db $00
	db $09
	db $10
	db $9F
	db $00
	db $09
	db $70
	db $8F
	db $00
	db $09
	db $60
	db $3F
	db $00
	db $09
	db $70
	db $0F
	db $00
	db $09
	db $80
	db $0F
	db $00
	db $09
	db $A0
	db $00
	db $00
	db $0A
	db $00
	db $00
	db $00
	db $0A
	db $60
	db $60
	db $00
	db $0A
	db $B0
	db $18
	db $00
	db $0A
	db $E0
	db $28
	db $00
	db $0A
	db $F0
	db $B8
	db $00
	db $0A
	db $F0
	db $EF
	db $00
	db $07
	db $60
	db $30
	db $00
	db $06
	db $D0
	db $60
	db $00
	db $07
	db $00
	db $80
	db $00
	db $07
	db $00
	db $EF
	db $00
	db $07
	db $00
	db $EF
	db $00
	db $06
	db $90
	db $EF
	db $00
	db $06
	db $30
	db $EF
	db $00
	db $05
	db $90
	db $EF
	db $00
	db $05
	db $A0
	db $8F
	db $00
	db $06
	db $50
	db $8F
	db $00
	db $06
	db $50
	db $2F
	db $00
	db $05
	db $00
	db $00
	db $00
	db $0A
	db $0A
	CLC
	ADC #$20
	LDX #$00
	STA PPUAddr
	STX PPUAddr
	LDY #$03
	LDA #$FF
bra13_9B1E:
	STA PPUData
	DEX
	BNE bra13_9B1E
	DEY
	BPL bra13_9B1E
	RTS
	LDA #$00
	STA $032F
	INC a:Event
	LDA MapLevelID
	ASL
	TAX
	LDA UnlockNextLevel
	BNE bra13_9B3E
	STA $0379
	RTS
bra13_9B3E:
	INC MapLevelID
	JMP loc13_9B4C
	LDA MapLevelID
	BEQ bra13_9B4C
	DEC MapLevelID
bra13_9B4C:
loc13_9B4C:
	STX $0391
	LDA #$FF
	STA $0379
	LDA #$00
	STA $0360
	STA $037C
	LDX #$01
	LDA CurrentPlayer
	BNE bra13_9B65
	LDX #$00
bra13_9B65:
	INC $039C,X
	RTS
	CLC
	ADC $41,X
	STA $41,X
	BCC bra13_9B73_RTS
	INC GS0SpriteFlags,X
bra13_9B73_RTS:
	RTS
	STA $25
	SEC
	LDA $41,X
	SBC $25
	STA $41,X
	BCS bra13_9B82_RTS
	DEC GS0SpriteFlags,X
bra13_9B82_RTS:
	RTS
	db $00
	db $60
	db $30
	db $00
	db $00
	db $60
	db $60
	db $00
	db $00
	db $90
	db $70
	db $00
	db $00
	db $B0
	db $60
	db $00
	db $00
	db $B0
	db $60
	db $00
	db $00
	db $B0
	db $60
	db $00
	db $00
	db $70
	db $60
	db $00
	db $00
	db $A0
	db $40
	db $00
	db $00
	db $A0
	db $40
	db $00
	db $00
	db $C0
	db $60
	db $00
	db $00
	db $C0
	db $60
	db $00
	db $00
	db $C0
	db $40
	db $00
	db $00
	db $E0
	db $40
	db $00
	db $00
	db $E0
	db $70
	db $00
	db $00
	db $E0
	db $70
	db $00
	db $00
	db $E0
	db $70
	db $00
	db $00
	db $D0
	db $48
	db $00
	db $00
	db $E0
	db $38
	db $00
	db $00
	db $E0
	db $38
	db $00
	db $00
	db $A0
	db $80
	db $00
	db $00
	db $A0
	db $80
	db $00
	db $00
	db $A0
	db $80
	db $00
	db $00
	db $A0
	db $80
	db $00
	db $00
	db $A0
	db $90
	db $00
	db $01
	db $00
	db $A0
	db $00
	db $00
	db $E0
	db $C0
	db $00
	db $00
	db $B0
	db $A0
	db $00
	db $00
	db $90
	db $C0
	db $00
	db $00
	db $A0
	db $70
	db $00
	db $00
	db $A0
	db $70
	db $00
	db $00
	db $A0
	db $70
	db $00
	db $00
	db $00
	db $00
	db $00
	db $04
	db $00
	db $04
	db $08
	db $01
	db $02
	db $08
	db $04
	db $08
	db $04
	db $02
	db $04
	db $02
	db $01
	db $08
	db $02
	db $04
	db $08
	db $08
	db $04
	db $01
	db $04
	db $08
	db $04
	db $04
	db $08
	db $01
	db $04
	db $04
	db $02
	db $01
	db $02
	db $01
	db $02
	db $04
	db $08
	db $04
	db $02
	db $04
	db $08
	db $04
	db $02
	db $04
	db $08
	db $04
	db $08
	db $04
	db $08
	db $04
	db $08
	db $02
	db $01
	db $08
	db $04
	db $02
	db $08
	db $08
	db $02
	db $08
	db $02
	db $00
	db $04
	db $00
	db $00
	JSR sub13_9CCF
	LDX #$00
	LDA CurrentPlayer
	BEQ bra13_9C4F
	LDX #$01
bra13_9C4F:
	LDA $036A,X
	STA $34
	LDA #$00
	STA $35
	LDA #$0B
	STA $26
	JSR sub13_9C78
	LDA #$2B
	STA PPUAddr
	LDA #$69
	STA PPUAddr
	LDY #$01
	LDX #$01
bra13_9C6D:
	LDA $0378,Y
	STA PPUData
	DEY
	DEX
	BPL bra13_9C6D
	RTS
sub13_9C78:
	LDA #$00
	STA $39
	STA $25
	LDA #$0A
	STA $38
bra13_9C82:
	JSR sub13_9CA9
	LDA $32
	CLC
	ADC $26
	LDY $25
	STA $0378,Y
	INC $25
	LDA $25
	CMP #$05
	BCC bra13_9C82
	LDY #$04
bra13_9C99:
	LDA $0378,Y
	CMP $26
	BNE bra13_9CA8_RTS
	LDA #$00
	STA $0378,Y
	DEY
	BNE bra13_9C99
bra13_9CA8_RTS:
	RTS
sub13_9CA9:
	LDA #$00
	STA $32
	STA $33
	LDX #$10
bra13_9CB1:
	ASL $34
	ROL $35
	ROL $32
	ROL $33
	LDA $32
	SEC
	SBC $38
	TAY
	LDA $33
	SBC $39
	BCC bra13_9CCB
	INC $34
	STA $33
	STY $32
bra13_9CCB:
	DEX
	BNE bra13_9CB1
	RTS
sub13_9CCF:
	LDA #$2B
	STA PPUAddr
	LDA #$40
	STA PPUAddr
	LDX #$00
	LDA CurrentPlayer
	BNE bra13_9CEC
bra13_9CE0:
	LDA tbl13_9CF8,X
	STA PPUData
	INX
	CPX #$80
	BCC bra13_9CE0
	RTS
bra13_9CEC:
	LDA tbl13_9D78,X
	STA PPUData
	INX
	CPX #$80
	BCC bra13_9CEC
	RTS
tbl13_9CF8:
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $01
	db $02
	db $03
	db $04
	db $05
	db $00
	db $0A
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
tbl13_9D78:
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $2B
	db $2C
	db $2D
	db $2E
	db $2F
	db $00
	db $0A
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	db $00
	LDA #$00
	STA $25
bra13_9DFC:
	LDA $25
	TAX
	INX
	LDA CurrentPlayer
	BEQ bra13_9E0B
	LDA $25
	CLC
	ADC #$09
	TAX
bra13_9E0B:
	LDA $0380,X
	BEQ bra13_9E53
	LDA $25
	TAX
	LDA tbl13_9E74,X
	STA $29
	LDA $25
	ASL
	ASL
	TAX
	ASL
	ASL
	TAY
	LDA tbl13_9E5C,X
	STA $32
	SEC
	LDA tbl13_9E5D,X
	SBC $52
	STA $36
	BCS bra13_9E31
	DEC $32
bra13_9E31:
	LDA $32
	CMP $51
	BNE bra13_9E4C
	LDA tbl13_9E5E,X
	STA $32
	SEC
	LDA tbl13_9E5F,X
	SBC $03
	STA $38
	BCS bra13_9E48
	DEC $32
bra13_9E48:
	LDA $32
	BEQ bra13_9E50
bra13_9E4C:
	LDA #$F8
	STA $38
bra13_9E50:
	JSR sub13_9E7A
bra13_9E53:
	INC $25
	LDA $25
	CMP #$06
	BCC bra13_9DFC
	RTS
tbl13_9E5C:
	db $05
tbl13_9E5D:
	db $70
tbl13_9E5E:
	db $01
tbl13_9E5F:
	db $1F
	db $09
	db $F0
	db $00
	db $EF
	db $0A
	db $40
	db $00
	db $6F
	db $0B
	db $80
	db $00
	db $5F
	db $07
	db $60
	db $00
	db $FF
	db $06
	db $A0
	db $01
	db $8F
tbl13_9E74:
	db $03
	db $03
	db $03
	db $03
	db $03
	db $03
sub13_9E7A:
	LDA $25
	ASL
	ASL
	ORA #$80
	STA $28
	CLC
	LDA $38
	STA $0280,Y
	LDA $28
	STA $0281,Y
	LDA $29
	STA $0282,Y
	LDA $36
	STA $0283,Y
	LDA $38
	STA $0284,Y
	INC $28
	LDA $28
	STA $0285,Y
	LDA $29
	STA $0286,Y
	LDA $36
	ADC #$08
	STA $0287,Y
	LDA $38
	ADC #$08
	STA $0288,Y
	INC $28
	LDA $28
	STA $0289,Y
	LDA $29
	STA $028A,Y
	LDA $36
	STA $028B,Y
	LDA $38
	ADC #$08
	STA $028C,Y
	INC $28
	LDA $28
	STA $028D,Y
	LDA $29
	STA $028E,Y
	LDA $36
	ADC #$08
	STA $028F,Y
	RTS