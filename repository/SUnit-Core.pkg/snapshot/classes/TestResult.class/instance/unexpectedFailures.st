
!TestResult methodsFor: 'accessing'!
unexpectedFailures
	^ failures select: [:each | each shouldPass] ! !
