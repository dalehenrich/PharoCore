
!CompilerNotifyingTest methodsFor: 'testing'!
testLiteralCharacterMissing
	self setUpForErrorsIn: '$` A Character was expected ->`'.
	self enumerateAllSelections! !
