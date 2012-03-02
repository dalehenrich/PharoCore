
!Text methodsFor: 'printing'!
printOn: aStream
	self printNameOn: aStream.
	aStream nextPutAll: ' for '; print: string! !
