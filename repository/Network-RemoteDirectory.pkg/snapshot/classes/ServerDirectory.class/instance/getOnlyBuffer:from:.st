
!ServerDirectory methodsFor: 'up/download'!
getOnlyBuffer: buffer from: fileNameOnServer
	"Open ftp, fill the buffer, and close the connection.  Only first part of a very long file."

	| dataStream |
	client := self openFTPClient.
	dataStream := buffer writeStream.
	[client getPartial: buffer size fileNamed: fileNameOnServer into: dataStream]
		ensure: [self quit].
	^buffer! !
