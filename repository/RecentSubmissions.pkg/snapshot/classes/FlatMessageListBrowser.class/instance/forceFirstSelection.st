
!FlatMessageListBrowser methodsFor: 'display'!
forceFirstSelection

	self getList ifNotEmpty: [ self selectedItemIndex: 1 ]! !
