
!FileDialogWindow methodsFor: 'as yet unclassified'!
newUpButton
	"Answer a new up one directory level button."

	^self 
		newButtonFor: self
		getState: nil
		action: #selectParentDirectory
		arguments: nil
		getEnabled: #hasParentDirectory
		labelForm: self theme smallUndoIcon
		help: 'Press to switch to the parent of the current directory' translated! !