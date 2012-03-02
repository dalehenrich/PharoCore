
!DosFileDirectoryTests methodsFor: 'as yet unclassified'!
testIsDriveForDrive
	self assert: (DosFileDirectory isDrive: 'C:').
	self deny: (DosFileDirectory isDrive: 'C:\').
	self deny: (DosFileDirectory isDrive: 'C:\foo').
	self deny: (DosFileDirectory isDrive: 'C:foo').! !
