
!Bezier2Segment methodsFor: 'testing'!
hasZeroLength
	"Return true if the receiver has zero length"
	^start = end and:[start = via]! !
