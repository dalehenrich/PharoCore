
!PasteUpMorph methodsFor: 'structure'!
activeHand

	^ worldState ifNotNil: [worldState activeHand] ifNil: [super activeHand]! !
