
!InstructionStream methodsFor: 'testing'!
willJustPop

	^ (self method at: pc) = Encoder popCode! !
