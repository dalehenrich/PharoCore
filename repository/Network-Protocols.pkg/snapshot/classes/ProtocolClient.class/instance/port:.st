
!ProtocolClient methodsFor: 'private'!
port: aPortNumber
	^self connectionInfo at: #port put: aPortNumber! !
