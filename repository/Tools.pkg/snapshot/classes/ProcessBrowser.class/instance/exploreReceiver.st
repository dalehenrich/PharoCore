
!ProcessBrowser methodsFor: 'stack list'!
exploreReceiver
	selectedContext ifNotNil: [ selectedContext receiver explore ]! !
