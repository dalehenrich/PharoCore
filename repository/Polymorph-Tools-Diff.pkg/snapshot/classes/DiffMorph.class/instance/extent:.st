
!DiffMorph methodsFor: 'as yet unclassified'!
extent: newExtent
	"Update the scrollbar."

	super extent: newExtent.
	self calibrateScrollbar! !
