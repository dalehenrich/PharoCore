
!ServerDirectory methodsFor: 'accessing'!
dirPathFor: fullName 
	"Return the directory part the given name."
	self
		splitName: fullName
		to: [:dirPath :localName | ^ dirPath]! !
