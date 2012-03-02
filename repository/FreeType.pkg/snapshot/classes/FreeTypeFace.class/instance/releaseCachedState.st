
!FreeTypeFace methodsFor: 'caching'!
releaseCachedState

	hasKerning := nil.
	self destroyHandle.
! !
