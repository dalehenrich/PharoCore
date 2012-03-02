
!StartupLoader methodsFor: 'script generation'!
addAtStartup: aCollection

	| preferencesFolder |
	preferencesFolder := FileDirectory preferencesFolder.
	preferencesFolder assureExistence.
	
	preferencesFolder forceNewFileNamed: self startupScriptName do: [:stream | stream nextPutAll: (self buildStreamFor: aCollection) ].! !
