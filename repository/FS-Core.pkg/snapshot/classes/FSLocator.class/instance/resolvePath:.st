
!FSLocator methodsFor: 'navigating'!
resolvePath: aPath
	^ self withPath: (path resolvePath: aPath)! !
