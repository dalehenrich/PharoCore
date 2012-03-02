
!ZnUserAgentSession methodsFor: 'accessing'!
cookieJar
	^ cookiejar ifNil: [ cookiejar := ZnCookieJar new ]! !
