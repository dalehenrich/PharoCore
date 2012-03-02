
!SourceReference methodsFor: 'accessing'!
sourceCode
	| fileIndex filePosition |
	fileIndex := SourceFiles fileIndexFromSourcePointer: sourcePointer.
	filePosition := SourceFiles filePositionFromSourcePointer: sourcePointer.
	^ filePosition = 0 
		ifTrue: [nil]
		ifFalse:[(RemoteString newFileNumber: fileIndex position: filePosition) text]

! !
