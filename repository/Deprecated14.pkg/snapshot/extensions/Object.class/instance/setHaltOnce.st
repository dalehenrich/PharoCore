
!Object methodsFor: '*deprecated14'!
setHaltOnce
	"Turn on the halt once flag."

	self deprecated: 'Use "Halt enableHaltOnce".  This method bloats Object and wrongly suggests haltOnce may be per-object' on: '8/29/2011' in: '1.4'.
	Halt enableHaltOnce.! !
