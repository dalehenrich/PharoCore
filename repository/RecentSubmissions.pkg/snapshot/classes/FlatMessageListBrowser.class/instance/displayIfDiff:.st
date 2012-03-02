
!FlatMessageListBrowser methodsFor: 'text'!
displayIfDiff: aRGMethodDefinition

	^TextDiffBuilder
		 buildDisplayPatchFrom: ((self model priorVersionOfAMethod: aRGMethodDefinition) sourceCode) 
		to: (aRGMethodDefinition sourceCode) 
		inClass: (aRGMethodDefinition className)! !
