
!StandardFileStream class methodsFor: '*Network-URI'!
readOnlyFileFullyNamed: fileName
	| file |
	file := self new open: fileName forWrite: false.
	^ file ifNil: [((FileDoesNotExistException fileName: fileName) readOnly: true) signal].! !
