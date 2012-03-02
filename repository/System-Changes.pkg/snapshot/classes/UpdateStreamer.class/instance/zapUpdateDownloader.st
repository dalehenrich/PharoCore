
!UpdateStreamer methodsFor: 'private actions'!
zapUpdateDownloader

	UpdateDownloader ifNotNil: [UpdateDownloader terminate].
	UpdateDownloader := nil.! !
