
!ProtocolClient methodsFor: 'accessing'!
messageText
	^super messageText
		ifNil: [self response]! !
