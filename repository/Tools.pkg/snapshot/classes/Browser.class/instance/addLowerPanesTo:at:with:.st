
!Browser methodsFor: 'construction'!
addLowerPanesTo: window at: nominalFractions with: editString
	| commentPane |
	super addLowerPanesTo: window at: nominalFractions with: editString.
	commentPane := self buildMorphicCommentPane.
	window addMorph: commentPane fullFrame: commentPane defaultLayoutFrame.
	self changed: #editSelection.! !
