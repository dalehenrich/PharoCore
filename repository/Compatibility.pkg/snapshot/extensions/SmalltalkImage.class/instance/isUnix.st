
!SmalltalkImage methodsFor: '*compatibility'!
isUnix
	self deprecated: 'Use OSPlatform' on: '1 May 2011' in: 'Pharo1.2'.
	^ self os isUnix! !
