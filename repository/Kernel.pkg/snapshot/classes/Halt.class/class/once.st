
!Halt class methodsFor: 'halting'!
once
	"To enable, use self enableOnce"
	
	self isHaltOnceEnabled ifTrue: [
			self disableHaltOnce.
			^ self signal]! !
