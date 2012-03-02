
!MultiByteFileStream methodsFor: 'accessing'!
ascii

	super ascii.
	self detectLineEndConvention.
! !
