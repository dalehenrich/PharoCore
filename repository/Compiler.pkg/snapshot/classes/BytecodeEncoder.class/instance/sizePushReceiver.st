
!BytecodeEncoder methodsFor: 'opcode sizing'!
sizePushReceiver
	^self sizeOpcodeSelector: #genPushReceiver withArguments: #()! !
