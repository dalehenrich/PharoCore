
!FinderUI methodsFor: 'accessing'!
sourceTextArea
	^sourceTextArea ifNil: [self buildSourceTextArea]! !
