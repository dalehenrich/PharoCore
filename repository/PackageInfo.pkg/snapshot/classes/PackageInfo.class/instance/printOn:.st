
!PackageInfo methodsFor: 'printing'!
printOn: aStream

	super printOn: aStream.
	aStream nextPutAll: '(',self packageName,')'.! !
