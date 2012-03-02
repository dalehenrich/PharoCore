
!MCSnapshotBrowser methodsFor: 'listing'!
visibleMethods
	^ classSelection 
		ifNil: [#()]
		ifNotNil: [self methodsForSelectedProtocol]! !
