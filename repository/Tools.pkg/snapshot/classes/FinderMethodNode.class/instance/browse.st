
!FinderMethodNode methodsFor: 'private'!
browse
	self parentNode
		ifNotNil: [:parent | ^ self browseClass].! !
