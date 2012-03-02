
!String class methodsFor: '*Compiler-Kernel'!
denyUnderscore
	 self typeTable at: $_ asciiValue put: #xLetter! !
