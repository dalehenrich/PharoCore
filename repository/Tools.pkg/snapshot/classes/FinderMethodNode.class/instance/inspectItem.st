
!FinderMethodNode methodsFor: 'private'!
inspectItem
	self hasParentNode ifTrue: [ (self parentNode item methodDict at: self item) inspect ].! !
