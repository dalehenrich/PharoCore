
!ZnEasyTests methodsFor: 'testing'!
testDelete
	| server response |
	server := ZnServer on: 1701.
	[ 
		server start.
		self assert: server isRunning & server isListening.
		response := ZnEasy delete: 'http://localhost:1701/echo/foo'.
		self assert: (response headers contentType = ZnMimeType textPlain).
		self assert: (response statusLine code = 200).
		self assert: (response entity string includesSubString: 'DELETE').
		self assert: (response entity string includesSubString: 'foo')
	]
		ensure: [ server stop ]! !
