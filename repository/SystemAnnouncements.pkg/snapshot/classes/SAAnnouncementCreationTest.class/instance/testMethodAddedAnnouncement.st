
!SAAnnouncementCreationTest methodsFor: 'testing'!
testMethodAddedAnnouncement
	self assert: ((AddedEvent
				method: self class >> #testMethodAddedAnnouncement
				selector: #testMethodAddedAnnouncement
				class: self class)  asSystemAnnouncement isKindOf: MethodAdded)! !
