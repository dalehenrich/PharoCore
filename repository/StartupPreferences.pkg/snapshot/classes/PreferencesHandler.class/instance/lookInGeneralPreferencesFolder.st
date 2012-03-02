
!PreferencesHandler methodsFor: 'actions'!
lookInGeneralPreferencesFolder

	| result folder |

	result := OrderedCollection new.
	folder := FileDirectory preferencesGeneralFolder.
	folder exists ifFalse: [ ^ nil ].
	
	folder fileNames do: [:name |
		result add: (folder fileNamed: name)].

	^ result isEmpty
		ifTrue: [ nil ]
		ifFalse: [ result ]! !
