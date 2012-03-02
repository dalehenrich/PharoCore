
FSHandle subclass: #FSMemoryHandle
	instanceVariableNames: 'bytes size'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FS-Memory'!

!FSMemoryHandle commentStamp: 'cwp 11/19/2009 00:01' prior: 0!
I provide "primitives" for doing IO on files in a FSMemoryFilesystem. I buffer writes until the stream is flushed or closed. !
