
!CodeUpdate class methodsFor: 'settings'!
updateFromServerAtStartup
	^ updateFromServerAtStartup ifNil: [updateFromServerAtStartup := false]! !
