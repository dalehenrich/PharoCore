
!Bezier3Segment methodsFor: 'accessing'!
bounds
	^ ((super bounds encompassing: via1) encompassing: via2)! !
