
!TestRunner methodsFor: 'building'!
buildCategorySearch

	^ SearchMorph new
		model: self;
		updateSelector: #categorySearchUpdate:;
		yourself! !
