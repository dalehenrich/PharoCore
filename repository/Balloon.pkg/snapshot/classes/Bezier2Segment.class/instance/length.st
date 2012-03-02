
!Bezier2Segment methodsFor: 'vector functions'!
length
	"Return the length of the receiver"
	"Note: Overestimates the length"
	^(start dist: via) + (via dist: end)! !
