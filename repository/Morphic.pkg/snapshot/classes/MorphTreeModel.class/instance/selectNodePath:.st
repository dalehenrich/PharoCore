
!MorphTreeModel methodsFor: 'accessing'!
selectNodePath: aNodePath
	self selection: (MorphTreeMorphSingleSelection new selectedNodePath: aNodePath)! !
