
!VirtualMachine class methodsFor: 'GC'!
totalGCTime
	^ self totalFullGCTime + self totalIncrementalGCTime! !
