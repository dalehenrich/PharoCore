
!TestResult methodsFor: 'accessing'!
unexpectedErrors
	^ errors select: [:each | each shouldPass] ! !
