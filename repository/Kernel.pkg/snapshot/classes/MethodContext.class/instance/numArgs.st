
!MethodContext methodsFor: 'accessing'!
numArgs 
	"Answer the number of arguments required to evaluate this method or block."

	^closureOrNil ifNil: [method numArgs] ifNotNil: [closureOrNil numArgs]! !
