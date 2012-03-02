
!ZnHttpClientTests methodsFor: 'testing'!
testBasicAuthorization
	self
		ignoringDeprecation: [ 
			| server response client |
			server := ZnServer on: 1701.
			server authenticator: (ZnBasicAuthenticator username: 'foo' password: 'secret').
			[ 
			server start.
			self assert: server isRunning & server isListening.
			client := ZnHttpClient new
				url: 'http://localhost:1701/echo/foo';
				auth: 'foo' password: 'secret'.
			response := client get.
			self assert: client contentType = ZnMimeType textPlain.
			self assert: client status = 200 ]
				ensure: [ server stop ] ]! !
