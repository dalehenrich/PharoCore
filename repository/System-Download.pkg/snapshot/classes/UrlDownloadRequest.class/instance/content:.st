
!UrlDownloadRequest methodsFor: 'accessing'!
content: retrievedContent
	content := retrievedContent.
	semaphore signal! !
