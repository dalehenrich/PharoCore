
!MessageListBrowser methodsFor: 'display'!
updateTree
	| prevSelected |
	prevSelected := self selectedItem.
	self changed: #rootNodes.
	prevSelected ifNotNil: [self selectItems: prevSelected]
! !
