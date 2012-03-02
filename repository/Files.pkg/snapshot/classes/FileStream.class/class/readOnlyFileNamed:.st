
!FileStream class methodsFor: 'instance creation'!
readOnlyFileNamed: fileName 
	^ self concreteStream readOnlyFileNamed: (self fullName: fileName)! !
