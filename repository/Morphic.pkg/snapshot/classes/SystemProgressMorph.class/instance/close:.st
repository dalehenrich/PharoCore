
!SystemProgressMorph methodsFor: 'initialize'!
close: aBlock
	| slot |
	slot := aBlock value: SmallInteger maxVal. "This should prevent a redraw"
	self freeSlot: slot
	
! !
