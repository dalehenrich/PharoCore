
!Categorizer methodsFor: 'actions'!
moveCategory: sourceCategory to: destinationCategory

	self classifyAll: (self listAtCategoryNamed: sourceCategory) under: destinationCategory.
	self removeCategory: sourceCategory.! !
