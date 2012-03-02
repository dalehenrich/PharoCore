
!FlatMessageListBrowser methodsFor: 'items creation'!
buildList

	^ PluggableMultiColumnListMorph
		on: self
		list: #getList
		selected: #selectedItemIndex
		changeSelected: #selectedItemIndex:
		menu: #buildMenu:
		wrapSelector: #createColumnsFor:
! !
