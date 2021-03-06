
!MCPackageLoader methodsFor: 'private'!
useChangeSetNamed: baseName during: aBlock
	"Use the named change set, or create one with the given name."
	| oldChanges newChanges |
	oldChanges :=ChangeSet current.
	newChanges := (ChangeSet named: baseName) ifNil: [ ChangeSet new name: baseName ].
	ChangeSet newChanges: newChanges.
	[aBlock value] ensure: [ChangeSet newChanges: oldChanges].
! !
