
!ModifiedClassDefinitionEvent methodsFor: 'testing'!
areSharedPoolsModified
	^ self sharedPools ~= self oldSharedPools! !
