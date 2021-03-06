
!CompiledMethod methodsFor: 'private'!
penultimateLiteral: anObject
	"Answer the penultimate literal of the receiver, which holds either
	 the receiver's selector or its properties (which will hold the selector)."
	| pIndex |
	(pIndex := self numLiterals - 1) > 0 
		ifTrue: [self literalAt: pIndex put: anObject]
		ifFalse: [self error: 'insufficient literals']! !
