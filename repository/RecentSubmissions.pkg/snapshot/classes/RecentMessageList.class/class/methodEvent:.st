
!RecentMessageList class methodsFor: 'events'!
methodEvent: anEvent

	anEvent isAdded
		ifTrue: [ self uniqueInstance aMethodHasBeenAdded: anEvent].
	anEvent isCommented
		ifTrue: [ self uniqueInstance aMethodHasBeenCommented: anEvent].
	anEvent isModified
		ifTrue: [ self uniqueInstance aMethodHasBeenModified: anEvent].
	anEvent isRecategorized
		ifTrue: [ self uniqueInstance aMethodHasBeenRecategorized: anEvent].
	anEvent isRemoved
		ifTrue: [ self uniqueInstance aMethodHasBeenRemoved: anEvent].
	anEvent isRenamed
		ifTrue: [ self uniqueInstance aMethodHasBeenRenamed: anEvent].
	anEvent isReorganized
		ifTrue: [ self uniqueInstance aMethodHasBeenReorganized: anEvent].! !
