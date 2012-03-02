
!SAAnnouncementCreationTest methodsFor: 'testing'!
testCategoryAddedAnnouncement
	self assert: ((AddedEvent classCategory: 'XXX') asSystemAnnouncement isKindOf: CategoryAdded)! !
