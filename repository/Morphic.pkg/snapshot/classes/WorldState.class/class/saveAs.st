
!WorldState class methodsFor: 'world menu items'!
saveAs
	| imageName index |
	imageName := FileDirectory baseNameFor: (FileDirectory default localNameFor: Smalltalk  imageName).
	index := imageName lastIndexOf: FileDirectory extensionDelimiter ifAbsent: [ nil ].
	(index notNil and: [ (imageName copyFrom: index + 1 to: imageName size) isAllDigits ])
		ifTrue: [ imageName := imageName copyFrom: 1 to: index - 1 ].
	imageName := FileDirectory default nextNameFor: imageName extension: FileDirectory imageSuffix.
	imageName := UIManager default
		request: 'Please enter the name for the new image:'
		initialAnswer: imageName.
	imageName isEmptyOrNil
		ifTrue: [ ^ self ].
	Smalltalk saveAs: imageName! !
