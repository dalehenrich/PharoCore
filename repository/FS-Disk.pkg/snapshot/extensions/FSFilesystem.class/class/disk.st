
!FSFilesystem class methodsFor: '*fs-disk'!
disk
	"Answer a filesystem that represents the 'on-disk' filesystem used by the host operating system."

	^ FSDiskStore currentFilesystem! !
