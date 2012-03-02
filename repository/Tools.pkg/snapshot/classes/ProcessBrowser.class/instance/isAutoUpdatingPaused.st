
!ProcessBrowser methodsFor: 'updating'!
isAutoUpdatingPaused
	^autoUpdateProcess notNil and: [ autoUpdateProcess isSuspended ]! !
