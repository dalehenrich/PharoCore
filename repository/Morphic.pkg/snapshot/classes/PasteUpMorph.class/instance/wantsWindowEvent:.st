
!PasteUpMorph methodsFor: 'event handling'!
wantsWindowEvent: anEvent
	^self isWorldMorph or: [self windowEventHandler notNil]! !
