
!RecentMessageList class methodsFor: 'events'!
classEvent: anEvent

	anEvent isAdded
		ifTrue: [ self uniqueInstance aClassHasBeenAdded: anEvent].
	anEvent isCommented
		ifTrue: [ self uniqueInstance aClassHasBeenCommented: anEvent].
	anEvent isModified
		ifTrue: [ self uniqueInstance aClassHasBeenModified: anEvent].
	anEvent isRecategorized
		ifTrue: [ self uniqueInstance aClassHasBeenRecategorized: anEvent].
	anEvent isRemoved
		ifTrue: [ self uniqueInstance aClassHasBeenRemoved: anEvent].
	anEvent isRenamed
		ifTrue: [ self uniqueInstance aClassHasBeenRenamed: anEvent].
	anEvent isReorganized
		ifTrue: [ self uniqueInstance aClassHasBeenReorganized: anEvent].! !
