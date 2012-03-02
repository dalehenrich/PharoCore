
!MCWorkingCopy methodsFor: 'operations'!
unload
	MCPackageLoader unloadPackage: self package.
	self unregister.! !
