
!BytecodeEncoder methodsFor: 'opcode sizing'!
sizeReturnReceiver
	^self sizeOpcodeSelector: #genReturnReceiver withArguments: #()! !
