
!SmalltalkImage methodsFor: '*compatibility'!
isWin32
	self deprecated: 'Use OSPlatform' on: '1 May 2011' in: 'Pharo1.2'.
	^ self os isWin32! !
