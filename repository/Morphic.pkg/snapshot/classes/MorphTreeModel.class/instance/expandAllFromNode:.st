
!MorphTreeModel methodsFor: 'accessing'!
expandAllFromNode: aNode
	self changed: {#rootNodes. #expandAllFromNode:. aNode} 
	! !
