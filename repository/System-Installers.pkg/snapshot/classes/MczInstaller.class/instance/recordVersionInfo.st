
!MczInstaller methodsFor: 'accessing'!
recordVersionInfo
	Versions 
		at: self extractPackageName 
		put: self extractVersionInfo! !
