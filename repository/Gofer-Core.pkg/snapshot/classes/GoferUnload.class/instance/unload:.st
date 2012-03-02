
!GoferUnload methodsFor: 'unloading'!
unload: aWorkingCopy
	self unloadClasses: aWorkingCopy.
	self unloadPackage: aWorkingCopy
! !
