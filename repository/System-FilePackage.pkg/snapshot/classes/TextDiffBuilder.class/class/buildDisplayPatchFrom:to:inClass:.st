
!TextDiffBuilder class methodsFor: 'instance creation'!
buildDisplayPatchFrom: sourceText to: destinationText inClass: sourceClass 

	^self 
		buildDisplayPatchFrom: sourceText 
		to: destinationText
		inClass: sourceClass
		prettyDiffs: CodeHolder diffsWithPrettyPrint
		! !
