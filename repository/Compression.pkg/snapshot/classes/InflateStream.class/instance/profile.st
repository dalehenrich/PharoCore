
!InflateStream methodsFor: 'private'!
profile
	"Profile the decompression speed"
	MessageTally spyOn:[self decompressAll].! !
