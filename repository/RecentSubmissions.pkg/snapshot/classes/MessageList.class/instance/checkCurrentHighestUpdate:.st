
!MessageList methodsFor: 'private'!
checkCurrentHighestUpdate: aMethodReference

	| highestUpdate |
	highestUpdate := SystemVersion current highestUpdate.
	(self versionsHistoryList isEmpty or: [highestUpdate > self versionsHistoryList last key highestUpdate])
		ifTrue: [ 
			self addVersion: (Association key: SystemVersion current value: aMethodReference timeStamp)]! !
