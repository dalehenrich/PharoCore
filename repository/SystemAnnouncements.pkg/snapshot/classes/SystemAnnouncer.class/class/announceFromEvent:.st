
!SystemAnnouncer class methodsFor: 'private'!
announceFromEvent: aChangeEvent
	"This method creates an announcement from a given Event (subclass of AbstractEvent) and announces it.
	
	For example, from an AddedEvent that concerns a class the method creates SystemAddedClassAnnouncement and then it will announce it both from the generic announcer and from the classAnnouncer "
	| announcement |
	announcement := aChangeEvent asSystemAnnouncement.
	self privateAnnouncer announce: announcement.		
	self announcer announce: announcement.! !
