
!Point methodsFor: 'comparing'!
closeTo: aPoint
 	^ (x closeTo: aPoint x) and: [ y closeTo: aPoint y ]! !
