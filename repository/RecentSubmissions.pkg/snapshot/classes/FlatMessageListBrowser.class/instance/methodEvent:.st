
!FlatMessageListBrowser methodsFor: 'events'!
methodEvent: anEvent
	anEvent isModified
		ifTrue: [ self methodModified: anEvent].
	anEvent isRemoved
		ifTrue: [ self methodRemoved: anEvent].! !
