
!ZnCookie methodsFor: 'accessing'!
expires
	^ attributes at: 'expires' ifAbsent: [ nil ]! !
