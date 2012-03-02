
!ZnUserAgentTests methodsFor: 'testing'!
testRelativeRedirect
	self
		ignoringDeprecation: [ 
			| server response client |
			(server := ZnServer on: 1701)
				delegate:
					(ZnValueDelegate
						with: [ :request | 
							request uri firstPathSegment = 'one'
								ifTrue: [ ZnResponse redirect: 'two' ]
								ifFalse: [ 
									request uri firstPathSegment = 'two'
										ifTrue: [ ZnResponse ok: (ZnEntity text: 'OK!!') ]
										ifFalse: [ ZnResponse notFound: request uri ] ] ]).
			[ 
			server start.
			self assert: server isRunning & server isListening.
			client := ZnUserAgent new.
			response := client post: 'http://localhost:1701/one' data: (ZnEntity text: 'data').
			self assert: response isSuccess.
			self assert: response contents = 'OK!!' ]
				ensure: [ server stop ] ]! !
