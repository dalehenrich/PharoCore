
!MessageListBrowser methodsFor: 'accessing'!
sortingSelector: anObject
	anObject = self byClassLabel
		ifTrue: [	self model groupedByClass ].
	anObject = self byDateAscendingLabel
		ifTrue: [	self model groupedByDateAscending ].
	anObject = self byDateDescendingLabel
		ifTrue: [	self model groupedByDateDescending ].
	anObject = self byPackageLabel
		ifTrue: [	self model groupedByPackage ].
	anObject = self byVersionLabel
		ifTrue: [	self model groupedByVersion ].
	self updateView.! !
