
!ZnResponse methodsFor: 'accessing'!
setWWWAuthenticate: string
	self headers at: 'WWW-Authenticate' put: string! !
