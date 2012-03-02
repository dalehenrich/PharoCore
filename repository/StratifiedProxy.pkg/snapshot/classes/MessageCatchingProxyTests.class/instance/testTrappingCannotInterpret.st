
!MessageCatchingProxyTests methodsFor: 'as yet unclassified'!
testTrappingCannotInterpret
	"Test that even cannotInterpret can be trapped"
	| trapped p |	
	trapped := false.
	p := ClosureHandlerProxy messageHandler: [:msg :proxy |
		trapped := msg selector == #cannotInterpret: 
		].
	p cannotInterpret: nil.
	self assert: (trapped == true)! !
