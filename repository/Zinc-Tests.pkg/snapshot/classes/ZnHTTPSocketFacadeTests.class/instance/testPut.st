
!ZnHTTPSocketFacadeTests methodsFor: 'testing'!
testPut
	| server result dataString |
	server := ZnServer on: 1701.
	server authenticator: (ZnBasicAuthenticator username: 'user' password: 'secret').
	dataString := String streamContents: [ :stream | 
		1 to: 67 do: [ :each | stream nextPut: (Character digitValue: each \\ 9) ] ].
	[ 
		server start.
		result := ZnHTTPSocketFacade httpPut: dataString to: 'http://localhost:1701/echo/foo' user: 'user' passwd: 'secret'.
		self assert: (result beginsWith: 'HTTP/1.1 200 OK').
		self assert: (result includesSubString: '67B')
	]
		ensure: [ server stop ]! !
