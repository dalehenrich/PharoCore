
!SystemOrganizer methodsFor: 'utils'!
classesInCategory: category
	^ (self listAtCategoryNamed: category) collect: [ :className | self environment at: className ] ! !
