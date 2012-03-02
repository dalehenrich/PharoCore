
!RunArray methodsFor: 'enumerating'!
anySatisfy: aBlock 
	"Only evaluate once per run"

	^values anySatisfy: aBlock! !
