
!SAAnnouncementCreationTest methodsFor: 'testing'!
testClassAddedAnnouncement
	self assert: ((AddedEvent class: Object category: 'XXX')  asSystemAnnouncement isKindOf: ClassAdded)! !
