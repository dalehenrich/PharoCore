
!TextLink methodsFor: 'as yet unclassified'!
mayActOnEvent: anEvent
	^ anEvent isMouseUp and: [ anEvent commandKeyPressed ]! !
