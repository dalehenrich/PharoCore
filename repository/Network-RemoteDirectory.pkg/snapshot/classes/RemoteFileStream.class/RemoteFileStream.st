
RWBinaryOrTextStream subclass: #RemoteFileStream
	instanceVariableNames: 'remoteFile localDataValid'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Network-RemoteDirectory'!

!RemoteFileStream commentStamp: '<historical>' prior: 0!
An in-memory stream that can be used to fileIn code from the network.  Knows its ServerFile, and thus its name, path, etc.

localDataValid -- false when have never read the file from the server.  Set to true after reading, when my contents has the true data.  When creating a remote file, set localDataValid to true so it will write to server.!
