
!Locale methodsFor: 'accessing'!
printOn: aStream 
	super printOn: aStream.
	aStream nextPutAll: '(' , id printString , ')'! !
