
ZipArchiveMember subclass: #ZipNewFileMember
	instanceVariableNames: 'externalFileName stream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compression-Archives'!

!ZipNewFileMember commentStamp: '<historical>' prior: 0!
ZipNewFileMember instances are used to represent files that are going to be written to a ZipArchive.
Their data comes from external file streams.!
