
!MultiCompositionScanner methodsFor: 'multilingual scanning'!
removeLastCharFromPresentation

	presentation ifNotNil: [
		presentation position: presentation position - 1.
	].
	super removeLastCharFromPresentation
! !
