
Object subclass: #FSStore
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FS-Core-Kernel'!

!FSStore commentStamp: 'StephaneDucasse 7/3/2011 16:41' prior: 0!
I am an abstract superclass for store implementations. My subclasses provide access to the actual data storage of a particular kind of filesystem. 

The file system can be accessed via
	FSFilesystem onDisk 
	FSFilesystem inMemory
	
My associated filesystem can be accessed as follows:
      FSDiskStore currentFilesystem	!
