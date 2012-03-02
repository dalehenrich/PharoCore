
!FlatMessageListBrowser methodsFor: 'accessing'!
selectedItemIndex
	"Returns the index of selected item. If no item is selected selects the first one."

	^ selectedItem 
		ifNil: [ 0 ]
		ifNotNil: [ self getList indexOf: selectedItem ]! !
