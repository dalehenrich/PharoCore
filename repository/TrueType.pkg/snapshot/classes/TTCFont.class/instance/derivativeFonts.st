
!TTCFont methodsFor: 'friend'!
derivativeFonts

	derivatives ifNil: [^ #()].
	^derivatives copyWithout: nil! !
