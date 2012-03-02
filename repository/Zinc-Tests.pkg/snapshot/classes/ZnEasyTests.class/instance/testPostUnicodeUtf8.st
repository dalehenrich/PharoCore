
!ZnEasyTests methodsFor: 'testing'!
testPostUnicodeUtf8
	| server response data |
	server := ZnServer on: 1701.
	data := String streamContents: [ :stream | 0 to: 16r024F do: [ :each | stream nextPut: each asCharacter ] ].
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
