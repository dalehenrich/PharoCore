
!MCScriptDefinition methodsFor: 'comparing'!
= aDefinition
	^ (super = aDefinition)
		and: [script = aDefinition script]! !
