
!PseudoClass methodsFor: 'testing'!
nameExists
	^ Smalltalk globals includesKey: self name asSymbol! !
