
!FT2Face methodsFor: 'testing'!
isItalic
	styleFlags == nil ifTrue:[^false].
	^styleFlags allMask: StyleFlagItalic! !
