
!PreferencesHandler methodsFor: 'actions'!
lookInImageDirectory

	| folder |
	
	folder := FileDirectory default.
	folder exists ifFalse: [ ^ nil ].
	
	^ (folder fileExists: 'startup.st')
			ifTrue:	[ { folder fileNamed: 'startup.st' }]
			ifFalse: [ nil ]! !
