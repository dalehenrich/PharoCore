
!Halt class methodsFor: 'once-enabling/disabling'!
isHaltOnceEnabled

	^ isHaltOnceEnabled ifNil: [isHaltOnceEnabled := false]! !
