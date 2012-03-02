
!SimpleHierarchicalListMorph methodsFor: 'initialization'!
allItems

	^ (submorphs detect:[:each | each class = TransformMorph ]) submorphs! !
