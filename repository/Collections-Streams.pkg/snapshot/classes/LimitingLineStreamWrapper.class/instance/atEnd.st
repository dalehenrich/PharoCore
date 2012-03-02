
!LimitingLineStreamWrapper methodsFor: 'testing'!
atEnd

	^line isNil or: [limitingBlock value: line]! !
