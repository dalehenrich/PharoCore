
!BlockClosure methodsFor: 'debugger access'!
sender
	"Answer the context that sent the message that created the receiver."

	^outerContext sender! !
