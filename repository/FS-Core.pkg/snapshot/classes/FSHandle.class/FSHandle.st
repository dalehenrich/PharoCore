
Object subclass: #FSHandle
	instanceVariableNames: 'reference writable'
	classVariableNames: 'Primitives'
	poolDictionaries: ''
	category: 'FS-Core-Kernel'!

!FSHandle commentStamp: 'cwp 11/18/2009 11:11' prior: 0!
I am an abstract superclass for file handle implementations. I provide a uniform interface that streams can use for read and write operations on a file regardless of the filesystem. I encapsulate the actual IO primitives.!
