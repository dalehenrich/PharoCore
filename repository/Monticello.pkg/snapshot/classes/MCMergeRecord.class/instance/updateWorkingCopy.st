
!MCMergeRecord methodsFor: 'as yet unclassified'!
updateWorkingCopy
	self isAncestorMerge ifFalse:
		[self imageIsClean
			ifTrue: [version workingCopy loaded: version]
			ifFalse: [version workingCopy merged: version]]! !