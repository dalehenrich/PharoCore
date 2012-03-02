
!FileServices class methodsFor: 'accessing'!
registeredFileReaderClasses
	FileReaderRegistry ifNil: [FileReaderRegistry := OrderedCollection new].
	^ FileReaderRegistry! !
