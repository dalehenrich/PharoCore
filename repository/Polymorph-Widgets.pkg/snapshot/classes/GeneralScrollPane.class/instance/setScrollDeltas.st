
!GeneralScrollPane methodsFor: 'as yet unclassified'!
setScrollDeltas
	"Set the ScrollBar deltas, value and interval, based on the current scroll pane size, offset and range."
	
	self
		hSetScrollDelta;
		vSetScrollDelta! !