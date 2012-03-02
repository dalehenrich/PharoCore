
!FT2Handle methodsFor: 'private'!
destroyHandle
	self class deregister: self.
	self pvtDestroyHandle! !
