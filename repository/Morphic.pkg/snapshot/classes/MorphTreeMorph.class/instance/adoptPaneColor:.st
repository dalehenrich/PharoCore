
!MorphTreeMorph methodsFor: 'accessing colors'!
adoptPaneColor: paneColor
	"Pass on to the selection, the border"
	
	super adoptPaneColor: paneColor.
	paneColor ifNil: [^self].
	self color: (self preferedPaneColor ifNil: [paneColor veryMuchLighter]).
! !
