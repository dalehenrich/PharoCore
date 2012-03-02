
!Workspace methodsFor: 'window menu'!
itemForCr
	^ lineEnding = #cr
		ifTrue: ['<yes> CR']
		ifFalse: ['<no> CR']! !
