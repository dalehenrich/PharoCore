
!POP3Client methodsFor: 'private'!
loginMethod: aSymbol
	^self connectionInfo at: #loginMethod put: aSymbol! !
