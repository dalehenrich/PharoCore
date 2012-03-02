
!TextDoIt methodsFor: 'as yet unclassified'!
writeScanOn: strm

	strm nextPut: $d; nextPutAll: evalString; nextPutAll: ';;'! !
