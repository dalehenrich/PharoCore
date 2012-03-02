
Archive subclass: #ZipArchive
	instanceVariableNames: 'centralDirectorySize centralDirectoryOffsetWRTStartingDiskNumber zipFileComment writeCentralDirectoryOffset writeEOCDOffset'
	classVariableNames: ''
	poolDictionaries: 'ZipFileConstants'
	category: 'Compression-Archives'!

!ZipArchive commentStamp: '<historical>' prior: 0!
A ZipArchive represents an archive that is read and/or written using the PKZIP file format.

ZipArchive instances know how to read and write such archives; their members are subinstances of ZipArchiveMember.!
