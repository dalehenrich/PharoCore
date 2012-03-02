
!SystemVersion methodsFor: 'accessing'!
unregisterUpdate: update
	self updates remove: update ifAbsent: []! !
