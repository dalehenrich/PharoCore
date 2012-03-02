
!POP3Client methodsFor: 'private'!
loginMethod
	^self connectionInfo at: #loginMethod ifAbsent: [nil]! !
