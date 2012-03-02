
!SAAnnouncementCreationTest methodsFor: 'testing'!
testClassCommentedAnnouncement2
	self assert: ((CommentedEvent class: self class oldComment: 'oldComment' newComment: 'newComment' oldStamp: DateAndTime now newStamp: DateAndTime now)  asSystemAnnouncement isKindOf: ClassCommented)! !
