
!TextLink methodsFor: 'as yet unclassified'!
writeScanOn: strm

	strm nextPut: $L; nextPutAll: classAndMethod; nextPut: $;! !
