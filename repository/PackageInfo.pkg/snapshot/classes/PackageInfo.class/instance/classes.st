
!PackageInfo methodsFor: 'accessing'!
classes
	^ (self systemCategories
		gather: [ :cat | (self systemOrganization listAtCategoryNamed: cat) collect: [ :className | self environment at: className ] ])
		sort: [ :a :b | a className <= b className ] ! !
