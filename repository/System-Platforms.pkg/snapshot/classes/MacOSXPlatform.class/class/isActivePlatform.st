
!MacOSXPlatform class methodsFor: 'private'!
isActivePlatform
	^OSPlatform isMacOS and: [OSPlatform osVersion asNumber >= 1000]! !
