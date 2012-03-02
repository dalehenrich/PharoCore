
!ZnRequest methodsFor: 'accessing'!
addCookie: cookie
	self headers at: 'Cookie' add: cookie nameValueString
! !
