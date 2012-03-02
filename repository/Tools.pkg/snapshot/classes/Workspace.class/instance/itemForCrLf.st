
!Workspace methodsFor: 'window menu'!
itemForCrLf
	^ lineEnding = #crlf
		ifTrue: ['<yes> CR+LF']
		ifFalse: ['<no> CR+LF']! !
