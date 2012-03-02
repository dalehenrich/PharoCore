
!SARInstaller class methodsFor: 'change set utilities'!
basicNewChangeSet: newName
	Smalltalk globals at: #ChangeSet ifPresent: [ :cs | ^ cs basicNewChangeSet: newName ].
	(self changeSetNamed: newName)
		ifNotNil: [  self inform: 'Sorry that name is already used'. ^ nil ].
	^ ChangeSet basicNewNamed: newName! !
