
!OSPlatform class methodsFor: 'testing'!
isMacOSX
	^ self isMacOS
		and: ['10*' match: self osVersion]! !
