
!FT2Face methodsFor: 'testing'!
isRegular
	styleFlags == nil ifTrue:[^true].
	^styleFlags = 0! !
