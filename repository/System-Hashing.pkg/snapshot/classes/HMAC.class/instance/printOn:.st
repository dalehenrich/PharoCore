
!HMAC methodsFor: 'printing'!
printOn: aStream
	aStream nextPutAll: 'HMAC-'; print: hash! !
