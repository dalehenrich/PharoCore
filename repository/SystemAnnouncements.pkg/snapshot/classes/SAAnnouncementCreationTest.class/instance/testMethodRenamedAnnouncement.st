
!SAAnnouncementCreationTest methodsFor: 'testing'!
testMethodRenamedAnnouncement
	self assert: ((RenamedEvent 
				class: self class
				category: 'aCategoryName'
				oldName: 'oldClassName'
				newName: 'NewClassName')  asSystemAnnouncement isKindOf: ClassRenamed)! !
