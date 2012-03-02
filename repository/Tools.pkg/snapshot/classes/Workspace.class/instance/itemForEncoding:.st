
!Workspace methodsFor: 'window menu'!
itemForEncoding: aString
	^ encoding = aString
		ifTrue: ['<yes> ', aString]
		ifFalse: ['<no> ', aString]! !
