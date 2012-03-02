
!RecentMessageList methodsFor: 'accessing'!
maxListSize

	maxListSize ifNil: [maxListSize := self defaultMaxListSize].
	^maxListSize! !
