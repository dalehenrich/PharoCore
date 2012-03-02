
!StandardFileStream methodsFor: 'browser requests'!
requestURL: url target: target ifError: errorBlock
	"Request to go to the target for the given URL.
	If Pharo is not running in a browser evaluate errorBlock.
	Do NOT send to existing streams."

	| sema |
	self waitBrowserReadyFor: self defaultBrowserReadyWait ifFail: [^errorBlock value].
	sema := Semaphore new.
	[ | index  result|
	index := Smalltalk registerExternalObject: sema.
	(self primURLRequest: url target: target semaIndex: index) 
		ifNil: [ ^errorBlock value. ] 
		ifNotNil: [:request |
			[[sema wait. "until something happens"
			result := self primURLRequestState: request.
			result == nil] whileTrue] 
				ensure: [	self primURLRequestDestroy: request]]]
		ensure: [Smalltalk unregisterExternalObject: sema].
	^nil! !
