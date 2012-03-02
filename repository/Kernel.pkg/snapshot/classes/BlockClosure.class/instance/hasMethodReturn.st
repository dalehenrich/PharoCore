
!BlockClosure methodsFor: 'testing'!
hasMethodReturn
	"Answer whether the receiver has a method-return ('^') in its code."
	| myMethod scanner preceedingBytecodeMessage end |
	"Determine end of block from the instruction preceding it.
	 Find the instruction by using an MNU handler to capture
	 the instruction message sent by the scanner."
	myMethod := outerContext method.
	scanner := InstructionStream new method: myMethod pc: myMethod initialPC.
	[scanner pc < startpc] whileTrue:
		[[scanner interpretNextInstructionFor: nil]
			on: MessageNotUnderstood
			do: [:ex| preceedingBytecodeMessage := ex message]].
	end := preceedingBytecodeMessage arguments last + startpc - 1.
	scanner method: myMethod pc: startpc.
	scanner scanFor: [:byte | (byte between: 120 and: 124) or: [scanner pc > end]].
	^scanner pc <= end! !
