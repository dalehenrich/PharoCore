
!InstructionStream methodsFor: 'decoding'!
interpret

	[self atEnd] whileFalse: [self interpretNextInstructionFor: self]! !
