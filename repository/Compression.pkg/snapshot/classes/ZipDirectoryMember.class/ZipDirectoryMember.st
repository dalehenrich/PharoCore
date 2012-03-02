
ZipFileMember subclass: #ZipDirectoryMember
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compression-Archives'!

!ZipDirectoryMember commentStamp: '<historical>' prior: 0!
ZipFileMember instances represent directories inside ZipArchives.
They don't do much other than hold names and permissions (and extra fields).

You can add files in subdirectories to a ZipArchive without using any ZipDirectoryMembers.!
