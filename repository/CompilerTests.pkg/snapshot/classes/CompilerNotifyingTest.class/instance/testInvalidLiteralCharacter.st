
!CompilerNotifyingTest methodsFor: 'testing'!
testInvalidLiteralCharacter
	self setUpForErrorsIn: '^ #yourself , #` Invalid literal character ->`) , #end'.
	self enumerateAllSelections.! !
