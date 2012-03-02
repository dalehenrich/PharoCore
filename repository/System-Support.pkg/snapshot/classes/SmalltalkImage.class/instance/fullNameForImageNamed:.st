
!SmalltalkImage methodsFor: 'image, changes names'!
fullNameForImageNamed: t1 
	| t2 |
	t2 := FileDirectory on: self imagePath.
	^ FileDirectory
		fileName: (t2 fullNameFor: t1)
		extension: FileDirectory imageSuffix! !
