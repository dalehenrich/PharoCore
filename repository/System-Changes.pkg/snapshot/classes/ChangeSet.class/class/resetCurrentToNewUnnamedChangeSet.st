
!ChangeSet class methodsFor: 'current changeset'!
resetCurrentToNewUnnamedChangeSet
 
	current := self new.  
	self newChanges: current ! !
