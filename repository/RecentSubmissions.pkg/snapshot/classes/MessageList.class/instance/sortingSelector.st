
!MessageList methodsFor: 'accessing'!
sortingSelector

	sortingSelector ifNil: [^ #groupedByClass].
	^sortingSelector
	! !
