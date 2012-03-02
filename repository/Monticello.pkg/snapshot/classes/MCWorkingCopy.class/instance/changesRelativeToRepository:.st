
!MCWorkingCopy methodsFor: 'operations'!
changesRelativeToRepository: aRepository
	^ self completeSnapshot patchRelativeToBase: (self closestAncestorSnapshotIn: aRepository).! !
