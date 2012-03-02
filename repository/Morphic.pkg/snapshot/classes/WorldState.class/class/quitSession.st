
!WorldState class methodsFor: 'world menu items'!
quitSession
	Smalltalk
		snapshot: (self confirm: 'Save changes before quitting?' translated orCancel: [ ^ self ])
		andQuit: true! !
