
!HostSystemMenusMenuItem class methodsFor: 'instance creation'!
menuString: aString keyboardKey: aKey macKeyCode: aKeyCodeValue
	^self text: aString cmd: aKey asUppercase handler: 
		(self fakeKeyboardEventBlockMacRoman: aKey unicode: aKey macKeyCode: aKeyCodeValue )! !
