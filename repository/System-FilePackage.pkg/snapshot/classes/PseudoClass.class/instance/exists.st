
!PseudoClass methodsFor: 'testing'!
exists
	^ (Smalltalk globals at: self name asSymbol ifAbsent: [ ^ false ]) isKindOf: Behavior! !
