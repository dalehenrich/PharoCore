
!MultistateLabelMorph methodsFor: 'as yet unclassified'!
interactionState: aSymbol
	"Set the appropriate text colour."
	
	self color: (self colorMap at: aSymbol)! !
