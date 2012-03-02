
!SAAnnouncementCreationTest methodsFor: 'testing'!
testMethodRemovedAnnouncement2
	self assert: ((RemovedEvent
				method: self class >> #testMethodAddedAnnouncement
				selector: #testMethodAddedAnnouncement
				protocol: 'protocol'
				class: self class)  asSystemAnnouncement isKindOf: MethodRemoved)! !
