
!PasteUpMorph methodsFor: 'project state'!
handsDo: aBlock

	^ worldState ifNotNil: [ worldState handsDo: aBlock ]! !
