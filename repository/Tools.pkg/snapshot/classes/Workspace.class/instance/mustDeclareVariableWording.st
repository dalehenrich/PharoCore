
!Workspace methodsFor: 'variable declarations'!
mustDeclareVariableWording
	
	^ mustDeclareVariables
		ifTrue: ['<no> Automatically create variable declaration' translated]
		ifFalse: ['<yes> Automatically create variable declaration' translated]! !
