
!MCVersionReader methodsFor: 'accessing'!
info
	info ifNil: [self loadVersionInfo].
	^ info! !
