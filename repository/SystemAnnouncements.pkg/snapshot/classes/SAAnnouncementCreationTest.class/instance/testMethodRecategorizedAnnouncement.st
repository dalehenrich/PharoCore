
!SAAnnouncementCreationTest methodsFor: 'testing'!
testMethodRecategorizedAnnouncement
	self assert: (((RecategorizedEvent 
					method: (self class >> #testMethodRecategorizedAnnouncement) 
					protocol: 'newCategory' 
					class: self class) oldCategory:  'oldCategory'
					)  asSystemAnnouncement isKindOf: MethodRecategorized)! !
