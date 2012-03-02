
!SAAnnouncementCreationTest methodsFor: 'testing'!
testMethodAddedAnnouncement2
	self assert: ((AddedEvent
				method: self class >> #testMethodAddedAnnouncement
				selector: #testMethodAddedAnnouncement
				protocol: 'protocol'
				class: self class)  asSystemAnnouncement isKindOf: MethodAdded)! !
