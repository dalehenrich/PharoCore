
!FileDialogWindow methodsFor: 'as yet unclassified'!
addInitialPanel
	"Add the panel."

	super addInitialPanel.
	self selectDirectory: FileDirectory default! !
