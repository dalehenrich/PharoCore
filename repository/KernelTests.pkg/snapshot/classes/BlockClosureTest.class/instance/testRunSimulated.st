
!BlockClosureTest methodsFor: 'tests'!
testRunSimulated
	self assert: (ContextPart runSimulated: aBlockContext) class = Rectangle.! !
