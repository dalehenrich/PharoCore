
!TextPrintIt methodsFor: 'as yet unclassified'!
writeScanOn: strm

	strm nextPut: $P; nextPutAll: evalString; nextPutAll: ';;'! !
