
!MCPackageManager class methodsFor: 'accessing'!
forPackage: aPackage
	^ self registry at: aPackage ifAbsent:
		[|mgr|
		mgr := self new initializeWithPackage: aPackage.
		self registry at: aPackage put: mgr.
		self changed: (Array with: #registered with: aPackage).
		MonticelloAnnouncer announcer announce: (MCWorkingCopyCreated workingCopy: mgr package: aPackage).
		mgr]! !
