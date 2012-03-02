
Object subclass: #FSReference
	instanceVariableNames: 'filesystem path'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FS-Core-Public'!

!FSReference commentStamp: 'cwp 3/29/2011 16:51' prior: 0!
I combine a filesystem and path, which is sufficient to refer to a concrete file or directory. I provide methods for navigating my filesystem, performing filesystem operations and opening and closing files.  I am the primary mechanism for working with files and directories. 

| working |
working := FSFilesystem onDisk workingDirectory.
working files 

| disk |
disk := FSFilesystem onDisk.
disk root.                               "a reference to the root directory"
disk working.                         "a reference to the working directory"

!
