
!WeakAnnouncementSubscription class methodsFor: 'instance creation'!
new
	
	^ ((WeakFinalizationList hasNewFinalization
		ifTrue: [ self ] ifFalse: [ LegacyWeakSubscription ] )
			basicNew: 1) initialize! !
