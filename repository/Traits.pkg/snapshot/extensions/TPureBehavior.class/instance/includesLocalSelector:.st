
!TPureBehavior methodsFor: 'testing method dictionary'!
includesLocalSelector: aSymbol
	^self basicLocalSelectors isNil
		ifTrue: [self includesSelector: aSymbol]
		ifFalse: [self localSelectors includes: aSymbol]! !
