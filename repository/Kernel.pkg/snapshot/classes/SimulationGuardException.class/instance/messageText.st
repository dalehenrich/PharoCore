
!SimulationGuardException methodsFor: 'accessing'!
messageText
	^ 'triggered by ', method classBinding value printString, '>>', method selector! !
