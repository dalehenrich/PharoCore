
!AnnouncementSet methodsFor: 'testing'!
handles: anAnnouncementClass
	^ self anySatisfy: [ :each | each handles: anAnnouncementClass ]! !
