
!ZnDispatcherDelegateTest methodsFor: 'testing'!
testDispatcherDelegate
	| server |
	server := (ZnServer on:  1701)
		delegate: (ZnDispatcherDelegate new 
			map: '/hello' to: [ :request :response | response entity: (ZnStringEntity html: '<h1>hello server</h1>') ];
			map: '/' to: [ :request :response | response entity: (ZnStringEntity html: '<h1>default</h1>') ]).
	[ | client |
		server start.
		client := ZnClient new.
		
		client get: 'http://localhost:1701/missing'.
		self assert: (client response contentType = ZnMimeType textPlain).
		self assert: (client response status = 404).
		
		client get: 'http://localhost:1701/'.
		self assert: (client response contentType = ZnMimeType textHtml).
		self assert: (client response status = 200).
		
		client get: 'http://localhost:1701/hello'.
		self assert: (client response contentType = ZnMimeType textHtml).
		self assert: (client response status = 200).
		
		client close.
	] ensure: [ server stop ]
! !
