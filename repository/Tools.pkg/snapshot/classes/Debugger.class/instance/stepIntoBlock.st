
!Debugger methodsFor: 'context stack menu'!
stepIntoBlock
	"Send messages until you return to the present method context.
	 Used to step into a block in the method."

	interruptedProcess stepToHome: self selectedContext.
	self resetContext: interruptedProcess stepToSendOrReturn.! !
