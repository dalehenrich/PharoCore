
!ScriptLoader methodsFor: 'utils'!
removeUpdateMethods

	
	((ScriptLoader organization listAtCategoryNamed: 'pharo - updates') 
		asSortedCollection allButLast) 
			do: [:each | ScriptLoader removeSelector: each].! !
