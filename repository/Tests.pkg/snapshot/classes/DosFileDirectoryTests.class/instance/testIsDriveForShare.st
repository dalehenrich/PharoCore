
!DosFileDirectoryTests methodsFor: 'as yet unclassified'!
testIsDriveForShare
	self assert: (DosFileDirectory isDrive: '\\server').
	self deny: (DosFileDirectory isDrive: '\\server\').
	self deny: (DosFileDirectory isDrive: '\\server\foo').
! !
