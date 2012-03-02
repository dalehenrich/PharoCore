
!IncrementalSliderMorph methodsFor: 'as yet unclassified'!
minExtent
	"Must answer a fixed small size here to
	allow auto orientation to work."
	
	^(24 max: self minWidth) @ (24 max: self minHeight)! !
