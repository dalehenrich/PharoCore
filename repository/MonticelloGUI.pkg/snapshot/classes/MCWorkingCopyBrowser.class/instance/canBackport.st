
!MCWorkingCopyBrowser methodsFor: 'actions'!
canBackport
	^ self hasWorkingCopy and: [workingCopy needsSaving not]! !
