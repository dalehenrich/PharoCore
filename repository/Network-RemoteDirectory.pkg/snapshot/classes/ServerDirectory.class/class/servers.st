
!ServerDirectory class methodsFor: 'available servers'!
servers
	Servers ifNil: [Servers := Dictionary new].
	^Servers! !
