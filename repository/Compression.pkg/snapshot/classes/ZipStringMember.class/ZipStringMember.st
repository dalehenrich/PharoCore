
ZipArchiveMember subclass: #ZipStringMember
	instanceVariableNames: 'contents stream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compression-Archives'!

!ZipStringMember commentStamp: '<historical>' prior: 0!
ZipStringMember instances are used to represent files that are going to be written to a ZipArchive.
Their data comes from in-image strings, though.!
