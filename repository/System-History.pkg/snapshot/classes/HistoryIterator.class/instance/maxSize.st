
!HistoryIterator methodsFor: 'accessing'!
maxSize
	^ maxSize ifNil: [maxSize := self defaultMaximumSize]! !
