
!Workspace methodsFor: 'styling'!
stylingActiveString
	
	^self stylingActive 
		ifTrue: ['<yes> syntax highlighting' translated]
		ifFalse: ['<no> syntax highlighting' translated]! !
