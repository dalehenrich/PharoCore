
!String class methodsFor: '*Compiler-Kernel'!
allowUnderscore: aBoolean
	aBoolean 
		ifTrue: [self allowUnderscore]
		ifFalse: [self denyUnderscore].
	 ! !
