
!PasteUpMorph methodsFor: 'world state'!
chooseClickTarget
	Cursor crossHair showWhile:
		[self activeHand waitButton].
	Cursor down showWhile:
		[self activeHand anyButtonPressed].
	^ (self morphsAt: self activeHand cursorPoint) first! !
