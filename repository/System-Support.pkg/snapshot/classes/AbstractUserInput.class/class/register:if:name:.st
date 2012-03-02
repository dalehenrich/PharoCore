
!AbstractUserInput class methodsFor: 'registration'!
register: actionBlock if: conditionBlock name: aString
	"Register the couple conditionBlock -> actionBlock with the name aString
	When dispatch: is thrown, the condition block will be tested and if it is true, the action block will be evaluated"
	
	| key |
	(conditionBlock argumentCount = 1 and: [ actionBlock argumentCount = 1 ]) 
		ifFalse: [ ^ self error: 'Both actionBlock and conditionBlock should take one parameter (an instance of ', self asString, ')' ].
	
	key := aString asSymbol. 
	registrations at: key put: (conditionBlock -> actionBlock)! !
