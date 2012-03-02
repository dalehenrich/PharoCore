
!ZipArchiveMember methodsFor: 'accessing'!
lastModTime
	"Return my last modification date/time stamp,
	converted to Squeak seconds"

	^(DateAndTime fromDosTime: lastModFileDateTime) asSeconds.! !
