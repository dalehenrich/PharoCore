
!DynamicMessageImplementor methodsFor: 'evaluating-private'!
argumentNameAt: anIndex

	| argumentName argument argumentClassName |
	
	argument := message arguments at: anIndex.
	argumentClassName := self argumentClassNameOf: argument.
	argumentName := (self argumentNamePrefixOf: argumentClassName), argumentClassName.
	
	[ argumentNames includes: argumentName ] whileTrue: [ argumentName := argumentName , anIndex asString ].
	argumentNames add: argumentName.

	^ argumentName! !
