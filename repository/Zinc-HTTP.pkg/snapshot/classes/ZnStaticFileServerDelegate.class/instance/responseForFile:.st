
!ZnStaticFileServerDelegate methodsFor: 'private'!
responseForFile: filename
	| entry size time mimeType fileStream entity response |
	entry := FileDirectory root directoryEntryFor: filename.
	size := entry fileSize.
	time := entry modificationDateAndTime.
	mimeType := ZnMimeType forFilenameExtension: (FileDirectory extensionFor: filename).
	fileStream := FileDirectory root oldFileNamed: filename.
	mimeType isBinary ifTrue: [ fileStream binary ].
	(entity := ZnStreamingEntity type: mimeType length: size)
		stream: fileStream.
	(response := ZnResponse ok: entity)
		headers at: 'Modification-Date' put: (ZnUtils httpDate: time).
	^ response ! !
