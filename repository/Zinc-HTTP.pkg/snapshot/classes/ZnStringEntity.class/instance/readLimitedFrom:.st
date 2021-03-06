
!ZnStringEntity methodsFor: 'private'!
readLimitedFrom: stream
	| readStream newString |
	self contentLength > ZnConstants maximumEntitySize 
		ifTrue: [ ZnEntityTooLarge signal ].
	readStream := ZnLimitedReadStream on: stream limit: self contentLength.
	self initializeEncoder.
	newString := String streamContents: [ :stringStream |
		[ readStream atEnd ] whileFalse: [
			stringStream nextPut: (encoder nextFromStream: readStream) ] ].
	self string: newString! !
