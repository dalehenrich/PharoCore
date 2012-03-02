
!SearchMorph methodsFor: 'as yet unclassified'!
keyStroke: event fromMorph: morph

	keystrokeSelector ifNotNil: [ 
		^ self keystrokeAction: event ].
	
	^ false! !
