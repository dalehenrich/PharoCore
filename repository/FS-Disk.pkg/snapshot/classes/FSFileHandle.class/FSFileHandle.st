
FSHandle subclass: #FSFileHandle
	instanceVariableNames: 'id'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FS-Disk'!

!FSFileHandle commentStamp: 'cwp 11/18/2009 13:02' prior: 0!
I provide an interface for doing IO on an open file. I keep an id, which as an opaque identifier used by the FilePlugin primitives. I translate positions from the 1-based indexes used in Smalltalk to the 0-based offsets used by the primitives.

I do not implement the primitives myself, instead delegating those to an instance of FilePluginPrimitives.!
