
!HostSystemMenus class methodsFor: 'instance creation'!
startUp: resuming
	resuming ifFalse: [^self].
	self clearDefault.
	[self setDefaultMenuProxyClass] ifError: [].! !
