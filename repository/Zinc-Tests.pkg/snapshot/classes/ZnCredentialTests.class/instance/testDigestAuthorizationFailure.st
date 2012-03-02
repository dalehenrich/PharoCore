
!ZnCredentialTests methodsFor: 'testing'!
testDigestAuthorizationFailure
	self
		ignoringDeprecation: [ 
			| server response client cred |
			self
				assert: ZnDigestAuthenticator hasMD5Support
				description: 'MD5 hashing support is required for Digest authentication.'.
			server := ZnServer on: 1701.
			server authenticator: (ZnDigestAuthenticator username: 'foo' password: 'secret' realm: 'TEST').
			[ 
			server start.
			self assert: server isRunning & server isListening.
			client := ZnUserAgent new.	"client logProgressToTranscript."
			response := client get: 'http://localhost:1701/echo/foo'.
			self assert: response headers contentType = ZnMimeType textPlain.
			self assert: response statusLine code = 401.
			self assert: ((response headers at: 'WWW-Authenticate') includesSubString: 'Digest').
			cred := (ZnCredential findHandlerFor: (response headers at: 'WWW-Authenticate')) new
				username: 'foo';
				password: 'wrong';
				domain: client request url authority;
				yourself.
			cred linkToAuthRequest: (response headers at: 'WWW-Authenticate').
			client session addCredential: cred.
			response := client get: 'http://localhost:1701/echo/foo'.
			self assert: response statusLine code = 401 ]
				ensure: [ server stop ] ]! !
