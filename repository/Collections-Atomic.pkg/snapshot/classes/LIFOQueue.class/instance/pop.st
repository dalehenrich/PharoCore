
!LIFOQueue methodsFor: 'stack-compliant protocol'!
pop

	^ self nextIfNone: [ self errorEmptyStack ]! !
