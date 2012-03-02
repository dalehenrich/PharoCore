
!BytecodeEncoder methodsFor: 'opcode sizing'!
sizeJumpLong: distance
	^self sizeOpcodeSelector: #genJumpLong: withArguments: {distance}! !
