
!SAAnnouncementCreationTest methodsFor: 'testing'!
testMethodModifiedAnnouncement2
	self assert: ((ModifiedEvent
					methodChangedFrom: self class >> #testMethodModifiedAnnouncement2
					to: self class >> #testMethodModifiedAnnouncement
					selector: 'testMethodModifiedAnnouncement2'
					inClass: self class
					requestor: nil) asSystemAnnouncement isKindOf: MethodModified) ! !
