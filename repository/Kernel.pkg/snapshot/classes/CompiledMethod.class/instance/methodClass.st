
!CompiledMethod methodsFor: 'accessing'!
methodClass
	"answer the class that I am installed in"
	^self numLiterals > 0
		ifTrue: [ (self literalAt: self numLiterals) value ]
		ifFalse: [ nil ]! !
