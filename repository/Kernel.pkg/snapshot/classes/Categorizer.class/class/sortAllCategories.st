
!Categorizer class methodsFor: 'housekeeping'!
sortAllCategories

	self allSubInstances
		do: [:x | x sortCategories]! !
