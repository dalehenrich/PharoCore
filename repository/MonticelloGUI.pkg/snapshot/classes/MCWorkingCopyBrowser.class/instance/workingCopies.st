
!MCWorkingCopyBrowser methodsFor: 'morphic ui'!
workingCopies
	^ (self orderSpecs size = order
		ifTrue: [ MCWorkingCopy allManagers select: [ :each | each modified ] ]
		ifFalse: [ MCWorkingCopy allManagers ])
			asSortedCollection: (self orderSpecs at: order) value.! !
