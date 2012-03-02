
!Generator methodsFor: 'printing'!
printOn: aStream
	aStream nextPutAll: self class name; nextPutAll: ' on: '; print: block! !
