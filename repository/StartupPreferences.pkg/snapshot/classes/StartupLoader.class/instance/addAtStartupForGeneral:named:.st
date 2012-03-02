
!StartupLoader methodsFor: 'script generation'!
addAtStartupForGeneral: aCollection named: aString

	| preferencesGeneralFolder preferencesFolder |	
	preferencesGeneralFolder := FileDirectory preferencesGeneralFolder.
	preferencesGeneralFolder assureExistence.
	
	preferencesFolder := FileDirectory preferencesFolder.
	preferencesFolder assureExistence.
	
	preferencesGeneralFolder forceNewFileNamed: aString do: [:stream | stream nextPutAll: (self buildStreamFor: aCollection) ].
	preferencesFolder forceNewFileNamed: aString do: [:stream | stream nextPutAll: (self buildStreamFor: aCollection) ].! !
