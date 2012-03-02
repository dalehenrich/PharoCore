
!ClassFactoryForTestCase methodsFor: 'accessing'!
defaultCategory
	^ (self packageName , '-', self defaultCategoryPostfix) asSymbol! !
