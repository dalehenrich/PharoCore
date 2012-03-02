
!ZnHttpClientTests methodsFor: 'testing'!
testDigestAuthorizationFailure
	self
		ignoringDeprecation: [ 
			| server response client |
			server := ZnServer on: 1701.
			server authenticator: (ZnDigestAuthenticator username: 'foo' password: 'secret' realm: 'TEST').
			[ 
			server start.
			self assert: server isRunning & server isListening.
			client := ZnHttpClient new
				url: 'http://localhost:1701/echo/foo';
				digestAuth: 'foo' password: 'wrong'.
			response := client get.
			self assert: client contentType = ZnMimeType textPlain.
			self assert: client isAuthenticationRequired ]
				ensure: [ server stop ] ]! !
