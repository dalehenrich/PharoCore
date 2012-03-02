
!FileExistsException methodsFor: 'accessing'!
fileClass
	^ fileClass ifNil: [StandardFileStream]! !
