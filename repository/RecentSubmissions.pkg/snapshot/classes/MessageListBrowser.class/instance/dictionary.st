
!MessageListBrowser methodsFor: 'accessing'!
dictionary

	| result |
	result := self model dictionary.
	result ifEmpty: [self selection: nil].
	^result! !
