
!MCRepository methodsFor: 'as yet unclassified'!
printOn: aStream
	super printOn: aStream.
	aStream
		nextPut: $(;
		nextPutAll: self description;
		nextPut: $).! !
