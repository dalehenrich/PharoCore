
!PasteUpMorph methodsFor: 'project state'!
handsReverseDo: aBlock

	^ worldState ifNotNil: [ worldState handsReverseDo: aBlock ]! !
