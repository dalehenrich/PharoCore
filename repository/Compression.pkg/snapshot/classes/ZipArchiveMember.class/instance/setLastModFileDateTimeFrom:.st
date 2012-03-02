
!ZipArchiveMember methodsFor: 'accessing'!
setLastModFileDateTimeFrom: anInteger

	lastModFileDateTime := (DateAndTime fromSeconds: anInteger) asDosTime.! !
