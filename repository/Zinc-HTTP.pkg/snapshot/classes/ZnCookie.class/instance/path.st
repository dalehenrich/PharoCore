
!ZnCookie methodsFor: 'accessing'!
path
	^ attributes at: 'path' ifAbsent: [ '/' ]! !
