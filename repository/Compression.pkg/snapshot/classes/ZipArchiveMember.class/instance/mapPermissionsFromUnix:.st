
!ZipArchiveMember methodsFor: 'private'!
mapPermissionsFromUnix: unixPerms
	^ unixPerms bitShift: 16.! !
