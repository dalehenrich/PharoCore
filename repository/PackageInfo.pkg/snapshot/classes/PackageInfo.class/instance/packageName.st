
!PackageInfo methodsFor: 'naming'!
packageName
	^ packageName ifNil: [packageName := self categoryName]! !
