
!MorphTreeMorphMultipleSelection methodsFor: 'accessing'!
removeNode: aNode
	self selectedNodePathList remove: aNode path ifAbsent: []
! !
