
!SAAnnouncementCreationTest methodsFor: 'testing'!
testClassRecategorizedAnnouncement
	self assert: ((RecategorizedEvent 
				class: self class
				category: 'newCategory'
				oldCategory: 'oldCategory')  asSystemAnnouncement isKindOf: ClassRecategorized)! !
