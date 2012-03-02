
!RecentMessageList methodsFor: 'method event handler'!
aMethodHasBeenModified: aMethodEvent

	self addMethodReference: (self createTheMethodReference: aMethodEvent)
! !
