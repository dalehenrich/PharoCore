
!MCClassDefinition methodsFor: 'accessing'!
classVarNames
	^(self selectVariables: #isClassVariable) asArray sort! !
