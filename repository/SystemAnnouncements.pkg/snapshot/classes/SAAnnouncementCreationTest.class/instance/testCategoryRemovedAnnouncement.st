
!SAAnnouncementCreationTest methodsFor: 'testing'!
testCategoryRemovedAnnouncement
	self assert: ((RemovedEvent classCategory: 'XXX') asSystemAnnouncement isKindOf: CategoryRemoved)! !
