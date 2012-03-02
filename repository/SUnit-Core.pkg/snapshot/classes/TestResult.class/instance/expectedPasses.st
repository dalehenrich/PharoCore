
!TestResult methodsFor: 'accessing'!
expectedPasses
	^ passed select: [:each | each shouldPass] ! !
