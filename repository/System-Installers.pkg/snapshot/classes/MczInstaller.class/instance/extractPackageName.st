
!MczInstaller methodsFor: 'accessing'!
extractPackageName
	^ (self parseMember: 'package') at: #name.
	! !
