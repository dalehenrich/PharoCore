
!OSPlatform class methodsFor: 'testing'!
isX11

	^ self isUnix and: [self windowSystemName = 'X11']! !
