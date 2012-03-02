
!MCVersionDependency methodsFor: 'testing'!
isFulfilledByAncestors
	^ package hasWorkingCopy
		and: [self isFulfilledByAncestorsOf: package workingCopy ancestry]! !
