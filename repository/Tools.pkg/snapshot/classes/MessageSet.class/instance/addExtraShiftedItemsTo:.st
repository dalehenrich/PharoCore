
!MessageSet methodsFor: 'message list'!
addExtraShiftedItemsTo: aMenu
	"The shifted selector-list menu is being built.  Add items specific to MessageSet"

	self growable ifTrue:
		[aMenu addList: #(
			-
			('Remove from this browser'		removeMessageFromBrowser)
			('Filter message list...'			filterMessageList)
			)].
	aMenu add: 'Sort by date' action: #sortByDate! !
