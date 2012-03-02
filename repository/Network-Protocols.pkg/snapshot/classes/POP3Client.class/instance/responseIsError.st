
!POP3Client methodsFor: 'private testing'!
responseIsError
	^self lastResponse beginsWith: '-'! !
