
!AbstractResizerMorph methodsFor: 'actions'!
handleColor

	^ handleColor ifNil: [self setDefaultColors. handleColor]! !
