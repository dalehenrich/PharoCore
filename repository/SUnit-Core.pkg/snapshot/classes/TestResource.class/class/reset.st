
!TestResource class methodsFor: 'instance creation'!
reset
	[self isAlreadyAvailable ifTrue: [current tearDown]]
		ensure: [current := nil]! !
