
!SmalltalkImage methodsFor: 'image, changes names'!
imageName: newName
	"Set the the full path name for the current image.  All further snapshots will use this."

	| encoded |
	encoded := (FilePath pathName: newName isEncoded: false) asVmPathName.
	self primImageName: encoded.
! !
