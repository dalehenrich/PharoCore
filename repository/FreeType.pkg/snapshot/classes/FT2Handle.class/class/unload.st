
!FT2Handle class methodsFor: 'initialize-release'!
unload
	Smalltalk removeFromStartUpList: self.
	Smalltalk removeFromShutDownList: self.
! !
