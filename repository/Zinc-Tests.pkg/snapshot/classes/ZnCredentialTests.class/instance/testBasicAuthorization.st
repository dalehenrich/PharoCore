
!ZnCredentialTests methodsFor: 'testing'!
testBasicAuthorization
	self
		ignoringDeprecation: [ 
			| server response client cred |
			server := ZnServer on: 1701.
			server authenticator: (ZnBasicAuthenticator username: 'foo' password: 'secret').
			[ 
			server start.
			self assert: server isRunning & server isListening.
			self assert: server serverSocket localPort = 1701.
			client := ZnUserAgent new.	"client logProgressToTranscript."
			response := client get: 'http://localhost:1701/echo/foo'.
			self assert: response headers contentType = ZnMimeType textPlain.
			self assert: response statusLine code = 401.
			self assert: ((response headers at: 'WWW-Authenticate') includesSubString: 'Basic').
			cred := (ZnCredential findHandlerFor: (response headers at: 'WWW-Authenticate')) new
				username: 'foo';
				password: 'secret';
				domain: client request url authority;
				yourself.
			cred linkToAuthRequest: (response headers at: 'WWW-Authenticate').
			client session addCredential: cred.
			response := client get: 'http://localhost:1701/echo/foo'.
			self assert: response statusLine code = 200 ]
				ensure: [ server stop ] ]! !
