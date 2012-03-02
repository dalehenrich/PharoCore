
!ChangeSet methodsFor: 'private'!
atClass: class add: changeType

	(self changeRecorderFor: class)
		noteChangeType: changeType fromClass: class! !
