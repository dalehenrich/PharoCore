
!CompilerNotifyingTest methodsFor: 'testing'!
testUnmatchedLocalTempDeclarationInABlock
	self setUpForErrorsIn: '[:z | | x y ` Vertical bar expected ->`]'.
	self enumerateAllSelections.! !
