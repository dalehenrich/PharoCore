
Object subclass: #UrlCodeFileLoader
	instanceVariableNames: 'requests downloads'
	classVariableNames: 'DefaultLoader MaxNrOfConnections'
	poolDictionaries: ''
	category: 'System-Download'!

!UrlCodeFileLoader commentStamp: '<historical>' prior: 0!
That class is used by CodeLoader. It loads some files with their Urls.
For each file, a UrlDownloadRequest is created.!
