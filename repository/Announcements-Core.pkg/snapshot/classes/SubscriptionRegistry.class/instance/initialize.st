
!SubscriptionRegistry methodsFor: 'initialize-release'!
initialize
	monitor := Semaphore forMutualExclusion.
	self reset
! !
