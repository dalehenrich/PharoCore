
!ZipDirectoryMember methodsFor: 'accessing'!
localFileName: aString
	| dir entry parent |
	super localFileName: aString.
	fileName last = $/ ifFalse: [ fileName := fileName, '/' ].
	parent := FileDirectory default.
	(parent directoryExists: fileName) ifTrue: [
		dir := FileDirectory on: (parent fullNameFor: fileName).
		entry := dir directoryEntry.
		self setLastModFileDateTimeFrom: entry modificationTime
	]
! !
