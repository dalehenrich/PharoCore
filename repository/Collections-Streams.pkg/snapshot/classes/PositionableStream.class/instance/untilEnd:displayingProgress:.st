
!PositionableStream methodsFor: 'positioning'!
untilEnd: aBlock displayingProgress: aString
	aString
		displayProgressFrom: 0 to: self size
		during:
			[:bar |
			[self atEnd] whileFalse:
				[bar value: self position.
				aBlock value]].! !
