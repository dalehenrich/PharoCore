
!FlatMessageListBrowser methodsFor: 'private'!
browseImplementors

	selectedItem ifNil: [ ^false ].
	self browseMessagesFrom: selectedItem selector! !
