
!MessageListBrowser methodsFor: 'tree'!
getMethod: aMessageListInspectableNode

	| methodReference |
	methodReference := (self getMethodReference: aMessageListInspectableNode) .
	^ methodReference compiledMethod.
	! !
