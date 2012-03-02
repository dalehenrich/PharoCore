
!Object methodsFor: '*deprecated14'!
haltOnce: aString 
	"Halt unless we have already done it once."

	self deprecated: 'Use #haltOnce:. Since you end up in a debugger, aString provides little information' on: '8/29/2011' in: '1.4'.
	Halt isHaltOnceEnabled
		ifTrue: [ Halt disableHaltOnce.
				^ Halt signal: aString ]! !
