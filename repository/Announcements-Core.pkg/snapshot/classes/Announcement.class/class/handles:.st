
!Announcement class methodsFor: 'testing'!
handles: anAnnouncementClass
	^ anAnnouncementClass == self or: [ anAnnouncementClass inheritsFrom: self ]! !
