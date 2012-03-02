
!MessageListBrowser methodsFor: 'accessing'!
selection: aSelection
	super selection: aSelection.
	self changed: #textToDisplay.
	self updateTextArea
! !
