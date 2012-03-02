
!SAAnnouncementCreationTest methodsFor: 'testing'!
testMethodModifiedAnnouncement
	self assert: (((ModifiedMethodEvent
					methodChangedFrom: self class >> #testMethodModifiedAnnouncement
					to: self class >> #testMethodModifiedAnnouncement
					selector: 'testMethodModifiedAnnouncement' 
					inClass: self class
					requestor: nil)
					oldProtocol: 'oldProtocol';
					newProtocol: 'newProtocol') asSystemAnnouncement isKindOf: MethodModified) ! !
