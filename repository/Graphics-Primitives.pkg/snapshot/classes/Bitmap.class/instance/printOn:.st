
!Bitmap methodsFor: 'printing'!
printOn: aStream
	self printNameOn: aStream.
	aStream nextPutAll: ' of length '; print: self size! !
