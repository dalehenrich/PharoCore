
!BalloonLineSimulation methodsFor: 'accessing'!
initialY
	^start y <= end y
		ifTrue:[start y]
		ifFalse:[end y]! !
