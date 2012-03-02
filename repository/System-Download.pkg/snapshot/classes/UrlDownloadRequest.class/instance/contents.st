
!UrlDownloadRequest methodsFor: 'accessing'!
contents
	semaphore wait.
	^content! !
