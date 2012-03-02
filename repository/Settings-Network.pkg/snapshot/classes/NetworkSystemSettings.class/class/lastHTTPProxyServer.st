
!NetworkSystemSettings class methodsFor: 'settings'!
lastHTTPProxyServer
	^ LastHTTPProxyServer ifNil: [LastHTTPProxyServer := HTTPSocket httpProxyServer].
! !
