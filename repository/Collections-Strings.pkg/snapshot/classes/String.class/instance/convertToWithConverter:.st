
!String methodsFor: 'converting'!
convertToWithConverter: converter 
	converter
		ifNil: [^ self].
	^ String
		new: self size
		streamContents: [:writeStream | 
			converter 
				nextPutAll: self toStream: writeStream;
				emitSequenceToResetStateIfNeededOn: writeStream]! !
