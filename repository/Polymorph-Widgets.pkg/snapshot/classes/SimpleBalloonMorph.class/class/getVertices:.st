
!SimpleBalloonMorph class methodsFor: 'as yet unclassified'!
getVertices: bounds
	"Construct vertices for a balloon up and to left of anchor."

	^(bounds expandBy: 3) corners atAll: #(1 4 3 2)! !
