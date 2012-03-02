
!PragmaCollector methodsFor: 'initializing'!
initialize
	super initialize.
	announcer := Announcer new.
	self installSystemNotifications! !
