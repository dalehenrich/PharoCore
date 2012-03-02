
!ChangeSet class methodsFor: 'services'!
newChangeSet: aName
	"Makes a new change set called aName, add author full name to try to
	ensure a unique change set name."

	| newName |
	newName := aName , FileDirectory dot , Author fullName.
	^ self basicNewChangeSet: newName! !
