
!PolygonMorph methodsFor: 'initialization'!
beStraightSegments

	smoothCurve == false ifFalse:
		[smoothCurve := false.
		self computeBounds]! !
