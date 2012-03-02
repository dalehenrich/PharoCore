
!MenuRegistrationExample class methodsFor: 'menu actions'!
quitSession
	Smalltalk
		snapshot: (self confirm: 'Save changes before quitting?' translated orCancel: [ ^ self ])
		andQuit: true! !
