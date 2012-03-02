
!CompiledMethod methodsFor: 'testing'!
isClosureCompiled
	"Answer whether the receiver was compiled using the closure compiler.
	 This is used to help DebuggerMethodMap choose which mechanisms to
	 use to inspect activations of the receiver.
	 This method answers false negatives in that it only identifies methods
	 that create new BlockClosures or use the new BlockClosure bytecodes.
	 But since methods that don't create blocks have essentially the same
	 code when compiled with either compiler this makes little difference."

	^((InstructionStream on: self) scanFor: [:instr | instr >= 138 and: [instr <= 143]])
	   or: [(self hasLiteral: #closureCopy:copiedValues:)
		   and: [self messages includes: #closureCopy:copiedValues:]]! !
