
!ServerDirectory methodsFor: 'accessing'!
slashDirectory

	^ directory first == $/ 
		ifTrue: [directory]
		ifFalse: ['/', directory]! !
