
!BlockClosureTest methodsFor: 'tests'!
testTallyInstructions
	self assert: (ContextPart tallyInstructions: aBlockContext) size = 21.! !
