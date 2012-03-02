
!SAAnnouncementCreationTest methodsFor: 'testing'!
testClassCommentedAnnouncement
	self assert: ((CommentedEvent class: Object)  asSystemAnnouncement isKindOf: ClassCommented)! !
