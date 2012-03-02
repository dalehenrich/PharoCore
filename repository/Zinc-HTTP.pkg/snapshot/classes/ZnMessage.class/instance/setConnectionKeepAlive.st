
!ZnMessage methodsFor: 'accessing'!
setConnectionKeepAlive
	self headers at: 'Connection' put: 'keep-alive'! !
