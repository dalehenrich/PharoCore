
!MorphTreeModel methodsFor: 'accessing'!
selectedNodePath
	^ self selection ifNotNil: [:s | s lastSelectedNodePath]! !
