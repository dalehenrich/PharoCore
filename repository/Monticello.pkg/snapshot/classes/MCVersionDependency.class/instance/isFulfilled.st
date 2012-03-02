
!MCVersionDependency methodsFor: 'testing'!
isFulfilled
	^package hasWorkingCopy
		and: [self isFulfilledBy: package workingCopy ancestry]! !
