
!MorphTreeModel methodsFor: 'accessing'!
selectedItem
	^ self selectedNode ifNotNil: [:node | node item]! !
