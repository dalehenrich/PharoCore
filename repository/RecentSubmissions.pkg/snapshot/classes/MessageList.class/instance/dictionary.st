
!MessageList methodsFor: 'accessing'!
dictionary
	dictionary ifNil: [self groupedByClass].
	^dictionary! !
