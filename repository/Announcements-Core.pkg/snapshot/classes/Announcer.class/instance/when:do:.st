
!Announcer methodsFor: 'convenience'!
when: anAnnouncementClass do: aValuable
	"Declare that when anAnnouncementClass is raised, aValuable is executed."
	
	^ self subscribe: anAnnouncementClass do: aValuable! !
