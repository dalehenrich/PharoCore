
!FilePackage methodsFor: 'conflict checker'!
canceledConflictChecking: aMessage
	self inform: ('Conflict check cancelled: ',aMessage) translated. 
	^ #()! !
