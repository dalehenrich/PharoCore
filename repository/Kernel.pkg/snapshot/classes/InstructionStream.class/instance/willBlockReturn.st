
!InstructionStream methodsFor: 'testing'!
willBlockReturn

	^ (self method at: pc) = Encoder blockReturnCode! !
