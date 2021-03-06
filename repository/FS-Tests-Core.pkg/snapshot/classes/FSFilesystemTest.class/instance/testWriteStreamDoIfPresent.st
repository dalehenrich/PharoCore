
!FSFilesystemTest methodsFor: 'tests-references'!
testWriteStreamDoIfPresent
	| reference |
	self delete: (reference := filesystem workingDirectory / 'griffle').
	self assert: (reference 
		writeStreamDo: [ :stream |
			stream nextPutAll: 'griffle'.
			true ]
		ifPresent: [ false ]).
	self assert: (filesystem workingDirectory / 'griffle') isFile.
	self assert: (reference 
		writeStreamDo: [ :stream | true ]
		ifPresent: [ true ])! !
