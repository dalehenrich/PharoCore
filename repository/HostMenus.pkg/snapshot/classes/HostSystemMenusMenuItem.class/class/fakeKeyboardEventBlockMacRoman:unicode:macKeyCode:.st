
!HostSystemMenusMenuItem class methodsFor: 'handlers'!
fakeKeyboardEventBlockMacRoman: anAsciiValue unicode: aUnicodeValue macKeyCode: aKeyCodeValue
	^[:evt | HostSystemMenusMenuItem processFakeKeyboardEvent: evt macRoman: anAsciiValue unicode: aUnicodeValue macKeyCode: aKeyCodeValue]! !
