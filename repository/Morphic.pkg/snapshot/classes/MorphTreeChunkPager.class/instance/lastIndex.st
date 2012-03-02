
!MorphTreeChunkPager methodsFor: 'navigation'!
lastIndex
	^ lastIndex ifNil: [lastIndex := self pageSize]! !
