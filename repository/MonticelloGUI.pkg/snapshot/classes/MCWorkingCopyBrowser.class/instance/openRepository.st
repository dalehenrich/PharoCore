
!MCWorkingCopyBrowser methodsFor: 'actions'!
openRepository
	self repository ifNotNil: [:repos | repos morphicOpen: workingCopy ]! !
