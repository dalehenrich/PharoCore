
!HostSystemMenusMacOSX methodsFor: 'accessing-menus'!
getItemCmd: aMenuHandle item: aNumber
	^(self primGetItemCmd: aMenuHandle item: aNumber) asCharacter! !
