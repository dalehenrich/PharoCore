
!ZnEasyTests methodsFor: 'testing'!
testPost
	| server response data |
	server := ZnServer on: 1701.
	data := String streamContents: [ :stream | 1 to: 32 do: [ :each | stream nextPut: 'abc' atRandom ] ].
	[ 
		server start.
		self assert: server isRunning & server isListening.
		response := ZnEasy post: 'http://localhost:1701/echo' data: (ZnEntity text: data).
		self assert: (response headers contentType = ZnMimeType textPlain).
		self assert: (response statusLine code = 200).
		self assert: (response entity string includesSubString: 'POST').
		self assert: (response entity string includesSubString: data)
	]
		ensure: [ server stop ]! !
