
!ZnServerTests methodsFor: 'testing'!
testGetUnicodeUtf8
	| server response html |
	server := ZnServer on: 1701.
	[ 
		server start.
		self assert: server isRunning & server isListening.
		response := ZnEasy get: 'http://localhost:1701/unicode'.
		self assert: (response contentType = ZnMimeType textHtml).
		self assert: (response statusLine code = 200).
		self assert: response contentType isCharSetUTF8.
		html := response entity contents.
		self assert: (html includesSubString: 'Unicode').
		0 to: 16r024F do: [ :each | self assert: (html includes: each asCharacter) ]
	]
		ensure: [ server stop ]! !
