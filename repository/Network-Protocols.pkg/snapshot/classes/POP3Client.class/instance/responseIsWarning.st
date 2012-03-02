
!POP3Client methodsFor: 'private testing'!
responseIsWarning
	^self lastResponse beginsWith: '-'! !
