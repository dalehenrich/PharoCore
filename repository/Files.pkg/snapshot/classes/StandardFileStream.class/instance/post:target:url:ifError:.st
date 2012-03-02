
!StandardFileStream methodsFor: 'browser requests'!
post: data target: target url: url ifError: errorBlock
	"Post data to the given URL. The returned file stream contains the reply of the server.
	If Pharo is not running in a browser evaluate errorBlock.
	Do NOT send to existing streams."
	| sema |
	self waitBrowserReadyFor: self defaultBrowserReadyWait ifFail: [^errorBlock value].
	sema := Semaphore new.
	[ | index  result|
	index := Smalltalk registerExternalObject: sema.
	(self primURLPost: url target: target data: data semaIndex: index) 
		ifNil: [ ^errorBlock value. ] 
		ifNotNil: [:request |
			[[sema wait. "until something happens"
			result := self primURLRequestState: request.
			result == nil] whileTrue.
			result ifTrue:[fileID := self primURLRequestFileHandle: request]] 
				ensure: [	self primURLRequestDestroy: request]]]
		ensure: [Smalltalk unregisterExternalObject: sema].
	fileID == nil ifTrue:[^nil].
	self register.
	name := url.
	rwmode := false.
	buffer1 := String new: 1.
	self enableReadBuffering
	! !
