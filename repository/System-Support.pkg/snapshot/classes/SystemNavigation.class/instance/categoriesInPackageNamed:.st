
!SystemNavigation methodsFor: 'accessing'!
categoriesInPackageNamed: packageName
	^(self environment organization categoriesMatching: packageName), (self environment organization categoriesMatching: (packageName, '-*'))! !
