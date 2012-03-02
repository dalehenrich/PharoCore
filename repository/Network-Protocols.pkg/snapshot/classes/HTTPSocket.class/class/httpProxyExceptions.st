
!HTTPSocket class methodsFor: 'proxy settings'!
httpProxyExceptions
	^ HTTPProxyExceptions ifNil: [HTTPProxyExceptions := OrderedCollection new].
! !
