
!Inspector methodsFor: 'menu commands'!
spawnProtocol
	"Spawn a protocol on browser on the receiver's selection"

	| objectToRepresent |
	objectToRepresent := self selectionIndex = 0 ifTrue: [object] ifFalse: [self selection].
	ProtocolBrowser openSubProtocolForClass: objectToRepresent class! !
