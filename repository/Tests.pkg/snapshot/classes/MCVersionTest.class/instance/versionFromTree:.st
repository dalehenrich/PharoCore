
!MCVersionTest methodsFor: 'building'!
versionFromTree: sexpr
	^ (self dependencyFromTree: sexpr) resolve! !
