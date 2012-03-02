
!HostSystemMenusProxy methodsFor: 'finalization'!
finalize
	[self destroyEveryThing] ifError: [].
	! !
