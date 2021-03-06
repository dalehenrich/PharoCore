
!MCTraitDefinition methodsFor: '*Ring-Core-Kernel'!
classTraitCompositionString
	^self traitComposition 
		ifNil: [ '{}' ]
		ifNotNil: [ :source| | tokens tcs |
			tcs := ''.
			tokens := Scanner new scanTokens: source.
			tokens do:[ :each| 
				each first isUppercase 
					ifTrue: [ tcs := tcs, each, ' classTrait + ' ] ].
			tcs isEmpty 
				ifTrue: [ '{}' ]
				ifFalse:[ tcs copyFrom: 1 to: tcs size - 3 ] ]! !
