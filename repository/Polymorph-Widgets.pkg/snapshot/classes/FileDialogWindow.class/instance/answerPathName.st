
!FileDialogWindow methodsFor: 'as yet unclassified'!
answerPathName
	"Set the receiver to answer the selected path name."
	
	self actionSelector: #selectedPathName.
	self changed: #okEnabled! !
