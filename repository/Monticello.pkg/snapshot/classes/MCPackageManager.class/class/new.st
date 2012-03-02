
!MCPackageManager class methodsFor: 'accessing'!
new
	| instance |
	instance := super new.
	MonticelloAnnouncer announcer announce: (MCWorkingCopyCreated workingCopy: instance).
	^ instance! !
