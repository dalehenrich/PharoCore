
!Rectangle methodsFor: 'transforming'!
flipBy: direction centerAt: aPoint 
	"Return a copy flipped #vertical or #horizontal, about aPoint."
	^ (origin flipBy: direction centerAt: aPoint)
		rect: (corner flipBy: direction centerAt: aPoint)! !
