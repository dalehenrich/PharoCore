
!MCWorkingCopyBrowser methodsFor: 'actions'!
addSlice
	(MCSliceMaker openFor: self window)
		ifNotNil: [:sliceInfo | workingCopy := sliceInfo makeSlice.
			workingCopy ifNotNil: [
				workingCopyWrapper := MCDependentsWrapper with: workingCopy model: self.
					self addRepository: MCHttpRepository inboxRepository.
					self repositorySelection: 0.]].
	self workingCopyListChanged; changed: #workingCopySelection; repositoryListChanged.
	self changedButtons.
! !
