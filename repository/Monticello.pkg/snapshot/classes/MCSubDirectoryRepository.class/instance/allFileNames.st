
!MCSubDirectoryRepository methodsFor: 'enumeration'!
allFileNames
	"sorting {entry. dirName. name}"

	| sorted |
	sorted := SortedCollection sortBlock: [:a :b |
		a first modificationTime >= b first modificationTime ].
	self allDirectories
		do: [:dir | dir entries
				do: [:ent | ent isDirectory
						ifFalse: [sorted add: {ent. dir fullName. ent name}]]].
	^ sorted
		collect: [:ea | ea third ]! !
