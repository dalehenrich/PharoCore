
!BalloonEngine methodsFor: 'accessing'!
destOffset: aPoint
	destOffset := aPoint asIntegerPoint.
	bitBlt destX: aPoint x; destY: aPoint y.! !
