
!Object methodsFor: '*deprecated14'!
haltOnceEnabled
	"is haltOnce enabled globally"

	self deprecated: 'Use "Halt isHaltOnceEnabled".  This method bloats Object and wrongly suggests haltOnce may be per-object' on: '8/29/2011' in: '1.4'.
	^ Halt isHaltOnceEnabled.! !
