
!UserInterruptHandler class methodsFor: 'instance creation'!
new
	^super new setInterruptKeyValue: ($. asciiValue bitOr: 16r0800)! !
