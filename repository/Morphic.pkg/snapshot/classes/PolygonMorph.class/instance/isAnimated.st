
!PolygonMorph methodsFor: 'stepping and presenter'!
isAnimated

	borderDashSpec ifNil: [^false].
	^ borderDashSpec size = 5 and: [(borderDashSpec fifth) > 0]! !
