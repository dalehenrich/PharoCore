
!MethodReference methodsFor: 'accessing'!
actualClass
	| actualClass traitName |
	self deprecated: 'use RGMethodDefinition' on: '8 October 2011'  in: 'Pharo1.4'.
	('*classTrait' match: classSymbol)
		ifTrue: [ 
			traitName := classSymbol copyUpTo: Character space.
			^ Smalltalk globals at: traitName asSymbol ifAbsent: [ nil ] ].
	actualClass := Smalltalk globals at: classSymbol ifAbsent: [ ^ nil ].
	classIsMeta
		ifTrue: [ ^ actualClass classSide ].
	^ actualClass! !
