
!MultiByteFileStream methodsFor: 'remnant'!
filterFor: aFileStream

	| rw |
	name := aFileStream name.
	rw := aFileStream isReadOnly not.
	aFileStream close.
	self open: name forWrite: rw.
	^self.
! !
