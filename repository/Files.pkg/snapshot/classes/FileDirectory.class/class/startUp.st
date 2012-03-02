
!FileDirectory class methodsFor: 'name utilities'!
startUp
	"Establish the platform-specific FileDirectory subclass. Do any platform-specific startup."
	self setDefaultDirectoryClass.

	self setDefaultDirectory: (self dirPathFor: Smalltalk imageName).
	Smalltalk openSourceFiles.
! !
