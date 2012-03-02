
!MessageNames methodsFor: 'initialization'!
inMorphicWindowWithInitialSearchString: initialString
	"Answer a morphic window with the given initial search string, nil if none"

"MessageNames openMessageNames"

	^UIManager default messageNames: self inMorphicWindowWithInitialSearchString: initialString! !
