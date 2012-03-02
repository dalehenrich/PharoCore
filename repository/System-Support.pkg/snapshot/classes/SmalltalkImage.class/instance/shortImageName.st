
!SmalltalkImage methodsFor: 'image, changes names'!
shortImageName
	"Answer the current image name but only that name and not the full path as with imageName."
	"SmalltalkImage current shortImageName"

	^ FileDirectory baseNameFor: (FileDirectory default localNameFor: Smalltalk imageName).! !
