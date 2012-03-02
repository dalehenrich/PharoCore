
!ScriptLoader methodsFor: 'accessing'!
inboxRepository
	^ inboxRepository ifNil: [inboxRepository :=  self inboxRepositoryDefault]
	! !
