
!HostSystemMenusProxy class methodsFor: 'registery'!
registry
	^Registry ifNil: [Registry := WeakRegistry new]
	! !
