
!RGClassDefinition methodsFor: 'managing pool users'!
isPool: aBoolean
	
	^self annotationNamed: self class isPoolKey put: aBoolean! !
