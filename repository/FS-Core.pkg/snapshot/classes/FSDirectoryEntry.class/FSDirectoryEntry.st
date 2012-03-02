
Object subclass: #FSDirectoryEntry
	instanceVariableNames: 'reference creation modification isDirectory size'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FS-Core-Public'!

!FSDirectoryEntry commentStamp: 'cwp 11/18/2009 11:09' prior: 0!
I am a cache for metadata about a file or directory. The information I hold is as follows:

reference
	A reference to the file or directory to which my data pertains.
	
creation
	The creation date and time, stored as number seconds since the 
	Smalltalk epoch.
	
modification
	The modification date and time, number seconds since the Smalltalk epoch.
	
isDirectory 
	True if my data pertains to a directory, false if a file.
	
size
	Size in bytes for a file, 0 for a directory.
!
