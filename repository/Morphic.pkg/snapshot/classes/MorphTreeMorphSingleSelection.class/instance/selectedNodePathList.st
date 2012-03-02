
!MorphTreeMorphSingleSelection methodsFor: 'accessing'!
selectedNodePathList
	^ self selectedNodePath ifNil: [#()] ifNotNil: [Array with: self selectedNodePath]! !
