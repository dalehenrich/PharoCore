
!PragmaMenuBuilder methodsFor: 'initialize-release'!
release
	self pragmaCollector unsubscribe: self.
	pragmaCollector := nil.
	model := nil.
	super release
	! !
