
!MorphTreeMorphMultipleSelection methodsFor: 'accessing'!
lastSelectedNodePath
	^ self selectedNodePathList ifNotEmpty: [:l | l last]! !
