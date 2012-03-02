
!MCPackage methodsFor: 'printing'!
storeOn: aStream
	aStream
		nextPutAll: 'MCPackage';
		space; nextPutAll: 'named: '; store: name.! !
