
!MessageListBrowser methodsFor: 'text'!
displayIfDiff: aMessageListInspectableNode

	| methodReference |
	methodReference := aMessageListInspectableNode item.
	^TextDiffBuilder
		 buildDisplayPatchFrom: ((self model priorVersionOfAMethod: methodReference) sourceCode) 
		to: (methodReference sourceCode) 
		inClass: (methodReference className)! !
