
!ProcessBrowser methodsFor: 'stack list'!
inspectReceiver
	selectedContext
		ifNotNil: [selectedContext receiver inspect]! !
