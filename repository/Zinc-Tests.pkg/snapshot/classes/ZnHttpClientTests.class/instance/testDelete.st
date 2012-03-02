
!ZnHttpClientTests methodsFor: 'testing'!
testDelete
	self
		ignoringDeprecation: [ 
			| server response data client |
			server := ZnServer on: 1701.
			data := String streamContents: [ :stream | 1 to: 32 do: [ :each | stream nextPut: 'abc' atRandom ] ].
			[ 
			server start.
			self assert: server isRunning & server isListening.
			client := ZnHttpClient new url: 'http://localhost:1701/echo/foo'.
			response := client delete.
			self assert: client contentType = ZnMimeType textPlain.
			self assert: client status = 200.
			self assert: (response includesSubString: 'DELETE').
			self assert: (response includesSubString: 'DELETE') ]
				ensure: [ server stop ] ]! !
