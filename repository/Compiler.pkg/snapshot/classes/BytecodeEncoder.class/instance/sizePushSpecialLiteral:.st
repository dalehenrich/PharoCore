
!BytecodeEncoder methodsFor: 'opcode sizing'!
sizePushSpecialLiteral: specialLiteral
	^self sizeOpcodeSelector: #genPushSpecialLiteral: withArguments: {specialLiteral}! !
