
!ZnServerTests methodsFor: 'testing'!
testEcho
	| server response |
	server := ZnServer on: 1701.
	[ 
		server start.
		self assert: server isRunning & server isListening.
		response := ZnEasy get: 'http://localhost:1701/echo/foo'.
		self assert: (response contentType = ZnMimeType textPlain).
		self assert: (response statusLine code = 200).
		self assert: (response entity contents includesSubString: 'Zinc').
		self assert: (response entity contents includesSubString: 'foo')
	]
		ensure: [ server stop ]! !
