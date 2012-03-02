
!PreferencesHandler methodsFor: 'actions'!
lookInPreferencesFolder

	| result folder |
		
	result := OrderedCollection new.
	
	folder := FileDirectory preferencesFolder.
	folder exists ifFalse: [ ^ nil ].
	
	folder fileNames do: [:name | result add: (folder fileNamed: name)].
	
	^ result isEmpty
		ifTrue: [ nil ]
		ifFalse: [ result ]
	! !
