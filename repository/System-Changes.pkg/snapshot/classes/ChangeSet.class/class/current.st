
!ChangeSet class methodsFor: 'current changeset'!
current
	"return the current changeset assure first that we have a named changeset."
	
	current isMoribund
		ifTrue: [(self newChanges: (self assuredChangeSetNamed: 'Unnamed'))] .
	^ current! !
