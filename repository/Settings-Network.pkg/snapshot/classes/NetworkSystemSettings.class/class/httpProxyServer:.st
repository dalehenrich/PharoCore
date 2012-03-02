
!NetworkSystemSettings class methodsFor: 'settings'!
httpProxyServer: aServerName
	HTTPSocket httpProxyServer: aServerName.
	LastHTTPProxyServer := HTTPSocket httpProxyServer! !
