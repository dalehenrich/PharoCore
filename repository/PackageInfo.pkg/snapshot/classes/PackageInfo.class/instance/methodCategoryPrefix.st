
!PackageInfo methodsFor: 'naming'!
methodCategoryPrefix
	^ methodCategoryPrefix ifNil: [methodCategoryPrefix := '*', self packageName asLowercase]! !
