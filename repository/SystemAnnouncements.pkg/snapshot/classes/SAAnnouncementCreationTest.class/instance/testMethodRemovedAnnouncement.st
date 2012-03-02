
!SAAnnouncementCreationTest methodsFor: 'testing'!
testMethodRemovedAnnouncement
	self assert: ((RemovedEvent
				method: self class >> #testMethodAddedAnnouncement
				selector: #testMethodAddedAnnouncement
				class: self class)  asSystemAnnouncement isKindOf: MethodRemoved)! !
