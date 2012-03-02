
!Class class methodsFor: 'fileIn/Out'!
allSuperclassesFor: aClass cache: cache 	
	^ cache at: aClass ifAbsentPut: [aClass allSuperclasses asArray]
! !
