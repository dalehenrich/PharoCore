
!FreeTypeFontProvider methodsFor: 'loading and updating'!
validCachedInfoFor: aDirectoryEntry directory: aFileDirectory index: i
	"answer info from cache if the file on the disk has the same size/timestamp as the cached info, otherwise answer nil"
	| cacheEntry fileSize modificationTime|

	fileSize := aDirectoryEntry fileSize.
	modificationTime :=  aDirectoryEntry modificationTime.
	cacheEntry := (fileInfoCache at: {fileSize. i} ifAbsentPut:[Set new])
		detect:[:each | | path |
			path := path ifNil:["only build path when needed" aFileDirectory fullNameFor: aDirectoryEntry name].
			each modificationTime = modificationTime
			and: [(self absolutePathFor: each absoluteOrRelativePath locationType: each locationType) = path]]
		ifNone:[].
	"cacheEntry ifNotNil:[Transcript cr; show: 'from cache : ', cacheEntry asString]."
	^cacheEntry
	! !
