
!MCVersionReader class methodsFor: '*monticello-file services'!
loadVersionStream: stream fromDirectory: directory
	| version |
	version := self versionFromStream: stream.
	directory isRemoteDirectory ifFalse: [
	version workingCopy repositoryGroup addRepository:
		(MCDirectoryRepository new directory: directory). ].
	version load.
! !
