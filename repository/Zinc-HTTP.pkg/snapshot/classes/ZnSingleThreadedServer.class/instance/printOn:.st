
!ZnSingleThreadedServer methodsFor: 'printing'!
printOn: stream
	super printOn: stream.
	stream nextPut: $(.
	stream nextPutAll: (self isRunning ifTrue: [ 'running' ] ifFalse: [ 'stopped' ]).
	self port notNil ifTrue: [ stream space; print: self port ].
	stream nextPut: $)! !
