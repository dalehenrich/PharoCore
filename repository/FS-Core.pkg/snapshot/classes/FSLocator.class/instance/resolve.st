
!FSLocator methodsFor: 'navigating'!
resolve
	^ (Resolver resolve: origin) resolve: path! !
