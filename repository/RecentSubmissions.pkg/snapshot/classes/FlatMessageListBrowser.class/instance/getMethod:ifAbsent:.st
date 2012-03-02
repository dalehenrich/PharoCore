
!FlatMessageListBrowser methodsFor: 'private'!
getMethod: aMessageListInspectableNode ifAbsent: aBlock

	| methodReference |
	methodReference := aMessageListInspectableNode .
	^ methodReference realClass methodDict
			at: methodReference selector
			ifAbsent: aBlock.! !
