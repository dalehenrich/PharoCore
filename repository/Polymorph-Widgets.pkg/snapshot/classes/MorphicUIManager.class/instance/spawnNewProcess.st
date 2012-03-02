
!MorphicUIManager methodsFor: 'ui process'!
spawnNewProcess

	UIProcess := [
		[World doOneCycle.  Processor yield.  false] whileFalse: [].
	] newProcess priority: Processor userSchedulingPriority.
	UIProcess resume! !
