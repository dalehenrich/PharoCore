
!DateAndTime methodsFor: 'printing'!
printHMSOn: aStream
	"Print just hh:mm:ss"
	
	self hour printOn: aStream base: 10 length: 2 padded: true.
	aStream nextPut: $:.
	self minute printOn: aStream base: 10 length: 2 padded: true.
	aStream nextPut: $:.
	self second printOn: aStream base: 10 length: 2 padded: true! !
