
!Object methodsFor: '*deprecated14'!
halt: aString onCount: anInteger 
	"Deprecated: see below
	Halt on the anInteger-th time through, showing message aString"
		
	| currentCount |
	currentCount := Halt isCounting 
		ifTrue: [ Halt callsUntilHaltOnCount ]
		ifFalse: [
				self deprecated: 'Use #haltOnCount:. Since you end up in a debugger, aString provides little information' on: '8/29/2011' in: '1.4'.
				anInteger ].
	Halt callsUntilHaltOnCount: currentCount - 1.
	Halt callsUntilHaltOnCount = 0 ifTrue: [ Halt now ].! !
