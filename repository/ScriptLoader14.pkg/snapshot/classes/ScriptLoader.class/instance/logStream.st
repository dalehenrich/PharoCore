
!ScriptLoader methodsFor: 'log'!
logStream
	^ LogStream ifNil: [
		LogStream := ReadWriteStream on: (String new: 1000)]! !