
!Trait methodsFor: 'testing'!
isSelfEvaluating
	"Return true if the receiver printString is evaluating back to self."
	
	^self isObsolete not! !
