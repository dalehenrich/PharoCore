
!VileFinalizer methodsFor: 'as yet unclassified'!
finalize
	weakRegistry remove: self ifAbsent: [].! !
