
!FlatMessageListBrowser methodsFor: 'list'!
createColumnsFor: anItem

	^ bindings 
		at: anItem 
		ifAbsentPut: [ {anItem realClass name. anItem selector asString} ]! !
