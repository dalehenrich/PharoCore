
!MCDirectoryRepository methodsFor: 'as yet unclassified'!
allFileNames
	^ (directory entries sort: [:a :b | a modificationTime >= b modificationTime]) collect: [:ea | ea name]! !
