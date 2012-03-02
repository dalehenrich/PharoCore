
!ChangeSet methodsFor: '*System-Object Storage'!
objectForDataStream: refStrm
	"I am about to be written on an object file.  Write a path to me in the other system instead."

	"try to write reference for me"
	^ DiskProxy 
		global: #ChangeSet
		selector: #existingOrNewChangeSetNamed: 
		args: (Array with: self name)
! !
