
!GenericUrlTest methodsFor: 'testing'!
testAsString
	| url |
	url := GenericUrl new schemeName: 'sip' locator: 'foo@bar'.
	self assert: url asString = 'sip:foo@bar'.! !
