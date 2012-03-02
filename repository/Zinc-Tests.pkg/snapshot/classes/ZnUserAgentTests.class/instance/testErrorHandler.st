
!ZnUserAgentTests methodsFor: 'testing'!
testErrorHandler
	self
		ignoringDeprecation: [ 
			| client flag |
			flag := false.
			client := ZnUserAgent new errorHandler: [ :error | flag := true ].	"logProgressToTranscript;"
			client get: ''.
			self assert: flag ]! !
