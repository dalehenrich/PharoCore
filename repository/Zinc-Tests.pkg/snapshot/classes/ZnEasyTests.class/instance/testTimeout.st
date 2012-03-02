
!ZnEasyTests methodsFor: 'testing'!
testTimeout
	| server |
	server := ZnServer on: 1701.
	[ 
		server start.
		self assert: server isRunning & server isListening.
		self 
			should: [ ZnConnectionTimeout value: 1 during: [ ZnEasy get: 'http://localhost:1701/echo?delay=2' ] ] 
			raise: ConnectionTimedOut
	] 
		ensure: [ server stop ]
	! !
