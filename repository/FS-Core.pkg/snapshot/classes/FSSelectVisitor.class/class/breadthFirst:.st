
!FSSelectVisitor class methodsFor: 'instance creation'!
breadthFirst: aReference
	^ self breadthFirst: aReference select: [:entry | true]! !
