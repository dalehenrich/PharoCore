
!EventManager class methodsFor: 'releasing'!
releaseActionMapFor: anObject

	self actionMaps
		removeKey: anObject
		ifAbsent: []! !
