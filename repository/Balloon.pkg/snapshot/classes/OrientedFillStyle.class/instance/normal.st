
!OrientedFillStyle methodsFor: 'accessing'!
normal
	^normal ifNil:[normal := direction y negated @ direction x]! !
