
!ZnUrl methodsFor: 'private'!
closePath
	self isSlash
		ifFalse: [ self addPathSegment: #/ ]! !
