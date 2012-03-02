
!BytecodeEncoder methodsFor: 'opcode sizing'!
sizeStorePopLiteralVar: literalIndex
	^self sizeOpcodeSelector: #genStorePopLiteralVar: withArguments: {literalIndex}! !
