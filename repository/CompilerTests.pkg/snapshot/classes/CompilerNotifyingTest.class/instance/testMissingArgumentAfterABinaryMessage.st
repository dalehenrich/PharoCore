
!CompilerNotifyingTest methodsFor: 'testing'!
testMissingArgumentAfterABinaryMessage
	self setUpForErrorsIn: '1 +` Argument expected ->`'.
	self enumerateAllSelections.
	self setUpForErrorsIn: '1 + ` Argument expected ->`* 2 + 3'.
	self enumerateAllSelections! !
