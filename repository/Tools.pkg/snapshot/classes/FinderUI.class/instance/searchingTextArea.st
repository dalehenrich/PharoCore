
!FinderUI methodsFor: 'accessing'!
searchingTextArea
	^searchingTextArea ifNil: [self buildSearchingTextArea]! !
