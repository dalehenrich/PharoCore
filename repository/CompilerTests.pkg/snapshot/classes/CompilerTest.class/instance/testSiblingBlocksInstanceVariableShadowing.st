
!CompilerTest methodsFor: 'test shadowing'!
testSiblingBlocksInstanceVariableShadowing

	interactive := true.
	self initializeErrorMessage.
	
	(Compiler new
		compile: 'temp [:temp | ].[:temp | |var1|]'
		in: MockForCompilation
		classified: nil
		notifying: self
		ifFail: [
				self assert: (errorMessage = 'Name is already defined ->').
				self assert: (errorLocation = 27).
				self assert: (errorSource contents = 'temp [:temp | ].[:temp | |var1|]').
				^nil]).
	self fail.


	! !
