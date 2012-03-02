
!ContextPart methodsFor: 'private'!
setNumArgs: numArgs toMethod: theMethod
"All that line is to change the argument count of a CompiledMethod header. The argument count is 4 bits starting in the 24 and finishign in 27.
16r787FFFFF is the hexa representation of a number that is all 1 and only those 4 bits in 0. Hence, when doing (theMethod header bitAnd: 16r787FFFFF) what we do is just to put zeros in those 4 bits.

Now with the new argument size, we do bitShift: 24 and we obtain a 32 bits number with all zeros and just our 4 bits with the value we want.
Since in the previous step we cleaned those 4 bits doing now a bitOr: with the second step, we have the result.
"
	theMethod objectAt: 1 put: ((theMethod header bitAnd: 16r787FFFFF) bitOr: (numArgs bitShift: 24)).
	! !
