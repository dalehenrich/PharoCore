
!BytecodeEncoder methodsFor: 'opcode sizing'!
sizeStoreTemp: tempIndex
	^self sizeOpcodeSelector: #genStoreTemp: withArguments: {tempIndex}! !
