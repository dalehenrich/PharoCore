
!SmartRefStream class methodsFor: 'utilities'!
streamedRepresentationOf: anObject

	| file |
	file := (RWBinaryOrTextStream on: (ByteArray new: 5000)).
	file binary.
	(self on: file) nextPut: anObject.
	file close.
	^file contents! !
