
!FSReference methodsFor: 'accessing'!
fullName
	"Return the full path name of the receiver."
	^ filesystem stringFromPath: (filesystem resolve: path)! !
