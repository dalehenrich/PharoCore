
!ZnMessage methodsFor: 'accessing'!
setConnectionClose
	self headers at: 'Connection' put: 'close'! !
