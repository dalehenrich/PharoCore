
!MCWorkingCopyBrowser methodsFor: 'morphic ui'!
canSave
	^ self hasWorkingCopy and: [self hasRepository]! !
