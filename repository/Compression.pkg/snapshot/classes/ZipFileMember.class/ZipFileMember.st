
ZipArchiveMember subclass: #ZipFileMember
	instanceVariableNames: 'externalFileName stream localHeaderRelativeOffset dataOffset'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compression-Archives'!

!ZipFileMember commentStamp: '<historical>' prior: 0!
ZipNewFileMember instances are used to represent files that have been read from a ZipArchive.
Their data stays in the file on disk, so the original Zip file cannot be directly overwritten.!
