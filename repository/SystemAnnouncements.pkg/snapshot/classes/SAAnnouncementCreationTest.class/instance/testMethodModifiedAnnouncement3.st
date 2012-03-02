
!SAAnnouncementCreationTest methodsFor: 'testing'!
testMethodModifiedAnnouncement3
	self assert: ((ModifiedEvent
					methodChangedFrom: self class >> #testMethodModifiedAnnouncement2
					to: self class >> #testMethodModifiedAnnouncement
					selector: 'testMethodModifiedAnnouncement2'
					inClass: self class) asSystemAnnouncement isKindOf: MethodModified) ! !
