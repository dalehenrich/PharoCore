
!ZnCredentialTests methodsFor: 'testing'!
testFindHandlerFor
	self
		ignoringDeprecation: [ 
			| server response client handler |
			server := ZnServer on: 1701.
			server authenticator: (ZnBasicAuthenticator username: 'foo' password: 'secret').
			[ 
			server start.
			self assert: server isRunning & server isListening.
			client := ZnUserAgent new.	"client logProgressToTranscript."
			response := client get: 'http://localhost:1701/echo/foo'.
			self assert: response headers contentType = ZnMimeType textPlain.
			self assert: response statusLine code = 401.
			self assert: ((response headers at: 'WWW-Authenticate') includesSubString: 'Basic').
			handler := ZnCredential findHandlerFor: (response headers at: 'WWW-Authenticate').
			self assert: handler = ZnBasicCredential ]
				ensure: [ server stop ] ]! !
