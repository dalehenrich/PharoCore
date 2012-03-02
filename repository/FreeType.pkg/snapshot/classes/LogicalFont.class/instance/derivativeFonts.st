
!LogicalFont methodsFor: 'derivatives'!
derivativeFonts

	derivatives ifNil: [^ #()].
	^derivatives copyWithout: nil! !
