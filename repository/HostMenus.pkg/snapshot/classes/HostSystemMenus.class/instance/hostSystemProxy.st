
!HostSystemMenus methodsFor: 'accessing'!
hostSystemProxy
	hostSystemProxy ifNil: [self class setDefaultMenuProxyClass].
	^hostSystemProxy! !
