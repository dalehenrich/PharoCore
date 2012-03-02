
!SHRange methodsFor: 'testing'!
isTemporaryVariable
	
	^#(#tempVar #blockTempVar workspaceVar ) identityIncludes: type! !
