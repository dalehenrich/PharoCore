
!CompilerNotifyingTest methodsFor: 'testing'!
testMissingArgumentAfterAMessageKey
	self setUpForErrorsIn: '1 to: ` Argument expected ->`:='.
	self enumerateAllSelections! !
