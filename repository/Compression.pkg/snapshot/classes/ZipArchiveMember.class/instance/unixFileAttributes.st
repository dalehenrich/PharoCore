
!ZipArchiveMember methodsFor: 'accessing'!
unixFileAttributes
	^self mapPermissionsToUnix: externalFileAttributes.! !
