
!TreeListMorph methodsFor: 'private'!
addSubmorphsAfter: parentMorph fromCollection: aCollection allowSorting: sortBoolean
	"Update the font on each morph."
	
	|answer|
	answer := super addSubmorphsAfter: parentMorph fromCollection: aCollection allowSorting: sortBoolean.
	self scroller submorphsDo: [:i |
		i
			font: self font;
			extent: i minWidth @ i minHeight].
	^answer! !
