
!MenuRegistration methodsFor: 'accessing'!
itemReceiver
	^ self target ifNil: [owner itemReceiver]! !
