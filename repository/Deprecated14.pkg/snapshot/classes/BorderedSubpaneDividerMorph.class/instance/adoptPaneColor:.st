
!BorderedSubpaneDividerMorph methodsFor: 'as yet unclassified'!
adoptPaneColor: paneColor
	"Match the color."
	
	super adoptPaneColor: paneColor.
	paneColor ifNil: [^self].
	self color: paneColor! !
