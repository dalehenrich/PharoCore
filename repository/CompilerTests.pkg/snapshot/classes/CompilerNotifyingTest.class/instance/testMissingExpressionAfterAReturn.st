
!CompilerNotifyingTest methodsFor: 'testing'!
testMissingExpressionAfterAReturn
	self setUpForErrorsIn: '^ ` Expression to return expected ->`. 1 + 2'.
	self enumerateAllSelections.! !
