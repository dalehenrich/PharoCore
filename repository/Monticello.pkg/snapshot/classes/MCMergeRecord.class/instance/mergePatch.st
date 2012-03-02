
!MCMergeRecord methodsFor: 'as yet unclassified'!
mergePatch
	^ mergePatch ifNil: [mergePatch := version snapshot patchRelativeToBase: self ancestorSnapshot]! !
