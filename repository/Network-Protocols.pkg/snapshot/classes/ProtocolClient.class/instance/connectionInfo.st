
!ProtocolClient methodsFor: 'private'!
connectionInfo
	connectInfo ifNil: [connectInfo := Dictionary new].
	^connectInfo! !
