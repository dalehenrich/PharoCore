
!MCWorkingCopyBrowser methodsFor: 'morphic ui'!
workingCopyList
	^ self workingCopies collect:
		[:ea |
		(workingCopy notNil and: [workingCopy requiredPackages includes: ea package])
			ifTrue: [Text string: ea description emphasis: (Array with: TextEmphasis bold)]
			ifFalse: [ea description]]! !
