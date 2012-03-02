
!MCClassDefinition methodsFor: 'testing'!
hasClassInstanceVariables
	^ (self selectVariables: #isClassInstanceVariable) isEmpty not! !
