
!ChangeSet methodsFor: 'accessing'!
printOn: aStream

	super printOn: aStream.
	aStream nextPutAll: ' named ', self name! !
