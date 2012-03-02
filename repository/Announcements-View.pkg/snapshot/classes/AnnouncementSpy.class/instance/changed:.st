
!AnnouncementSpy methodsFor: 'private'!
changed: aSymbol
	WorldState addDeferredUIMessage: [ super changed: aSymbol ]! !
