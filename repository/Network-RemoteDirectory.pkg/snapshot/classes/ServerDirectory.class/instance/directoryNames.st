
!ServerDirectory methodsFor: 'file directory'!
directoryNames
	"Return a collection of names for the subdirectories of this directory."
	"(ServerDirectory serverNamed: 'UIUCArchive') directoryNames"

	^ (self entries select: [:entry | entry isDirectory])
		collect: [:entry | entry name]
! !
