
!MessageList methodsFor: 'private'!
findVersionOf: aMethodReference

	| index |
	index := self findIndexOfVersionOf: aMethodReference.
	^(self versionsHistoryList at: index) key! !
