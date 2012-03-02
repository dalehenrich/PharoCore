
!UrlDownloadRequest methodsFor: 'accessing'!
startRetrieval
	self content: url asUrl retrieveContents! !
