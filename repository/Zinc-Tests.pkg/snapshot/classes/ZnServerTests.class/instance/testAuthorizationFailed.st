
!ZnServerTests methodsFor: 'testing'!
testAuthorizationFailed
	| server response |
	server := ZnServer on: 1701.
	server authenticator: (ZnBasicAuthenticator username: 'foo' password: 'secret').
	[ 
		server start.
		self assert: server isRunning & server isListening.
		response := ZnEasy get: 'http://localhost:1701/echo/foo'.
		self assert: (response headers contentType = ZnMimeType textPlain).
		self assert: (response statusLine code = 401).
		self assert: ((response headers at: 'WWW-Authenticate') includesSubString: 'Basic').
		self assert: ((response headers at: 'WWW-Authenticate') includesSubString: 'Zinc')
	]
		ensure: [ server stop ]! !
