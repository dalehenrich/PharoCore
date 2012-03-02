
!MczInstaller methodsFor: 'accessing'!
extractVersionInfo
	^ self extractInfoFrom: (self parseMember: 'version')! !
