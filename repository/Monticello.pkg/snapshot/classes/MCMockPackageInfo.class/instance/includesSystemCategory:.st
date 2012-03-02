
!MCMockPackageInfo methodsFor: 'as yet unclassified'!
includesSystemCategory: categoryName
	^self systemCategories anySatisfy: [:cat | cat sameAs: categoryName]! !
