
!SAAnnouncementCreationTest methodsFor: 'testing'!
testCategoryRenamedAnnouncement
	self assert: ((RenamedEvent
					classCategoryRenamedFrom: 'anOldClassCategoryName' 
					to: 'aNewClassCategoryName')  asSystemAnnouncement isKindOf: CategoryRenamed)! !
