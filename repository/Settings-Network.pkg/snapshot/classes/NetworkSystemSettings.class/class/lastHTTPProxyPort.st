
!NetworkSystemSettings class methodsFor: 'settings'!
lastHTTPProxyPort
	^ LastHTTPProxyPort ifNil: [LastHTTPProxyPort := HTTPSocket httpProxyPort]. 
! !
