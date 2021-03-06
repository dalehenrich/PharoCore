
!CompiledMethod methodsFor: 'debugger support'!
abstractPCForConcretePC: concretePC
	"Answer the abstractPC matching concretePC."

	| abstractPC scanner client |
	self flag: 'belongs in DebuggerMethodMap?'.
	abstractPC := 1.
	scanner := InstructionStream on: self.
	client := InstructionClient new.
	[(scanner atEnd
	  or: [scanner pc >= concretePC]) ifTrue:
		[^abstractPC].
	 abstractPC := abstractPC + 1.
	 scanner interpretNextInstructionFor: client.
	 true] whileTrue! !
