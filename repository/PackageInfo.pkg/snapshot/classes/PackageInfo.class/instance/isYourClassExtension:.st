
!PackageInfo methodsFor: 'testing'!
isYourClassExtension: categoryName
	^ categoryName notNil and: [self category: categoryName asLowercase matches: self methodCategoryPrefix]! !
