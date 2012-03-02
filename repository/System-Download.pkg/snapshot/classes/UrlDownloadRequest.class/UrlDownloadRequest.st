
Object subclass: #UrlDownloadRequest
	instanceVariableNames: 'semaphore url content loader process'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'System-Download'!

!UrlDownloadRequest commentStamp: '<historical>' prior: 0!
That class is used by UrlCodeFileLoader; it represents a request for the downloading of a single file.
It is that object which has to download the file and it can then provide its content.!
