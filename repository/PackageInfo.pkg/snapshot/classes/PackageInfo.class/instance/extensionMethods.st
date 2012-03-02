
!PackageInfo methodsFor: 'listing'!
extensionMethods
	^ self externalBehaviors gather: [:classOrTrait | self extensionMethodsForClass: classOrTrait]! !
