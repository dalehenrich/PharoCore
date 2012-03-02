
!MCDirectoryRepository class methodsFor: 'instance creation'!
defaultDirectoryName
	^ DefaultDirectoryName ifNil: [DefaultDirectoryName := FileDirectory default fullName].! !
