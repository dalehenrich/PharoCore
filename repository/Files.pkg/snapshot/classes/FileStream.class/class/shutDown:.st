
!FileStream class methodsFor: 'system startup'!
shutDown: quitting

	quitting ifTrue: [ self flushAndVoidStdioFiles ]! !
