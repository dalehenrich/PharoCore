
!Object methodsFor: '*deprecated14'!
clearHaltOnce
	"Turn on image-wide Halt once"

	self deprecated: 'Use "Halt disableHaltOnce". This method bloats Object and wrongly suggests haltOnce may be per-object' on: '8/29/2011' in: '1.4'.
	Halt disableHaltOnce.! !
