
!CompiledMethod methodsFor: 'literals'!
refersToLiteral: aLiteral 
	"Answer true if any literal in this method is literal, even if embedded in array structure or within its pragmas."
	"only iterate to numLiterals - 1, as the last has the classBinding and the last-but-one needs special treatment"
	2 
		to: self numLiterals - 1
		do: 
			[ :index | 
			| literal |
			literal := self objectAt: index.
			(aLiteral literalEqual: literal) ifTrue: [ ^ true ]. 
			(literal refersToLiteral: aLiteral) ifTrue: [ ^ true ] ].
	"last-but-one has the additional method state -or- the method's own selector!!"
	^ (self objectAt: self numLiterals) refersToLiteral: aLiteral.
! !
