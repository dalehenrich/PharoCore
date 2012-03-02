
!AbstractUserInput class methodsFor: 'dispatching'!
dispatch: anUserInput
	"Evaluates the condition blocks and evaluates the action blocks for condition blocks which are true"
	
	(anUserInput allParameters size = 0) ifTrue: [ ^ self ].
	registrations do: [ :each |
		| actionBlock conditionBlock |
		conditionBlock := each key.
		actionBlock := each value.
		(conditionBlock value: anUserInput) ifTrue: [ actionBlock value: anUserInput ]
	]! !
