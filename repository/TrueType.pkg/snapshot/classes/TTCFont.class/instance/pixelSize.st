
!TTCFont methodsFor: 'accessing'!
pixelSize
	"Make sure that we don't return a Fraction"
	^ TextStyle pointsToPixels: pointSize! !
