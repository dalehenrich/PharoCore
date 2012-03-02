
!MacFileDirectoryTest methodsFor: 'test'!
testMakeAbsolute

	self assert: (MacFileDirectory isAbsolute: (MacFileDirectory makeAbsolute: 'Data')).
	self assert: (MacFileDirectory isAbsolute: (MacFileDirectory makeAbsolute: ':Data')).
! !
