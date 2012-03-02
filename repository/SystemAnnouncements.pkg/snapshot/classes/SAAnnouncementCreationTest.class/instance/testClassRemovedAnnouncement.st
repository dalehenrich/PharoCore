
!SAAnnouncementCreationTest methodsFor: 'testing'!
testClassRemovedAnnouncement
	self assert: ((RemovedEvent class: Object category: 'XXX')  asSystemAnnouncement isKindOf: ClassRemoved)! !
