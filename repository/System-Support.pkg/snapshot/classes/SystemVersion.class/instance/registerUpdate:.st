
!SystemVersion methodsFor: 'accessing'!
registerUpdate: update
	self updates add: update.
	self resetHighestUpdate! !
