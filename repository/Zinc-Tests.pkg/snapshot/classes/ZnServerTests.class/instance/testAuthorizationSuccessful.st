
!ZnServerTests methodsFor: 'testing'!
testAuthorizationSuccessful
	| server response |
	server := ZnServer on: 1701.
	server authenticator: (ZnBasicAuthenticator username: 'foo' password: 'secret').
	[ 
		server start.
		self assert: server isRunning & server isListening.
		response := ZnEasy get: 'http://localhost:1701/echo/foo' username: 'foo' password: 'secret'.
		self assert: (response headers contentType = ZnMimeType textPlain).
		self assert: (response statusLine code = 200).
		self assert: (response entity string includesSubString: 'Zinc').
		self assert: (response entity string includesSubString: 'foo')
	]
		ensure: [ server stop ]! !