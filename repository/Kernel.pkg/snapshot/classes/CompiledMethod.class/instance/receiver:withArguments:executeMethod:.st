
!CompiledMethod methodsFor: 'private'!
receiver: receiver withArguments: argArray executeMethod: compiledMethod
	"Execute compiledMethod against the receiver and the arguments in argArray"
	"Please do not use this method. It is just there to make sure that we can invoke this primitive with right order of arguments"

	<primitive: 188>
	^receiver withArgs: argArray executeMethod: compiledMethod
! !
