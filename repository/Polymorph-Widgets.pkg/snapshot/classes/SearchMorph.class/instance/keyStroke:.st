
!SearchMorph methodsFor: 'as yet unclassified'!
keyStroke: event

	keystrokeSelector ifNotNil: [ 
		(self keystrokeAction: event) ifTrue: [ ^ self ] ].
	
	^ super keyStroke: event! !
