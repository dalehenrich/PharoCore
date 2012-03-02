
!RecentMessageList methodsFor: 'method event handler'!
aMethodHasBeenAdded: aMethodEvent

	self addMethodReference: (self createTheMethodReference: aMethodEvent)
! !
