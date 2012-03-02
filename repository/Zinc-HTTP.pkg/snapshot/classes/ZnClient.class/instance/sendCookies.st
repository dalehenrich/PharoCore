
!ZnClient methodsFor: 'private'!
sendCookies
	session ifNil: [ ^ self ].
	(session cookieJar cookiesForUrl: request url) do: [ :each |
		request addCookie: each ]! !
