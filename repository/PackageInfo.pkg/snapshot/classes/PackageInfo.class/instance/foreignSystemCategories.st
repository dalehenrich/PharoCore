
!PackageInfo methodsFor: 'accessing'!
foreignSystemCategories
	^ self systemOrganization categories
		reject: [:cat | self includesSystemCategory: cat]  ! !
