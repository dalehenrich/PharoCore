
!ScrollBar methodsFor: 'geometry'!
buttonExtent
	| size |
	size := self theme scrollbarThickness + 1.
	^ bounds isWide
		ifTrue: [size @ self innerBounds height]
		ifFalse: [self innerBounds width @ size]! !
