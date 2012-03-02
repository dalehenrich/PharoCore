
!MessageList methodsFor: 'actions'!
addVersion: anAssociation

	self versionsHistoryList add: anAssociation.
	self updateView! !
