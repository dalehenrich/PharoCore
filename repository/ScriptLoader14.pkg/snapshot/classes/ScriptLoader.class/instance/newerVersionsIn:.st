
!ScriptLoader methodsFor: 'load primitives'!
newerVersionsIn: aCollection
	^aCollection reject: [:each |
		MCWorkingCopy allManagers anySatisfy: [:workingcopy |
			workingcopy ancestry ancestorString , '.mcz' = each]].! !
