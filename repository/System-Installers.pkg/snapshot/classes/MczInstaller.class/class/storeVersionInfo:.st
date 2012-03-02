
!MczInstaller class methodsFor: 'versioninfo'!
storeVersionInfo: aVersion
	Versions 
		at: aVersion package name
		put: aVersion info asDictionary! !
