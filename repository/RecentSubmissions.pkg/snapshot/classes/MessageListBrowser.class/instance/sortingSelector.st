
!MessageListBrowser methodsFor: 'accessing'!
sortingSelector

	self model isSortedByClass
		ifTrue: [	^ self byClassLabel].
	self model isSortedByDateAscending
		ifTrue: [	^ self byDateAscendingLabel].
	self model isSortedByDateDescending
		ifTrue: [	^ self byDateDescendingLabel].
	self model isSortedByPackage
		ifTrue: [	^ self byPackageLabel].
	self model isSortedByVersion
		ifTrue: [	^ self byVersionLabel].! !
