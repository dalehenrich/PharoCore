
!BreakpointManager class methodsFor: 'private'!
installed
	Installed isNil ifTrue:[Installed := IdentityDictionary new].
	^Installed! !
