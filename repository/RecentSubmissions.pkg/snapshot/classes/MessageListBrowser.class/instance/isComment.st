
!MessageListBrowser methodsFor: 'accessing'!
isComment
	| node |
	node := self selectedNode.
	^(node isInspectable) & (node item = 'Comment'). ! !
