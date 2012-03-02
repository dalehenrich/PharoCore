
!ProtocolClient methodsFor: 'private'!
pendingResponses
	pendingResponses ifNil: [pendingResponses := OrderedCollection new].
	^pendingResponses! !
