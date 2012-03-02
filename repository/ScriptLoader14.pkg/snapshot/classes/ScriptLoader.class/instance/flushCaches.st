
!ScriptLoader methodsFor: 'cleaning'!
flushCaches

	MCFileBasedRepository flushAllCaches.
	MCDefinition clearInstances.
	Smalltalk garbageCollect.! !
