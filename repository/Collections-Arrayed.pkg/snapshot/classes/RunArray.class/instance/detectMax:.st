
!RunArray methodsFor: 'enumerating'!
detectMax: aBlock
	"Only evaluate once per run"

	^values detectMax: aBlock! !
