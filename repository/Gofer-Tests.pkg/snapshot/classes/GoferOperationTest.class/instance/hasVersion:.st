
!GoferOperationTest methodsFor: 'utilities'!
hasVersion: aString
	| version |
	version := MCWorkingCopy allManagers
		detect: [ :each | each ancestry ancestorString = aString ]
		ifNone: [ nil ].
	^ version notNil! !
