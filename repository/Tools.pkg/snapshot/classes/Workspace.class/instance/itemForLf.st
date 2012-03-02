
!Workspace methodsFor: 'window menu'!
itemForLf
	^ lineEnding = #lf
		ifTrue: ['<yes> LF']
		ifFalse: ['<no> LF']! !
