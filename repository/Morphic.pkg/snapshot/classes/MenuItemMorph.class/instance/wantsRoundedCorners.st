
!MenuItemMorph methodsFor: 'rounding'!
wantsRoundedCorners
	^ self isInDockingBar
		ifTrue: [true]
		ifFalse: [super wantsRoundedCorners]! !
