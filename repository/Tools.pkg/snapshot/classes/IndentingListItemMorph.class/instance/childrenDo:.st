
!IndentingListItemMorph methodsFor: 'enumeration'!
childrenDo: aBlock

	firstChild ifNotNil: [
		firstChild withSiblingsDo: [ :aNode | aBlock value: aNode].
	]! !
