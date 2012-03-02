
!PackageInfo class methodsFor: 'initialization'!
initialize
	self allSubclassesDo: [:ea | ea new register]! !
