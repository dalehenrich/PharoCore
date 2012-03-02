
!MessageListBrowser methodsFor: 't - accessing'!
rootItems

	self model useAsASet
		ifTrue: [^ self originalList]
		ifFalse: [^self dictionary keys select: [:each | each isNil not]] "with some test, the class may be nil oO"
	! !
